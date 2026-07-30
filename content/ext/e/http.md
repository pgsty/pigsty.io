---
title: "http"
linkTitle: "http"
description: "HTTP client for PostgreSQL, allows web page retrieval inside the database."
weight: 4070
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pramsey/pgsql-http">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pramsey/pgsql-http</div>
    <div class="ext-card__desc">https://github.com/pramsey/pgsql-http</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsql-http-1.7.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsql-http-1.7.1.tar.gz</div>
    <div class="ext-card__desc">pgsql-http-1.7.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_http`**](/ext/e/http) | `1.7.2` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4070  | [**`http`**](/ext/e/http) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) [`omni_httpc`](/ext/e/omni_httpc) [`pg_graphql`](/ext/e/pg_graphql) [`documentdb`](/ext/e/documentdb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`pgmb`](/ext/e/pgmb) |
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.7.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_http` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.7.2` | {{< pgvers "18,17,16,15,14" >}} | `pgsql_http_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.7.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-http` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 1.7.2 3 | AVAIL PGDG 1.7.2 6 | AVAIL PGDG 1.7.2 7 | AVAIL PGDG 1.7.2 7 | AVAIL PGDG 1.7.2 7 |
| el8.aarch64 | AVAIL PGDG 1.7.2 3 | AVAIL PGDG 1.7.2 6 | AVAIL PGDG 1.7.2 7 | AVAIL PGDG 1.7.2 7 | AVAIL PGDG 1.7.2 7 |
| el9.x86_64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 7 | AVAIL PGDG 1.7.2 8 | AVAIL PGDG 1.7.2 8 | AVAIL PGDG 1.7.2 8 |
| el9.aarch64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 7 | AVAIL PGDG 1.7.2 8 | AVAIL PGDG 1.7.2 8 | AVAIL PGDG 1.7.2 8 |
| el10.x86_64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 5 | AVAIL PGDG 1.7.2 5 | AVAIL PGDG 1.7.2 5 | AVAIL PGDG 1.7.2 5 |
| el10.aarch64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 5 | AVAIL PGDG 1.7.2 5 | AVAIL PGDG 1.7.2 5 | AVAIL PGDG 1.7.2 5 |
| d12.x86_64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| d12.aarch64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| d13.x86_64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| d13.aarch64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| u22.x86_64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| u22.aarch64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| u24.x86_64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| u24.aarch64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| u26.x86_64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
| u26.aarch64 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 | AVAIL PGDG 1.7.2 4 |
@ el8.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.2-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.2 24.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgsql_http_18-1.7.2-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.1-1PIGSTY.el8.x86_64.rpm pigsty 1.7.1 29.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_http_18-1.7.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pgsql_http_18-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.2-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.2 24.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgsql_http_18-1.7.2-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.1-1PIGSTY.el8.aarch64.rpm pigsty 1.7.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_http_18-1.7.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 23.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pgsql_http_18-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.2-2PGDG.rhel9.8.x86_64.rpm pgdg 1.7.2 25.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_http_18-1.7.2-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.1-1PIGSTY.el9.x86_64.rpm pigsty 1.7.1 29.5KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_http_18-1.7.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7.0 25.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_http_18-1.7.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 25.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pgsql_http_18-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.2-2PGDG.rhel9.8.aarch64.rpm pgdg 1.7.2 24.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_http_18-1.7.2-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.1-1PIGSTY.el9.aarch64.rpm pigsty 1.7.1 28.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_http_18-1.7.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7.0 23.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_http_18-1.7.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 23.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pgsql_http_18-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.2-2PGDG.rhel10.2.x86_64.rpm pgdg 1.7.2 26.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_http_18-1.7.2-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.1-1PIGSTY.el10.x86_64.rpm pigsty 1.7.1 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_http_18-1.7.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7.0 25.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_http_18-1.7.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pgsql_http_18 pgsql_http_18-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 25.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pgsql_http_18-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.2-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.2 24.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_http_18-1.7.2-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.1-1PIGSTY.el10.aarch64.rpm pigsty 1.7.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_http_18-1.7.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 24.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_http_18-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pgsql_http_18 pgsql_http_18-1.7.0-1PGDG.rhel10.aarch64.rpm pgdg 1.7.0 24.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pgsql_http_18-1.7.0-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg12+1_amd64.deb pgdg 1.7.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg12+1_amd64.deb pgdg 1.7.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~bookworm_amd64.deb pigsty 1.7.1 44.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg12+1_amd64.deb pgdg 1.7.0 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg12+1_arm64.deb pgdg 1.7.2 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg12+1_arm64.deb pgdg 1.7.1 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~bookworm_arm64.deb pigsty 1.7.1 42.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg12+1_arm64.deb pgdg 1.7.0 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg13+1_amd64.deb pgdg 1.7.2 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg13+1_amd64.deb pgdg 1.7.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~trixie_amd64.deb pigsty 1.7.1 44.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg13+1_amd64.deb pgdg 1.7.0 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg13+1_arm64.deb pgdg 1.7.2 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg13+1_arm64.deb pgdg 1.7.1 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~trixie_arm64.deb pigsty 1.7.1 43.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg13+1_arm64.deb pgdg 1.7.0 43.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg22.04+1_amd64.deb pgdg 1.7.2 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg22.04+1_amd64.deb pgdg 1.7.1 45.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~jammy_amd64.deb pigsty 1.7.1 47.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg22.04+1_amd64.deb pgdg 1.7.0 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg22.04+1_arm64.deb pgdg 1.7.2 43.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg22.04+1_arm64.deb pgdg 1.7.1 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~jammy_arm64.deb pigsty 1.7.1 45.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg22.04+1_arm64.deb pgdg 1.7.0 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg24.04+1_amd64.deb pgdg 1.7.2 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg24.04+1_amd64.deb pgdg 1.7.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~noble_amd64.deb pigsty 1.7.1 46.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg24.04+1_amd64.deb pgdg 1.7.0 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg24.04+1_arm64.deb pgdg 1.7.2 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg24.04+1_arm64.deb pgdg 1.7.1 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~noble_arm64.deb pigsty 1.7.1 45.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg24.04+1_arm64.deb pgdg 1.7.0 43.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg26.04+1_amd64.deb pgdg 1.7.2 51.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg26.04+1_amd64.deb pgdg 1.7.1 51.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~resolute_amd64.deb pigsty 1.7.1 54.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg26.04+1_amd64.deb pgdg 1.7.0 51.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-http postgresql-18-http_1.7.2-2.pgdg26.04+1_arm64.deb pgdg 1.7.2 50.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.2-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1.pgdg26.04+1_arm64.deb pgdg 1.7.1 50.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 18 postgresql-18-http postgresql-18-http_1.7.1-1PIGSTY~resolute_arm64.deb pigsty 1.7.1 52.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-18-http_1.7.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 18 postgresql-18-http postgresql-18-http_1.7.0-3.pgdg26.04+1_arm64.deb pgdg 1.7.0 49.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-18-http_1.7.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.2-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.2 24.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_http_17-1.7.2-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.1-1PIGSTY.el8.x86_64.rpm pigsty 1.7.1 29.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_http_17-1.7.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_http_17-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgsql_http_17 pgsql_http_17-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_http_17-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgsql_http_17 pgsql_http_17-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_http_17-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pgsql_http_17 pgsql_http_17-1.6.0-2PGDG.rhel8.x86_64.rpm pgdg 1.6.0 22.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pgsql_http_17-1.6.0-2PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.2-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.2 24.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_http_17-1.7.2-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.1-1PIGSTY.el8.aarch64.rpm pigsty 1.7.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_http_17-1.7.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 23.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_http_17-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgsql_http_17 pgsql_http_17-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 22.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_http_17-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgsql_http_17 pgsql_http_17-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 22.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_http_17-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pgsql_http_17 pgsql_http_17-1.6.0-2PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pgsql_http_17-1.6.0-2PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.2-2PGDG.rhel9.8.x86_64.rpm pgdg 1.7.2 25.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_http_17-1.7.2-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.1-1PIGSTY.el9.x86_64.rpm pigsty 1.7.1 29.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_http_17-1.7.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7.0 25.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_http_17-1.7.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 25.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_http_17-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgsql_http_17 pgsql_http_17-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 24.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_http_17-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgsql_http_17 pgsql_http_17-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_http_17-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pgsql_http_17 pgsql_http_17-1.6.0-2PGDG.rhel9.x86_64.rpm pgdg 1.6.0 23.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pgsql_http_17-1.6.0-2PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.2-2PGDG.rhel9.8.aarch64.rpm pgdg 1.7.2 24.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_http_17-1.7.2-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.1-1PIGSTY.el9.aarch64.rpm pigsty 1.7.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_http_17-1.7.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_http_17-1.7.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 23.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_http_17-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgsql_http_17 pgsql_http_17-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 22.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_http_17-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgsql_http_17 pgsql_http_17-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 23.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_http_17-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pgsql_http_17 pgsql_http_17-1.6.0-2PGDG.rhel9.aarch64.rpm pgdg 1.6.0 22.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pgsql_http_17-1.6.0-2PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.2-2PGDG.rhel10.2.x86_64.rpm pgdg 1.7.2 26.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_http_17-1.7.2-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.1-1PIGSTY.el10.x86_64.rpm pigsty 1.7.1 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_http_17-1.7.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7.0 25.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_http_17-1.7.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pgsql_http_17 pgsql_http_17-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 26.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_http_17-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pgsql_http_17 pgsql_http_17-1.6.3-2PGDG.rhel10.x86_64.rpm pgdg 1.6.3 25.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pgsql_http_17-1.6.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.2-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.2 24.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_http_17-1.7.2-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.1-1PIGSTY.el10.aarch64.rpm pigsty 1.7.1 28.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_http_17-1.7.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 24.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_http_17-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pgsql_http_17 pgsql_http_17-1.7.0-1PGDG.rhel10.aarch64.rpm pgdg 1.7.0 24.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_http_17-1.7.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pgsql_http_17 pgsql_http_17-1.6.3-2PGDG.rhel10.aarch64.rpm pgdg 1.6.3 23.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pgsql_http_17-1.6.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg12+1_amd64.deb pgdg 1.7.2 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg12+1_amd64.deb pgdg 1.7.1 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~bookworm_amd64.deb pigsty 1.7.1 44.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg12+1_amd64.deb pgdg 1.7.0 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg12+1_arm64.deb pgdg 1.7.2 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg12+1_arm64.deb pgdg 1.7.1 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~bookworm_arm64.deb pigsty 1.7.1 42.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg12+1_arm64.deb pgdg 1.7.0 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg13+1_amd64.deb pgdg 1.7.2 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg13+1_amd64.deb pgdg 1.7.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~trixie_amd64.deb pigsty 1.7.1 44.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg13+1_amd64.deb pgdg 1.7.0 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg13+1_arm64.deb pgdg 1.7.2 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg13+1_arm64.deb pgdg 1.7.1 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~trixie_arm64.deb pigsty 1.7.1 42.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg13+1_arm64.deb pgdg 1.7.0 43.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg22.04+1_amd64.deb pgdg 1.7.2 49.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg22.04+1_amd64.deb pgdg 1.7.1 49.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~jammy_amd64.deb pigsty 1.7.1 51.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg22.04+1_amd64.deb pgdg 1.7.0 48.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg22.04+1_arm64.deb pgdg 1.7.2 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg22.04+1_arm64.deb pgdg 1.7.1 47.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~jammy_arm64.deb pigsty 1.7.1 50.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg22.04+1_arm64.deb pgdg 1.7.0 47.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg24.04+1_amd64.deb pgdg 1.7.2 45.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg24.04+1_amd64.deb pgdg 1.7.1 45.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~noble_amd64.deb pigsty 1.7.1 46.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg24.04+1_amd64.deb pgdg 1.7.0 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg24.04+1_arm64.deb pgdg 1.7.2 43.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg24.04+1_arm64.deb pgdg 1.7.1 43.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~noble_arm64.deb pigsty 1.7.1 45.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg24.04+1_arm64.deb pgdg 1.7.0 43.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg26.04+1_amd64.deb pgdg 1.7.2 51.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg26.04+1_amd64.deb pgdg 1.7.1 51.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~resolute_amd64.deb pigsty 1.7.1 54.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg26.04+1_amd64.deb pgdg 1.7.0 51.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-http postgresql-17-http_1.7.2-2.pgdg26.04+1_arm64.deb pgdg 1.7.2 50.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.2-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1.pgdg26.04+1_arm64.deb pgdg 1.7.1 50.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 17 postgresql-17-http postgresql-17-http_1.7.1-1PIGSTY~resolute_arm64.deb pigsty 1.7.1 53.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-17-http_1.7.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 17 postgresql-17-http postgresql-17-http_1.7.0-3.pgdg26.04+1_arm64.deb pgdg 1.7.0 50.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-17-http_1.7.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.2-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.2 24.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_http_16-1.7.2-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.1-1PIGSTY.el8.x86_64.rpm pigsty 1.7.1 29.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_http_16-1.7.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_http_16-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_http_16-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_http_16-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.0-2PGDG.rhel8.x86_64.rpm pgdg 1.6.0 22.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_http_16-1.6.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 22.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pgsql_http_16-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.2-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.2 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_http_16-1.7.2-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.1-1PIGSTY.el8.aarch64.rpm pigsty 1.7.1 28.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_http_16-1.7.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 23.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_http_16-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 22.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_http_16-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_http_16-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.0-2PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_http_16-1.6.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pgsql_http_16-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.2-2PGDG.rhel9.8.x86_64.rpm pgdg 1.7.2 25.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_http_16-1.7.2-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.1-1PIGSTY.el9.x86_64.rpm pigsty 1.7.1 29.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_http_16-1.7.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7.0 25.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_http_16-1.7.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 25.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_http_16-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 24.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_http_16-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_http_16-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.0-2PGDG.rhel9.x86_64.rpm pgdg 1.6.0 23.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_http_16-1.6.0-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 23.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pgsql_http_16-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.2-2PGDG.rhel9.8.aarch64.rpm pgdg 1.7.2 24.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_http_16-1.7.2-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.1-1PIGSTY.el9.aarch64.rpm pigsty 1.7.1 28.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_http_16-1.7.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7.0 23.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_http_16-1.7.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_http_16-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 22.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_http_16-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 23.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_http_16-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.0-2PGDG.rhel9.aarch64.rpm pgdg 1.6.0 22.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_http_16-1.6.0-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 22.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pgsql_http_16-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.2-2PGDG.rhel10.2.x86_64.rpm pgdg 1.7.2 26.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_http_16-1.7.2-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.1-1PIGSTY.el10.x86_64.rpm pigsty 1.7.1 30.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_http_16-1.7.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7.0 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_http_16-1.7.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pgsql_http_16 pgsql_http_16-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 25.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_http_16-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pgsql_http_16 pgsql_http_16-1.6.3-2PGDG.rhel10.x86_64.rpm pgdg 1.6.3 25.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pgsql_http_16-1.6.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.2-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.2 24.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_http_16-1.7.2-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.1-1PIGSTY.el10.aarch64.rpm pigsty 1.7.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_http_16-1.7.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 24.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_http_16-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pgsql_http_16 pgsql_http_16-1.7.0-1PGDG.rhel10.aarch64.rpm pgdg 1.7.0 24.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_http_16-1.7.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pgsql_http_16 pgsql_http_16-1.6.3-2PGDG.rhel10.aarch64.rpm pgdg 1.6.3 23.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pgsql_http_16-1.6.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg12+1_amd64.deb pgdg 1.7.2 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg12+1_amd64.deb pgdg 1.7.1 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~bookworm_amd64.deb pigsty 1.7.1 43.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg12+1_amd64.deb pgdg 1.7.0 44.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg12+1_arm64.deb pgdg 1.7.2 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg12+1_arm64.deb pgdg 1.7.1 43.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~bookworm_arm64.deb pigsty 1.7.1 42.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg12+1_arm64.deb pgdg 1.7.0 43.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg13+1_amd64.deb pgdg 1.7.2 44.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg13+1_amd64.deb pgdg 1.7.1 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~trixie_amd64.deb pigsty 1.7.1 44.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg13+1_amd64.deb pgdg 1.7.0 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg13+1_arm64.deb pgdg 1.7.2 43.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg13+1_arm64.deb pgdg 1.7.1 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~trixie_arm64.deb pigsty 1.7.1 42.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg13+1_arm64.deb pgdg 1.7.0 43.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg22.04+1_amd64.deb pgdg 1.7.2 49.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg22.04+1_amd64.deb pgdg 1.7.1 49.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~jammy_amd64.deb pigsty 1.7.1 51.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg22.04+1_amd64.deb pgdg 1.7.0 48.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg22.04+1_arm64.deb pgdg 1.7.2 47.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg22.04+1_arm64.deb pgdg 1.7.1 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~jammy_arm64.deb pigsty 1.7.1 49.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg22.04+1_arm64.deb pgdg 1.7.0 47.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg24.04+1_amd64.deb pgdg 1.7.2 44.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg24.04+1_amd64.deb pgdg 1.7.1 44.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~noble_amd64.deb pigsty 1.7.1 46.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg24.04+1_amd64.deb pgdg 1.7.0 44.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg24.04+1_arm64.deb pgdg 1.7.2 43.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg24.04+1_arm64.deb pgdg 1.7.1 43.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~noble_arm64.deb pigsty 1.7.1 44.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg24.04+1_arm64.deb pgdg 1.7.0 43.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg26.04+1_amd64.deb pgdg 1.7.2 51.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg26.04+1_amd64.deb pgdg 1.7.1 51.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~resolute_amd64.deb pigsty 1.7.1 54.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg26.04+1_amd64.deb pgdg 1.7.0 51.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-http postgresql-16-http_1.7.2-2.pgdg26.04+1_arm64.deb pgdg 1.7.2 49.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.2-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1.pgdg26.04+1_arm64.deb pgdg 1.7.1 50.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 16 postgresql-16-http postgresql-16-http_1.7.1-1PIGSTY~resolute_arm64.deb pigsty 1.7.1 52.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-16-http_1.7.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 16 postgresql-16-http postgresql-16-http_1.7.0-3.pgdg26.04+1_arm64.deb pgdg 1.7.0 50.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-16-http_1.7.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.2-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.2 25.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_http_15-1.7.2-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.1-1PIGSTY.el8.x86_64.rpm pigsty 1.7.1 29.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_http_15-1.7.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_http_15-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 23.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_http_15-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_http_15-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.0-2PGDG.rhel8.x86_64.rpm pgdg 1.6.0 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_http_15-1.6.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 22.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pgsql_http_15-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.2-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.2 24.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_http_15-1.7.2-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.1-1PIGSTY.el8.aarch64.rpm pigsty 1.7.1 29.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_http_15-1.7.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 23.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_http_15-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 22.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_http_15-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 22.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_http_15-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.0-2PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_http_15-1.6.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pgsql_http_15-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.2-2PGDG.rhel9.8.x86_64.rpm pgdg 1.7.2 26.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_http_15-1.7.2-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.1-1PIGSTY.el9.x86_64.rpm pigsty 1.7.1 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_http_15-1.7.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7.0 25.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_http_15-1.7.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 25.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_http_15-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 24.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_http_15-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_http_15-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.0-2PGDG.rhel9.x86_64.rpm pgdg 1.6.0 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_http_15-1.6.0-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 23.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pgsql_http_15-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.2-2PGDG.rhel9.8.aarch64.rpm pgdg 1.7.2 24.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_http_15-1.7.2-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.1-1PIGSTY.el9.aarch64.rpm pigsty 1.7.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_http_15-1.7.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_http_15-1.7.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_http_15-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_http_15-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 23.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_http_15-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.0-2PGDG.rhel9.aarch64.rpm pgdg 1.6.0 23.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_http_15-1.6.0-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 22.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pgsql_http_15-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.2-2PGDG.rhel10.2.x86_64.rpm pgdg 1.7.2 26.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_http_15-1.7.2-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.1-1PIGSTY.el10.x86_64.rpm pigsty 1.7.1 30.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_http_15-1.7.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7.0 26.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_http_15-1.7.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pgsql_http_15 pgsql_http_15-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 26.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_http_15-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pgsql_http_15 pgsql_http_15-1.6.3-2PGDG.rhel10.x86_64.rpm pgdg 1.6.3 25.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pgsql_http_15-1.6.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.2-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.2 24.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_http_15-1.7.2-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.1-1PIGSTY.el10.aarch64.rpm pigsty 1.7.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_http_15-1.7.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_http_15-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pgsql_http_15 pgsql_http_15-1.7.0-1PGDG.rhel10.aarch64.rpm pgdg 1.7.0 24.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_http_15-1.7.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pgsql_http_15 pgsql_http_15-1.6.3-2PGDG.rhel10.aarch64.rpm pgdg 1.6.3 23.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pgsql_http_15-1.6.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg12+1_amd64.deb pgdg 1.7.2 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg12+1_amd64.deb pgdg 1.7.1 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~bookworm_amd64.deb pigsty 1.7.1 44.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg12+1_amd64.deb pgdg 1.7.0 45.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg12+1_arm64.deb pgdg 1.7.2 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg12+1_arm64.deb pgdg 1.7.1 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~bookworm_arm64.deb pigsty 1.7.1 43.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg12+1_arm64.deb pgdg 1.7.0 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg13+1_amd64.deb pgdg 1.7.2 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg13+1_amd64.deb pgdg 1.7.1 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~trixie_amd64.deb pigsty 1.7.1 45.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg13+1_amd64.deb pgdg 1.7.0 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg13+1_arm64.deb pgdg 1.7.2 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg13+1_arm64.deb pgdg 1.7.1 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~trixie_arm64.deb pigsty 1.7.1 43.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg13+1_arm64.deb pgdg 1.7.0 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg22.04+1_amd64.deb pgdg 1.7.2 50.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg22.04+1_amd64.deb pgdg 1.7.1 50.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~jammy_amd64.deb pigsty 1.7.1 52.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg22.04+1_amd64.deb pgdg 1.7.0 50.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg22.04+1_arm64.deb pgdg 1.7.2 48.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg22.04+1_arm64.deb pgdg 1.7.1 48.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~jammy_arm64.deb pigsty 1.7.1 50.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg22.04+1_arm64.deb pgdg 1.7.0 48.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg24.04+1_amd64.deb pgdg 1.7.2 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg24.04+1_amd64.deb pgdg 1.7.1 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~noble_amd64.deb pigsty 1.7.1 47.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg24.04+1_amd64.deb pgdg 1.7.0 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg24.04+1_arm64.deb pgdg 1.7.2 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg24.04+1_arm64.deb pgdg 1.7.1 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~noble_arm64.deb pigsty 1.7.1 45.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg24.04+1_arm64.deb pgdg 1.7.0 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg26.04+1_amd64.deb pgdg 1.7.2 52.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg26.04+1_amd64.deb pgdg 1.7.1 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~resolute_amd64.deb pigsty 1.7.1 55.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg26.04+1_amd64.deb pgdg 1.7.0 52.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-http postgresql-15-http_1.7.2-2.pgdg26.04+1_arm64.deb pgdg 1.7.2 51.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.2-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1.pgdg26.04+1_arm64.deb pgdg 1.7.1 51.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 15 postgresql-15-http postgresql-15-http_1.7.1-1PIGSTY~resolute_arm64.deb pigsty 1.7.1 53.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-15-http_1.7.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 15 postgresql-15-http postgresql-15-http_1.7.0-3.pgdg26.04+1_arm64.deb pgdg 1.7.0 50.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-15-http_1.7.0-3.pgdg26.04+1_arm64.deb
@ el8.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.2-2PGDG.rhel8.10.x86_64.rpm pgdg 1.7.2 25.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_http_14-1.7.2-2PGDG.rhel8.10.x86_64.rpm
@ el8.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.1-1PIGSTY.el8.x86_64.rpm pigsty 1.7.1 29.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsql_http_14-1.7.1-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.0-1PGDG.rhel8.x86_64.rpm pgdg 1.7.0 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_http_14-1.7.0-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.3-1PGDG.rhel8.x86_64.rpm pgdg 1.6.3 23.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_http_14-1.6.3-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.2-1PGDG.rhel8.x86_64.rpm pgdg 1.6.2 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_http_14-1.6.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.0-2PGDG.rhel8.x86_64.rpm pgdg 1.6.0 23.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_http_14-1.6.0-2PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.0-1PGDG.rhel8.x86_64.rpm pgdg 1.6.0 22.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pgsql_http_14-1.6.0-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.2-2PGDG.rhel8.10.aarch64.rpm pgdg 1.7.2 24.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_http_14-1.7.2-2PGDG.rhel8.10.aarch64.rpm
@ el8.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.1-1PIGSTY.el8.aarch64.rpm pigsty 1.7.1 29.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsql_http_14-1.7.1-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.0-1PGDG.rhel8.aarch64.rpm pgdg 1.7.0 23.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_http_14-1.7.0-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.3-1PGDG.rhel8.aarch64.rpm pgdg 1.6.3 22.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_http_14-1.6.3-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.2-1PGDG.rhel8.aarch64.rpm pgdg 1.6.2 22.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_http_14-1.6.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.0-2PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_http_14-1.6.0-2PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.0-1PGDG.rhel8.aarch64.rpm pgdg 1.6.0 22.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pgsql_http_14-1.6.0-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.2-2PGDG.rhel9.8.x86_64.rpm pgdg 1.7.2 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_http_14-1.7.2-2PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.1-1PIGSTY.el9.x86_64.rpm pigsty 1.7.1 29.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsql_http_14-1.7.1-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.0-3PGDG.rhel9.8.x86_64.rpm pgdg 1.7.0 25.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_http_14-1.7.0-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.0-1PGDG.rhel9.x86_64.rpm pgdg 1.7.0 25.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_http_14-1.7.0-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.3-1PGDG.rhel9.x86_64.rpm pgdg 1.6.3 24.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_http_14-1.6.3-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.2-1PGDG.rhel9.x86_64.rpm pgdg 1.6.2 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_http_14-1.6.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.0-2PGDG.rhel9.x86_64.rpm pgdg 1.6.0 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_http_14-1.6.0-2PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.0-1PGDG.rhel9.x86_64.rpm pgdg 1.6.0 23.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pgsql_http_14-1.6.0-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.2-2PGDG.rhel9.8.aarch64.rpm pgdg 1.7.2 24.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_http_14-1.7.2-2PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.1-1PIGSTY.el9.aarch64.rpm pigsty 1.7.1 28.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsql_http_14-1.7.1-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.0-3PGDG.rhel9.8.aarch64.rpm pgdg 1.7.0 24.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_http_14-1.7.0-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.0-1PGDG.rhel9.aarch64.rpm pgdg 1.7.0 23.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_http_14-1.7.0-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.3-1PGDG.rhel9.aarch64.rpm pgdg 1.6.3 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_http_14-1.6.3-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.2-1PGDG.rhel9.aarch64.rpm pgdg 1.6.2 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_http_14-1.6.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.0-2PGDG.rhel9.aarch64.rpm pgdg 1.6.0 23.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_http_14-1.6.0-2PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.0-1PGDG.rhel9.aarch64.rpm pgdg 1.6.0 22.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pgsql_http_14-1.6.0-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.2-2PGDG.rhel10.2.x86_64.rpm pgdg 1.7.2 26.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_http_14-1.7.2-2PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.1-1PIGSTY.el10.x86_64.rpm pigsty 1.7.1 30.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsql_http_14-1.7.1-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.0-3PGDG.rhel10.2.x86_64.rpm pgdg 1.7.0 26.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_http_14-1.7.0-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pgsql_http_14 pgsql_http_14-1.7.0-1PGDG.rhel10.x86_64.rpm pgdg 1.7.0 26.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_http_14-1.7.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pgsql_http_14 pgsql_http_14-1.6.3-2PGDG.rhel10.x86_64.rpm pgdg 1.6.3 25.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pgsql_http_14-1.6.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.2-2PGDG.rhel10.2.aarch64.rpm pgdg 1.7.2 24.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_http_14-1.7.2-2PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.1-1PIGSTY.el10.aarch64.rpm pigsty 1.7.1 29.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsql_http_14-1.7.1-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.0-3PGDG.rhel10.2.aarch64.rpm pgdg 1.7.0 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_http_14-1.7.0-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pgsql_http_14 pgsql_http_14-1.7.0-1PGDG.rhel10.aarch64.rpm pgdg 1.7.0 24.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_http_14-1.7.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pgsql_http_14 pgsql_http_14-1.6.3-2PGDG.rhel10.aarch64.rpm pgdg 1.6.3 23.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pgsql_http_14-1.6.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg12+1_amd64.deb pgdg 1.7.2 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg12+1_amd64.deb pgdg 1.7.1 45.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg12+1_amd64.deb
@ d12.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~bookworm_amd64.deb pigsty 1.7.1 44.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~bookworm_amd64.deb
@ d12.x86_64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg12+1_amd64.deb pgdg 1.7.0 45.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg12+1_arm64.deb pgdg 1.7.2 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg12+1_arm64.deb pgdg 1.7.1 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg12+1_arm64.deb
@ d12.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~bookworm_arm64.deb pigsty 1.7.1 43.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~bookworm_arm64.deb
@ d12.aarch64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg12+1_arm64.deb pgdg 1.7.0 44.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg13+1_amd64.deb pgdg 1.7.2 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg13+1_amd64.deb pgdg 1.7.1 45.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg13+1_amd64.deb
@ d13.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~trixie_amd64.deb pigsty 1.7.1 45.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg13+1_amd64.deb pgdg 1.7.0 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg13+1_arm64.deb pgdg 1.7.2 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg13+1_arm64.deb pgdg 1.7.1 44.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg13+1_arm64.deb
@ d13.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~trixie_arm64.deb pigsty 1.7.1 43.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg13+1_arm64.deb pgdg 1.7.0 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg22.04+1_amd64.deb pgdg 1.7.2 50.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg22.04+1_amd64.deb pgdg 1.7.1 50.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~jammy_amd64.deb pigsty 1.7.1 52.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~jammy_amd64.deb
@ u22.x86_64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg22.04+1_amd64.deb pgdg 1.7.0 50.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg22.04+1_arm64.deb pgdg 1.7.2 48.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg22.04+1_arm64.deb pgdg 1.7.1 48.3KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~jammy_arm64.deb pigsty 1.7.1 50.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~jammy_arm64.deb
@ u22.aarch64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg22.04+1_arm64.deb pgdg 1.7.0 48.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg24.04+1_amd64.deb pgdg 1.7.2 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg24.04+1_amd64.deb pgdg 1.7.1 45.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg24.04+1_amd64.deb
@ u24.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~noble_amd64.deb pigsty 1.7.1 47.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg24.04+1_amd64.deb pgdg 1.7.0 45.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg24.04+1_arm64.deb pgdg 1.7.2 44.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg24.04+1_arm64.deb pgdg 1.7.1 44.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg24.04+1_arm64.deb
@ u24.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~noble_arm64.deb pigsty 1.7.1 45.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg24.04+1_arm64.deb pgdg 1.7.0 44.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg26.04+1_amd64.deb pgdg 1.7.2 52.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg26.04+1_amd64.deb pgdg 1.7.1 52.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg26.04+1_amd64.deb
@ u26.x86_64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~resolute_amd64.deb pigsty 1.7.1 54.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~resolute_amd64.deb
@ u26.x86_64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg26.04+1_amd64.deb pgdg 1.7.0 52.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-http postgresql-14-http_1.7.2-2.pgdg26.04+1_arm64.deb pgdg 1.7.2 50.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.2-2.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1.pgdg26.04+1_arm64.deb pgdg 1.7.1 51.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1.pgdg26.04+1_arm64.deb
@ u26.aarch64 14 postgresql-14-http postgresql-14-http_1.7.1-1PIGSTY~resolute_arm64.deb pigsty 1.7.1 53.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgsql-http/postgresql-14-http_1.7.1-1PIGSTY~resolute_arm64.deb
@ u26.aarch64 14 postgresql-14-http postgresql-14-http_1.7.0-3.pgdg26.04+1_arm64.deb pgdg 1.7.0 50.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/pgsql-http/postgresql-14-http_1.7.0-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM packages for `pg_http` using `pig build`:

```bash
pig build pkg pg_http         # build RPM packages
```


## Install

You can install `pg_http` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_http;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_http -v 18  # PG 18
pig ext install -y pg_http -v 17  # PG 17
pig ext install -y pg_http -v 16  # PG 16
pig ext install -y pg_http -v 15  # PG 15
pig ext install -y pg_http -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgsql_http_18       # PG 18
dnf install -y pgsql_http_17       # PG 17
dnf install -y pgsql_http_16       # PG 16
dnf install -y pgsql_http_15       # PG 15
dnf install -y pgsql_http_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-http   # PG 18
apt install -y postgresql-17-http   # PG 17
apt install -y postgresql-16-http   # PG 16
apt install -y postgresql-15-http   # PG 15
apt install -y postgresql-14-http   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION http;
```

