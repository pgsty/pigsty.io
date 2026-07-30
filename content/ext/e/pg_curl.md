---
title: "pg_curl"
linkTitle: "pg_curl"
description: "Run curl actions for data transfer in URL syntax"
weight: 4090
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/RekGRpth/pg_curl">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">RekGRpth/pg_curl</div>
    <div class="ext-card__desc">https://github.com/RekGRpth/pg_curl</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_curl-2.4.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_curl-2.4.5.tar.gz</div>
    <div class="ext-card__desc">pg_curl-2.4.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_curl`**](/ext/e/pg_curl) | `2.4.5` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4090  | [**`pg_curl`**](/ext/e/pg_curl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`omni_httpc`](/ext/e/omni_httpc) [`pg_graphql`](/ext/e/pg_graphql) [`documentdb`](/ext/e/documentdb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_curl` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_curl_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.4.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-curl` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.4.5 2 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 3 |
| el8.aarch64 | AVAIL PIGSTY 2.4.5 2 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 3 |
| el9.x86_64 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 |
| el9.aarch64 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 |
| el10.x86_64 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 |
| el10.aarch64 | AVAIL PIGSTY 2.4.5 3 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 | AVAIL PIGSTY 2.4.5 4 |
| d12.x86_64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| d12.aarch64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| d13.x86_64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| d13.aarch64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| u22.x86_64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| u22.aarch64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| u24.x86_64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| u24.aarch64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| u26.x86_64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
| u26.aarch64 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 | AVAIL PIGSTY 2.4.5 1 |
@ el8.x86_64 18 pg_curl_18 pg_curl_18-2.4.5-2PIGSTY.el8.x86_64.rpm pigsty 2.4.5 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_curl_18-2.4.5-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 18 pg_curl_18 pg_curl_18-2.4.4-1PGDG.rhel8.x86_64.rpm pgdg 2.4.4 43.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_curl_18-2.4.4-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 18 pg_curl_18 pg_curl_18-2.4.5-2PIGSTY.el8.aarch64.rpm pigsty 2.4.5 60.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_curl_18-2.4.5-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 18 pg_curl_18 pg_curl_18-2.4.4-1PGDG.rhel8.aarch64.rpm pgdg 2.4.4 42.1KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_curl_18-2.4.4-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 18 pg_curl_18 pg_curl_18-2.4.5-2PIGSTY.el9.x86_64.rpm pigsty 2.4.5 54.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_curl_18-2.4.5-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 18 pg_curl_18 pg_curl_18-2.4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 2.4.4 45.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_curl_18-2.4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 18 pg_curl_18 pg_curl_18-2.4.4-1PGDG.rhel9.x86_64.rpm pgdg 2.4.4 45.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_curl_18-2.4.4-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 18 pg_curl_18 pg_curl_18-2.4.5-2PIGSTY.el9.aarch64.rpm pigsty 2.4.5 53.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_curl_18-2.4.5-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 18 pg_curl_18 pg_curl_18-2.4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 2.4.4 44.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_curl_18-2.4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 18 pg_curl_18 pg_curl_18-2.4.4-1PGDG.rhel9.aarch64.rpm pgdg 2.4.4 44.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_curl_18-2.4.4-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 18 pg_curl_18 pg_curl_18-2.4.5-2PIGSTY.el10.x86_64.rpm pigsty 2.4.5 54.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_curl_18-2.4.5-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_curl_18 pg_curl_18-2.4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 2.4.4 46.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_curl_18-2.4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_curl_18 pg_curl_18-2.4.4-1PGDG.rhel10.x86_64.rpm pgdg 2.4.4 46.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_curl_18-2.4.4-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_curl_18 pg_curl_18-2.4.5-2PIGSTY.el10.aarch64.rpm pigsty 2.4.5 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_curl_18-2.4.5-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_curl_18 pg_curl_18-2.4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 2.4.4 45.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_curl_18-2.4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_curl_18 pg_curl_18-2.4.4-1PGDG.rhel10.aarch64.rpm pgdg 2.4.4 45.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_curl_18-2.4.4-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb pigsty 2.4.5 99.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb pigsty 2.4.5 98.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb pigsty 2.4.5 100.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb pigsty 2.4.5 98.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb pigsty 2.4.5 114.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb pigsty 2.4.5 113.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb pigsty 2.4.5 108.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb pigsty 2.4.5 107.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb pigsty 2.4.5 113.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-curl postgresql-18-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb pigsty 2.4.5 112.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-18-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_curl_17 pg_curl_17-2.4.5-2PIGSTY.el8.x86_64.rpm pigsty 2.4.5 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_curl_17-2.4.5-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 pg_curl_17 pg_curl_17-2.4.4-1PGDG.rhel8.x86_64.rpm pgdg 2.4.4 43.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_curl_17-2.4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 17 pg_curl_17 pg_curl_17-2.4.3-1PGDG.rhel8.x86_64.rpm pgdg 2.4.3 43.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_curl_17-2.4.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 17 pg_curl_17 pg_curl_17-2.4.5-2PIGSTY.el8.aarch64.rpm pigsty 2.4.5 60.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_curl_17-2.4.5-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 pg_curl_17 pg_curl_17-2.4.4-1PGDG.rhel8.aarch64.rpm pgdg 2.4.4 42.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_curl_17-2.4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 17 pg_curl_17 pg_curl_17-2.4.3-1PGDG.rhel8.aarch64.rpm pgdg 2.4.3 41.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_curl_17-2.4.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 17 pg_curl_17 pg_curl_17-2.4.5-2PIGSTY.el9.x86_64.rpm pigsty 2.4.5 54.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_curl_17-2.4.5-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 pg_curl_17 pg_curl_17-2.4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 2.4.4 45.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_curl_17-2.4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 17 pg_curl_17 pg_curl_17-2.4.4-1PGDG.rhel9.x86_64.rpm pgdg 2.4.4 45.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_curl_17-2.4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 17 pg_curl_17 pg_curl_17-2.4.3-1PGDG.rhel9.x86_64.rpm pgdg 2.4.3 45.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_curl_17-2.4.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 17 pg_curl_17 pg_curl_17-2.4.5-2PIGSTY.el9.aarch64.rpm pigsty 2.4.5 53.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_curl_17-2.4.5-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 pg_curl_17 pg_curl_17-2.4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 2.4.4 44.1KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_curl_17-2.4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 17 pg_curl_17 pg_curl_17-2.4.4-1PGDG.rhel9.aarch64.rpm pgdg 2.4.4 43.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_curl_17-2.4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 17 pg_curl_17 pg_curl_17-2.4.3-1PGDG.rhel9.aarch64.rpm pgdg 2.4.3 44.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_curl_17-2.4.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 17 pg_curl_17 pg_curl_17-2.4.5-2PIGSTY.el10.x86_64.rpm pigsty 2.4.5 54.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_curl_17-2.4.5-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_curl_17 pg_curl_17-2.4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 2.4.4 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_curl_17-2.4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_curl_17 pg_curl_17-2.4.4-1PGDG.rhel10.x86_64.rpm pgdg 2.4.4 46.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_curl_17-2.4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_curl_17 pg_curl_17-2.4.3-2PGDG.rhel10.x86_64.rpm pgdg 2.4.3 46.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_curl_17-2.4.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_curl_17 pg_curl_17-2.4.5-2PIGSTY.el10.aarch64.rpm pigsty 2.4.5 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_curl_17-2.4.5-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_curl_17 pg_curl_17-2.4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 2.4.4 45.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_curl_17-2.4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_curl_17 pg_curl_17-2.4.4-1PGDG.rhel10.aarch64.rpm pgdg 2.4.4 45.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_curl_17-2.4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_curl_17 pg_curl_17-2.4.3-2PGDG.rhel10.aarch64.rpm pgdg 2.4.3 45.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_curl_17-2.4.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb pigsty 2.4.5 99.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb pigsty 2.4.5 98.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb pigsty 2.4.5 100.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb pigsty 2.4.5 98.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb pigsty 2.4.5 117.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb pigsty 2.4.5 115.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb pigsty 2.4.5 108.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb pigsty 2.4.5 107.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb pigsty 2.4.5 113.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-curl postgresql-17-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb pigsty 2.4.5 112.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-17-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_curl_16 pg_curl_16-2.4.5-2PIGSTY.el8.x86_64.rpm pigsty 2.4.5 63.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_curl_16-2.4.5-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_curl_16 pg_curl_16-2.4.4-1PGDG.rhel8.x86_64.rpm pgdg 2.4.4 43.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_curl_16-2.4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_curl_16 pg_curl_16-2.4.3-1PGDG.rhel8.x86_64.rpm pgdg 2.4.3 43.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_curl_16-2.4.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_curl_16 pg_curl_16-2.4.5-2PIGSTY.el8.aarch64.rpm pigsty 2.4.5 60.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_curl_16-2.4.5-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_curl_16 pg_curl_16-2.4.4-1PGDG.rhel8.aarch64.rpm pgdg 2.4.4 42.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_curl_16-2.4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_curl_16 pg_curl_16-2.4.3-1PGDG.rhel8.aarch64.rpm pgdg 2.4.3 41.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_curl_16-2.4.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_curl_16 pg_curl_16-2.4.5-2PIGSTY.el9.x86_64.rpm pigsty 2.4.5 54.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_curl_16-2.4.5-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_curl_16 pg_curl_16-2.4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 2.4.4 45.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_curl_16-2.4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 16 pg_curl_16 pg_curl_16-2.4.4-1PGDG.rhel9.x86_64.rpm pgdg 2.4.4 45.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_curl_16-2.4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_curl_16 pg_curl_16-2.4.3-1PGDG.rhel9.x86_64.rpm pgdg 2.4.3 45.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_curl_16-2.4.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_curl_16 pg_curl_16-2.4.5-2PIGSTY.el9.aarch64.rpm pigsty 2.4.5 53.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_curl_16-2.4.5-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_curl_16 pg_curl_16-2.4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 2.4.4 44.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_curl_16-2.4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 16 pg_curl_16 pg_curl_16-2.4.4-1PGDG.rhel9.aarch64.rpm pgdg 2.4.4 44.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_curl_16-2.4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_curl_16 pg_curl_16-2.4.3-1PGDG.rhel9.aarch64.rpm pgdg 2.4.3 44.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_curl_16-2.4.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_curl_16 pg_curl_16-2.4.5-2PIGSTY.el10.x86_64.rpm pigsty 2.4.5 54.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_curl_16-2.4.5-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_curl_16 pg_curl_16-2.4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 2.4.4 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_curl_16-2.4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_curl_16 pg_curl_16-2.4.4-1PGDG.rhel10.x86_64.rpm pgdg 2.4.4 46.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_curl_16-2.4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_curl_16 pg_curl_16-2.4.3-2PGDG.rhel10.x86_64.rpm pgdg 2.4.3 46.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_curl_16-2.4.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_curl_16 pg_curl_16-2.4.5-2PIGSTY.el10.aarch64.rpm pigsty 2.4.5 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_curl_16-2.4.5-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_curl_16 pg_curl_16-2.4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 2.4.4 45.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_curl_16-2.4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_curl_16 pg_curl_16-2.4.4-1PGDG.rhel10.aarch64.rpm pgdg 2.4.4 45.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_curl_16-2.4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_curl_16 pg_curl_16-2.4.3-2PGDG.rhel10.aarch64.rpm pgdg 2.4.3 45.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_curl_16-2.4.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb pigsty 2.4.5 99.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb pigsty 2.4.5 98.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb pigsty 2.4.5 100.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb pigsty 2.4.5 99.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb pigsty 2.4.5 117.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb pigsty 2.4.5 115.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb pigsty 2.4.5 108.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb pigsty 2.4.5 107.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb pigsty 2.4.5 113.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-curl postgresql-16-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb pigsty 2.4.5 112.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-16-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_curl_15 pg_curl_15-2.4.5-2PIGSTY.el8.x86_64.rpm pigsty 2.4.5 63.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_curl_15-2.4.5-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_curl_15 pg_curl_15-2.4.4-1PGDG.rhel8.x86_64.rpm pgdg 2.4.4 43.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_curl_15-2.4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_curl_15 pg_curl_15-2.4.3-1PGDG.rhel8.x86_64.rpm pgdg 2.4.3 43.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_curl_15-2.4.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_curl_15 pg_curl_15-2.4.5-2PIGSTY.el8.aarch64.rpm pigsty 2.4.5 60.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_curl_15-2.4.5-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_curl_15 pg_curl_15-2.4.4-1PGDG.rhel8.aarch64.rpm pgdg 2.4.4 42.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_curl_15-2.4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_curl_15 pg_curl_15-2.4.3-1PGDG.rhel8.aarch64.rpm pgdg 2.4.3 41.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_curl_15-2.4.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_curl_15 pg_curl_15-2.4.5-2PIGSTY.el9.x86_64.rpm pigsty 2.4.5 54.3KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_curl_15-2.4.5-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_curl_15 pg_curl_15-2.4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 2.4.4 45.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_curl_15-2.4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 15 pg_curl_15 pg_curl_15-2.4.4-1PGDG.rhel9.x86_64.rpm pgdg 2.4.4 45.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_curl_15-2.4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_curl_15 pg_curl_15-2.4.3-1PGDG.rhel9.x86_64.rpm pgdg 2.4.3 45.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_curl_15-2.4.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_curl_15 pg_curl_15-2.4.5-2PIGSTY.el9.aarch64.rpm pigsty 2.4.5 53.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_curl_15-2.4.5-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_curl_15 pg_curl_15-2.4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 2.4.4 44.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_curl_15-2.4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 15 pg_curl_15 pg_curl_15-2.4.4-1PGDG.rhel9.aarch64.rpm pgdg 2.4.4 44.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_curl_15-2.4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_curl_15 pg_curl_15-2.4.3-1PGDG.rhel9.aarch64.rpm pgdg 2.4.3 44.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_curl_15-2.4.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_curl_15 pg_curl_15-2.4.5-2PIGSTY.el10.x86_64.rpm pigsty 2.4.5 55.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_curl_15-2.4.5-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_curl_15 pg_curl_15-2.4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 2.4.4 46.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_curl_15-2.4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_curl_15 pg_curl_15-2.4.4-1PGDG.rhel10.x86_64.rpm pgdg 2.4.4 46.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_curl_15-2.4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_curl_15 pg_curl_15-2.4.3-2PGDG.rhel10.x86_64.rpm pgdg 2.4.3 46.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_curl_15-2.4.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_curl_15 pg_curl_15-2.4.5-2PIGSTY.el10.aarch64.rpm pigsty 2.4.5 53.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_curl_15-2.4.5-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_curl_15 pg_curl_15-2.4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 2.4.4 45.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_curl_15-2.4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_curl_15 pg_curl_15-2.4.4-1PGDG.rhel10.aarch64.rpm pgdg 2.4.4 45.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_curl_15-2.4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_curl_15 pg_curl_15-2.4.3-2PGDG.rhel10.aarch64.rpm pgdg 2.4.3 45.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_curl_15-2.4.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb pigsty 2.4.5 99.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb pigsty 2.4.5 98.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb pigsty 2.4.5 99.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb pigsty 2.4.5 98.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb pigsty 2.4.5 117.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb pigsty 2.4.5 115.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb pigsty 2.4.5 107.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb pigsty 2.4.5 107.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb pigsty 2.4.5 113.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-curl postgresql-15-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb pigsty 2.4.5 112.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-15-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_curl_14 pg_curl_14-2.4.5-2PIGSTY.el8.x86_64.rpm pigsty 2.4.5 63.5KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_curl_14-2.4.5-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_curl_14 pg_curl_14-2.4.4-1PGDG.rhel8.x86_64.rpm pgdg 2.4.4 43.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_curl_14-2.4.4-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_curl_14 pg_curl_14-2.4.3-1PGDG.rhel8.x86_64.rpm pgdg 2.4.3 43.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_curl_14-2.4.3-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_curl_14 pg_curl_14-2.4.5-2PIGSTY.el8.aarch64.rpm pigsty 2.4.5 60.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_curl_14-2.4.5-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_curl_14 pg_curl_14-2.4.4-1PGDG.rhel8.aarch64.rpm pgdg 2.4.4 42.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_curl_14-2.4.4-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_curl_14 pg_curl_14-2.4.3-1PGDG.rhel8.aarch64.rpm pgdg 2.4.3 41.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_curl_14-2.4.3-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_curl_14 pg_curl_14-2.4.5-2PIGSTY.el9.x86_64.rpm pigsty 2.4.5 54.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_curl_14-2.4.5-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_curl_14 pg_curl_14-2.4.4-3PGDG.rhel9.8.x86_64.rpm pgdg 2.4.4 45.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_curl_14-2.4.4-3PGDG.rhel9.8.x86_64.rpm
@ el9.x86_64 14 pg_curl_14 pg_curl_14-2.4.4-1PGDG.rhel9.x86_64.rpm pgdg 2.4.4 45.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_curl_14-2.4.4-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_curl_14 pg_curl_14-2.4.3-1PGDG.rhel9.x86_64.rpm pgdg 2.4.3 45.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_curl_14-2.4.3-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_curl_14 pg_curl_14-2.4.5-2PIGSTY.el9.aarch64.rpm pigsty 2.4.5 53.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_curl_14-2.4.5-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_curl_14 pg_curl_14-2.4.4-3PGDG.rhel9.8.aarch64.rpm pgdg 2.4.4 44.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_curl_14-2.4.4-3PGDG.rhel9.8.aarch64.rpm
@ el9.aarch64 14 pg_curl_14 pg_curl_14-2.4.4-1PGDG.rhel9.aarch64.rpm pgdg 2.4.4 43.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_curl_14-2.4.4-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_curl_14 pg_curl_14-2.4.3-1PGDG.rhel9.aarch64.rpm pgdg 2.4.3 44.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_curl_14-2.4.3-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_curl_14 pg_curl_14-2.4.5-2PIGSTY.el10.x86_64.rpm pigsty 2.4.5 55.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_curl_14-2.4.5-2PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_curl_14 pg_curl_14-2.4.4-3PGDG.rhel10.2.x86_64.rpm pgdg 2.4.4 46.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_curl_14-2.4.4-3PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_curl_14 pg_curl_14-2.4.4-1PGDG.rhel10.x86_64.rpm pgdg 2.4.4 46.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_curl_14-2.4.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_curl_14 pg_curl_14-2.4.3-2PGDG.rhel10.x86_64.rpm pgdg 2.4.3 46.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_curl_14-2.4.3-2PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_curl_14 pg_curl_14-2.4.5-2PIGSTY.el10.aarch64.rpm pigsty 2.4.5 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_curl_14-2.4.5-2PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_curl_14 pg_curl_14-2.4.4-3PGDG.rhel10.2.aarch64.rpm pgdg 2.4.4 45.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_curl_14-2.4.4-3PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_curl_14 pg_curl_14-2.4.4-1PGDG.rhel10.aarch64.rpm pgdg 2.4.4 45.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_curl_14-2.4.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_curl_14 pg_curl_14-2.4.3-2PGDG.rhel10.aarch64.rpm pgdg 2.4.3 45.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_curl_14-2.4.3-2PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb pigsty 2.4.5 99.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb pigsty 2.4.5 97.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb pigsty 2.4.5 100.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb pigsty 2.4.5 98.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb pigsty 2.4.5 117.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb pigsty 2.4.5 115.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb pigsty 2.4.5 107.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb pigsty 2.4.5 107.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb pigsty 2.4.5 113.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-curl postgresql-14-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb pigsty 2.4.5 112.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-curl/postgresql-14-pg-curl_2.4.5-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_curl` using `pig build`:

