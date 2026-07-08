---
title: "toastinfo"
linkTitle: "toastinfo"
description: "show details on toasted datums"
weight: 6530
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/df7cb/toastinfo">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">df7cb/toastinfo</div>
    <div class="ext-card__desc">https://github.com/df7cb/toastinfo</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/toastinfo-1.7.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">toastinfo-1.7.tar.gz</div>
    <div class="ext-card__desc">toastinfo-1.7.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`toastinfo`**](/ext/e/toastinfo) | `1.7` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6530  | [**`toastinfo`**](/ext/e/toastinfo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pageinspect`](/ext/e/pageinspect) [`pg_visibility`](/ext/e/pg_visibility) [`pgstattuple`](/ext/e/pgstattuple) [`amcheck`](/ext/e/amcheck) [`pg_relusage`](/ext/e/pg_relusage) [`pg_buffercache`](/ext/e/pg_buffercache) [`pg_freespacemap`](/ext/e/pg_freespacemap) [`pg_repack`](/ext/e/pg_repack) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `toastinfo` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `toastinfo_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-toastinfo` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| el8.aarch64 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 | AVAIL PIGSTY 1.7 2 |
| el9.x86_64 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 |
| el9.aarch64 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 |
| el10.x86_64 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 |
| el10.aarch64 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 4 | AVAIL PIGSTY 1.7 3 |
| d12.x86_64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| d12.aarch64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| d13.x86_64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| d13.aarch64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| u22.x86_64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| u22.aarch64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| u24.x86_64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| u24.aarch64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| u26.x86_64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
| u26.aarch64 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 | AVAIL PGDG 1.7 3 |
@ el8.x86_64 18 toastinfo_18 toastinfo_18-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_18-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 13.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/toastinfo_18-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 18 toastinfo_18 toastinfo_18-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_18-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/toastinfo_18-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 18 toastinfo_18 toastinfo_18-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_18-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/toastinfo_18-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/toastinfo_18-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/toastinfo_18-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 18 toastinfo_18 toastinfo_18-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_18-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/toastinfo_18-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/toastinfo_18-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 12.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/toastinfo_18-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 18 toastinfo_18 toastinfo_18-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_18-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/toastinfo_18-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/toastinfo_18-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 13.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/toastinfo_18-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 18 toastinfo_18 toastinfo_18-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_18-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/toastinfo_18-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/toastinfo_18-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 toastinfo_18 toastinfo_18-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/toastinfo_18-1.6-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg12+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg12+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg12+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg12+1_arm64.deb pgdg 1.6 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg13+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg13+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg13+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg13+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg22.04+1_amd64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg22.04+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg22.04+1_arm64.deb pgdg 1.7 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg22.04+1_arm64.deb pgdg 1.6 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg24.04+1_amd64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg24.04+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg24.04+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg24.04+1_arm64.deb pgdg 1.6 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg26.04+1_amd64.deb pgdg 1.7 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg26.04+1_amd64.deb pgdg 1.6 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.7-1.pgdg26.04+1_arm64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.6-1.pgdg26.04+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-toastinfo postgresql-18-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-18-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 toastinfo_17 toastinfo_17-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_17-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 13.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/toastinfo_17-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 17 toastinfo_17 toastinfo_17-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_17-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/toastinfo_17-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 17 toastinfo_17 toastinfo_17-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_17-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/toastinfo_17-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/toastinfo_17-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/toastinfo_17-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 17 toastinfo_17 toastinfo_17-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_17-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/toastinfo_17-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/toastinfo_17-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 12.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/toastinfo_17-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 17 toastinfo_17 toastinfo_17-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_17-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/toastinfo_17-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/toastinfo_17-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 13.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/toastinfo_17-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 17 toastinfo_17 toastinfo_17-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_17-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/toastinfo_17-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/toastinfo_17-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 toastinfo_17 toastinfo_17-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/toastinfo_17-1.6-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg12+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg12+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg12+1_arm64.deb pgdg 1.7 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg12+1_arm64.deb pgdg 1.6 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg13+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg13+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg13+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg13+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg22.04+1_amd64.deb pgdg 1.7 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg22.04+1_amd64.deb pgdg 1.6 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg22.04+1_arm64.deb pgdg 1.7 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg22.04+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg24.04+1_amd64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg24.04+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg24.04+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg24.04+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg26.04+1_amd64.deb pgdg 1.7 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg26.04+1_amd64.deb pgdg 1.6 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.7-1.pgdg26.04+1_arm64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.6-1.pgdg26.04+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-toastinfo postgresql-17-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-17-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 toastinfo_16 toastinfo_16-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_16-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 13.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/toastinfo_16-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 toastinfo_16 toastinfo_16-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_16-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/toastinfo_16-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 toastinfo_16 toastinfo_16-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_16-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/toastinfo_16-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/toastinfo_16-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/toastinfo_16-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 16 toastinfo_16 toastinfo_16-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_16-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/toastinfo_16-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/toastinfo_16-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 12.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/toastinfo_16-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 16 toastinfo_16 toastinfo_16-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_16-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/toastinfo_16-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/toastinfo_16-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 13.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/toastinfo_16-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 16 toastinfo_16 toastinfo_16-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_16-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/toastinfo_16-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/toastinfo_16-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 toastinfo_16 toastinfo_16-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/toastinfo_16-1.6-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg12+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg12+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg12+1_arm64.deb pgdg 1.7 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg12+1_arm64.deb pgdg 1.6 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg13+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg13+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg13+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg13+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg22.04+1_amd64.deb pgdg 1.7 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg22.04+1_amd64.deb pgdg 1.6 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg22.04+1_arm64.deb pgdg 1.7 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg22.04+1_arm64.deb pgdg 1.6 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg24.04+1_amd64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg24.04+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg24.04+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg24.04+1_arm64.deb pgdg 1.6 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg26.04+1_amd64.deb pgdg 1.7 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg26.04+1_amd64.deb pgdg 1.6 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.7-1.pgdg26.04+1_arm64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.6-1.pgdg26.04+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-toastinfo postgresql-16-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-16-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 toastinfo_15 toastinfo_15-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_15-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 13.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/toastinfo_15-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 15 toastinfo_15 toastinfo_15-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_15-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/toastinfo_15-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 15 toastinfo_15 toastinfo_15-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_15-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/toastinfo_15-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/toastinfo_15-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/toastinfo_15-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 15 toastinfo_15 toastinfo_15-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_15-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/toastinfo_15-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/toastinfo_15-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 13.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/toastinfo_15-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 15 toastinfo_15 toastinfo_15-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_15-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/toastinfo_15-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/toastinfo_15-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 13.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/toastinfo_15-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 15 toastinfo_15 toastinfo_15-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 13.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_15-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel10.2.aarch64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/toastinfo_15-1.6-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/toastinfo_15-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 toastinfo_15 toastinfo_15-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/toastinfo_15-1.6-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg12+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg12+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg12+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg12+1_arm64.deb pgdg 1.6 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg13+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg13+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg13+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg13+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg22.04+1_amd64.deb pgdg 1.7 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg22.04+1_amd64.deb pgdg 1.6 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg22.04+1_arm64.deb pgdg 1.7 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg22.04+1_arm64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg24.04+1_amd64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg24.04+1_amd64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg24.04+1_arm64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg24.04+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg26.04+1_amd64.deb pgdg 1.7 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg26.04+1_amd64.deb pgdg 1.6 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.7-1.pgdg26.04+1_arm64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.6-1.pgdg26.04+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-toastinfo postgresql-15-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-15-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 toastinfo_14 toastinfo_14-1.7-1PIGSTY.el8.x86_64.rpm pigsty 1.7 13.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/toastinfo_14-1.7-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel8.10.x86_64.rpm pgdg 1.6 13.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/toastinfo_14-1.6-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 14 toastinfo_14 toastinfo_14-1.7-1PIGSTY.el8.aarch64.rpm pigsty 1.7 13.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/toastinfo_14-1.7-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel8.10.aarch64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/toastinfo_14-1.6-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 14 toastinfo_14 toastinfo_14-1.7-1PIGSTY.el9.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/toastinfo_14-1.7-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel9.8.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/toastinfo_14-1.6-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel9.7.x86_64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/toastinfo_14-1.6-1PGDG.rhel9.7.x86_64.rpm
@ el9.x86_64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel9.6.x86_64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/toastinfo_14-1.6-1PGDG.rhel9.6.x86_64.rpm
@ el9.aarch64 14 toastinfo_14 toastinfo_14-1.7-1PIGSTY.el9.aarch64.rpm pigsty 1.7 13.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/toastinfo_14-1.7-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel9.8.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/toastinfo_14-1.6-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel9.7.aarch64.rpm pgdg 1.6 12.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/toastinfo_14-1.6-1PGDG.rhel9.7.aarch64.rpm
@ el9.aarch64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel9.6.aarch64.rpm pgdg 1.6 12.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/toastinfo_14-1.6-1PGDG.rhel9.6.aarch64.rpm
@ el10.x86_64 14 toastinfo_14 toastinfo_14-1.7-1PIGSTY.el10.x86_64.rpm pigsty 1.7 13.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/toastinfo_14-1.7-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel10.2.x86_64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/toastinfo_14-1.6-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel10.1.x86_64.rpm pgdg 1.6 13.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/toastinfo_14-1.6-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel10.0.x86_64.rpm pgdg 1.6 13.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/toastinfo_14-1.6-1PGDG.rhel10.0.x86_64.rpm
@ el10.aarch64 14 toastinfo_14 toastinfo_14-1.7-1PIGSTY.el10.aarch64.rpm pigsty 1.7 13.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/toastinfo_14-1.7-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel10.1.aarch64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/toastinfo_14-1.6-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 toastinfo_14 toastinfo_14-1.6-1PGDG.rhel10.0.aarch64.rpm pgdg 1.6 13.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/toastinfo_14-1.6-1PGDG.rhel10.0.aarch64.rpm
@ d12.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg12+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg12+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg12+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg12+1_arm64.deb pgdg 1.7 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg12+1_arm64.deb pgdg 1.6 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg12+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg13+1_amd64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg13+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg13+1_amd64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg13+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg13+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg13+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg22.04+1_amd64.deb pgdg 1.7 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg22.04+1_amd64.deb pgdg 1.6 13.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg22.04+1_amd64.deb pgdg 1.5 13.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg22.04+1_arm64.deb pgdg 1.7 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg22.04+1_arm64.deb pgdg 1.6 13.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg22.04+1_arm64.deb pgdg 1.5 12.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg24.04+1_amd64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg24.04+1_amd64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg24.04+1_amd64.deb pgdg 1.5 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg24.04+1_arm64.deb pgdg 1.7 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg24.04+1_arm64.deb pgdg 1.6 12.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg24.04+1_arm64.deb pgdg 1.5 12.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg26.04+1_amd64.deb pgdg 1.7 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg26.04+1_amd64.deb pgdg 1.6 12.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg26.04+1_amd64.deb pgdg 1.5 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.7-1.pgdg26.04+1_arm64.deb pgdg 1.7 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.7-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.6-1.pgdg26.04+1_arm64.deb pgdg 1.6 12.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.6-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-toastinfo postgresql-14-toastinfo_1.5-3.pgdg26.04+1_arm64.deb pgdg 1.5 13.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/t/toastinfo/postgresql-14-toastinfo_1.5-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `toastinfo` using `pig build`:

```bash
pig build pkg toastinfo         # build RPM packages
```


## Install

You can install `toastinfo` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install toastinfo;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y toastinfo -v 18  # PG 18
pig ext install -y toastinfo -v 17  # PG 17
pig ext install -y toastinfo -v 16  # PG 16
pig ext install -y toastinfo -v 15  # PG 15
pig ext install -y toastinfo -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y toastinfo_18       # PG 18
dnf install -y toastinfo_17       # PG 17
dnf install -y toastinfo_16       # PG 16
dnf install -y toastinfo_15       # PG 15
dnf install -y toastinfo_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-toastinfo   # PG 18
apt install -y postgresql-17-toastinfo   # PG 17
apt install -y postgresql-16-toastinfo   # PG 16
apt install -y postgresql-15-toastinfo   # PG 15
apt install -y postgresql-14-toastinfo   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION toastinfo;
```




## Usage

Sources: [upstream README](https://github.com/credativ/toastinfo), [upstream tags](https://github.com/credativ/toastinfo/tags), [PGDG package metadata via local `db/extension.csv`](../db/extension.csv).

`toastinfo` exposes how PostgreSQL stores variable-length (`varlena`) values, including inline, compressed, and out-of-line TOAST storage forms.

### Functions

`pg_toastinfo(anyelement)` describes the storage form of a datum:

```sql
CREATE EXTENSION toastinfo;

SELECT a, length(b), pg_column_size(b), pg_toastinfo(b), pg_toastpointer(b)
FROM t;
```

Possible storage forms include:

- `null`, for NULL values.
- `ordinary`, for non-varlena data types.
- `short inline varlena`, up to 126 bytes with a 1-byte header.
- `long inline varlena, uncompressed`, up to 1 GiB with a 4-byte header.
- `long inline varlena, compressed (pglz|lz4)`.
- `toasted varlena, uncompressed`.
- `toasted varlena, compressed (pglz|lz4)`.

Compressed varlenas show the compression method on PostgreSQL 14+.

`pg_toastpointer(anyelement)` returns the TOAST table `chunk_id` OID for out-of-line toasted values, or NULL for non-toasted input:

```sql
SELECT pg_toastpointer(large_column)
FROM my_table;
```

### Storage Example

```sql
CREATE TABLE t (a text, b text);

ALTER TABLE t ALTER COLUMN b SET STORAGE EXTERNAL;
INSERT INTO t VALUES ('external-10000', repeat('x', 10000));

ALTER TABLE t ALTER COLUMN b SET STORAGE EXTENDED;
INSERT INTO t VALUES ('extended-1000000', repeat('x', 1000000));

ALTER TABLE t ALTER COLUMN b SET COMPRESSION lz4;
INSERT INTO t VALUES ('extended-lz4', repeat('x', 1000000));

SELECT a, pg_column_size(b), pg_toastinfo(b), pg_toastpointer(b)
FROM t;
```

### Caveats

- Pigsty metadata carries `toastinfo` 1.6 for PostgreSQL 14-18, with Pigsty RPMs and PGDG DEBs.
- The upstream GitHub README documents the same SQL surface, but the public GitHub tags visible during review stop at `v1.5`; no upstream 1.6 changelog was found in that repository.
- `pg_toastpointer` is meaningful only for out-of-line toasted data; ordinary, inline, or NULL values return NULL.
