---
title: "pg_rational"
linkTitle: "pg_rational"
description: "bigint fractions"
weight: 3720
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/begriffs/pg_rational">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">begriffs/pg_rational</div>
    <div class="ext-card__desc">https://github.com/begriffs/pg_rational</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_rational-0.0.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_rational-0.0.2.tar.gz</div>
    <div class="ext-card__desc">pg_rational-0.0.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_rational`**](/ext/e/pg_rational) | `0.0.2` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3720  | [**`pg_rational`**](/ext/e/pg_rational) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) [`roaringbitmap`](/ext/e/roaringbitmap) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_rational` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_rational_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.0.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-rational` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 | AVAIL PIGSTY 0.0.2 1 |
| d12.x86_64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| d12.aarch64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| d13.x86_64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| d13.aarch64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| u22.x86_64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| u22.aarch64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| u24.x86_64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| u24.aarch64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| u26.x86_64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
| u26.aarch64 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 | AVAIL PGDG 0.0.2 1 |
@ el8.x86_64 18 pg_rational_18 pg_rational_18-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 19.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_18-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_rational_18 pg_rational_18-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_18-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_rational_18 pg_rational_18-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_18-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_rational_18 pg_rational_18-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_18-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_rational_18 pg_rational_18-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_18-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_rational_18 pg_rational_18-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_18-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 24.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 23.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-rational postgresql-18-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-18-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_rational_17 pg_rational_17-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_17-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_rational_17 pg_rational_17-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_17-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_rational_17 pg_rational_17-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_17-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_rational_17 pg_rational_17-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_17-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_rational_17 pg_rational_17-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_17-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_rational_17 pg_rational_17-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_17-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-rational postgresql-17-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-17-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_rational_16 pg_rational_16-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_16-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_rational_16 pg_rational_16-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_16-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_rational_16 pg_rational_16-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_16-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_rational_16 pg_rational_16-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_16-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_rational_16 pg_rational_16-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_16-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_rational_16 pg_rational_16-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_16-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-rational postgresql-16-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-16-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_rational_15 pg_rational_15-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_15-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_rational_15 pg_rational_15-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_15-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_rational_15 pg_rational_15-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 18.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_15-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_rational_15 pg_rational_15-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_15-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_rational_15 pg_rational_15-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_15-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_rational_15 pg_rational_15-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_15-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-rational postgresql-15-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-15-rational_0.0.2-8.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_rational_14 pg_rational_14-0.0.2-1PIGSTY.el8.x86_64.rpm pigsty 0.0.2 19.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rational_14-0.0.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_rational_14 pg_rational_14-0.0.2-1PIGSTY.el8.aarch64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rational_14-0.0.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_rational_14 pg_rational_14-0.0.2-1PIGSTY.el9.x86_64.rpm pigsty 0.0.2 18.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rational_14-0.0.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_rational_14 pg_rational_14-0.0.2-1PIGSTY.el9.aarch64.rpm pigsty 0.0.2 18.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rational_14-0.0.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_rational_14 pg_rational_14-0.0.2-1PIGSTY.el10.x86_64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_rational_14-0.0.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_rational_14 pg_rational_14-0.0.2-1PIGSTY.el10.aarch64.rpm pigsty 0.0.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_rational_14-0.0.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg12+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg12+1_arm64.deb pgdg 0.0.2 23.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg13+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg13+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg22.04+1_amd64.deb pgdg 0.0.2 25.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg22.04+1_arm64.deb pgdg 0.0.2 24.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg24.04+1_amd64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg24.04+1_arm64.deb pgdg 0.0.2 24.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg26.04+1_amd64.deb pgdg 0.0.2 24.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-rational postgresql-14-rational_0.0.2-8.pgdg26.04+1_arm64.deb pgdg 0.0.2 24.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rational/postgresql-14-rational_0.0.2-8.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_rational` using `pig build`:

```bash
pig build pkg pg_rational         # build RPM packages
```


## Install

You can install `pg_rational` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_rational;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_rational -v 18  # PG 18
pig ext install -y pg_rational -v 17  # PG 17
pig ext install -y pg_rational -v 16  # PG 16
pig ext install -y pg_rational -v 15  # PG 15
pig ext install -y pg_rational -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_rational_18       # PG 18
dnf install -y pg_rational_17       # PG 17
dnf install -y pg_rational_16       # PG 16
dnf install -y pg_rational_15       # PG 15
dnf install -y pg_rational_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-rational   # PG 18
apt install -y postgresql-17-rational   # PG 17
apt install -y postgresql-16-rational   # PG 16
apt install -y postgresql-15-rational   # PG 15
apt install -y postgresql-14-rational   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_rational;
```



## Usage

> [pg_rational: precise fractional arithmetic in 64 bits](https://github.com/begriffs/pg_rational)

The `pg_rational` extension provides exact fractional arithmetic stored in 64 bits (same size as float), with support for Stern-Brocot trees for finding intermediate fractions.

```sql
CREATE EXTENSION pg_rational;
```

### Data Types

- **`rational`**: Fractional type (numerator/denominator)
- **`ratt`**: Helper type for tuple coercion

### Basic Arithmetic

```sql
SELECT '1/3'::rational + '2/7'::rational;  -- 13/21
SELECT '3/4'::rational * '2/3'::rational;  -- 1/2
```

### Functions

```sql
-- Simplify fractions
SELECT rational_simplify('36/12');  -- 3/1

-- Find intermediate fraction (Stern-Brocot tree)
SELECT rational_intermediate('1/2', '2/3');  -- 3/5
```

### Type Conversions

```sql
SELECT 0.263157894737::float::rational;  -- 5/19
SELECT '-1/2'::rational::float;          -- -0.5
SELECT 1::rational;                       -- 1/1
```

### Dynamic Row Ordering

A key use case is maintaining sortable row order without renumbering:

```sql
CREATE TABLE todos (
    prio rational UNIQUE DEFAULT nextval('todos_seq')::integer,
    what text NOT NULL
);

-- Insert between items at priority 1 and 2
INSERT INTO todos VALUES (rational_intermediate('1', '2'), 'new task');
-- prio becomes 3/2, no other rows affected
```

### Index Support

Btree and hash indexes are supported for `rational` columns.