```bash
pig build pkg pg_curl         # build RPM / DEB packages
```


## Install

You can install `pg_curl` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_curl;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_curl -v 18  # PG 18
pig ext install -y pg_curl -v 17  # PG 17
pig ext install -y pg_curl -v 16  # PG 16
pig ext install -y pg_curl -v 15  # PG 15
pig ext install -y pg_curl -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_curl_18       # PG 18
dnf install -y pg_curl_17       # PG 17
dnf install -y pg_curl_16       # PG 16
dnf install -y pg_curl_15       # PG 15
dnf install -y pg_curl_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-curl   # PG 18
apt install -y postgresql-17-pg-curl   # PG 17
apt install -y postgresql-16-pg-curl   # PG 16
apt install -y postgresql-15-pg-curl   # PG 15
apt install -y postgresql-14-pg-curl   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_curl;
```




## Usage


```sql
CREATE EXTENSION pg_curl;
```

Perform HTTP Get:

```sql
-- wrap curl http get
CREATE OR REPLACE FUNCTION get(url TEXT) RETURNS TEXT LANGUAGE SQL AS $BODY$
WITH s AS (SELECT
               curl_easy_reset(),
               curl_easy_setopt_url(url),
               curl_easy_perform(),
               curl_easy_getinfo_data_in()
) SELECT convert_from(curl_easy_getinfo_data_in, 'utf-8') FROM s;
$BODY$;


