---
title: "semver"
linkTitle: "semver"
description: "Semantic version data type"
weight: 3510
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/theory/pg-semver">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">theory/pg-semver</div>
    <div class="ext-card__desc">https://github.com/theory/pg-semver</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg-semver-0.41.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg-semver-0.41.0.tar.gz</div>
    <div class="ext-card__desc">pg-semver-0.41.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_semver`**](/ext/e/semver) | `0.41.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3510  | [**`semver`**](/ext/e/semver) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`ltree`](/ext/e/ltree) [`citext`](/ext/e/citext) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.41.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_semver` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.41.0` | {{< pgvers "18,17,16,15,14" >}} | `semver_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.41.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-semver` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 5 | AVAIL PIGSTY 0.41.0 6 |
| el8.aarch64 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 4 | AVAIL PIGSTY 0.41.0 4 |
| el9.x86_64 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 5 | AVAIL PIGSTY 0.41.0 4 |
| el9.aarch64 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 4 | AVAIL PIGSTY 0.41.0 4 |
| el10.x86_64 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 |
| el10.aarch64 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 | AVAIL PIGSTY 0.41.0 3 |
| d12.x86_64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| d12.aarch64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| d13.x86_64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| d13.aarch64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| u22.x86_64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| u22.aarch64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| u24.x86_64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| u24.aarch64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| u26.x86_64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
| u26.aarch64 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 | AVAIL PGDG 0.41.0 1 |
@ el8.x86_64 18 semver_18 semver_18-0.41.0-1PIGSTY.el8.x86_64.rpm pigsty 0.41.0 27.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/semver_18-0.41.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 semver_18 semver_18-0.41.0-1PGDG.rhel8.10.x86_64.rpm pgdg 0.41.0 28.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/semver_18-0.41.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 semver_18 semver_18-0.40.0-1PGDG.rhel8.x86_64.rpm pgdg 0.40.0 27.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/semver_18-0.40.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 semver_18 semver_18-0.41.0-1PIGSTY.el8.aarch64.rpm pigsty 0.41.0 27.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/semver_18-0.41.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 semver_18 semver_18-0.41.0-1PGDG.rhel8.10.aarch64.rpm pgdg 0.41.0 28.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/semver_18-0.41.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 semver_18 semver_18-0.40.0-1PGDG.rhel8.aarch64.rpm pgdg 0.40.0 27.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/semver_18-0.40.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 semver_18 semver_18-0.41.0-1PIGSTY.el9.x86_64.rpm pigsty 0.41.0 26.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/semver_18-0.41.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 semver_18 semver_18-0.41.0-1PGDG.rhel9.7.x86_64.rpm pgdg 0.41.0 27.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/semver_18-0.41.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 semver_18 semver_18-0.40.0-1PGDG.rhel9.x86_64.rpm pgdg 0.40.0 26.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/semver_18-0.40.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 semver_18 semver_18-0.41.0-1PIGSTY.el9.aarch64.rpm pigsty 0.41.0 26.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/semver_18-0.41.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 semver_18 semver_18-0.41.0-1PGDG.rhel9.7.aarch64.rpm pgdg 0.41.0 26.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/semver_18-0.41.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 semver_18 semver_18-0.40.0-1PGDG.rhel9.aarch64.rpm pgdg 0.40.0 26.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/semver_18-0.40.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 semver_18 semver_18-0.41.0-1PIGSTY.el10.x86_64.rpm pigsty 0.41.0 27.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/semver_18-0.41.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 semver_18 semver_18-0.41.0-1PGDG.rhel10.1.x86_64.rpm pgdg 0.41.0 27.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/semver_18-0.41.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 semver_18 semver_18-0.40.0-1PGDG.rhel10.x86_64.rpm pgdg 0.40.0 27.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/semver_18-0.40.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 semver_18 semver_18-0.41.0-1PIGSTY.el10.aarch64.rpm pigsty 0.41.0 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/semver_18-0.41.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 semver_18 semver_18-0.41.0-1PGDG.rhel10.1.aarch64.rpm pgdg 0.41.0 27.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/semver_18-0.41.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 semver_18 semver_18-0.40.0-1PGDG.rhel10.aarch64.rpm pgdg 0.40.0 27.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/semver_18-0.40.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg12+1_amd64.deb pgdg 0.41.0 39.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg12+1_arm64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg13+1_amd64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg13+1_arm64.deb pgdg 0.41.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg22.04+1_amd64.deb pgdg 0.41.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg22.04+1_arm64.deb pgdg 0.41.0 38.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg24.04+1_amd64.deb pgdg 0.41.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg24.04+1_arm64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg26.04+1_amd64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-semver postgresql-18-semver_0.41.0-1.pgdg26.04+1_arm64.deb pgdg 0.41.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-18-semver_0.41.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 semver_17 semver_17-0.41.0-1PIGSTY.el8.x86_64.rpm pigsty 0.41.0 27.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/semver_17-0.41.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 semver_17 semver_17-0.41.0-1PGDG.rhel8.10.x86_64.rpm pgdg 0.41.0 28.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/semver_17-0.41.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 semver_17 semver_17-0.32.1-1PGDG.rhel8.x86_64.rpm pgdg 0.32.1 27.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/semver_17-0.32.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 semver_17 semver_17-0.41.0-1PIGSTY.el8.aarch64.rpm pigsty 0.41.0 27.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/semver_17-0.41.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 semver_17 semver_17-0.41.0-1PGDG.rhel8.10.aarch64.rpm pgdg 0.41.0 28.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/semver_17-0.41.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 semver_17 semver_17-0.32.1-1PGDG.rhel8.aarch64.rpm pgdg 0.32.1 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/semver_17-0.32.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 semver_17 semver_17-0.41.0-1PIGSTY.el9.x86_64.rpm pigsty 0.41.0 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/semver_17-0.41.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 semver_17 semver_17-0.41.0-1PGDG.rhel9.7.x86_64.rpm pgdg 0.41.0 27.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/semver_17-0.41.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 semver_17 semver_17-0.32.1-1PGDG.rhel9.x86_64.rpm pgdg 0.32.1 26.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/semver_17-0.32.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 semver_17 semver_17-0.41.0-1PIGSTY.el9.aarch64.rpm pigsty 0.41.0 26.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/semver_17-0.41.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 semver_17 semver_17-0.41.0-1PGDG.rhel9.7.aarch64.rpm pgdg 0.41.0 26.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/semver_17-0.41.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 semver_17 semver_17-0.32.1-1PGDG.rhel9.aarch64.rpm pgdg 0.32.1 26.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/semver_17-0.32.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 semver_17 semver_17-0.41.0-1PIGSTY.el10.x86_64.rpm pigsty 0.41.0 26.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/semver_17-0.41.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 semver_17 semver_17-0.41.0-1PGDG.rhel10.1.x86_64.rpm pgdg 0.41.0 27.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/semver_17-0.41.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 semver_17 semver_17-0.40.0-1PGDG.rhel10.x86_64.rpm pgdg 0.40.0 27.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/semver_17-0.40.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 semver_17 semver_17-0.41.0-1PIGSTY.el10.aarch64.rpm pigsty 0.41.0 27.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/semver_17-0.41.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 semver_17 semver_17-0.41.0-1PGDG.rhel10.1.aarch64.rpm pgdg 0.41.0 27.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/semver_17-0.41.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 semver_17 semver_17-0.40.0-1PGDG.rhel10.aarch64.rpm pgdg 0.40.0 27.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/semver_17-0.40.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg12+1_amd64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg12+1_arm64.deb pgdg 0.41.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg13+1_amd64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg13+1_arm64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg22.04+1_amd64.deb pgdg 0.41.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg22.04+1_arm64.deb pgdg 0.41.0 38.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg24.04+1_amd64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg24.04+1_arm64.deb pgdg 0.41.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg26.04+1_amd64.deb pgdg 0.41.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-semver postgresql-17-semver_0.41.0-1.pgdg26.04+1_arm64.deb pgdg 0.41.0 38.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-17-semver_0.41.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 semver_16 semver_16-0.41.0-1PIGSTY.el8.x86_64.rpm pigsty 0.41.0 27.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/semver_16-0.41.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 semver_16 semver_16-0.41.0-1PGDG.rhel8.10.x86_64.rpm pgdg 0.41.0 28.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/semver_16-0.41.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 semver_16 semver_16-0.32.1-1PGDG.rhel8.x86_64.rpm pgdg 0.32.1 27.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/semver_16-0.32.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 semver_16 semver_16-0.41.0-1PIGSTY.el8.aarch64.rpm pigsty 0.41.0 27.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/semver_16-0.41.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 semver_16 semver_16-0.41.0-1PGDG.rhel8.10.aarch64.rpm pgdg 0.41.0 28.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/semver_16-0.41.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 semver_16 semver_16-0.32.1-1PGDG.rhel8.aarch64.rpm pgdg 0.32.1 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/semver_16-0.32.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 semver_16 semver_16-0.41.0-1PIGSTY.el9.x86_64.rpm pigsty 0.41.0 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/semver_16-0.41.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 semver_16 semver_16-0.41.0-1PGDG.rhel9.7.x86_64.rpm pgdg 0.41.0 27.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/semver_16-0.41.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 semver_16 semver_16-0.32.1-1PGDG.rhel9.x86_64.rpm pgdg 0.32.1 26.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/semver_16-0.32.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 semver_16 semver_16-0.41.0-1PIGSTY.el9.aarch64.rpm pigsty 0.41.0 26.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/semver_16-0.41.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 semver_16 semver_16-0.41.0-1PGDG.rhel9.7.aarch64.rpm pgdg 0.41.0 26.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/semver_16-0.41.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 semver_16 semver_16-0.32.1-1PGDG.rhel9.aarch64.rpm pgdg 0.32.1 25.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/semver_16-0.32.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 semver_16 semver_16-0.41.0-1PIGSTY.el10.x86_64.rpm pigsty 0.41.0 26.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/semver_16-0.41.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 semver_16 semver_16-0.41.0-1PGDG.rhel10.1.x86_64.rpm pgdg 0.41.0 27.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/semver_16-0.41.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 semver_16 semver_16-0.40.0-1PGDG.rhel10.x86_64.rpm pgdg 0.40.0 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/semver_16-0.40.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 semver_16 semver_16-0.41.0-1PIGSTY.el10.aarch64.rpm pigsty 0.41.0 27.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/semver_16-0.41.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 semver_16 semver_16-0.41.0-1PGDG.rhel10.1.aarch64.rpm pgdg 0.41.0 27.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/semver_16-0.41.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 semver_16 semver_16-0.40.0-1PGDG.rhel10.aarch64.rpm pgdg 0.40.0 27.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/semver_16-0.40.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg12+1_amd64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg12+1_arm64.deb pgdg 0.41.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg13+1_amd64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg13+1_arm64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg22.04+1_amd64.deb pgdg 0.41.0 39.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg22.04+1_arm64.deb pgdg 0.41.0 38.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg24.04+1_amd64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg24.04+1_arm64.deb pgdg 0.41.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg26.04+1_amd64.deb pgdg 0.41.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-semver postgresql-16-semver_0.41.0-1.pgdg26.04+1_arm64.deb pgdg 0.41.0 38.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-16-semver_0.41.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 semver_15 semver_15-0.41.0-1PIGSTY.el8.x86_64.rpm pigsty 0.41.0 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/semver_15-0.41.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 semver_15 semver_15-0.41.0-1PGDG.rhel8.10.x86_64.rpm pgdg 0.41.0 28.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/semver_15-0.41.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 semver_15 semver_15-0.32.1-1PGDG.rhel8.x86_64.rpm pgdg 0.32.1 27.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/semver_15-0.32.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 semver_15 semver_15-0.32.0-1.rhel8.x86_64.rpm pgdg 0.32.0 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/semver_15-0.32.0-1.rhel8.x86_64.rpm
@ el8.x86_64 15 semver_15 semver_15-0.31.2-1.rhel8.x86_64.rpm pgdg 0.31.2 40.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/semver_15-0.31.2-1.rhel8.x86_64.rpm
@ el8.aarch64 15 semver_15 semver_15-0.41.0-1PIGSTY.el8.aarch64.rpm pigsty 0.41.0 27.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/semver_15-0.41.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 semver_15 semver_15-0.41.0-1PGDG.rhel8.10.aarch64.rpm pgdg 0.41.0 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/semver_15-0.41.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 semver_15 semver_15-0.32.1-1PGDG.rhel8.aarch64.rpm pgdg 0.32.1 26.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/semver_15-0.32.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 semver_15 semver_15-0.32.0-1.rhel8.aarch64.rpm pgdg 0.32.0 41.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/semver_15-0.32.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 semver_15 semver_15-0.41.0-1PIGSTY.el9.x86_64.rpm pigsty 0.41.0 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/semver_15-0.41.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 semver_15 semver_15-0.41.0-1PGDG.rhel9.7.x86_64.rpm pgdg 0.41.0 27.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/semver_15-0.41.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 semver_15 semver_15-0.32.1-1PGDG.rhel9.x86_64.rpm pgdg 0.32.1 26.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/semver_15-0.32.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 semver_15 semver_15-0.32.0-1.rhel9.x86_64.rpm pgdg 0.32.0 42.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/semver_15-0.32.0-1.rhel9.x86_64.rpm
@ el9.x86_64 15 semver_15 semver_15-0.31.2-1.rhel9.x86_64.rpm pgdg 0.31.2 40.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/semver_15-0.31.2-1.rhel9.x86_64.rpm
@ el9.aarch64 15 semver_15 semver_15-0.41.0-1PIGSTY.el9.aarch64.rpm pigsty 0.41.0 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/semver_15-0.41.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 semver_15 semver_15-0.41.0-1PGDG.rhel9.7.aarch64.rpm pgdg 0.41.0 27.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/semver_15-0.41.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 semver_15 semver_15-0.32.1-1PGDG.rhel9.aarch64.rpm pgdg 0.32.1 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/semver_15-0.32.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 semver_15 semver_15-0.32.0-1.rhel9.aarch64.rpm pgdg 0.32.0 41.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/semver_15-0.32.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 semver_15 semver_15-0.41.0-1PIGSTY.el10.x86_64.rpm pigsty 0.41.0 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/semver_15-0.41.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 semver_15 semver_15-0.41.0-1PGDG.rhel10.1.x86_64.rpm pgdg 0.41.0 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/semver_15-0.41.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 semver_15 semver_15-0.40.0-1PGDG.rhel10.x86_64.rpm pgdg 0.40.0 27.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/semver_15-0.40.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 semver_15 semver_15-0.41.0-1PIGSTY.el10.aarch64.rpm pigsty 0.41.0 27.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/semver_15-0.41.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 semver_15 semver_15-0.41.0-1PGDG.rhel10.1.aarch64.rpm pgdg 0.41.0 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/semver_15-0.41.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 semver_15 semver_15-0.40.0-1PGDG.rhel10.aarch64.rpm pgdg 0.40.0 27.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/semver_15-0.40.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg12+1_amd64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg12+1_arm64.deb pgdg 0.41.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg13+1_amd64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg13+1_arm64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg22.04+1_amd64.deb pgdg 0.41.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg22.04+1_arm64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg24.04+1_amd64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg24.04+1_arm64.deb pgdg 0.41.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg26.04+1_amd64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-semver postgresql-15-semver_0.41.0-1.pgdg26.04+1_arm64.deb pgdg 0.41.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-15-semver_0.41.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 semver_14 semver_14-0.41.0-1PIGSTY.el8.x86_64.rpm pigsty 0.41.0 27.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/semver_14-0.41.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 semver_14 semver_14-0.41.0-1PGDG.rhel8.10.x86_64.rpm pgdg 0.41.0 28.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/semver_14-0.41.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 semver_14 semver_14-0.32.1-1PGDG.rhel8.x86_64.rpm pgdg 0.32.1 27.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/semver_14-0.32.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 semver_14 semver_14-0.32.0-1.rhel8.x86_64.rpm pgdg 0.32.0 41.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/semver_14-0.32.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 semver_14 semver_14-0.31.2-1.rhel8.x86_64.rpm pgdg 0.31.2 40.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/semver_14-0.31.2-1.rhel8.x86_64.rpm
@ el8.x86_64 14 semver_14 semver_14-0.31.1-2.rhel8.x86_64.rpm pgdg 0.31.1 39.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/semver_14-0.31.1-2.rhel8.x86_64.rpm
@ el8.aarch64 14 semver_14 semver_14-0.41.0-1PIGSTY.el8.aarch64.rpm pigsty 0.41.0 27.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/semver_14-0.41.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 semver_14 semver_14-0.41.0-1PGDG.rhel8.10.aarch64.rpm pgdg 0.41.0 28.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/semver_14-0.41.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 semver_14 semver_14-0.32.1-1PGDG.rhel8.aarch64.rpm pgdg 0.32.1 26.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/semver_14-0.32.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 semver_14 semver_14-0.32.0-1.rhel8.aarch64.rpm pgdg 0.32.0 41.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/semver_14-0.32.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 semver_14 semver_14-0.41.0-1PIGSTY.el9.x86_64.rpm pigsty 0.41.0 27.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/semver_14-0.41.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 semver_14 semver_14-0.41.0-1PGDG.rhel9.7.x86_64.rpm pgdg 0.41.0 27.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/semver_14-0.41.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 semver_14 semver_14-0.32.1-1PGDG.rhel9.x86_64.rpm pgdg 0.32.1 26.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/semver_14-0.32.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 semver_14 semver_14-0.32.0-1.rhel9.x86_64.rpm pgdg 0.32.0 42.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/semver_14-0.32.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 semver_14 semver_14-0.41.0-1PIGSTY.el9.aarch64.rpm pigsty 0.41.0 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/semver_14-0.41.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 semver_14 semver_14-0.41.0-1PGDG.rhel9.7.aarch64.rpm pgdg 0.41.0 27.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/semver_14-0.41.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 semver_14 semver_14-0.32.1-1PGDG.rhel9.aarch64.rpm pgdg 0.32.1 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/semver_14-0.32.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 semver_14 semver_14-0.32.0-1.rhel9.aarch64.rpm pgdg 0.32.0 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/semver_14-0.32.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 semver_14 semver_14-0.41.0-1PIGSTY.el10.x86_64.rpm pigsty 0.41.0 27.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/semver_14-0.41.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 semver_14 semver_14-0.41.0-1PGDG.rhel10.1.x86_64.rpm pgdg 0.41.0 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/semver_14-0.41.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 semver_14 semver_14-0.40.0-1PGDG.rhel10.x86_64.rpm pgdg 0.40.0 27.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/semver_14-0.40.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 semver_14 semver_14-0.41.0-1PIGSTY.el10.aarch64.rpm pigsty 0.41.0 27.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/semver_14-0.41.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 semver_14 semver_14-0.41.0-1PGDG.rhel10.1.aarch64.rpm pgdg 0.41.0 27.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/semver_14-0.41.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 semver_14 semver_14-0.40.0-1PGDG.rhel10.aarch64.rpm pgdg 0.40.0 27.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/semver_14-0.40.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg12+1_amd64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg12+1_arm64.deb pgdg 0.41.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg13+1_amd64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg13+1_arm64.deb pgdg 0.41.0 38.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg22.04+1_amd64.deb pgdg 0.41.0 39.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg22.04+1_arm64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg24.04+1_amd64.deb pgdg 0.41.0 38.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg24.04+1_arm64.deb pgdg 0.41.0 38.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg26.04+1_amd64.deb pgdg 0.41.0 38.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-semver postgresql-14-semver_0.41.0-1.pgdg26.04+1_arm64.deb pgdg 0.41.0 38.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-semver/postgresql-14-semver_0.41.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_semver` using `pig build`:

```bash
pig build pkg pg_semver         # build RPM packages
```


## Install

You can install `pg_semver` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_semver;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_semver -v 18  # PG 18
pig ext install -y pg_semver -v 17  # PG 17
pig ext install -y pg_semver -v 16  # PG 16
pig ext install -y pg_semver -v 15  # PG 15
pig ext install -y pg_semver -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y semver_18       # PG 18
dnf install -y semver_17       # PG 17
dnf install -y semver_16       # PG 16
dnf install -y semver_15       # PG 15
dnf install -y semver_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-semver   # PG 18
apt install -y postgresql-17-semver   # PG 17
apt install -y postgresql-16-semver   # PG 16
apt install -y postgresql-15-semver   # PG 15
apt install -y postgresql-14-semver   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION semver;
```



