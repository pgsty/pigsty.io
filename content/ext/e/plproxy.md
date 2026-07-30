---
title: "plproxy"
linkTitle: "plproxy"
description: "Database partitioning implemented as procedural language"
weight: 2520
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/plproxy/plproxy">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">plproxy/plproxy</div>
    <div class="ext-card__desc">https://github.com/plproxy/plproxy</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/plproxy-2.12.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">plproxy-2.12.0.tar.gz</div>
    <div class="ext-card__desc">plproxy-2.12.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plproxy`**](/ext/e/plproxy) | `2.12.0` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license isc" href="/ext/license#isc">ISC</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2520  | [**`plproxy`**](/ext/e/plproxy) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`postgres_fdw`](/ext/e/postgres_fdw) [`pgspider_ext`](/ext/e/pgspider_ext) [`pgactive`](/ext/e/pgactive) [`citus`](/ext/e/citus) [`spock`](/ext/e/spock) [`db_migrator`](/ext/e/db_migrator) [`dblink`](/ext/e/dblink) [`pglogical`](/ext/e/pglogical) [`mimeo`](/ext/e/mimeo) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PIGSTY RPM and PGDG DEB are aligned at 2.12.0.; Upstream COPYRIGHT text matches ISC.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `2.12.0` | {{< pgvers "18,17,16,15,14" >}} | `plproxy` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.12.0` | {{< pgvers "18,17,16,15,14" >}} | `plproxy_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.12.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-plproxy` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.12.0 3 | AVAIL PIGSTY 2.12.0 3 | AVAIL PIGSTY 2.12.0 2 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 |
