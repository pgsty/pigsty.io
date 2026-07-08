---
title: "pg_catcheck"
linkTitle: "pg_catcheck"
description: "Diagnosing system catalog corruption"
weight: 5160
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/EnterpriseDB/pg_catcheck">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">EnterpriseDB/pg_catcheck</div>
    <div class="ext-card__desc">https://github.com/EnterpriseDB/pg_catcheck</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_catcheck`**](/ext/e/pg_catcheck) | `1.6.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5160  | [**`pg_catcheck`**](/ext/e/pg_catcheck) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_checksums`](/ext/e/pg_checksums) [`amcheck`](/ext/e/amcheck) [`pg_surgery`](/ext/e/pg_surgery) [`pageinspect`](/ext/e/pageinspect) [`pg_visibility`](/ext/e/pg_visibility) [`pgstattuple`](/ext/e/pgstattuple) [`ddlx`](/ext/e/ddlx) [`pgdd`](/ext/e/pgdd) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_catcheck` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_catcheck_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.6.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-catcheck` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 3 |
| el8.aarch64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 |
| el9.x86_64 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 3 | AVAIL PGDG 1.6.0 3 | AVAIL PGDG 1.6.0 3 | AVAIL PGDG 1.6.0 3 |
| el9.aarch64 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 3 | AVAIL PGDG 1.6.0 3 | AVAIL PGDG 1.6.0 3 | AVAIL PGDG 1.6.0 3 |
| el10.x86_64 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 |
| el10.aarch64 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 2 | AVAIL PGDG 1.6.0 1 |
| d12.x86_64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d12.aarch64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d13.x86_64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| d13.aarch64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u22.x86_64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u22.aarch64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u24.x86_64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u24.aarch64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u26.x86_64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
| u26.aarch64 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 | AVAIL PGDG 1.6.0 1 |
@ el8.x86_64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-3PGDG.rhel8.x86_64.rpm pgdg 1.6.0 43.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_catcheck_18-1.6.0-3PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-3PGDG.rhel8.aarch64.rpm pgdg 1.6.0 42.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_catcheck_18-1.6.0-3PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-4PGDG.rhel9.8.x86_64.rpm pgdg 1.6.0 37.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_catcheck_18-1.6.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-3PGDG.rhel9.x86_64.rpm pgdg 1.6.0 37.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_catcheck_18-1.6.0-3PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-4PGDG.rhel9.8.aarch64.rpm pgdg 1.6.0 37.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_catcheck_18-1.6.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-3PGDG.rhel9.aarch64.rpm pgdg 1.6.0 37.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_catcheck_18-1.6.0-3PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-4PGDG.rhel10.2.x86_64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_catcheck_18-1.6.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-3PGDG.rhel10.x86_64.rpm pgdg 1.6.0 38.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_catcheck_18-1.6.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.0 38.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_catcheck_18-1.6.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_catcheck_18 pg_catcheck_18-1.6.0-3PGDG.rhel10.aarch64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_catcheck_18-1.6.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb pgdg 1.6.0 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb pgdg 1.6.0 33.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb pgdg 1.6.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb pgdg 1.6.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb pgdg 1.6.0 35.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb pgdg 1.6.0 33.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb pgdg 1.6.0 35.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb pgdg 1.6.0 33.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb pgdg 1.6.0 35.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-catcheck postgresql-18-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb pgdg 1.6.0 33.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-18-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 43.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_catcheck_17-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_catcheck_17 pg_catcheck_17-1.5.0-1PGDG.rhel8.x86_64.rpm pgdg 1.5.0 43.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_catcheck_17-1.5.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 42.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_catcheck_17-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_catcheck_17 pg_catcheck_17-1.5.0-1PGDG.rhel8.aarch64.rpm pgdg 1.5.0 42.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_catcheck_17-1.5.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-4PGDG.rhel9.8.x86_64.rpm pgdg 1.6.0 37.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_catcheck_17-1.6.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 37.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_catcheck_17-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_catcheck_17 pg_catcheck_17-1.5.0-1PGDG.rhel9.x86_64.rpm pgdg 1.5.0 37.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_catcheck_17-1.5.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-4PGDG.rhel9.8.aarch64.rpm pgdg 1.6.0 37.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_catcheck_17-1.6.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 37.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_catcheck_17-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_catcheck_17 pg_catcheck_17-1.5.0-1PGDG.rhel9.aarch64.rpm pgdg 1.5.0 37.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_catcheck_17-1.5.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-4PGDG.rhel10.2.x86_64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_catcheck_17-1.6.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-3PGDG.rhel10.x86_64.rpm pgdg 1.6.0 38.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_catcheck_17-1.6.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.0 38.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_catcheck_17-1.6.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_catcheck_17 pg_catcheck_17-1.6.0-3PGDG.rhel10.aarch64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_catcheck_17-1.6.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb pgdg 1.6.0 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb pgdg 1.6.0 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb pgdg 1.6.0 34.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb pgdg 1.6.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb pgdg 1.6.0 35.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb pgdg 1.6.0 33.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb pgdg 1.6.0 35.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb pgdg 1.6.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb pgdg 1.6.0 35.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-catcheck postgresql-17-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb pgdg 1.6.0 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-17-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 43.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_catcheck_16-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_catcheck_16 pg_catcheck_16-1.4.0-1PGDG.rhel8.x86_64.rpm pgdg 1.4.0 43.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_catcheck_16-1.4.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 42.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_catcheck_16-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_catcheck_16 pg_catcheck_16-1.4.0-1PGDG.rhel8.aarch64.rpm pgdg 1.4.0 42.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_catcheck_16-1.4.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-4PGDG.rhel9.8.x86_64.rpm pgdg 1.6.0 37.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_catcheck_16-1.6.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 37.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_catcheck_16-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_catcheck_16 pg_catcheck_16-1.4.0-1PGDG.rhel9.x86_64.rpm pgdg 1.4.0 37.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_catcheck_16-1.4.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-4PGDG.rhel9.8.aarch64.rpm pgdg 1.6.0 37.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_catcheck_16-1.6.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 37.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_catcheck_16-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_catcheck_16 pg_catcheck_16-1.4.0-1PGDG.rhel9.aarch64.rpm pgdg 1.4.0 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_catcheck_16-1.4.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-4PGDG.rhel10.2.x86_64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_catcheck_16-1.6.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-3PGDG.rhel10.x86_64.rpm pgdg 1.6.0 38.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_catcheck_16-1.6.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.0 38.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_catcheck_16-1.6.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_catcheck_16 pg_catcheck_16-1.6.0-3PGDG.rhel10.aarch64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_catcheck_16-1.6.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb pgdg 1.6.0 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb pgdg 1.6.0 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb pgdg 1.6.0 34.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb pgdg 1.6.0 34.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb pgdg 1.6.0 35.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb pgdg 1.6.0 33.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb pgdg 1.6.0 35.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb pgdg 1.6.0 33.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb pgdg 1.6.0 35.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-catcheck postgresql-16-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb pgdg 1.6.0 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-16-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 43.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_catcheck_15-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_catcheck_15 pg_catcheck_15-1.3.0-1.rhel8.x86_64.rpm pgdg 1.3.0 42.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_catcheck_15-1.3.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 42.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_catcheck_15-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_catcheck_15 pg_catcheck_15-1.3.0-1.rhel8.aarch64.rpm pgdg 1.3.0 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_catcheck_15-1.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-4PGDG.rhel9.8.x86_64.rpm pgdg 1.6.0 37.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_catcheck_15-1.6.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 37.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_catcheck_15-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_catcheck_15 pg_catcheck_15-1.3.0-1.rhel9.x86_64.rpm pgdg 1.3.0 37.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_catcheck_15-1.3.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-4PGDG.rhel9.8.aarch64.rpm pgdg 1.6.0 37.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_catcheck_15-1.6.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 37.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_catcheck_15-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_catcheck_15 pg_catcheck_15-1.3.0-1.rhel9.aarch64.rpm pgdg 1.3.0 37.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_catcheck_15-1.3.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-4PGDG.rhel10.2.x86_64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_catcheck_15-1.6.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-3PGDG.rhel10.x86_64.rpm pgdg 1.6.0 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_catcheck_15-1.6.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-4PGDG.rhel10.2.aarch64.rpm pgdg 1.6.0 38.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_catcheck_15-1.6.0-4PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_catcheck_15 pg_catcheck_15-1.6.0-3PGDG.rhel10.aarch64.rpm pgdg 1.6.0 38.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_catcheck_15-1.6.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb pgdg 1.6.0 34.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb pgdg 1.6.0 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb pgdg 1.6.0 34.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb pgdg 1.6.0 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb pgdg 1.6.0 35.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb pgdg 1.6.0 33.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb pgdg 1.6.0 35.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb pgdg 1.6.0 33.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb pgdg 1.6.0 35.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-catcheck postgresql-15-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb pgdg 1.6.0 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-15-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 41.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_catcheck_14-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.3.0-1.rhel8.x86_64.rpm pgdg 1.3.0 41.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_catcheck_14-1.3.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.2.0-3.rhel8.x86_64.rpm pgdg 1.2.0 40.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_catcheck_14-1.2.0-3.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 41.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_catcheck_14-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_catcheck_14 pg_catcheck_14-1.3.0-1.rhel8.aarch64.rpm pgdg 1.3.0 40.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_catcheck_14-1.3.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-4PGDG.rhel9.8.x86_64.rpm pgdg 1.6.0 37.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_catcheck_14-1.6.0-4PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 37.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_catcheck_14-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.3.0-1.rhel9.x86_64.rpm pgdg 1.3.0 37.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_catcheck_14-1.3.0-1.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-4PGDG.rhel9.8.aarch64.rpm pgdg 1.6.0 37.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_catcheck_14-1.6.0-4PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 37.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_catcheck_14-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_catcheck_14 pg_catcheck_14-1.3.0-1.rhel9.aarch64.rpm pgdg 1.3.0 37.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_catcheck_14-1.3.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-4PGDG.rhel10.2.x86_64.rpm pgdg 1.6.0 38.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_catcheck_14-1.6.0-4PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-3PGDG.rhel10.x86_64.rpm pgdg 1.6.0 38.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_catcheck_14-1.6.0-3PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_catcheck_14 pg_catcheck_14-1.6.0-3PGDG.rhel10.aarch64.rpm pgdg 1.6.0 38.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_catcheck_14-1.6.0-3PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb pgdg 1.6.0 33.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb pgdg 1.6.0 32.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb pgdg 1.6.0 34.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb pgdg 1.6.0 33.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb pgdg 1.6.0 34.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb pgdg 1.6.0 33.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb pgdg 1.6.0 34.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb pgdg 1.6.0 33.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb pgdg 1.6.0 34.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-catcheck postgresql-14-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb pgdg 1.6.0 33.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-catcheck/postgresql-14-pg-catcheck_1.6.0-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_catcheck` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_catcheck;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_catcheck -v 18  # PG 18
pig ext install -y pg_catcheck -v 17  # PG 17
pig ext install -y pg_catcheck -v 16  # PG 16
pig ext install -y pg_catcheck -v 15  # PG 15
pig ext install -y pg_catcheck -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_catcheck_18       # PG 18
dnf install -y pg_catcheck_17       # PG 17
dnf install -y pg_catcheck_16       # PG 16
dnf install -y pg_catcheck_15       # PG 15
dnf install -y pg_catcheck_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-catcheck   # PG 18
apt install -y postgresql-17-pg-catcheck   # PG 17
apt install -y postgresql-16-pg-catcheck   # PG 16
apt install -y postgresql-15-pg-catcheck   # PG 15
apt install -y postgresql-14-pg-catcheck   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_catcheck;
```