## Usage

> [semver: semantic versioning data type](https://github.com/theory/pg-semver)

The `semver` extension provides a data type implementing [Semantic Versioning 2.0.0](https://semver.org/spec/v2.0.0.html).

```sql
CREATE EXTENSION semver;

SELECT '1.2.1'::semver;
SELECT '1.2.0'::semver > '1.2.0-b1'::semver;  -- true (prerelease < release)
```

### Operators

| Operator | Description | Example | Result |
|----------|-------------|---------|--------|
| `=` | Equal | `'1.2.0'::semver = '1.2.00'::semver` | `t` |
| `<>` | Not equal | `'1.2.0'::semver <> '1.2.00'::semver` | `f` |
| `<` | Less than | `'3.4.0-b1'::semver < '3.4.0'::semver` | `t` |
| `<=` | Less or equal | `'3.4.0-b1'::semver <= '3.4.0'::semver` | `t` |
| `>` | Greater than | `'3.4.0-b1'::semver > '3.4.0'::semver` | `f` |
| `>=` | Greater or equal | `'3.4.0-b1'::semver >= '3.4.0'::semver` | `f` |

### Functions

| Function | Description | Example | Result |
|----------|-------------|---------|--------|
| `to_semver(text)` | Permissive parse | `to_semver('1.0')` | `1.0.0` |
| `is_semver(text)` | Validate format | `is_semver('1.2.0')` | `true` |
| `semver(text)` | Strict cast | `semver('1.2.1')` | `1.2.1` |
| `get_semver_major(semver)` | Major version | `get_semver_major('4.2.0')` | `4` |
| `get_semver_minor(semver)` | Minor version | `get_semver_minor('4.2.0')` | `2` |
| `get_semver_patch(semver)` | Patch version | `get_semver_patch('4.2.0')` | `0` |
| `get_semver_prerelease(semver)` | Prerelease part | `get_semver_prerelease('2.1.0-b2+bfb13')` | `b2` |

Supports casts from `text`, `numeric`, `real`, `double precision`, `integer`, `bigint`, `smallint`.

### Range Type

The `semverrange` type supports standard range operators:

```sql
SELECT '1.0.5'::semver <@ '[1.0.0, 2.0.0)'::semverrange;  -- true
```

### Aggregate Functions

`MIN(semver)` and `MAX(semver)` are supported. Btree and hash indexes are available.
