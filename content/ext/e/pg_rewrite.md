---
title: "pg_rewrite"
linkTitle: "pg_rewrite"
description: "Tool allows read write to the table during the rewriting"
weight: 5020
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/pg_rewrite">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/pg_rewrite</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/pg_rewrite</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_rewrite`**](/ext/e/pg_rewrite) | `2.1.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5020  | [**`pg_rewrite`**](/ext/e/pg_rewrite) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_repack`](/ext/e/pg_repack) [`pg_squeeze`](/ext/e/pg_squeeze) [`pgfincore`](/ext/e/pgfincore) [`pg_prewarm`](/ext/e/pg_prewarm) [`pgstattuple`](/ext/e/pgstattuple) [`amcheck`](/ext/e/amcheck) [`pageinspect`](/ext/e/pageinspect) [`pg_visibility`](/ext/e/pg_visibility) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_rewrite` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_rewrite_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-rewrite` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 |
| el8.aarch64 | AVAIL PGDG 2.1.0 2 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 | AVAIL PGDG 2.1.0 3 |
| el9.x86_64 | AVAIL PGDG 2.1.0 4 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 |
| el9.aarch64 | AVAIL PGDG 2.1.0 4 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 |
| el10.x86_64 | AVAIL PGDG 2.1.0 4 | AVAIL PGDG 2.1.0 4 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 |
| el10.aarch64 | AVAIL PGDG 2.1.0 4 | AVAIL PGDG 2.1.0 4 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 5 | AVAIL PGDG 2.1.0 4 |
| d12.x86_64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| d12.aarch64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| d13.x86_64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| d13.aarch64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| u22.x86_64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| u22.aarch64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| u24.x86_64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| u24.aarch64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| u26.x86_64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
| u26.aarch64 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 | AVAIL PGDG 2.1.0 1 |
@ el8.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 38.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_rewrite_18-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.0.0-1PGDG.rhel8.x86_64.rpm pgdg 2.0.0 37.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_rewrite_18-2.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 36.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_rewrite_18-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.0.0-1PGDG.rhel8.aarch64.rpm pgdg 2.0.0 35.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_rewrite_18-2.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 38.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_rewrite_18-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 38.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_rewrite_18-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 38.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_rewrite_18-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.0.0-1PGDG.rhel9.x86_64.rpm pgdg 2.0.0 38.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_rewrite_18-2.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 37.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_rewrite_18-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 37.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_rewrite_18-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 37.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_rewrite_18-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.0.0-1PGDG.rhel9.aarch64.rpm pgdg 2.0.0 36.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_rewrite_18-2.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 39.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_rewrite_18-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 39.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_rewrite_18-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 39.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_rewrite_18-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_rewrite_18 pg_rewrite_18-2.0.0-1PGDG.rhel10.x86_64.rpm pgdg 2.0.0 39.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_rewrite_18-2.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_rewrite_18-2.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_rewrite_18-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_rewrite_18-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_rewrite_18 pg_rewrite_18-2.0.0-1PGDG.rhel10.aarch64.rpm pgdg 2.0.0 37.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_rewrite_18-2.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 76.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 71.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 76.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 71.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 79.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 74.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 76.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 71.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 75.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-rewrite postgresql-18-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 71.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-18-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 37.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_rewrite_17-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 37.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_rewrite_17-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PGDG.rhel8.x86_64.rpm pgdg 2.0.0 37.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_rewrite_17-2.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 35.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_rewrite_17-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 35.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_rewrite_17-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PGDG.rhel8.aarch64.rpm pgdg 2.0.0 35.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_rewrite_17-2.0.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 38.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_rewrite_17-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 38.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_rewrite_17-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 38.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_rewrite_17-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 37.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_rewrite_17-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PGDG.rhel9.x86_64.rpm pgdg 2.0.0 37.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_rewrite_17-2.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 36.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_rewrite_17-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 36.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_rewrite_17-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 37.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_rewrite_17-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 36.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_rewrite_17-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PGDG.rhel9.aarch64.rpm pgdg 2.0.0 36.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_rewrite_17-2.0.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 39.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_rewrite_17-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 39.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_rewrite_17-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 39.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_rewrite_17-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PGDG.rhel10.x86_64.rpm pgdg 2.0.0 38.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_rewrite_17-2.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_rewrite_17-2.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_rewrite_17-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_rewrite_17-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_rewrite_17 pg_rewrite_17-2.0.0-1PGDG.rhel10.aarch64.rpm pgdg 2.0.0 37.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_rewrite_17-2.0.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 71.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 75.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 71.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 90.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 85.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 75.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 70.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 74.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-rewrite postgresql-17-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 70.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-17-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 37.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_rewrite_16-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.0.0-1PGDG.rhel8.x86_64.rpm pgdg 2.0.0 37.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_rewrite_16-2.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_rewrite_16 pg_rewrite_16-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 36.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_rewrite_16-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 35.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_rewrite_16-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.0.0-1PGDG.rhel8.aarch64.rpm pgdg 2.0.0 35.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_rewrite_16-2.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_rewrite_16 pg_rewrite_16-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 34.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_rewrite_16-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 38.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_rewrite_16-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 38.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_rewrite_16-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 38.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_rewrite_16-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.0.0-1PGDG.rhel9.x86_64.rpm pgdg 2.0.0 37.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_rewrite_16-2.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_rewrite_16 pg_rewrite_16-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 36.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_rewrite_16-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 37.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_rewrite_16-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 36.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_rewrite_16-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 37.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_rewrite_16-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.0.0-1PGDG.rhel9.aarch64.rpm pgdg 2.0.0 36.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_rewrite_16-2.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_rewrite_16 pg_rewrite_16-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 34.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_rewrite_16-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 39.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_rewrite_16-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 39.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_rewrite_16-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 39.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_rewrite_16-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_rewrite_16 pg_rewrite_16-2.0.0-1PGDG.rhel10.x86_64.rpm pgdg 2.0.0 38.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_rewrite_16-2.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_rewrite_16 pg_rewrite_16-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 37.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_rewrite_16-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.0 37.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_rewrite_16-2.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_rewrite_16-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_rewrite_16-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_rewrite_16 pg_rewrite_16-2.0.0-1PGDG.rhel10.aarch64.rpm pgdg 2.0.0 37.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_rewrite_16-2.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_rewrite_16 pg_rewrite_16-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 35.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_rewrite_16-1.1.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 71.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 71.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 89.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 85.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 70.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 74.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-rewrite postgresql-16-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 70.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-16-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 38.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_rewrite_15-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.0.0-1PGDG.rhel8.x86_64.rpm pgdg 2.0.0 37.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_rewrite_15-2.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_rewrite_15 pg_rewrite_15-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 36.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_rewrite_15-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 35.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_rewrite_15-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.0.0-1PGDG.rhel8.aarch64.rpm pgdg 2.0.0 35.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_rewrite_15-2.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_rewrite_15 pg_rewrite_15-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 34.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_rewrite_15-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 38.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_rewrite_15-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 38.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_rewrite_15-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_rewrite_15-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.0.0-1PGDG.rhel9.x86_64.rpm pgdg 2.0.0 38.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_rewrite_15-2.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_rewrite_15 pg_rewrite_15-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 36.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_rewrite_15-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 36.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_rewrite_15-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 36.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_rewrite_15-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 37.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_rewrite_15-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.0.0-1PGDG.rhel9.aarch64.rpm pgdg 2.0.0 36.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_rewrite_15-2.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_rewrite_15 pg_rewrite_15-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 34.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_rewrite_15-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_rewrite_15-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 38.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_rewrite_15-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 39.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_rewrite_15-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_rewrite_15 pg_rewrite_15-2.0.0-1PGDG.rhel10.x86_64.rpm pgdg 2.0.0 38.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_rewrite_15-2.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_rewrite_15 pg_rewrite_15-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 37.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_rewrite_15-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.1.0 37.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_rewrite_15-2.1.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 37.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_rewrite_15-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 37.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_rewrite_15-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_rewrite_15 pg_rewrite_15-2.0.0-1PGDG.rhel10.aarch64.rpm pgdg 2.0.0 37.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_rewrite_15-2.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_rewrite_15 pg_rewrite_15-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 36.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_rewrite_15-1.1.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 70.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 75.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 70.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 89.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 84.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 75.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 70.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 74.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-rewrite postgresql-15-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 70.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-15-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.1.0 38.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_rewrite_14-2.1.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.0.0-1PGDG.rhel8.x86_64.rpm pgdg 2.0.0 37.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_rewrite_14-2.0.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_rewrite_14 pg_rewrite_14-1.1.0-1PGDG.rhel8.x86_64.rpm pgdg 1.1.0 36.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_rewrite_14-1.1.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.1.0 35.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_rewrite_14-2.1.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.0.0-1PGDG.rhel8.aarch64.rpm pgdg 2.0.0 35.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_rewrite_14-2.0.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_rewrite_14 pg_rewrite_14-1.1.0-1PGDG.rhel8.aarch64.rpm pgdg 1.1.0 34.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_rewrite_14-1.1.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.1.0 38.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_rewrite_14-2.1.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel9.7.x86_64.rpm pgdg 2.1.0 38.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_rewrite_14-2.1.0-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel9.6.x86_64.rpm pgdg 2.1.0 38.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_rewrite_14-2.1.0-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.0.0-1PGDG.rhel9.x86_64.rpm pgdg 2.0.0 38.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_rewrite_14-2.0.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_rewrite_14 pg_rewrite_14-1.1.0-1PGDG.rhel9.x86_64.rpm pgdg 1.1.0 36.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_rewrite_14-1.1.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.1.0 37.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_rewrite_14-2.1.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel9.7.aarch64.rpm pgdg 2.1.0 37.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_rewrite_14-2.1.0-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel9.6.aarch64.rpm pgdg 2.1.0 37.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_rewrite_14-2.1.0-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.0.0-1PGDG.rhel9.aarch64.rpm pgdg 2.0.0 36.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_rewrite_14-2.0.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_rewrite_14 pg_rewrite_14-1.1.0-1PGDG.rhel9.aarch64.rpm pgdg 1.1.0 35.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_rewrite_14-1.1.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.1.0 39.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_rewrite_14-2.1.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel10.1.x86_64.rpm pgdg 2.1.0 39.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_rewrite_14-2.1.0-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel10.0.x86_64.rpm pgdg 2.1.0 39.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_rewrite_14-2.1.0-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_rewrite_14 pg_rewrite_14-2.0.0-1PGDG.rhel10.x86_64.rpm pgdg 2.0.0 39.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_rewrite_14-2.0.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_rewrite_14 pg_rewrite_14-1.1.0-1PGDG.rhel10.x86_64.rpm pgdg 1.1.0 37.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_rewrite_14-1.1.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel10.1.aarch64.rpm pgdg 2.1.0 37.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_rewrite_14-2.1.0-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.1.0-1PGDG.rhel10.0.aarch64.rpm pgdg 2.1.0 37.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_rewrite_14-2.1.0-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_rewrite_14 pg_rewrite_14-2.0.0-1PGDG.rhel10.aarch64.rpm pgdg 2.0.0 37.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_rewrite_14-2.0.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_rewrite_14 pg_rewrite_14-1.1.0-1PGDG.rhel10.aarch64.rpm pgdg 1.1.0 36.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_rewrite_14-1.1.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb pgdg 2.1.0 75.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb pgdg 2.1.0 71.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb pgdg 2.1.0 75.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb pgdg 2.1.0 70.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb pgdg 2.1.0 89.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb pgdg 2.1.0 84.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb pgdg 2.1.0 75.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb pgdg 2.1.0 71.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb pgdg 2.1.0 74.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-rewrite postgresql-14-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb pgdg 2.1.0 70.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-rewrite/postgresql-14-pg-rewrite_2.1.0-1.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_rewrite` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_rewrite;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_rewrite -v 18  # PG 18
pig ext install -y pg_rewrite -v 17  # PG 17
pig ext install -y pg_rewrite -v 16  # PG 16
pig ext install -y pg_rewrite -v 15  # PG 15
pig ext install -y pg_rewrite -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_rewrite_18       # PG 18
dnf install -y pg_rewrite_17       # PG 17
dnf install -y pg_rewrite_16       # PG 16
dnf install -y pg_rewrite_15       # PG 15
dnf install -y pg_rewrite_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-rewrite   # PG 18
apt install -y postgresql-17-pg-rewrite   # PG 17
apt install -y postgresql-16-pg-rewrite   # PG 16
apt install -y postgresql-15-pg-rewrite   # PG 15
apt install -y postgresql-14-pg-rewrite   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_rewrite';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_rewrite;
```