| el8.aarch64 | AVAIL PIGSTY 2.12.0 3 | AVAIL PIGSTY 2.12.0 3 | AVAIL PIGSTY 2.12.0 2 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 |
| el9.x86_64 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 3 | AVAIL PIGSTY 2.12.0 5 | AVAIL PIGSTY 2.12.0 4 |
| el9.aarch64 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 3 | AVAIL PIGSTY 2.12.0 5 | AVAIL PIGSTY 2.12.0 5 |
| el10.x86_64 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 |
| el10.aarch64 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 | AVAIL PIGSTY 2.12.0 4 |
| d12.x86_64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| d12.aarch64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| d13.x86_64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| d13.aarch64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| u22.x86_64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| u22.aarch64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| u24.x86_64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| u24.aarch64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| u26.x86_64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
| u26.aarch64 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 | AVAIL PGDG 2.12.0 2 |
@ el8.x86_64 18 plproxy_18 plproxy_18-2.12.0-1PIGSTY.el8.x86_64.rpm pigsty 2.12.0 48.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plproxy_18-2.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 plproxy_18 plproxy_18-2.12.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.12.0 48.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plproxy_18-2.12.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 plproxy_18 plproxy_18-2.11.0-4PGDG.rhel8.x86_64.rpm pgdg 2.11.0 48.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/plproxy_18-2.11.0-4PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 plproxy_18 plproxy_18-2.12.0-1PIGSTY.el8.aarch64.rpm pigsty 2.12.0 46.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plproxy_18-2.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 plproxy_18 plproxy_18-2.12.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.12.0 46.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plproxy_18-2.12.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 plproxy_18 plproxy_18-2.11.0-4PGDG.rhel8.aarch64.rpm pgdg 2.11.0 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/plproxy_18-2.11.0-4PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 plproxy_18 plproxy_18-2.12.0-1PIGSTY.el9.x86_64.rpm pigsty 2.12.0 45.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plproxy_18-2.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 plproxy_18 plproxy_18-2.12.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.12.0 46.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plproxy_18-2.12.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 plproxy_18 plproxy_18-2.11.0-6PGDG.rhel9.8.x86_64.rpm pgdg 2.11.0 45.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plproxy_18-2.11.0-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 plproxy_18 plproxy_18-2.11.0-4PGDG.rhel9.x86_64.rpm pgdg 2.11.0 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/plproxy_18-2.11.0-4PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 plproxy_18 plproxy_18-2.12.0-1PIGSTY.el9.aarch64.rpm pigsty 2.12.0 43.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plproxy_18-2.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 plproxy_18 plproxy_18-2.12.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.12.0 43.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plproxy_18-2.12.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 plproxy_18 plproxy_18-2.11.0-6PGDG.rhel9.8.aarch64.rpm pgdg 2.11.0 43.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plproxy_18-2.11.0-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 plproxy_18 plproxy_18-2.11.0-4PGDG.rhel9.aarch64.rpm pgdg 2.11.0 43.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/plproxy_18-2.11.0-4PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 plproxy_18 plproxy_18-2.12.0-1PIGSTY.el10.x86_64.rpm pigsty 2.12.0 46.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plproxy_18-2.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 plproxy_18 plproxy_18-2.12.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.12.0 46.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plproxy_18-2.12.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 plproxy_18 plproxy_18-2.11.0-6PGDG.rhel10.2.x86_64.rpm pgdg 2.11.0 46.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plproxy_18-2.11.0-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 plproxy_18 plproxy_18-2.11.0-4PGDG.rhel10.x86_64.rpm pgdg 2.11.0 46.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/plproxy_18-2.11.0-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 plproxy_18 plproxy_18-2.12.0-1PIGSTY.el10.aarch64.rpm pigsty 2.12.0 44.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plproxy_18-2.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 plproxy_18 plproxy_18-2.12.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.12.0 44.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plproxy_18-2.12.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 plproxy_18 plproxy_18-2.11.0-6PGDG.rhel10.2.aarch64.rpm pgdg 2.11.0 44.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plproxy_18-2.11.0-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 plproxy_18 plproxy_18-2.11.0-4PGDG.rhel10.aarch64.rpm pgdg 2.11.0 44.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/plproxy_18-2.11.0-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg12+1_amd64.deb pgdg 2.12.0 134.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg12+1_amd64.deb pgdg 2.11.0 133.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg12+1_arm64.deb pgdg 2.12.0 130.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg12+1_arm64.deb pgdg 2.11.0 130.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg13+1_amd64.deb pgdg 2.12.0 134.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg13+1_amd64.deb pgdg 2.11.0 133.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg13+1_arm64.deb pgdg 2.12.0 130.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg13+1_arm64.deb pgdg 2.11.0 130.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb pgdg 2.12.0 138.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb pgdg 2.11.0 138.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb pgdg 2.12.0 134.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb pgdg 2.11.0 133.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb pgdg 2.12.0 132.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb pgdg 2.11.0 132.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb pgdg 2.12.0 128.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb pgdg 2.11.0 128.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb pgdg 2.12.0 130.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb pgdg 2.11.0 130.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb pgdg 2.12.0 127.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-plproxy postgresql-18-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb pgdg 2.11.0 127.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-18-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 plproxy_17 plproxy_17-2.12.0-1PIGSTY.el8.x86_64.rpm pigsty 2.12.0 48.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plproxy_17-2.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 plproxy_17 plproxy_17-2.12.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.12.0 48.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plproxy_17-2.12.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 plproxy_17 plproxy_17-2.11.0-2PGDG.rhel8.x86_64.rpm pgdg 2.11.0 48.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/plproxy_17-2.11.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 plproxy_17 plproxy_17-2.12.0-1PIGSTY.el8.aarch64.rpm pigsty 2.12.0 46.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plproxy_17-2.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 plproxy_17 plproxy_17-2.12.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.12.0 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plproxy_17-2.12.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 plproxy_17 plproxy_17-2.11.0-2PGDG.rhel8.aarch64.rpm pgdg 2.11.0 45.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/plproxy_17-2.11.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 plproxy_17 plproxy_17-2.12.0-1PIGSTY.el9.x86_64.rpm pigsty 2.12.0 45.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plproxy_17-2.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 plproxy_17 plproxy_17-2.12.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.12.0 46.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plproxy_17-2.12.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 plproxy_17 plproxy_17-2.11.0-6PGDG.rhel9.8.x86_64.rpm pgdg 2.11.0 45.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plproxy_17-2.11.0-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 plproxy_17 plproxy_17-2.11.0-2PGDG.rhel9.x86_64.rpm pgdg 2.11.0 45.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/plproxy_17-2.11.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 plproxy_17 plproxy_17-2.12.0-1PIGSTY.el9.aarch64.rpm pigsty 2.12.0 43.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plproxy_17-2.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 plproxy_17 plproxy_17-2.12.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.12.0 43.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plproxy_17-2.12.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 plproxy_17 plproxy_17-2.11.0-6PGDG.rhel9.8.aarch64.rpm pgdg 2.11.0 43.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plproxy_17-2.11.0-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 plproxy_17 plproxy_17-2.11.0-2PGDG.rhel9.aarch64.rpm pgdg 2.11.0 43.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/plproxy_17-2.11.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 plproxy_17 plproxy_17-2.12.0-1PIGSTY.el10.x86_64.rpm pigsty 2.12.0 46.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plproxy_17-2.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 plproxy_17 plproxy_17-2.12.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.12.0 46.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plproxy_17-2.12.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 plproxy_17 plproxy_17-2.11.0-6PGDG.rhel10.2.x86_64.rpm pgdg 2.11.0 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plproxy_17-2.11.0-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 plproxy_17 plproxy_17-2.11.0-4PGDG.rhel10.x86_64.rpm pgdg 2.11.0 46.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/plproxy_17-2.11.0-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 plproxy_17 plproxy_17-2.12.0-1PIGSTY.el10.aarch64.rpm pigsty 2.12.0 44.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plproxy_17-2.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 plproxy_17 plproxy_17-2.12.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.12.0 44.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plproxy_17-2.12.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 plproxy_17 plproxy_17-2.11.0-6PGDG.rhel10.2.aarch64.rpm pgdg 2.11.0 44.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plproxy_17-2.11.0-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 plproxy_17 plproxy_17-2.11.0-4PGDG.rhel10.aarch64.rpm pgdg 2.11.0 44.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/plproxy_17-2.11.0-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg12+1_amd64.deb pgdg 2.12.0 133.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg12+1_amd64.deb pgdg 2.11.0 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg12+1_arm64.deb pgdg 2.12.0 130.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg12+1_arm64.deb pgdg 2.11.0 130.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg13+1_amd64.deb pgdg 2.12.0 134.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg13+1_amd64.deb pgdg 2.11.0 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg13+1_arm64.deb pgdg 2.12.0 130.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg13+1_arm64.deb pgdg 2.11.0 130.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb pgdg 2.12.0 152.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb pgdg 2.11.0 151.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb pgdg 2.12.0 148.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb pgdg 2.11.0 147.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb pgdg 2.12.0 132.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb pgdg 2.11.0 131.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb pgdg 2.12.0 128.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb pgdg 2.11.0 128.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb pgdg 2.12.0 130.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb pgdg 2.11.0 130.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb pgdg 2.12.0 127.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-plproxy postgresql-17-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb pgdg 2.11.0 127.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-17-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 plproxy_16 plproxy_16-2.12.0-1PIGSTY.el8.x86_64.rpm pigsty 2.12.0 48.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plproxy_16-2.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 plproxy_16 plproxy_16-2.12.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.12.0 48.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/plproxy_16-2.12.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.aarch64 16 plproxy_16 plproxy_16-2.12.0-1PIGSTY.el8.aarch64.rpm pigsty 2.12.0 46.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plproxy_16-2.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 plproxy_16 plproxy_16-2.12.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.12.0 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/plproxy_16-2.12.0-1PGDG.rhel8.10.aarch64.rpm
@ el9.x86_64 16 plproxy_16 plproxy_16-2.12.0-1PIGSTY.el9.x86_64.rpm pigsty 2.12.0 45.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plproxy_16-2.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 plproxy_16 plproxy_16-2.12.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.12.0 46.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plproxy_16-2.12.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 plproxy_16 plproxy_16-2.11.0-6PGDG.rhel9.8.x86_64.rpm pgdg 2.11.0 45.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/plproxy_16-2.11.0-6PGDG.rhel9.8.x86_64.rpm
@ el9.aarch64 16 plproxy_16 plproxy_16-2.12.0-1PIGSTY.el9.aarch64.rpm pigsty 2.12.0 43.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plproxy_16-2.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 plproxy_16 plproxy_16-2.12.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.12.0 43.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plproxy_16-2.12.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 plproxy_16 plproxy_16-2.11.0-6PGDG.rhel9.8.aarch64.rpm pgdg 2.11.0 43.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/plproxy_16-2.11.0-6PGDG.rhel9.8.aarch64.rpm
@ el10.x86_64 16 plproxy_16 plproxy_16-2.12.0-1PIGSTY.el10.x86_64.rpm pigsty 2.12.0 46.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plproxy_16-2.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 plproxy_16 plproxy_16-2.12.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.12.0 46.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plproxy_16-2.12.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 plproxy_16 plproxy_16-2.11.0-6PGDG.rhel10.2.x86_64.rpm pgdg 2.11.0 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plproxy_16-2.11.0-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 plproxy_16 plproxy_16-2.11.0-4PGDG.rhel10.x86_64.rpm pgdg 2.11.0 46.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/plproxy_16-2.11.0-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 plproxy_16 plproxy_16-2.12.0-1PIGSTY.el10.aarch64.rpm pigsty 2.12.0 44.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plproxy_16-2.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 plproxy_16 plproxy_16-2.12.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.12.0 44.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plproxy_16-2.12.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 plproxy_16 plproxy_16-2.11.0-6PGDG.rhel10.2.aarch64.rpm pgdg 2.11.0 44.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plproxy_16-2.11.0-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 plproxy_16 plproxy_16-2.11.0-4PGDG.rhel10.aarch64.rpm pgdg 2.11.0 44.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/plproxy_16-2.11.0-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg12+1_amd64.deb pgdg 2.12.0 134.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg12+1_amd64.deb pgdg 2.11.0 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg12+1_arm64.deb pgdg 2.12.0 130.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg12+1_arm64.deb pgdg 2.11.0 129.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg13+1_amd64.deb pgdg 2.12.0 134.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg13+1_amd64.deb pgdg 2.11.0 133.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg13+1_arm64.deb pgdg 2.12.0 130.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg13+1_arm64.deb pgdg 2.11.0 130.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb pgdg 2.12.0 152.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb pgdg 2.11.0 151.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb pgdg 2.12.0 148.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb pgdg 2.11.0 147.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb pgdg 2.12.0 132.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb pgdg 2.11.0 131.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb pgdg 2.12.0 128.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb pgdg 2.11.0 128.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb pgdg 2.12.0 130.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb pgdg 2.11.0 130.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb pgdg 2.12.0 126.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-plproxy postgresql-16-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb pgdg 2.11.0 127.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-16-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 plproxy_15 plproxy_15-2.12.0-1PIGSTY.el8.x86_64.rpm pigsty 2.12.0 50.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plproxy_15-2.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 plproxy_15 plproxy_15-2.12.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.12.0 50.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plproxy_15-2.12.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 plproxy_15 plproxy_15-2.11.0-1PGDG.rhel8.x86_64.rpm pgdg 2.11.0 49.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plproxy_15-2.11.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 plproxy_15 plproxy_15-2.10.0-3.rhel8.x86_64.rpm pgdg 2.10.0 145.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/plproxy_15-2.10.0-3.rhel8.x86_64.rpm
@ el8.aarch64 15 plproxy_15 plproxy_15-2.12.0-1PIGSTY.el8.aarch64.rpm pigsty 2.12.0 47.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plproxy_15-2.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 plproxy_15 plproxy_15-2.12.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.12.0 47.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plproxy_15-2.12.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 plproxy_15 plproxy_15-2.11.0-1PGDG.rhel8.aarch64.rpm pgdg 2.11.0 46.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plproxy_15-2.11.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 plproxy_15 plproxy_15-2.10.0-3.rhel8.aarch64.rpm pgdg 2.10.0 142.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/plproxy_15-2.10.0-3.rhel8.aarch64.rpm
@ el9.x86_64 15 plproxy_15 plproxy_15-2.12.0-1PIGSTY.el9.x86_64.rpm pigsty 2.12.0 49.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plproxy_15-2.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 plproxy_15 plproxy_15-2.12.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.12.0 49.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plproxy_15-2.12.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 plproxy_15 plproxy_15-2.11.0-6PGDG.rhel9.8.x86_64.rpm pgdg 2.11.0 49.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plproxy_15-2.11.0-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 plproxy_15 plproxy_15-2.11.0-1PGDG.rhel9.x86_64.rpm pgdg 2.11.0 49.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plproxy_15-2.11.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 plproxy_15 plproxy_15-2.10.0-3.rhel9.x86_64.rpm pgdg 2.10.0 146.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/plproxy_15-2.10.0-3.rhel9.x86_64.rpm
@ el9.aarch64 15 plproxy_15 plproxy_15-2.12.0-1PIGSTY.el9.aarch64.rpm pigsty 2.12.0 47.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plproxy_15-2.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 plproxy_15 plproxy_15-2.12.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.12.0 47.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plproxy_15-2.12.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 plproxy_15 plproxy_15-2.11.0-6PGDG.rhel9.8.aarch64.rpm pgdg 2.11.0 47.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plproxy_15-2.11.0-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 plproxy_15 plproxy_15-2.11.0-1PGDG.rhel9.aarch64.rpm pgdg 2.11.0 46.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plproxy_15-2.11.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 plproxy_15 plproxy_15-2.10.0-3.rhel9.aarch64.rpm pgdg 2.10.0 144.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/plproxy_15-2.10.0-3.rhel9.aarch64.rpm
@ el10.x86_64 15 plproxy_15 plproxy_15-2.12.0-1PIGSTY.el10.x86_64.rpm pigsty 2.12.0 49.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plproxy_15-2.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 plproxy_15 plproxy_15-2.12.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.12.0 49.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plproxy_15-2.12.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 plproxy_15 plproxy_15-2.11.0-6PGDG.rhel10.2.x86_64.rpm pgdg 2.11.0 49.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plproxy_15-2.11.0-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 plproxy_15 plproxy_15-2.11.0-4PGDG.rhel10.x86_64.rpm pgdg 2.11.0 49.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/plproxy_15-2.11.0-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 plproxy_15 plproxy_15-2.12.0-1PIGSTY.el10.aarch64.rpm pigsty 2.12.0 47.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plproxy_15-2.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 plproxy_15 plproxy_15-2.12.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.12.0 48.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plproxy_15-2.12.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 plproxy_15 plproxy_15-2.11.0-6PGDG.rhel10.2.aarch64.rpm pgdg 2.11.0 47.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plproxy_15-2.11.0-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 plproxy_15 plproxy_15-2.11.0-4PGDG.rhel10.aarch64.rpm pgdg 2.11.0 48.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/plproxy_15-2.11.0-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg12+1_amd64.deb pgdg 2.12.0 135.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg12+1_amd64.deb pgdg 2.11.0 134.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg12+1_arm64.deb pgdg 2.12.0 131.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg12+1_arm64.deb pgdg 2.11.0 131.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg13+1_amd64.deb pgdg 2.12.0 135.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg13+1_amd64.deb pgdg 2.11.0 135.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg13+1_arm64.deb pgdg 2.12.0 131.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg13+1_arm64.deb pgdg 2.11.0 131.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb pgdg 2.12.0 154.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb pgdg 2.11.0 154.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb pgdg 2.12.0 150.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb pgdg 2.11.0 150.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb pgdg 2.12.0 135.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb pgdg 2.11.0 134.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb pgdg 2.12.0 131.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb pgdg 2.11.0 131.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb pgdg 2.12.0 133.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb pgdg 2.11.0 133.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb pgdg 2.12.0 129.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-plproxy postgresql-15-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb pgdg 2.11.0 130.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-15-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 plproxy_14 plproxy_14-2.12.0-1PIGSTY.el8.x86_64.rpm pigsty 2.12.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/plproxy_14-2.12.0-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 plproxy_14 plproxy_14-2.12.0-1PGDG.rhel8.10.x86_64.rpm pgdg 2.12.0 50.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plproxy_14-2.12.0-1PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 plproxy_14 plproxy_14-2.11.0-1PGDG.rhel8.x86_64.rpm pgdg 2.11.0 49.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plproxy_14-2.11.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 plproxy_14 plproxy_14-2.10.0-3.rhel8.x86_64.rpm pgdg 2.10.0 143.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/plproxy_14-2.10.0-3.rhel8.x86_64.rpm
@ el8.aarch64 14 plproxy_14 plproxy_14-2.12.0-1PIGSTY.el8.aarch64.rpm pigsty 2.12.0 47.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/plproxy_14-2.12.0-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 plproxy_14 plproxy_14-2.12.0-1PGDG.rhel8.10.aarch64.rpm pgdg 2.12.0 47.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plproxy_14-2.12.0-1PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 plproxy_14 plproxy_14-2.11.0-1PGDG.rhel8.aarch64.rpm pgdg 2.11.0 46.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plproxy_14-2.11.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 plproxy_14 plproxy_14-2.10.0-3.rhel8.aarch64.rpm pgdg 2.10.0 140.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/plproxy_14-2.10.0-3.rhel8.aarch64.rpm
@ el9.x86_64 14 plproxy_14 plproxy_14-2.12.0-1PIGSTY.el9.x86_64.rpm pigsty 2.12.0 48.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/plproxy_14-2.12.0-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 plproxy_14 plproxy_14-2.12.0-1PGDG.rhel9.8.x86_64.rpm pgdg 2.12.0 49.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plproxy_14-2.12.0-1PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 plproxy_14 plproxy_14-2.11.0-6PGDG.rhel9.8.x86_64.rpm pgdg 2.11.0 48.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plproxy_14-2.11.0-6PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 plproxy_14 plproxy_14-2.11.0-1PGDG.rhel9.x86_64.rpm pgdg 2.11.0 48.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/plproxy_14-2.11.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 plproxy_14 plproxy_14-2.12.0-1PIGSTY.el9.aarch64.rpm pigsty 2.12.0 47.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/plproxy_14-2.12.0-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 plproxy_14 plproxy_14-2.12.0-1PGDG.rhel9.8.aarch64.rpm pgdg 2.12.0 47.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plproxy_14-2.12.0-1PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 plproxy_14 plproxy_14-2.11.0-6PGDG.rhel9.8.aarch64.rpm pgdg 2.11.0 47.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plproxy_14-2.11.0-6PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 plproxy_14 plproxy_14-2.11.0-1PGDG.rhel9.aarch64.rpm pgdg 2.11.0 46.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plproxy_14-2.11.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 plproxy_14 plproxy_14-2.10.0-3.rhel9.aarch64.rpm pgdg 2.10.0 142.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/plproxy_14-2.10.0-3.rhel9.aarch64.rpm
@ el10.x86_64 14 plproxy_14 plproxy_14-2.12.0-1PIGSTY.el10.x86_64.rpm pigsty 2.12.0 49.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/plproxy_14-2.12.0-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 plproxy_14 plproxy_14-2.12.0-1PGDG.rhel10.2.x86_64.rpm pgdg 2.12.0 49.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plproxy_14-2.12.0-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 plproxy_14 plproxy_14-2.11.0-6PGDG.rhel10.2.x86_64.rpm pgdg 2.11.0 49.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plproxy_14-2.11.0-6PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 plproxy_14 plproxy_14-2.11.0-4PGDG.rhel10.x86_64.rpm pgdg 2.11.0 49.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/plproxy_14-2.11.0-4PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 plproxy_14 plproxy_14-2.12.0-1PIGSTY.el10.aarch64.rpm pigsty 2.12.0 47.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/plproxy_14-2.12.0-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 plproxy_14 plproxy_14-2.12.0-1PGDG.rhel10.2.aarch64.rpm pgdg 2.12.0 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plproxy_14-2.12.0-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 plproxy_14 plproxy_14-2.11.0-6PGDG.rhel10.2.aarch64.rpm pgdg 2.11.0 47.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plproxy_14-2.11.0-6PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 plproxy_14 plproxy_14-2.11.0-4PGDG.rhel10.aarch64.rpm pgdg 2.11.0 48.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/plproxy_14-2.11.0-4PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg12+1_amd64.deb pgdg 2.12.0 134.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg12+1_amd64.deb pgdg 2.11.0 134.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg12+1_arm64.deb pgdg 2.12.0 131.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg12+1_arm64.deb pgdg 2.11.0 130.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg13+1_amd64.deb pgdg 2.12.0 135.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg13+1_amd64.deb pgdg 2.11.0 134.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg13+1_arm64.deb pgdg 2.12.0 131.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg13+1_arm64.deb pgdg 2.11.0 131.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb pgdg 2.12.0 152.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb pgdg 2.11.0 152.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb pgdg 2.12.0 149.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb pgdg 2.11.0 148.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb pgdg 2.12.0 134.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb pgdg 2.11.0 134.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb pgdg 2.12.0 131.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb pgdg 2.11.0 131.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb pgdg 2.12.0 133.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb pgdg 2.11.0 133.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb pgdg 2.12.0 129.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.12.0-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-plproxy postgresql-14-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb pgdg 2.11.0 129.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-plproxy/postgresql-14-plproxy_2.11.0-13.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `plproxy` using `pig build`:

```bash
pig build pkg plproxy         # build RPM packages
```


## Install

You can install `plproxy` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install plproxy;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y plproxy -v 18  # PG 18
pig ext install -y plproxy -v 17  # PG 17
pig ext install -y plproxy -v 16  # PG 16
pig ext install -y plproxy -v 15  # PG 15
pig ext install -y plproxy -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y plproxy_18       # PG 18
dnf install -y plproxy_17       # PG 17
dnf install -y plproxy_16       # PG 16
dnf install -y plproxy_15       # PG 15
dnf install -y plproxy_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-plproxy   # PG 18
apt install -y postgresql-17-plproxy   # PG 17
apt install -y postgresql-16-plproxy   # PG 16
apt install -y postgresql-15-plproxy   # PG 15
apt install -y postgresql-14-plproxy   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION plproxy;
```

## Usage

Sources:

- [PL/Proxy 2.12.0 README](https://github.com/plproxy/plproxy/blob/v2.12.0/README.md)
- [PL/Proxy language syntax](https://github.com/plproxy/plproxy/blob/v2.12.0/doc/syntax.md)
- [PL/Proxy cluster configuration](https://github.com/plproxy/plproxy/blob/v2.12.0/doc/config.md)
- [PL/Proxy 2.12.0 release](https://github.com/plproxy/plproxy/releases/tag/v2.12.0)

PL/Proxy is a PostgreSQL procedural language handler that enables remote procedure calls
between PostgreSQL databases, with optional sharding.

### Create the Extension

```sql
CREATE EXTENSION plproxy;
```

### Language Statements

PL/Proxy functions use four types of statements:

**Cluster selection** -- connect to a pre-configured cluster:

```sql
CREATE FUNCTION get_user(i_id int) RETURNS SETOF users AS $$
    CLUSTER 'mycluster';
    RUN ON i_id;
