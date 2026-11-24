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
| [**`pg_squeeze`**](/ext/e/pg_squeeze) | `1.9.6` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table .wide .expand}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5040  | [**`pg_squeeze`**](/ext/e/pg_squeeze) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `squeeze` |
{.ext-table .wide .expand}

| **Related** | [`pg_repack`](/ext/e/pg_repack) [`pgstattuple`](/ext/e/pgstattuple) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`pg_rewrite`](/ext/e/pg_rewrite) [`pg_column_tetris`](/ext/e/pg_column_tetris) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9.6` | {{< pgvers "19,18,17,16,15" >}} | `pg_squeeze` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9.6` | {{< pgvers "19,18,17,16,15" >}} | `pg_squeeze_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.9.4` | {{< pgvers "19,18,17,16,15" >}} | `postgresql-$v-squeeze` | - |
{.ext-table .wide .expand}

{{< pgext_matrix >}}
| **OS / PG** | **PG19** | **PG18** | **PG17** | **PG16** | **PG15** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | N/A PGDG - 0 | AVAIL PGDG 1.9.6 5 | AVAIL PGDG 1.9.6 8 | AVAIL PGDG 1.9.6 9 | AVAIL PGDG 1.9.6 10 |
| el8.aarch64 | N/A PGDG - 0 | AVAIL PGDG 1.9.6 5 | AVAIL PGDG 1.9.6 8 | AVAIL PGDG 1.9.6 9 | AVAIL PGDG 1.9.6 10 |
| el9.x86_64 | AVAIL PGDG 1.9.6 1 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 |
| el9.aarch64 | AVAIL PGDG 1.9.6 1 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 |
| el10.x86_64 | AVAIL PGDG 1.9.6 1 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 | AVAIL PGDG 1.9.6 2 |
| el10.aarch64 | AVAIL PGDG 1.9.6 1 | AVAIL PGDG 1.9.6 9 | AVAIL PGDG 1.9.6 10 | AVAIL PGDG 1.9.6 10 | AVAIL PGDG 1.9.6 10 |
| d12.x86_64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| d12.aarch64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| d13.x86_64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| d13.aarch64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| u22.x86_64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| u22.aarch64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| u24.x86_64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| u24.aarch64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| u26.x86_64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
| u26.aarch64 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 | AVAIL PGDG 1.9.4 3 |
@ el9.x86_64 19 pg_squeeze_19 pg_squeeze_19-1.9.6-1PGDG.rhel9.9.x86_64.rpm pgdg 1.9.6 59.1KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-x86_64/pg_squeeze_19-1.9.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 19 pg_squeeze_19 pg_squeeze_19-1.9.6-1PGDG.rhel9.9.aarch64.rpm pgdg 1.9.6 57.3KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-9-aarch64/pg_squeeze_19-1.9.6-1PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 19 pg_squeeze_19 pg_squeeze_19-1.9.6-1PGDG.rhel10.3.x86_64.rpm pgdg 1.9.6 59.1KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-x86_64/pg_squeeze_19-1.9.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 19 pg_squeeze_19 pg_squeeze_19-1.9.6-1PGDG.rhel10.3.aarch64.rpm pgdg 1.9.6 57.8KiB https://download.postgresql.org/pub/repos/yum/19/redhat/rhel-10-aarch64/pg_squeeze_19-1.9.6-1PGDG.rhel10.3.aarch64.rpm
@ d12.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg12+3_amd64.deb pgdg 1.9.4 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg12+3_amd64.deb
@ d12.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg12+2_amd64.deb pgdg 1.9.4 116.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg12+2_amd64.deb
@ d12.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg12+1_amd64.deb pgdg 1.9.4 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg12+1_amd64.deb
@ d12.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg12+3_arm64.deb pgdg 1.9.4 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg12+3_arm64.deb
@ d12.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg12+2_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg12+2_arm64.deb
@ d12.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg12+1_arm64.deb pgdg 1.9.4 112.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg12+1_arm64.deb
@ d13.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg13+3_amd64.deb pgdg 1.9.4 116.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg13+3_amd64.deb
@ d13.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg13+2_amd64.deb pgdg 1.9.4 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg13+2_amd64.deb
@ d13.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg13+1_amd64.deb pgdg 1.9.4 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg13+3_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg13+3_arm64.deb
@ d13.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg13+2_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg13+2_arm64.deb
@ d13.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg13+1_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb pgdg 1.9.4 119.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb
@ u22.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb pgdg 1.9.4 118.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb pgdg 1.9.4 118.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb pgdg 1.9.4 114.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb
@ u22.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb pgdg 1.9.4 114.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb pgdg 1.9.4 114.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb pgdg 1.9.4 116.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb
@ u24.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb pgdg 1.9.4 115.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb pgdg 1.9.4 115.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb pgdg 1.9.4 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb
@ u24.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb pgdg 1.9.4 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb pgdg 1.9.4 111.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb pgdg 1.9.4 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb
@ u26.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb pgdg 1.9.4 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb pgdg 1.9.4 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb pgdg 1.9.4 110.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb
@ u26.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb pgdg 1.9.4 110.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 19 postgresql-19-squeeze postgresql-19-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb pgdg 1.9.4 110.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-19-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.6 60.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_squeeze_18-1.9.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-5PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 59.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_squeeze_18-1.9.4-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 58.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_squeeze_18-1.9.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_squeeze_18-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_squeeze_18-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.6 57.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_squeeze_18-1.9.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-5PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 56.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_squeeze_18-1.9.4-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 55.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_squeeze_18-1.9.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_squeeze_18-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.6-1PGDG.rhel9.9.x86_64.rpm pgdg 1.9.6 59.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_squeeze_18-1.9.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-5PGDG.rhel9.9.x86_64.rpm pgdg 1.9.4 58.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_squeeze_18-1.9.4-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.6-1PGDG.rhel9.9.aarch64.rpm pgdg 1.9.6 57.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_squeeze_18-1.9.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-5PGDG.rhel9.9.aarch64.rpm pgdg 1.9.4 56.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_squeeze_18-1.9.4-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.6-1PGDG.rhel10.3.x86_64.rpm pgdg 1.9.6 59.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_squeeze_18-1.9.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-5PGDG.rhel10.3.x86_64.rpm pgdg 1.9.4 58.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_squeeze_18-1.9.4-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.6-1PGDG.rhel10.3.aarch64.rpm pgdg 1.9.6 57.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-5PGDG.rhel10.3.aarch64.rpm pgdg 1.9.4 56.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.4-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-5PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 57.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.4-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 56.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 55.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_squeeze_18 pg_squeeze_18-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_squeeze_18-1.9.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg12+3_amd64.deb pgdg 1.9.4 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg12+3_amd64.deb
@ d12.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg12+2_amd64.deb pgdg 1.9.4 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg12+2_amd64.deb
@ d12.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg12+1_amd64.deb pgdg 1.9.4 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg12+3_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg12+3_arm64.deb
@ d12.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg12+2_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg12+2_arm64.deb
@ d12.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg12+1_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg13+3_amd64.deb pgdg 1.9.4 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg13+3_amd64.deb
@ d13.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg13+2_amd64.deb pgdg 1.9.4 116.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg13+2_amd64.deb
@ d13.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg13+1_amd64.deb pgdg 1.9.4 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg13+3_arm64.deb pgdg 1.9.4 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg13+3_arm64.deb
@ d13.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg13+2_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg13+2_arm64.deb
@ d13.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg13+1_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb pgdg 1.9.4 119.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb
@ u22.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb pgdg 1.9.4 119.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb pgdg 1.9.4 119.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb pgdg 1.9.4 114.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb
@ u22.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb pgdg 1.9.4 114.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb pgdg 1.9.4 114.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb pgdg 1.9.4 116.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb
@ u24.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb pgdg 1.9.4 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb pgdg 1.9.4 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb pgdg 1.9.4 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb
@ u24.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb pgdg 1.9.4 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb pgdg 1.9.4 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb pgdg 1.9.4 115.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb
@ u26.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb pgdg 1.9.4 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb pgdg 1.9.4 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb pgdg 1.9.4 110.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb
@ u26.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb pgdg 1.9.4 110.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 18 postgresql-18-squeeze postgresql-18-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb pgdg 1.9.4 110.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-18-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.6 60.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.9.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-5PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 59.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.9.4-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 58.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.9.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 56.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-2PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.7.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_squeeze_17-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.6 57.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.9.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-5PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 56.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.9.4-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 55.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.9.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 54.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-2PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.7.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_squeeze_17-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.6-1PGDG.rhel9.9.x86_64.rpm pgdg 1.9.6 59.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.9.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-5PGDG.rhel9.9.x86_64.rpm pgdg 1.9.4 58.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_squeeze_17-1.9.4-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.6-1PGDG.rhel9.9.aarch64.rpm pgdg 1.9.6 57.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.9.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-5PGDG.rhel9.9.aarch64.rpm pgdg 1.9.4 56.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_squeeze_17-1.9.4-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.6-1PGDG.rhel10.3.x86_64.rpm pgdg 1.9.6 59.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.9.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-5PGDG.rhel10.3.x86_64.rpm pgdg 1.9.4 58.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_squeeze_17-1.9.4-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.6-1PGDG.rhel10.3.aarch64.rpm pgdg 1.9.6 57.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-5PGDG.rhel10.3.aarch64.rpm pgdg 1.9.4 57.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.4-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-5PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 57.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.4-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 56.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.9.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_squeeze_17 pg_squeeze_17-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 55.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_squeeze_17-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg12+3_amd64.deb pgdg 1.9.4 116.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg12+3_amd64.deb
@ d12.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg12+2_amd64.deb pgdg 1.9.4 116.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg12+2_amd64.deb
@ d12.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg12+1_amd64.deb pgdg 1.9.4 116.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg12+3_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg12+3_arm64.deb
@ d12.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg12+2_arm64.deb pgdg 1.9.4 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg12+2_arm64.deb
@ d12.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg12+1_arm64.deb pgdg 1.9.4 112.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg13+3_amd64.deb pgdg 1.9.4 117.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg13+3_amd64.deb
@ d13.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg13+2_amd64.deb pgdg 1.9.4 117.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg13+2_amd64.deb
@ d13.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg13+1_amd64.deb pgdg 1.9.4 117.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg13+3_arm64.deb pgdg 1.9.4 112.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg13+3_arm64.deb
@ d13.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg13+2_arm64.deb pgdg 1.9.4 112.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg13+2_arm64.deb
@ d13.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg13+1_arm64.deb pgdg 1.9.4 112.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb pgdg 1.9.4 140.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb
@ u22.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb pgdg 1.9.4 140.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb pgdg 1.9.4 140.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb pgdg 1.9.4 135.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb
@ u22.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb pgdg 1.9.4 135.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb pgdg 1.9.4 135.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb pgdg 1.9.4 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb
@ u24.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb pgdg 1.9.4 116.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb pgdg 1.9.4 116.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb pgdg 1.9.4 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb
@ u24.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb pgdg 1.9.4 112.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb pgdg 1.9.4 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb pgdg 1.9.4 115.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb
@ u26.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb pgdg 1.9.4 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb pgdg 1.9.4 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb pgdg 1.9.4 110.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb
@ u26.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb pgdg 1.9.4 110.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 17 postgresql-17-squeeze postgresql-17-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb pgdg 1.9.4 110.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-17-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.6 60.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.9.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-5PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 59.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.9.4-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 58.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.9.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 56.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 52.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 52.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_squeeze_16-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.6 57.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.9.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-5PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 56.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.9.4-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.9.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 54.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 50.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 50.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_squeeze_16-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.6-1PGDG.rhel9.9.x86_64.rpm pgdg 1.9.6 59.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.9.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-5PGDG.rhel9.9.x86_64.rpm pgdg 1.9.4 58.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_squeeze_16-1.9.4-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.6-1PGDG.rhel9.9.aarch64.rpm pgdg 1.9.6 57.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.9.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-5PGDG.rhel9.9.aarch64.rpm pgdg 1.9.4 56.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_squeeze_16-1.9.4-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.6-1PGDG.rhel10.3.x86_64.rpm pgdg 1.9.6 59.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.9.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-5PGDG.rhel10.3.x86_64.rpm pgdg 1.9.4 58.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_squeeze_16-1.9.4-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.6-1PGDG.rhel10.3.aarch64.rpm pgdg 1.9.6 57.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-5PGDG.rhel10.3.aarch64.rpm pgdg 1.9.4 56.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.4-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-5PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 56.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.4-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 56.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 55.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.9.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_squeeze_16 pg_squeeze_16-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 55.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_squeeze_16-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg12+3_amd64.deb pgdg 1.9.4 116.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg12+3_amd64.deb
@ d12.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg12+2_amd64.deb pgdg 1.9.4 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg12+2_amd64.deb
@ d12.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg12+1_amd64.deb pgdg 1.9.4 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg12+3_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg12+3_arm64.deb
@ d12.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg12+2_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg12+2_arm64.deb
@ d12.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg12+1_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg13+3_amd64.deb pgdg 1.9.4 117.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg13+3_amd64.deb
@ d13.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg13+2_amd64.deb pgdg 1.9.4 116.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg13+2_amd64.deb
@ d13.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg13+1_amd64.deb pgdg 1.9.4 117.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg13+3_arm64.deb pgdg 1.9.4 112.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg13+3_arm64.deb
@ d13.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg13+2_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg13+2_arm64.deb
@ d13.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg13+1_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb pgdg 1.9.4 138.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb
@ u22.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb pgdg 1.9.4 138.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb pgdg 1.9.4 138.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb pgdg 1.9.4 133.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb
@ u22.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb pgdg 1.9.4 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb pgdg 1.9.4 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb pgdg 1.9.4 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb
@ u24.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb pgdg 1.9.4 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb pgdg 1.9.4 117.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb pgdg 1.9.4 111.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb
@ u24.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb pgdg 1.9.4 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb pgdg 1.9.4 111.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb pgdg 1.9.4 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb
@ u26.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb pgdg 1.9.4 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb pgdg 1.9.4 114.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb pgdg 1.9.4 110.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb
@ u26.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb pgdg 1.9.4 110.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 16 postgresql-16-squeeze postgresql-16-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb pgdg 1.9.4 110.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-16-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.6 60.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.9.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-5PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 59.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.9.4-5PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.4 58.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.9.4-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel8.10.x86_64.rpm pgdg 1.9.2 58.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.9.2-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel8.x86_64.rpm pgdg 1.9.1 57.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel8.x86_64.rpm pgdg 1.8.0 57.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.8.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 56.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 52.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.6.1-1PGDG.rhel8.x86_64.rpm pgdg 1.6.1 52.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.6.1-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.5.0-1.rhel8.x86_64.rpm pgdg 1.5.0 46.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_squeeze_15-1.5.0-1.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.6 57.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.9.6-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-5PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 56.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.9.4-5PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.4 55.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.9.4-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel8.10.aarch64.rpm pgdg 1.9.2 55.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel8.aarch64.rpm pgdg 1.9.1 54.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.9.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel8.aarch64.rpm pgdg 1.8.0 54.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.8.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 53.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.6.1-1PGDG.rhel8.aarch64.rpm pgdg 1.6.1 50.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.6.1-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.5.0-1.rhel8.aarch64.rpm pgdg 1.5.0 43.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_squeeze_15-1.5.0-1.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.6-1PGDG.rhel9.9.x86_64.rpm pgdg 1.9.6 59.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.9.6-1PGDG.rhel9.9.x86_64.rpm
@ el9.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-5PGDG.rhel9.9.x86_64.rpm pgdg 1.9.4 58.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_squeeze_15-1.9.4-5PGDG.rhel9.9.x86_64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.6-1PGDG.rhel9.9.aarch64.rpm pgdg 1.9.6 57.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.9.6-1PGDG.rhel9.9.aarch64.rpm
@ el9.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-5PGDG.rhel9.9.aarch64.rpm pgdg 1.9.4 56.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_squeeze_15-1.9.4-5PGDG.rhel9.9.aarch64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.6-1PGDG.rhel10.3.x86_64.rpm pgdg 1.9.6 60.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.9.6-1PGDG.rhel10.3.x86_64.rpm
@ el10.x86_64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-5PGDG.rhel10.3.x86_64.rpm pgdg 1.9.4 59.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_squeeze_15-1.9.4-5PGDG.rhel10.3.x86_64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.6-1PGDG.rhel10.3.aarch64.rpm pgdg 1.9.6 58.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.6-1PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-5PGDG.rhel10.3.aarch64.rpm pgdg 1.9.4 57.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.4-5PGDG.rhel10.3.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-5PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 57.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.4-5PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.4-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.4 56.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.2.aarch64.rpm pgdg 1.9.2 56.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.1.aarch64.rpm pgdg 1.9.2 56.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.2-1PGDG.rhel10.0.aarch64.rpm pgdg 1.9.2 56.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.2-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-3PGDG.rhel10.2.aarch64.rpm pgdg 1.9.1 55.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.1-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.9.1-1PGDG.rhel10.aarch64.rpm pgdg 1.9.1 55.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.9.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_squeeze_15 pg_squeeze_15-1.8.0-1PGDG.rhel10.aarch64.rpm pgdg 1.8.0 55.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_squeeze_15-1.8.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg12+3_amd64.deb pgdg 1.9.4 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg12+3_amd64.deb
@ d12.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg12+2_amd64.deb pgdg 1.9.4 116.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg12+2_amd64.deb
@ d12.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg12+1_amd64.deb pgdg 1.9.4 116.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg12+3_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg12+3_arm64.deb
@ d12.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg12+2_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg12+2_arm64.deb
@ d12.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg12+1_arm64.deb pgdg 1.9.4 112.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg13+3_amd64.deb pgdg 1.9.4 116.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg13+3_amd64.deb
@ d13.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg13+2_amd64.deb pgdg 1.9.4 116.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg13+2_amd64.deb
@ d13.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg13+1_amd64.deb pgdg 1.9.4 116.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg13+3_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg13+3_arm64.deb
@ d13.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg13+2_arm64.deb pgdg 1.9.4 112.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg13+2_arm64.deb
@ d13.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg13+1_arm64.deb pgdg 1.9.4 112.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb pgdg 1.9.4 139.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg22.04+3_amd64.deb
@ u22.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb pgdg 1.9.4 138.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg22.04+2_amd64.deb
@ u22.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb pgdg 1.9.4 138.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb pgdg 1.9.4 134.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg22.04+3_arm64.deb
@ u22.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb pgdg 1.9.4 133.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg22.04+2_arm64.deb
@ u22.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb pgdg 1.9.4 133.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb pgdg 1.9.4 116.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg24.04+3_amd64.deb
@ u24.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb pgdg 1.9.4 116.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg24.04+2_amd64.deb
@ u24.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb pgdg 1.9.4 116.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb pgdg 1.9.4 112.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg24.04+3_arm64.deb
@ u24.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb pgdg 1.9.4 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg24.04+2_arm64.deb
@ u24.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb pgdg 1.9.4 111.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb pgdg 1.9.4 115.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg26.04+3_amd64.deb
@ u26.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb pgdg 1.9.4 115.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg26.04+2_amd64.deb
@ u26.x86_64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb pgdg 1.9.4 114.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb pgdg 1.9.4 110.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg26.04+3_arm64.deb
@ u26.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb pgdg 1.9.4 110.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg26.04+2_arm64.deb
@ u26.aarch64 15 postgresql-15-squeeze postgresql-15-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb pgdg 1.9.4 110.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pg-squeeze/postgresql-15-squeeze_1.9.4-2.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `pg_squeeze` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pg_squeeze;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_squeeze -v 19  # PG 19
pig ext install -y pg_squeeze -v 18  # PG 18
pig ext install -y pg_squeeze -v 17  # PG 17
pig ext install -y pg_squeeze -v 16  # PG 16
pig ext install -y pg_squeeze -v 15  # PG 15
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_squeeze_19       # PG 19
dnf install -y pg_squeeze_18       # PG 18
dnf install -y pg_squeeze_17       # PG 17
dnf install -y pg_squeeze_16       # PG 16
dnf install -y pg_squeeze_15       # PG 15
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-19-squeeze   # PG 19
apt install -y postgresql-18-squeeze   # PG 18
apt install -y postgresql-17-squeeze   # PG 17
apt install -y postgresql-16-squeeze   # PG 16
apt install -y postgresql-15-squeeze   # PG 15
```


**Preload**:

```bash
shared_preload_libraries = 'pg_squeeze';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_squeeze;
```

## Usage

Sources:

- [pg_squeeze REL1_9_6 README](https://github.com/cybertec-postgresql/pg_squeeze/blob/REL1_9_6/README.md)
- [pg_squeeze release notes](https://github.com/cybertec-postgresql/pg_squeeze/blob/REL1_9_6/NEWS)
- [pg_squeeze extension control](https://github.com/cybertec-postgresql/pg_squeeze/blob/REL1_9_6/pg_squeeze.control)

`pg_squeeze` removes bloat from a table and its indexes while allowing concurrent reads and writes. It copies live tuples to new storage and applies concurrent changes through logical decoding, avoiding the long exclusive lock of `VACUUM FULL`. Use it only after sizing replication slots, disk space, and the table's replica identity.

### Configure and Install

```ini
max_replication_slots = 1  # or add one to the existing requirement
shared_preload_libraries = 'pg_squeeze'
output_plugin_libraries = 'pg_squeeze'
wal_level = logical       # required on PostgreSQL versions before 19
```

Add `pg_squeeze` to any existing library lists. On PostgreSQL releases with `output_plugin_libraries`, that list must permit `pg_squeeze` so logical decoding can start. Restart PostgreSQL, then create the extension:

```sql
CREATE EXTENSION pg_squeeze;
```

The table must have an identity index. A primary key works with the default replica identity; otherwise select a suitable unique index with `ALTER TABLE ... REPLICA IDENTITY USING INDEX`.

### Run an Ad-Hoc Squeeze

```sql
SELECT squeeze.squeeze_table('public', 'pgbench_accounts');