SELECT get('https://www.postgresql.org/');
```


Perform Email SMTP:

```bash
CREATE OR REPLACE FUNCTION email(url TEXT, username TEXT, password TEXT, subject TEXT, sender TEXT, recipient TEXT, body TEXT, type TEXT) RETURNS TEXT LANGUAGE SQL AS $BODY$
    WITH s AS (SELECT
        curl_easy_reset(),
        curl_easy_setopt_mail_from(sender),
        curl_easy_setopt_password(password),
        curl_easy_setopt_url(url),
        curl_easy_setopt_username(username),
        curl_header_append('From', sender),
        curl_header_append('Subject', subject),
        curl_header_append('To', recipient),
        curl_mime_data(body, type:=type),
        curl_recipient_append(recipient),
        curl_easy_perform(),
        curl_easy_getinfo_header_in()
    ) SELECT curl_easy_getinfo_header_in FROM s;
$BODY$;
```

Perform FTP download:

```sql
CREATE OR REPLACE FUNCTION download(url TEXT, username TEXT, password TEXT) RETURNS BYTEA LANGUAGE SQL AS $BODY$
    WITH s AS (SELECT
        curl_easy_reset(),
        curl_easy_setopt_password(password),
        curl_easy_setopt_url(url),
        curl_easy_setopt_username(username),
        curl_easy_perform(),
        curl_easy_getinfo_data_in()
    ) SELECT curl_easy_getinfo_data_in FROM s;
$BODY$;
```