$$ LANGUAGE plproxy;
```

**Direct connection** -- use a connection string:

```sql
CREATE FUNCTION get_config(key text) RETURNS text AS $$
    CONNECT 'host=remotehost dbname=config';
    SELECT val FROM config WHERE key = $1;
$$ LANGUAGE plproxy;
```

### Execution Modes

**RUN ON hash** -- route to a specific partition based on a hash:

```sql
CREATE FUNCTION get_user_settings(i_username text) RETURNS SETOF user_settings AS $$
    RUN ON namehash(i_username);
$$ LANGUAGE plproxy;
```

**RUN ON ALL** -- execute on all databases in parallel:

```sql
CREATE FUNCTION get_all_counts() RETURNS SETOF record AS $$
    RUN ON ALL;
    SELECT count(*) FROM users;
$$ LANGUAGE plproxy;
```

**RUN ON ANY** -- randomly select a server:

```sql
CREATE FUNCTION get_random_quote() RETURNS text AS $$
    RUN ON ANY;
    SELECT quote FROM quotes ORDER BY random() LIMIT 1;
$$ LANGUAGE plproxy;
```

### Cluster Configuration

Clusters are configured using SQL/MED (Management of External Data):

```sql
CREATE SERVER mycluster FOREIGN DATA WRAPPER plproxy
    OPTIONS (
        connection_lifetime '1800',
        p0 'host=node0 dbname=mydb',
        p1 'host=node1 dbname=mydb',
        p2 'host=node2 dbname=mydb',
        p3 'host=node3 dbname=mydb'
    );

CREATE USER MAPPING FOR CURRENT_USER
    SERVER mycluster
    OPTIONS (user 'proxy_user', password 'secret');
```

### Caveats

- PL/Proxy routes function calls, not arbitrary cross-database transactions. Design remote functions to be retry-safe and keep transaction boundaries explicit.
- Cluster definitions and user mappings can expose connection details; protect catalog access and prefer restricted remote roles.
- Release 2.12.0 fixes quoted-identifier parsing in `SELECT`, a null-pointer issue in `plproxy_fdw_validator`, Windows builds, and PostgreSQL 19 compatibility. Existing SQL objects do not need a new usage pattern, but databases upgraded from an older extension version should run the matching `ALTER EXTENSION plproxy UPDATE` path.