SELECT squeeze.squeeze_table(
  'public',
  'large_table',
  'large_table_cluster_idx',
  'target_tablespace'
);
```

The function starts background work and is not transactional in the ordinary SQL-function sense. Monitor the operation rather than assuming a surrounding `ROLLBACK` cancels it.

### Schedule Tables and Monitor Work

```sql
INSERT INTO squeeze.tables (tabschema, tabname, schedule)
VALUES ('public', 'events', ('{30}', '{22}', NULL, NULL, '{3,5}'));

SELECT * FROM squeeze.get_active_workers();
SELECT * FROM squeeze.log ORDER BY finished DESC;
SELECT * FROM squeeze.errors;
```

The schedule tuple contains minutes, hours, days of month, months, and days of week. Registration also supports thresholds and placement options such as `free_space_extra`, `min_size`, `vacuum_max_age`, `max_retry`, `clustering_index`, relation/index tablespaces, and `skip_analyze`.

Start or stop scheduled processing as a superuser:

```sql
SELECT squeeze.start_worker();
SELECT squeeze.stop_worker();
```

For automatic startup, configure a worker role with superuser privileges:

```ini
squeeze.worker_autostart = 'my_database'
squeeze.worker_role = 'postgres'
```

### Version 1.9.6 and Operational Caveats

- Version 1.9.6 includes the 1.9.5 fixes for exclusion constraints and PostgreSQL 19 compatibility. Its configuration also accounts for `output_plugin_libraries`; check that setting when upgrading PostgreSQL.
- Version 1.9.4 fixes unsafe quoting in dynamically constructed `ANALYZE`, log, and error statements, including a superuser SQL-injection path. Upgrade earlier 1.9 builds promptly.
- A full-table squeeze needs free disk space of roughly twice the combined size of the target table and its indexes.
- Disruptive DDL, `VACUUM FULL`, `CLUSTER`, or `TRUNCATE` can make an in-progress squeeze abort. Coordinate schema changes and use `max_retry` deliberately.
- Like other online rewrite tools, `pg_squeeze` changes row visibility and has documented MVCC caveats for concurrent sessions that retain old snapshots.
- Configure `pg_squeeze` in `shared_preload_libraries` on the new cluster before `pg_upgrade` or dump/restore of a database containing the extension.
- On PostgreSQL versions before 19, keep `wal_level = logical`. The upstream PostgreSQL 19 configuration no longer requires that setting.