## Usage

> [pg_catcheck: Diagnosing system catalog corruption](https://github.com/EnterpriseDB/pg_catcheck)

`pg_catcheck` is a command-line tool that checks PostgreSQL system catalogs for corruption by verifying cross-references between catalog tables. It accepts the same connection parameters as other PostgreSQL utilities (`-h`, `-p`, `-U`, `-d`).

### Basic Usage

```bash
pg_catcheck -h localhost -p 5432 -d mydb
```

Normal output when no issues are found:

```
progress: done (0 inconsistencies, 0 warnings, 0 errors)
```

### Example Output with Corruption

```
notice: pg_class row has invalid relnamespace "24580": no matching entry in pg_namespace
row identity: oid="24581" relname="foo" relkind="r"
notice: pg_type row has invalid typnamespace "24580": no matching entry in pg_namespace
row identity: oid="24583"
progress: done (4 inconsistencies, 0 warnings, 0 errors)
```

### Result Categories

- **Inconsistencies**: logical problems in catalog cross-references (e.g., dangling OID references)
- **Warnings**: more serious issues
- **Errors**: inability to read catalogs

### Options

```bash
pg_catcheck --help                      # Full list of options
pg_catcheck --select-from-relations     # Also check for missing/inaccessible relation files
```

### Connection

Supports the same options as `psql`: `-h` host, `-p` port, `-U` user, `-d` database, or connection strings/URLs.