## Usage

Sources:

- [pgsql-http v1.7.2 README](https://github.com/pramsey/pgsql-http/blob/v1.7.2/README.md)
- [Extension control file](https://github.com/pramsey/pgsql-http/blob/v1.7.2/http.control)
- [v1.7.1 to v1.7.2 comparison](https://github.com/pramsey/pgsql-http/compare/v1.7.1...v1.7.2)

`http` lets PostgreSQL issue synchronous HTTP requests through libcurl. It is useful for controlled integrations and administrative calls, but the backend waits for the remote service inside the SQL statement and transaction. Restrict who can call it, set short timeouts, and do not let untrusted input choose arbitrary URLs.

### Core Workflow

```sql
CREATE EXTENSION http;

SELECT status, content_type, content
FROM http_get('https://httpbingo.org/get');
```

Send JSON and inspect the response:

```sql
SELECT status, content::jsonb
FROM http_post(
  'https://httpbingo.org/post',
  '{"event":"invoice.paid"}',
  'application/json'
);
```

The generic entry point accepts a complete request:

```sql
SELECT (http((
  'GET',
  'https://httpbingo.org/headers',
  http_headers('Authorization', 'Bearer example'),
  NULL,
  NULL
)::http_request)).status;
```

### Important Objects

- `http_request` contains `method`, `uri`, `headers`, `content_type`, and `content`.
- `http_response` contains `status`, `content_type`, `headers`, and `content`.
- `http_header`, `http_header(...)`, and `http_headers(...)` build request headers; `unnest(response.headers)` exposes response headers as rows.
- `http(...)` executes a complete `http_request`.
- `http_get`, `http_post`, `http_put`, `http_patch`, `http_delete`, and `http_head` are convenience wrappers.
- `urlencode(text)` and `urlencode(jsonb)` encode query data.
- `http_set_curlopt`, `http_list_curlopt`, and `http_reset_curlopt` manage supported session-level libcurl settings.

### Timeouts, Connections, and Security

Each request uses a fresh connection by default. Enable persistent connections only after measuring backend lifetime and remote-server behavior:

```sql
SET http.curlopt_timeout_ms = 1000;
SET http.curlopt_connecttimeout_ms = 250;
SET http.curlopt_tcp_keepalive = 1;
```

The default request timeout is five seconds. A timeout raises a SQL error, so callers must handle transaction rollback. Network latency in triggers or long transactions can hold locks and exhaust database connections; prefer an outbox plus an external worker for durable asynchronous delivery.

Keep TLS verification enabled, protect credential-bearing curl settings, validate response status and content before use, and limit outbound destinations at both SQL privilege and network layers. Version 1.7.2 contains build, test, and curl-option constant maintenance relative to 1.7.1; it does not introduce a material SQL API change. The control file still declares SQL extension version 1.7.
