---
title: "pg_squeeze"
linkTitle: "pg_squeeze"
description: "A tool to remove unused space from a relation."
weight: 5040
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/cybertec-postgresql/pg_squeeze">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">cybertec-postgresql/pg_squeeze</div>
    <div class="ext-card__desc">https://github.com/cybertec-postgresql/pg_squeeze</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_squeeze`**](/ext/e/pg_squeeze) | `1.9.3` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5040  | [**`pg_squeeze`**](/ext/e/pg_squeeze) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `squeeze` |
{.ext-table}

| **Related** | [`pg_repack`](/ext/e/pg_repack) [`pgfincore`](/ext/e/pgfincore) [`pg_prewarm`](/ext/e/pg_prewarm) [`pgstattuple`](/ext/e/pgstattuple) [`pg_cooldown`](/ext/e/pg_cooldown) [`pgcozy`](/ext/e/pgcozy) [`amcheck`](/ext/e/amcheck) [`pageinspect`](/ext/e/pageinspect) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9.3` | {{< pgvers "18,17,16,15,14" >}} | `pg_squeeze` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_squeeze_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9.3` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-squeeze` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.9.2 2 | AVAIL PGDG 1.9.2 5 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 7 | AVAIL PGDG 1.9.2 8 |
| el8.aarch64 | AVAIL PGDG 1.9.2 2 | AVAIL PGDG 1.9.2 5 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 7 | AVAIL PGDG 1.9.2 7 |
| el9.x86_64 | AVAIL PGDG 1.9.2 5 | AVAIL PGDG 1.9.2 8 | AVAIL PGDG 1.9.2 9 | AVAIL PGDG 1.9.2 10 | AVAIL PGDG 1.9.2 11 |
| el9.aarch64 | AVAIL PGDG 1.9.2 5 | AVAIL PGDG 1.9.2 8 | AVAIL PGDG 1.9.2 9 | AVAIL PGDG 1.9.2 10 | AVAIL PGDG 1.9.2 10 |
| el10.x86_64 | AVAIL PGDG 1.9.2 5 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 6 |
| el10.aarch64 | AVAIL PGDG 1.9.2 5 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 6 | AVAIL PGDG 1.9.2 6 |
| d12.x86_64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| d12.aarch64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| d13.x86_64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| d13.aarch64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| u22.x86_64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| u22.aarch64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| u24.x86_64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| u24.aarch64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| u26.x86_64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
| u26.aarch64 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 | AVAIL PGDG 1.9.3 3 |
@ el8.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_squeeze_18-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_squeeze_18-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.2 57.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 56.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 57.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.9.1 56.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_squeeze_18-1.9.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel9.x86_64.rpm pgdg 1.9.1 56.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_squeeze_18-1.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.9.1 54.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_squeeze_18-1.9.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel9.aarch64.rpm pgdg 1.9.1 54.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_squeeze_18-1.9.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.2 57.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 57.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 57.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.9.1 57.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_squeeze_18-1.9.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel10.x86_64.rpm pgdg 1.9.1 57.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_squeeze_18-1.9.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg12+1_amd64.deb pgdg 1.9.3 116.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 116.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg12+1_amd64.deb pgdg 1.9.1 115.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg12+1_arm64.deb pgdg 1.9.3 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg12+1_arm64.deb pgdg 1.9.1 111.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg13+1_amd64.deb pgdg 1.9.3 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg13+1_amd64.deb pgdg 1.9.1 115.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg13+1_arm64.deb pgdg 1.9.3 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg13+1_arm64.deb pgdg 1.9.1 111.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb pgdg 1.9.3 119.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 118.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb pgdg 1.9.1 118.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb pgdg 1.9.3 113.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 113.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb pgdg 1.9.1 113.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb pgdg 1.9.3 116.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 116.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb pgdg 1.9.1 115.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb pgdg 1.9.3 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 111.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb pgdg 1.9.1 110.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb pgdg 1.9.3 114.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 114.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb pgdg 1.9.1 113.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb pgdg 1.9.3 110.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 110.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb pgdg 1.9.1 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 56.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-2PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.7.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 54.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-2PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.7.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.2 57.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 57.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 57.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.9.1 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.9.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel9.x86_64.rpm pgdg 1.9.1 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel9.x86_64.rpm pgdg 1.8.0 56.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-2PGDG.rhel9.x86_64.rpm pgdg 1.7.0 55.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.7.0-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 56.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 55.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.9.1 55.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.9.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel9.aarch64.rpm pgdg 1.9.1 54.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.9.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel9.aarch64.rpm pgdg 1.8.0 54.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-2PGDG.rhel9.aarch64.rpm pgdg 1.7.0 54.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.7.0-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 54.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.2 57.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 57.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 57.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.9.1 57.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.9.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel10.x86_64.rpm pgdg 1.9.1 57.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.9.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel10.x86_64.rpm pgdg 1.8.0 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 55.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg12+1_amd64.deb pgdg 1.9.3 116.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg12+1_amd64.deb pgdg 1.9.1 115.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg12+1_arm64.deb pgdg 1.9.3 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 112.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg12+1_arm64.deb pgdg 1.9.1 110.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg13+1_amd64.deb pgdg 1.9.3 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg13+1_amd64.deb pgdg 1.9.1 115.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg13+1_arm64.deb pgdg 1.9.3 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg13+1_arm64.deb pgdg 1.9.1 111.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb pgdg 1.9.3 140.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 139.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb pgdg 1.9.1 138.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb pgdg 1.9.3 134.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 134.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb pgdg 1.9.1 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb pgdg 1.9.3 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb pgdg 1.9.1 115.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb pgdg 1.9.3 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb pgdg 1.9.1 110.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb pgdg 1.9.3 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb pgdg 1.9.1 113.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb pgdg 1.9.3 110.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 110.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb pgdg 1.9.1 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 56.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 52.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 52.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 54.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 50.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.2 57.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 56.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 57.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.9.1 56.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.9.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel9.x86_64.rpm pgdg 1.9.1 56.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel9.x86_64.rpm pgdg 1.8.0 56.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 55.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 52.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.6.1-1PGDG.rhel9.x86_64.rpm pgdg 1.6.1 52.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 55.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.9.1 55.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.9.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel9.aarch64.rpm pgdg 1.9.1 54.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.9.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel9.aarch64.rpm pgdg 1.8.0 54.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 54.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 50.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.6.1-1PGDG.rhel9.aarch64.rpm pgdg 1.6.1 50.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.6.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.2 57.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 57.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 57.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.9.1 57.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.9.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel10.x86_64.rpm pgdg 1.9.1 57.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.9.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel10.x86_64.rpm pgdg 1.8.0 56.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 55.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg12+1_amd64.deb pgdg 1.9.3 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg12+1_amd64.deb pgdg 1.9.1 115.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg12+1_arm64.deb pgdg 1.9.3 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg12+1_arm64.deb pgdg 1.9.1 110.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg13+1_amd64.deb pgdg 1.9.3 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg13+1_amd64.deb pgdg 1.9.1 115.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg13+1_arm64.deb pgdg 1.9.3 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 112.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg13+1_arm64.deb pgdg 1.9.1 111.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb pgdg 1.9.3 137.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 137.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb pgdg 1.9.1 136.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb pgdg 1.9.3 132.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 132.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb pgdg 1.9.1 131.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb pgdg 1.9.3 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 116.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb pgdg 1.9.1 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb pgdg 1.9.3 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb pgdg 1.9.1 110.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb pgdg 1.9.3 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb pgdg 1.9.1 113.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb pgdg 1.9.3 110.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 110.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb pgdg 1.9.1 109.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 57.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 52.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.5.0-1.rhel8.x86_64.rpm pgdg 1.5.0 46.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.5.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 54.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.5.0-1.rhel8.aarch64.rpm pgdg 1.5.0 43.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.5.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.2 57.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 57.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 57.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.9.1 57.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.9.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel9.x86_64.rpm pgdg 1.9.1 56.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel9.x86_64.rpm pgdg 1.8.0 56.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 56.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 52.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.6.1-1PGDG.rhel9.x86_64.rpm pgdg 1.6.1 52.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.5.0-1.rhel9.x86_64.rpm pgdg 1.5.0 46.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.5.0-1.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.2 55.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.9.1 55.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.9.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel9.aarch64.rpm pgdg 1.9.1 54.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.9.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel9.aarch64.rpm pgdg 1.8.0 54.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 54.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 50.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.6.1-1PGDG.rhel9.aarch64.rpm pgdg 1.6.1 50.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.5.0-1.rhel9.aarch64.rpm pgdg 1.5.0 44.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.5.0-1.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.2 57.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 57.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 58.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.9.1 57.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.9.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel10.x86_64.rpm pgdg 1.9.1 57.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.9.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel10.x86_64.rpm pgdg 1.8.0 57.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 56.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 56.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 56.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 55.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg12+1_amd64.deb pgdg 1.9.3 116.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg12+1_amd64.deb pgdg 1.9.1 115.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg12+1_arm64.deb pgdg 1.9.3 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg12+1_arm64.deb pgdg 1.9.1 110.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg13+1_amd64.deb pgdg 1.9.3 116.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg13+1_amd64.deb pgdg 1.9.1 115.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg13+1_arm64.deb pgdg 1.9.3 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 112.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg13+1_arm64.deb pgdg 1.9.1 111.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb pgdg 1.9.3 138.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 138.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb pgdg 1.9.1 137.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb pgdg 1.9.3 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb pgdg 1.9.1 132.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb pgdg 1.9.3 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 116.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb pgdg 1.9.1 115.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb pgdg 1.9.3 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb pgdg 1.9.1 110.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb pgdg 1.9.3 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 115.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb pgdg 1.9.1 113.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb pgdg 1.9.3 110.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 110.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb pgdg 1.9.1 109.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 57.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 53.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 53.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.5.0-1.rhel8.x86_64.rpm pgdg 1.5.0 46.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.5.0-1.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.4.1-2.rhel8.x86_64.rpm pgdg 1.4.1 112.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_squeeze_14-1.4.1-2.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_squeeze_14-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 55.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_squeeze_14-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 54.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_squeeze_14-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 54.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_squeeze_14-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 50.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_squeeze_14-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 50.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_squeeze_14-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.5.0-1.rhel8.aarch64.rpm pgdg 1.5.0 43.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_squeeze_14-1.5.0-1.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel9.8.x86_64.rpm pgdg 1.9.2 57.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.9.2-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel9.7.x86_64.rpm pgdg 1.9.2 57.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.9.2-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel9.6.x86_64.rpm pgdg 1.9.2 57.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.9.2-1PGDG.rhel9.6.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-3PGDG.rhel9.8.x86_64.rpm pgdg 1.9.1 57.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.9.1-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-1PGDG.rhel9.x86_64.rpm pgdg 1.9.1 57.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.8.0-1PGDG.rhel9.x86_64.rpm pgdg 1.8.0 56.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.8.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 56.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 52.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.6.1-1PGDG.rhel9.x86_64.rpm pgdg 1.6.1 52.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.6.1-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.5.0-1.rhel9.x86_64.rpm pgdg 1.5.0 46.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.5.0-1.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.4.1-2.rhel9.x86_64.rpm pgdg 1.4.1 112.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_squeeze_14-1.4.1-2.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel9.8.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.9.2-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel9.7.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.9.2-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel9.6.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.9.2-1PGDG.rhel9.6.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-3PGDG.rhel9.8.aarch64.rpm pgdg 1.9.1 55.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.9.1-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-1PGDG.rhel9.aarch64.rpm pgdg 1.9.1 54.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.9.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.8.0-1PGDG.rhel9.aarch64.rpm pgdg 1.8.0 54.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.8.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 54.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 50.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.6.1-1PGDG.rhel9.aarch64.rpm pgdg 1.6.1 50.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.6.1-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.5.0-1.rhel9.aarch64.rpm pgdg 1.5.0 44.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_squeeze_14-1.5.0-1.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel10.2.x86_64.rpm pgdg 1.9.2 58.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_squeeze_14-1.9.2-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel10.1.x86_64.rpm pgdg 1.9.2 58.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_squeeze_14-1.9.2-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel10.0.x86_64.rpm pgdg 1.9.2 58.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_squeeze_14-1.9.2-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-3PGDG.rhel10.2.x86_64.rpm pgdg 1.9.1 57.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_squeeze_14-1.9.1-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-1PGDG.rhel10.x86_64.rpm pgdg 1.9.1 57.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_squeeze_14-1.9.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_squeeze_14 pg_squeeze_14-1.8.0-1PGDG.rhel10.x86_64.rpm pgdg 1.8.0 57.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_squeeze_14-1.8.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 56.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_squeeze_14-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 56.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_squeeze_14-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 56.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_squeeze_14-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 56.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_squeeze_14-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 56.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_squeeze_14-1.9.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_squeeze_14 pg_squeeze_14-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 55.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_squeeze_14-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg12+1_amd64.deb pgdg 1.9.3 116.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg12+1_amd64.deb pgdg 1.9.2 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg12+1_amd64.deb pgdg 1.9.1 115.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg12+1_arm64.deb pgdg 1.9.3 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg12+1_arm64.deb pgdg 1.9.2 112.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg12+1_arm64.deb pgdg 1.9.1 111.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg13+1_amd64.deb pgdg 1.9.3 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg13+1_amd64.deb pgdg 1.9.2 117.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg13+1_amd64.deb pgdg 1.9.1 115.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg13+1_arm64.deb pgdg 1.9.3 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg13+1_arm64.deb pgdg 1.9.2 112.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg13+1_arm64.deb pgdg 1.9.1 111.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb pgdg 1.9.3 138.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb pgdg 1.9.2 138.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb pgdg 1.9.1 137.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb pgdg 1.9.3 133.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb pgdg 1.9.2 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb pgdg 1.9.1 132.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb pgdg 1.9.3 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb pgdg 1.9.2 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb pgdg 1.9.1 115.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb pgdg 1.9.3 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb pgdg 1.9.2 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb pgdg 1.9.1 110.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb pgdg 1.9.3 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb pgdg 1.9.2 115.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb pgdg 1.9.1 114.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb pgdg 1.9.3 110.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.3-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb pgdg 1.9.2 110.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.2-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-squeeze postgresql-14-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb pgdg 1.9.1 109.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-14-squeeze_1.9.1-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_squeeze` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_squeeze;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_squeeze -v 18  # PG 18
pig ext install -y pg_squeeze -v 17  # PG 17
pig ext install -y pg_squeeze -v 16  # PG 16
pig ext install -y pg_squeeze -v 15  # PG 15
pig ext install -y pg_squeeze -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_squeeze_18       # PG 18
dnf install -y pg_squeeze_17       # PG 17
dnf install -y pg_squeeze_16       # PG 16
dnf install -y pg_squeeze_15       # PG 15
dnf install -y pg_squeeze_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-squeeze   # PG 18
apt install -y postgresql-17-squeeze   # PG 17
apt install -y postgresql-16-squeeze   # PG 16
apt install -y postgresql-15-squeeze   # PG 15
apt install -y postgresql-14-squeeze   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_squeeze';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_squeeze;
```




## Usage

> [pg_squeeze: A tool to remove unused space from a relation.](https://github.com/cybertec-postgresql/pg_squeeze)

`pg_squeeze` requires `wal_level = logical` and must be added to `shared_preload_libraries`. It removes bloat from tables while allowing concurrent reads and writes, using logical decoding instead of triggers.

### Register a Table for Scheduled Processing

Insert into `squeeze.tables` to enable periodic bloat checks:

```sql
INSERT INTO squeeze.tables (tabschema, tabname, schedule)
VALUES ('public', 'foo', ('{30}', '{22}', NULL, NULL, '{3, 5}'));
```

The `schedule` field uses a crontab-like format: `(minutes, hours, days_of_month, months, days_of_week)`. The above checks table `foo` every Wednesday and Friday at 22:30.

Optional columns: `free_space_extra` (min % extra free space to trigger, default 50), `min_size` (min MB, default 8), `vacuum_max_age` (max time since last VACUUM, default 1h), `max_retry` (retry count, default 0), `clustering_index` (sort tuples by this index), `rel_tablespace`, `ind_tablespaces`, `skip_analyze`.

### Ad-hoc Squeeze

```sql
SELECT squeeze.squeeze_table('public', 'pgbench_accounts');
SELECT squeeze.squeeze_table('public', 'mytable', 'my_cluster_idx', 'target_tablespace');
```

### Start / Stop Workers

```sql
SELECT squeeze.start_worker();   -- start scheduler + squeeze workers
SELECT squeeze.stop_worker();    -- stop all workers for current database
```

Auto-start on cluster boot via `postgresql.conf`:

```
squeeze.worker_autostart = 'my_database your_database'
squeeze.worker_role = postgres
```

### Monitoring

- **`squeeze.log`** -- one entry per successfully squeezed table (with `started`, `finished`, `ins_initial`, `ins`, `upd`, `del`)
- **`squeeze.errors`** -- errors during squeezing
- **`squeeze.get_active_workers()`** -- shows currently active squeeze workers and their progress

### Configuration

- **`squeeze.max_xlock_time`** -- max exclusive lock time in ms (default unlimited)
- **`squeeze.workers_per_database`** -- number of concurrent squeeze workers (default 1)