## Usage

> [pg_rewrite: Tool allows read write to the table during the rewriting](https://github.com/cybertec-postgresql/pg_rewrite)

`pg_rewrite` requires `wal_level = logical` and must be added to `shared_preload_libraries`. Common use cases include changing column data types, partitioning tables, reordering columns, and moving tables to different tablespaces -- all while allowing concurrent reads and writes.

### Rewrite a Table

Create the target table with the desired schema, then call `rewrite_table()`:

```sql
-- Source table
CREATE TABLE measurement (id int, city_id int NOT NULL, logdate date NOT NULL, peaktemp int, PRIMARY KEY(id, logdate));

-- Target table with new schema (e.g., bigint id + partitioning)
CREATE TABLE measurement_aux (id bigint, city_id int NOT NULL, logdate date NOT NULL, peaktemp int, PRIMARY KEY(id, logdate))
  PARTITION BY RANGE (logdate);

CREATE TABLE measurement_y2006m02 PARTITION OF measurement_aux FOR VALUES FROM ('2006-02-01') TO ('2006-03-01');

-- Perform the rewrite (copies data, applies concurrent changes, then renames)
SELECT rewrite_table('measurement', 'measurement_aux', 'measurement_old');
```

Both source and target tables must have an identity index (typically a primary key). The function copies all rows, replays concurrent changes via logical decoding, then atomically renames the tables.

### Progress Monitoring

```sql
SELECT * FROM pg_rewrite_progress;
```

Shows `ins_initial` (initial rows copied), `ins`, `upd`, `del` (concurrent changes applied).

### Configuration

- **`rewrite.max_xlock_time`** -- Maximum time (ms) the exclusive lock is held during the final rename stage. Default `0` (unlimited). Set to e.g. `100` to limit lock duration to 0.1s; the function will retry if exceeded.

```sql
SET rewrite.max_xlock_time TO 100;
```

### Constraints Handling

- PRIMARY KEY, UNIQUE, EXCLUDE: add to target table before calling `rewrite_table()`
- CHECK, NOT NULL (PG18+), FOREIGN KEY: created automatically as NOT VALID; validate with `ALTER TABLE ... VALIDATE CONSTRAINT ...`
