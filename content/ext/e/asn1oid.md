---
title: "asn1oid"
linkTitle: "asn1oid"
description: "asn1oid extension"
weight: 3620
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/df7cb/pgsql-asn1oid">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">df7cb/pgsql-asn1oid</div>
    <div class="ext-card__desc">https://github.com/df7cb/pgsql-asn1oid</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsql-asn1oid-1.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsql-asn1oid-1.6.tar.gz</div>
    <div class="ext-card__desc">pgsql-asn1oid-1.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`asn1oid`**](/ext/e/asn1oid) | `1.6` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3620  | [**`asn1oid`**](/ext/e/asn1oid) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`isn`](/ext/e/isn) [`uri`](/ext/e/uri) [`country`](/ext/e/country) [`emailaddr`](/ext/e/emailaddr) [`pg_html5_email_address`](/ext/e/pg_html5_email_address) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `asn1oid` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `asn1oid_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-asn1oid` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el8.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el9.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el9.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el10.x86_64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| el10.aarch64 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 | AVAIL PIGSTY 1.6 1 |
| d12.x86_64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| d12.aarch64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| d13.x86_64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| d13.aarch64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| u22.x86_64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| u22.aarch64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| u24.x86_64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| u24.aarch64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| u26.x86_64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
| u26.aarch64 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 | AVAIL PGDG 1.6 1 |
@ el8.x86_64 18 asn1oid_18 asn1oid_18-1.6-2PGSTY.el8.x86_64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/asn1oid_18-1.6-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 asn1oid_18 asn1oid_18-1.6-2PGSTY.el8.aarch64.rpm pigsty 1.6 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/asn1oid_18-1.6-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 asn1oid_18 asn1oid_18-1.6-2PGSTY.el9.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/asn1oid_18-1.6-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 asn1oid_18 asn1oid_18-1.6-2PGSTY.el9.aarch64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/asn1oid_18-1.6-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 asn1oid_18 asn1oid_18-1.6-2PGSTY.el10.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/asn1oid_18-1.6-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 asn1oid_18 asn1oid_18-1.6-2PGSTY.el10.aarch64.rpm pigsty 1.6 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/asn1oid_18-1.6-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg12+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg12+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg13+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg13+1_arm64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg22.04+1_amd64.deb pgdg 1.6 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg22.04+1_arm64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg24.04+1_amd64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg24.04+1_arm64.deb pgdg 1.6 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg26.04+1_amd64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-asn1oid postgresql-18-asn1oid_1.6-3.pgdg26.04+1_arm64.deb pgdg 1.6 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-18-asn1oid_1.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 asn1oid_17 asn1oid_17-1.6-2PGSTY.el8.x86_64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/asn1oid_17-1.6-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 asn1oid_17 asn1oid_17-1.6-2PGSTY.el8.aarch64.rpm pigsty 1.6 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/asn1oid_17-1.6-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 asn1oid_17 asn1oid_17-1.6-2PGSTY.el9.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/asn1oid_17-1.6-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 asn1oid_17 asn1oid_17-1.6-2PGSTY.el9.aarch64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/asn1oid_17-1.6-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 asn1oid_17 asn1oid_17-1.6-2PGSTY.el10.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/asn1oid_17-1.6-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 asn1oid_17 asn1oid_17-1.6-2PGSTY.el10.aarch64.rpm pigsty 1.6 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/asn1oid_17-1.6-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg12+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg12+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg13+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg13+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg22.04+1_amd64.deb pgdg 1.6 13.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg22.04+1_arm64.deb pgdg 1.6 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg24.04+1_amd64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg24.04+1_arm64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg26.04+1_amd64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-asn1oid postgresql-17-asn1oid_1.6-3.pgdg26.04+1_arm64.deb pgdg 1.6 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-17-asn1oid_1.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 asn1oid_16 asn1oid_16-1.6-2PGSTY.el8.x86_64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/asn1oid_16-1.6-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 asn1oid_16 asn1oid_16-1.6-2PGSTY.el8.aarch64.rpm pigsty 1.6 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/asn1oid_16-1.6-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 asn1oid_16 asn1oid_16-1.6-2PGSTY.el9.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/asn1oid_16-1.6-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 asn1oid_16 asn1oid_16-1.6-2PGSTY.el9.aarch64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/asn1oid_16-1.6-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 asn1oid_16 asn1oid_16-1.6-2PGSTY.el10.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/asn1oid_16-1.6-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 asn1oid_16 asn1oid_16-1.6-2PGSTY.el10.aarch64.rpm pigsty 1.6 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/asn1oid_16-1.6-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg12+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg12+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg13+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg13+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg22.04+1_amd64.deb pgdg 1.6 13.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg22.04+1_arm64.deb pgdg 1.6 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg24.04+1_amd64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg24.04+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg26.04+1_amd64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-asn1oid postgresql-16-asn1oid_1.6-3.pgdg26.04+1_arm64.deb pgdg 1.6 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-16-asn1oid_1.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 asn1oid_15 asn1oid_15-1.6-2PGSTY.el8.x86_64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/asn1oid_15-1.6-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 asn1oid_15 asn1oid_15-1.6-2PGSTY.el8.aarch64.rpm pigsty 1.6 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/asn1oid_15-1.6-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 asn1oid_15 asn1oid_15-1.6-2PGSTY.el9.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/asn1oid_15-1.6-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 asn1oid_15 asn1oid_15-1.6-2PGSTY.el9.aarch64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/asn1oid_15-1.6-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 asn1oid_15 asn1oid_15-1.6-2PGSTY.el10.x86_64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/asn1oid_15-1.6-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 asn1oid_15 asn1oid_15-1.6-2PGSTY.el10.aarch64.rpm pigsty 1.6 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/asn1oid_15-1.6-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg12+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg12+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg13+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg13+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg22.04+1_amd64.deb pgdg 1.6 13.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg22.04+1_arm64.deb pgdg 1.6 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg24.04+1_amd64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg24.04+1_arm64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg26.04+1_amd64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-asn1oid postgresql-15-asn1oid_1.6-3.pgdg26.04+1_arm64.deb pgdg 1.6 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-15-asn1oid_1.6-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 asn1oid_14 asn1oid_14-1.6-2PGSTY.el8.x86_64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/asn1oid_14-1.6-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 asn1oid_14 asn1oid_14-1.6-2PGSTY.el8.aarch64.rpm pigsty 1.6 13.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/asn1oid_14-1.6-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 asn1oid_14 asn1oid_14-1.6-2PGSTY.el9.x86_64.rpm pigsty 1.6 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/asn1oid_14-1.6-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 asn1oid_14 asn1oid_14-1.6-2PGSTY.el9.aarch64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/asn1oid_14-1.6-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 asn1oid_14 asn1oid_14-1.6-2PGSTY.el10.x86_64.rpm pigsty 1.6 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/asn1oid_14-1.6-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 asn1oid_14 asn1oid_14-1.6-2PGSTY.el10.aarch64.rpm pigsty 1.6 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/asn1oid_14-1.6-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg12+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg12+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg13+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg13+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg22.04+1_amd64.deb pgdg 1.6 13.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg22.04+1_arm64.deb pgdg 1.6 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg24.04+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg24.04+1_arm64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg26.04+1_amd64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-asn1oid postgresql-14-asn1oid_1.6-3.pgdg26.04+1_arm64.deb pgdg 1.6 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-asn1oid/postgresql-14-asn1oid_1.6-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `asn1oid` using `pig build`:

```bash
pig build pkg asn1oid         # build RPM packages
```


## Install

You can install `asn1oid` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install asn1oid;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y asn1oid -v 18  # PG 18
pig ext install -y asn1oid -v 17  # PG 17
pig ext install -y asn1oid -v 16  # PG 16
pig ext install -y asn1oid -v 15  # PG 15
pig ext install -y asn1oid -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y asn1oid_18       # PG 18
dnf install -y asn1oid_17       # PG 17
dnf install -y asn1oid_16       # PG 16
dnf install -y asn1oid_15       # PG 15
dnf install -y asn1oid_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-asn1oid   # PG 18
apt install -y postgresql-17-asn1oid   # PG 17
apt install -y postgresql-16-asn1oid   # PG 16
apt install -y postgresql-15-asn1oid   # PG 15
apt install -y postgresql-14-asn1oid   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION asn1oid;
```




## Usage

> [asn1oid: ASN.1 OID data type for PostgreSQL](https://github.com/df7cb/pgsql-asn1oid)

The `asn1oid` extension provides a data type for storing and comparing ASN.1 Object Identifiers (OIDs).

```sql
CREATE EXTENSION asn1oid;

SELECT '1.3.6.1.4.1'::asn1oid;
   asn1oid
─────────────
 1.3.6.1.4.1
```

### Data Type

The `asn1oid` type stores ASN.1 OID values in dotted-decimal notation (e.g., `1.3.6.1.4.1.311`). These are hierarchical identifiers used in SNMP, LDAP, X.509 certificates, and other standards.

### Operators

Standard comparison operators are supported for ordering and equality: `=`, `<>`, `<`, `>`, `<=`, `>=`.

### Casts

The type supports casting to and from `text`.
