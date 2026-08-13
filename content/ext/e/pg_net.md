---
title: "pg_net"
linkTitle: "pg_net"
description: "Async HTTP Requests"
weight: 4080
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supabase/pg_net">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supabase/pg_net</div>
    <div class="ext-card__desc">https://github.com/supabase/pg_net</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_net-0.20.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_net-0.20.5.tar.gz</div>
    <div class="ext-card__desc">pg_net-0.20.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_net`**](/ext/e/pg_net) | `0.20.5` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4080  | [**`pg_net`**](/ext/e/pg_net) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `net` |
{.ext-table}

| **Related** | [`http`](/ext/e/http) [`pg_curl`](/ext/e/pg_curl) [`omni_httpc`](/ext/e/omni_httpc) [`pg_graphql`](/ext/e/pg_graphql) [`documentdb`](/ext/e/documentdb) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Package/source version 0.20.5 ships SQL/control version 0.20.4. PIGSTY 0.20.5 covers EL10 RPM and D12/D13/U24/U26 DEB for PostgreSQL 14-18; older PIGSTY platform cells remain on 0.9.2. shared_preload_libraries=pg_net is required.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.20.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_net` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.20.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_net_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.20.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-net` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 |
| el8.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 |
| el9.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 |
| el9.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 | AVAIL PIGSTY 0.9.2 3 |
| el10.x86_64 | AVAIL PIGSTY 0.20.5 7 | AVAIL PIGSTY 0.20.5 15 | AVAIL PIGSTY 0.20.5 15 | AVAIL PIGSTY 0.20.5 15 | AVAIL PIGSTY 0.20.5 15 |
| el10.aarch64 | AVAIL PIGSTY 0.20.5 6 | AVAIL PIGSTY 0.20.5 14 | AVAIL PIGSTY 0.20.5 14 | AVAIL PIGSTY 0.20.5 14 | AVAIL PIGSTY 0.20.5 14 |
| d12.x86_64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
| d12.aarch64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
| d13.x86_64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 | AVAIL PIGSTY 0.9.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
| u24.aarch64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
| u26.x86_64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
| u26.aarch64 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 | AVAIL PIGSTY 0.20.5 1 |
@ el8.x86_64 18 pg_net_18 pg_net_18-0.9.2-2PIGSTY.el8.x86_64.rpm pigsty 0.9.2 27.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_net_18-0.9.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_net_18 pg_net_18-0.9.2-2PIGSTY.el8.aarch64.rpm pigsty 0.9.2 26.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_net_18-0.9.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_net_18 pg_net_18-0.9.2-2PIGSTY.el9.x86_64.rpm pigsty 0.9.2 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_net_18-0.9.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_net_18 pg_net_18-0.9.2-2PIGSTY.el9.aarch64.rpm pigsty 0.9.2 26.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_net_18-0.9.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_net_18 pg_net_18-0.20.5-1PIGSTY.el10.x86_64.rpm pigsty 0.20.5 40.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_net_18-0.20.5-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 18 pg_net_18 pg_net_18-0.20.4-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.4 34.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_net_18-0.20.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_net_18 pg_net_18-0.20.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.3 34.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_net_18-0.20.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 18 pg_net_18 pg_net_18-0.20.3-1PGDG.rhel10.1.x86_64.rpm pgdg 0.20.3 34.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_net_18-0.20.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 18 pg_net_18 pg_net_18-0.20.3-1PGDG.rhel10.0.x86_64.rpm pgdg 0.20.3 34.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_net_18-0.20.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 18 pg_net_18 pg_net_18-0.20.0-1PGDG.rhel10.x86_64.rpm pgdg 0.20.0 33.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_net_18-0.20.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 18 pg_net_18 pg_net_18-0.19.7-1PGDG.rhel10.x86_64.rpm pgdg 0.19.7 33.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_net_18-0.19.7-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 18 pg_net_18 pg_net_18-0.20.5-1PIGSTY.el10.aarch64.rpm pigsty 0.20.5 40.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_net_18-0.20.5-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 18 pg_net_18 pg_net_18-0.20.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.20.4 34.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_net_18-0.20.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 18 pg_net_18 pg_net_18-0.20.3-1PGDG.rhel10.1.aarch64.rpm pgdg 0.20.3 33.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_net_18-0.20.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 18 pg_net_18 pg_net_18-0.20.3-1PGDG.rhel10.0.aarch64.rpm pgdg 0.20.3 33.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_net_18-0.20.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 18 pg_net_18 pg_net_18-0.20.0-1PGDG.rhel10.aarch64.rpm pgdg 0.20.0 33.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_net_18-0.20.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 18 pg_net_18 pg_net_18-0.19.7-1PGDG.rhel10.aarch64.rpm pgdg 0.19.7 32.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_net_18-0.19.7-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb pigsty 0.20.5 64.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb pigsty 0.20.5 62.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb pigsty 0.20.5 64.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb pigsty 0.20.5 62.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-net postgresql-18-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb pigsty 0.9.2 41.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-18-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-net postgresql-18-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb pigsty 0.9.2 40.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-18-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~noble_amd64.deb pigsty 0.20.5 66.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~noble_arm64.deb pigsty 0.20.5 65.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb pigsty 0.20.5 65.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-net postgresql-18-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb pigsty 0.20.5 65.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-18-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_net_17 pg_net_17-0.9.2-2PIGSTY.el8.x86_64.rpm pigsty 0.9.2 27.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_net_17-0.9.2-2PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_net_17 pg_net_17-0.9.2-2PIGSTY.el8.aarch64.rpm pigsty 0.9.2 26.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_net_17-0.9.2-2PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_net_17 pg_net_17-0.9.2-2PIGSTY.el9.x86_64.rpm pigsty 0.9.2 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_net_17-0.9.2-2PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_net_17 pg_net_17-0.9.2-2PIGSTY.el9.aarch64.rpm pigsty 0.9.2 26.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_net_17-0.9.2-2PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.20.5-1PIGSTY.el10.x86_64.rpm pigsty 0.20.5 40.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_net_17-0.20.5-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.20.4-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.4 34.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.20.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.20.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.3 34.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.20.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.20.3-1PGDG.rhel10.1.x86_64.rpm pgdg 0.20.3 34.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.20.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.20.3-1PGDG.rhel10.0.x86_64.rpm pgdg 0.20.3 34.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.20.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.20.0-1PGDG.rhel10.x86_64.rpm pgdg 0.20.0 33.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.20.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.19.7-1PGDG.rhel10.x86_64.rpm pgdg 0.19.7 33.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.19.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.19.6-1PGDG.rhel10.x86_64.rpm pgdg 0.19.6 32.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.19.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.19.5-1PGDG.rhel10.x86_64.rpm pgdg 0.19.5 32.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.19.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.19.4-1PGDG.rhel10.x86_64.rpm pgdg 0.19.4 31.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.19.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.19.3-1PGDG.rhel10.x86_64.rpm pgdg 0.19.3 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.19.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.19.1-1PGDG.rhel10.x86_64.rpm pgdg 0.19.1 31.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.19.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.19.0-1PGDG.rhel10.x86_64.rpm pgdg 0.19.0 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.19.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.16.0-1PGDG.rhel10.x86_64.rpm pgdg 0.16.0 28.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.16.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 17 pg_net_17 pg_net_17-0.15.1-1PGDG.rhel10.x86_64.rpm pgdg 0.15.1 28.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_net_17-0.15.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.20.5-1PIGSTY.el10.aarch64.rpm pigsty 0.20.5 40.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_net_17-0.20.5-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.20.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.20.4 34.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.20.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.20.3-1PGDG.rhel10.1.aarch64.rpm pgdg 0.20.3 33.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.20.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.20.3-1PGDG.rhel10.0.aarch64.rpm pgdg 0.20.3 33.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.20.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.20.0-1PGDG.rhel10.aarch64.rpm pgdg 0.20.0 33.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.20.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.19.7-1PGDG.rhel10.aarch64.rpm pgdg 0.19.7 32.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.19.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.19.6-1PGDG.rhel10.aarch64.rpm pgdg 0.19.6 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.19.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.19.5-1PGDG.rhel10.aarch64.rpm pgdg 0.19.5 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.19.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.19.4-1PGDG.rhel10.aarch64.rpm pgdg 0.19.4 31.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.19.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.19.3-1PGDG.rhel10.aarch64.rpm pgdg 0.19.3 31.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.19.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.19.1-1PGDG.rhel10.aarch64.rpm pgdg 0.19.1 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.19.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.19.0-1PGDG.rhel10.aarch64.rpm pgdg 0.19.0 30.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.19.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.16.0-1PGDG.rhel10.aarch64.rpm pgdg 0.16.0 27.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.16.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 17 pg_net_17 pg_net_17-0.15.1-1PGDG.rhel10.aarch64.rpm pgdg 0.15.1 27.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_net_17-0.15.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb pigsty 0.20.5 64.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb pigsty 0.20.5 62.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb pigsty 0.20.5 64.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb pigsty 0.20.5 62.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-net postgresql-17-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb pigsty 0.9.2 44.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-17-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-net postgresql-17-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb pigsty 0.9.2 43.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-17-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~noble_amd64.deb pigsty 0.20.5 66.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~noble_arm64.deb pigsty 0.20.5 65.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb pigsty 0.20.5 65.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-net postgresql-17-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb pigsty 0.20.5 65.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-17-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_net_16 pg_net_16-0.9.2-2PIGSTY.el8.x86_64.rpm pigsty 0.9.2 27.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_net_16-0.9.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 pg_net_16 pg_net_16-0.9.2-1PGDG.rhel8.x86_64.rpm pgdg 0.9.2 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_net_16-0.9.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 16 pg_net_16 pg_net_16-0.9.1-1PGDG.rhel8.x86_64.rpm pgdg 0.9.1 21.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_net_16-0.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 16 pg_net_16 pg_net_16-0.9.2-2PIGSTY.el8.aarch64.rpm pigsty 0.9.2 26.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_net_16-0.9.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 pg_net_16 pg_net_16-0.9.2-1PGDG.rhel8.aarch64.rpm pgdg 0.9.2 21.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_net_16-0.9.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 16 pg_net_16 pg_net_16-0.9.1-1PGDG.rhel8.aarch64.rpm pgdg 0.9.1 20.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_net_16-0.9.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 16 pg_net_16 pg_net_16-0.9.2-2PIGSTY.el9.x86_64.rpm pigsty 0.9.2 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_net_16-0.9.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 pg_net_16 pg_net_16-0.9.2-1PGDG.rhel9.x86_64.rpm pgdg 0.9.2 21.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_net_16-0.9.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 16 pg_net_16 pg_net_16-0.9.1-1PGDG.rhel9.x86_64.rpm pgdg 0.9.1 20.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_net_16-0.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 16 pg_net_16 pg_net_16-0.9.2-2PIGSTY.el9.aarch64.rpm pigsty 0.9.2 26.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_net_16-0.9.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 pg_net_16 pg_net_16-0.9.2-1PGDG.rhel9.aarch64.rpm pgdg 0.9.2 21.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_net_16-0.9.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 16 pg_net_16 pg_net_16-0.9.1-1PGDG.rhel9.aarch64.rpm pgdg 0.9.1 20.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_net_16-0.9.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.20.5-1PIGSTY.el10.x86_64.rpm pigsty 0.20.5 40.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_net_16-0.20.5-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.20.4-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.4 34.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.20.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.20.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.3 34.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.20.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.20.3-1PGDG.rhel10.1.x86_64.rpm pgdg 0.20.3 34.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.20.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.20.3-1PGDG.rhel10.0.x86_64.rpm pgdg 0.20.3 34.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.20.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.20.0-1PGDG.rhel10.x86_64.rpm pgdg 0.20.0 33.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.20.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.19.7-1PGDG.rhel10.x86_64.rpm pgdg 0.19.7 33.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.19.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.19.6-1PGDG.rhel10.x86_64.rpm pgdg 0.19.6 32.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.19.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.19.5-1PGDG.rhel10.x86_64.rpm pgdg 0.19.5 32.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.19.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.19.4-1PGDG.rhel10.x86_64.rpm pgdg 0.19.4 31.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.19.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.19.3-1PGDG.rhel10.x86_64.rpm pgdg 0.19.3 31.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.19.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.19.1-1PGDG.rhel10.x86_64.rpm pgdg 0.19.1 31.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.19.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.19.0-1PGDG.rhel10.x86_64.rpm pgdg 0.19.0 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.19.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.16.0-1PGDG.rhel10.x86_64.rpm pgdg 0.16.0 28.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.16.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 16 pg_net_16 pg_net_16-0.15.1-1PGDG.rhel10.x86_64.rpm pgdg 0.15.1 28.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_net_16-0.15.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.20.5-1PIGSTY.el10.aarch64.rpm pigsty 0.20.5 40.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_net_16-0.20.5-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.20.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.20.4 34.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.20.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.20.3-1PGDG.rhel10.1.aarch64.rpm pgdg 0.20.3 33.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.20.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.20.3-1PGDG.rhel10.0.aarch64.rpm pgdg 0.20.3 33.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.20.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.20.0-1PGDG.rhel10.aarch64.rpm pgdg 0.20.0 33.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.20.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.19.7-1PGDG.rhel10.aarch64.rpm pgdg 0.19.7 32.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.19.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.19.6-1PGDG.rhel10.aarch64.rpm pgdg 0.19.6 32.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.19.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.19.5-1PGDG.rhel10.aarch64.rpm pgdg 0.19.5 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.19.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.19.4-1PGDG.rhel10.aarch64.rpm pgdg 0.19.4 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.19.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.19.3-1PGDG.rhel10.aarch64.rpm pgdg 0.19.3 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.19.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.19.1-1PGDG.rhel10.aarch64.rpm pgdg 0.19.1 30.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.19.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.19.0-1PGDG.rhel10.aarch64.rpm pgdg 0.19.0 30.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.19.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.16.0-1PGDG.rhel10.aarch64.rpm pgdg 0.16.0 27.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.16.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 16 pg_net_16 pg_net_16-0.15.1-1PGDG.rhel10.aarch64.rpm pgdg 0.15.1 27.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_net_16-0.15.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb pigsty 0.20.5 64.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb pigsty 0.20.5 62.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb pigsty 0.20.5 64.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb pigsty 0.20.5 62.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-net postgresql-16-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb pigsty 0.9.2 44.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-16-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-net postgresql-16-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb pigsty 0.9.2 43.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-16-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~noble_amd64.deb pigsty 0.20.5 66.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~noble_arm64.deb pigsty 0.20.5 65.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb pigsty 0.20.5 66.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-net postgresql-16-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb pigsty 0.20.5 65.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-16-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_net_15 pg_net_15-0.9.2-2PIGSTY.el8.x86_64.rpm pigsty 0.9.2 27.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_net_15-0.9.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 pg_net_15 pg_net_15-0.9.2-1PGDG.rhel8.x86_64.rpm pgdg 0.9.2 21.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_net_15-0.9.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 15 pg_net_15 pg_net_15-0.9.1-1PGDG.rhel8.x86_64.rpm pgdg 0.9.1 21.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_net_15-0.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 15 pg_net_15 pg_net_15-0.9.2-2PIGSTY.el8.aarch64.rpm pigsty 0.9.2 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_net_15-0.9.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 pg_net_15 pg_net_15-0.9.2-1PGDG.rhel8.aarch64.rpm pgdg 0.9.2 21.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_net_15-0.9.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 15 pg_net_15 pg_net_15-0.9.1-1PGDG.rhel8.aarch64.rpm pgdg 0.9.1 20.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_net_15-0.9.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 15 pg_net_15 pg_net_15-0.9.2-2PIGSTY.el9.x86_64.rpm pigsty 0.9.2 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_net_15-0.9.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 pg_net_15 pg_net_15-0.9.2-1PGDG.rhel9.x86_64.rpm pgdg 0.9.2 22.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_net_15-0.9.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 15 pg_net_15 pg_net_15-0.9.1-1PGDG.rhel9.x86_64.rpm pgdg 0.9.1 21.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_net_15-0.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 15 pg_net_15 pg_net_15-0.9.2-2PIGSTY.el9.aarch64.rpm pigsty 0.9.2 26.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_net_15-0.9.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 pg_net_15 pg_net_15-0.9.2-1PGDG.rhel9.aarch64.rpm pgdg 0.9.2 21.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_net_15-0.9.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 15 pg_net_15 pg_net_15-0.9.1-1PGDG.rhel9.aarch64.rpm pgdg 0.9.1 20.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_net_15-0.9.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.20.5-1PIGSTY.el10.x86_64.rpm pigsty 0.20.5 41.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_net_15-0.20.5-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.20.4-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.4 36.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.20.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.20.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.3 35.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.20.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.20.3-1PGDG.rhel10.1.x86_64.rpm pgdg 0.20.3 35.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.20.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.20.3-1PGDG.rhel10.0.x86_64.rpm pgdg 0.20.3 36.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.20.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.20.0-1PGDG.rhel10.x86_64.rpm pgdg 0.20.0 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.20.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.19.7-1PGDG.rhel10.x86_64.rpm pgdg 0.19.7 33.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.19.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.19.6-1PGDG.rhel10.x86_64.rpm pgdg 0.19.6 33.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.19.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.19.5-1PGDG.rhel10.x86_64.rpm pgdg 0.19.5 33.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.19.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.19.4-1PGDG.rhel10.x86_64.rpm pgdg 0.19.4 32.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.19.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.19.3-1PGDG.rhel10.x86_64.rpm pgdg 0.19.3 32.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.19.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.19.1-1PGDG.rhel10.x86_64.rpm pgdg 0.19.1 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.19.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.19.0-1PGDG.rhel10.x86_64.rpm pgdg 0.19.0 31.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.19.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.16.0-1PGDG.rhel10.x86_64.rpm pgdg 0.16.0 29.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.16.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 15 pg_net_15 pg_net_15-0.15.1-1PGDG.rhel10.x86_64.rpm pgdg 0.15.1 29.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_net_15-0.15.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.20.5-1PIGSTY.el10.aarch64.rpm pigsty 0.20.5 41.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_net_15-0.20.5-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.20.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.20.4 35.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.20.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.20.3-1PGDG.rhel10.1.aarch64.rpm pgdg 0.20.3 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.20.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.20.3-1PGDG.rhel10.0.aarch64.rpm pgdg 0.20.3 35.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.20.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.20.0-1PGDG.rhel10.aarch64.rpm pgdg 0.20.0 34.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.20.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.19.7-1PGDG.rhel10.aarch64.rpm pgdg 0.19.7 33.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.19.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.19.6-1PGDG.rhel10.aarch64.rpm pgdg 0.19.6 33.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.19.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.19.5-1PGDG.rhel10.aarch64.rpm pgdg 0.19.5 32.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.19.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.19.4-1PGDG.rhel10.aarch64.rpm pgdg 0.19.4 32.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.19.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.19.3-1PGDG.rhel10.aarch64.rpm pgdg 0.19.3 31.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.19.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.19.1-1PGDG.rhel10.aarch64.rpm pgdg 0.19.1 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.19.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.19.0-1PGDG.rhel10.aarch64.rpm pgdg 0.19.0 31.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.19.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.16.0-1PGDG.rhel10.aarch64.rpm pgdg 0.16.0 28.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.16.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 15 pg_net_15 pg_net_15-0.15.1-1PGDG.rhel10.aarch64.rpm pgdg 0.15.1 28.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_net_15-0.15.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb pigsty 0.20.5 64.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb pigsty 0.20.5 63.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb pigsty 0.20.5 64.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb pigsty 0.20.5 63.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-net postgresql-15-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb pigsty 0.9.2 44.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-15-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-net postgresql-15-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb pigsty 0.9.2 43.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-15-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~noble_amd64.deb pigsty 0.20.5 67.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~noble_arm64.deb pigsty 0.20.5 66.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb pigsty 0.20.5 67.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-net postgresql-15-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb pigsty 0.20.5 66.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-15-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_net_14 pg_net_14-0.9.2-2PIGSTY.el8.x86_64.rpm pigsty 0.9.2 27.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_net_14-0.9.2-2PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 pg_net_14 pg_net_14-0.9.2-1PGDG.rhel8.x86_64.rpm pgdg 0.9.2 21.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_net_14-0.9.2-1PGDG.rhel8.x86_64.rpm
@ el8.x86_64 14 pg_net_14 pg_net_14-0.9.1-1PGDG.rhel8.x86_64.rpm pgdg 0.9.1 21.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_net_14-0.9.1-1PGDG.rhel8.x86_64.rpm
@ el8.aarch64 14 pg_net_14 pg_net_14-0.9.2-2PIGSTY.el8.aarch64.rpm pigsty 0.9.2 27.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_net_14-0.9.2-2PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 pg_net_14 pg_net_14-0.9.2-1PGDG.rhel8.aarch64.rpm pgdg 0.9.2 21.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_net_14-0.9.2-1PGDG.rhel8.aarch64.rpm
@ el8.aarch64 14 pg_net_14 pg_net_14-0.9.1-1PGDG.rhel8.aarch64.rpm pgdg 0.9.1 20.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_net_14-0.9.1-1PGDG.rhel8.aarch64.rpm
@ el9.x86_64 14 pg_net_14 pg_net_14-0.9.2-2PIGSTY.el9.x86_64.rpm pigsty 0.9.2 27.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_net_14-0.9.2-2PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 pg_net_14 pg_net_14-0.9.2-1PGDG.rhel9.x86_64.rpm pgdg 0.9.2 22.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_net_14-0.9.2-1PGDG.rhel9.x86_64.rpm
@ el9.x86_64 14 pg_net_14 pg_net_14-0.9.1-1PGDG.rhel9.x86_64.rpm pgdg 0.9.1 21.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_net_14-0.9.1-1PGDG.rhel9.x86_64.rpm
@ el9.aarch64 14 pg_net_14 pg_net_14-0.9.2-2PIGSTY.el9.aarch64.rpm pigsty 0.9.2 26.7KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_net_14-0.9.2-2PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 pg_net_14 pg_net_14-0.9.2-1PGDG.rhel9.aarch64.rpm pgdg 0.9.2 21.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_net_14-0.9.2-1PGDG.rhel9.aarch64.rpm
@ el9.aarch64 14 pg_net_14 pg_net_14-0.9.1-1PGDG.rhel9.aarch64.rpm pgdg 0.9.1 20.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_net_14-0.9.1-1PGDG.rhel9.aarch64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.20.5-1PIGSTY.el10.x86_64.rpm pigsty 0.20.5 41.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_net_14-0.20.5-1PIGSTY.el10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.20.4-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.4 36.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.20.4-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.20.3-1PGDG.rhel10.2.x86_64.rpm pgdg 0.20.3 35.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.20.3-1PGDG.rhel10.2.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.20.3-1PGDG.rhel10.1.x86_64.rpm pgdg 0.20.3 35.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.20.3-1PGDG.rhel10.1.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.20.3-1PGDG.rhel10.0.x86_64.rpm pgdg 0.20.3 36.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.20.3-1PGDG.rhel10.0.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.20.0-1PGDG.rhel10.x86_64.rpm pgdg 0.20.0 34.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.20.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.19.7-1PGDG.rhel10.x86_64.rpm pgdg 0.19.7 33.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.19.7-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.19.6-1PGDG.rhel10.x86_64.rpm pgdg 0.19.6 33.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.19.6-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.19.5-1PGDG.rhel10.x86_64.rpm pgdg 0.19.5 33.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.19.5-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.19.4-1PGDG.rhel10.x86_64.rpm pgdg 0.19.4 32.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.19.4-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.19.3-1PGDG.rhel10.x86_64.rpm pgdg 0.19.3 32.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.19.3-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.19.1-1PGDG.rhel10.x86_64.rpm pgdg 0.19.1 32.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.19.1-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.19.0-1PGDG.rhel10.x86_64.rpm pgdg 0.19.0 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.19.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.16.0-1PGDG.rhel10.x86_64.rpm pgdg 0.16.0 29.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.16.0-1PGDG.rhel10.x86_64.rpm
@ el10.x86_64 14 pg_net_14 pg_net_14-0.15.1-1PGDG.rhel10.x86_64.rpm pgdg 0.15.1 29.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_net_14-0.15.1-1PGDG.rhel10.x86_64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.20.5-1PIGSTY.el10.aarch64.rpm pigsty 0.20.5 41.5KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_net_14-0.20.5-1PIGSTY.el10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.20.4-1PGDG.rhel10.2.aarch64.rpm pgdg 0.20.4 35.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.20.4-1PGDG.rhel10.2.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.20.3-1PGDG.rhel10.1.aarch64.rpm pgdg 0.20.3 34.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.20.3-1PGDG.rhel10.1.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.20.3-1PGDG.rhel10.0.aarch64.rpm pgdg 0.20.3 34.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.20.3-1PGDG.rhel10.0.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.20.0-1PGDG.rhel10.aarch64.rpm pgdg 0.20.0 34.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.20.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.19.7-1PGDG.rhel10.aarch64.rpm pgdg 0.19.7 33.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.19.7-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.19.6-1PGDG.rhel10.aarch64.rpm pgdg 0.19.6 33.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.19.6-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.19.5-1PGDG.rhel10.aarch64.rpm pgdg 0.19.5 32.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.19.5-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.19.4-1PGDG.rhel10.aarch64.rpm pgdg 0.19.4 32.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.19.4-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.19.3-1PGDG.rhel10.aarch64.rpm pgdg 0.19.3 31.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.19.3-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.19.1-1PGDG.rhel10.aarch64.rpm pgdg 0.19.1 31.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.19.1-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.19.0-1PGDG.rhel10.aarch64.rpm pgdg 0.19.0 31.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.19.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.16.0-1PGDG.rhel10.aarch64.rpm pgdg 0.16.0 28.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.16.0-1PGDG.rhel10.aarch64.rpm
@ el10.aarch64 14 pg_net_14 pg_net_14-0.15.1-1PGDG.rhel10.aarch64.rpm pgdg 0.15.1 28.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_net_14-0.15.1-1PGDG.rhel10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb pigsty 0.20.5 64.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb pigsty 0.20.5 62.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb pigsty 0.20.5 64.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb pigsty 0.20.5 62.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-net postgresql-14-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb pigsty 0.9.2 44.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-14-pg-net_0.9.2-2PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-net postgresql-14-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb pigsty 0.9.2 43.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-net/postgresql-14-pg-net_0.9.2-2PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~noble_amd64.deb pigsty 0.20.5 67.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~noble_arm64.deb pigsty 0.20.5 66.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb pigsty 0.20.5 66.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-net postgresql-14-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb pigsty 0.20.5 65.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-net/postgresql-14-pg-net_0.20.5-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_net` using `pig build`:

```bash
pig build pkg pg_net         # build RPM / DEB packages
```


## Install

You can install `pg_net` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_net;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_net -v 18  # PG 18
pig ext install -y pg_net -v 17  # PG 17
pig ext install -y pg_net -v 16  # PG 16
pig ext install -y pg_net -v 15  # PG 15
pig ext install -y pg_net -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_net_18       # PG 18
dnf install -y pg_net_17       # PG 17
dnf install -y pg_net_16       # PG 16
dnf install -y pg_net_15       # PG 15
dnf install -y pg_net_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-net   # PG 18
apt install -y postgresql-17-pg-net   # PG 17
apt install -y postgresql-16-pg-net   # PG 16
apt install -y postgresql-15-pg-net   # PG 15
apt install -y postgresql-14-pg-net   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_net';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_net;
```




## Usage

Sources: [official README](https://github.com/supabase/pg_net), [v0.20.3 release notes](https://github.com/supabase/pg_net/releases/tag/v0.20.3).

`pg_net` queues asynchronous HTTP and HTTPS requests from SQL. It creates the `net` schema, stores pending work in `net.http_request_queue`, and stores responses in `net._http_response`. A background worker uses `libcurl` to process queued requests.

The extension requires `shared_preload_libraries = 'pg_net'` and `libcurl >= 7.83`.

### GET Request

```sql
CREATE EXTENSION pg_net;

SELECT net.http_get(
  'https://postman-echo.com/get',
  params := '{"foo": "bar"}'::jsonb,
  headers := '{"API-KEY": "<key>"}'::jsonb,
  timeout_milliseconds := 1000
) AS request_id;
```

`net.http_get(url, params, headers, timeout_milliseconds)` returns a `bigint` request id.

### POST Request

```sql
SELECT net.http_post(
  'https://postman-echo.com/post',
  body := '{"key": "value"}'::jsonb,
  headers := '{"Content-Type": "application/json"}'::jsonb,
  timeout_milliseconds := 1000
) AS request_id;
```

Send one table row as JSON:

```sql
WITH selected_row AS (
  SELECT * FROM my_table LIMIT 1
)
SELECT net.http_post(
  'https://api.example.com/data',
  to_jsonb(selected_row.*)
) AS request_id
FROM selected_row;
```

### DELETE Request

```sql
SELECT net.http_delete(
  'https://api.example.com/resource/42',
  timeout_milliseconds := 2000
) AS request_id;
```

`net.http_delete(url, params, headers, timeout_milliseconds)` is `SECURITY DEFINER` and returns a `bigint` request id.

### Checking Responses

```sql
SELECT id, status_code, content, error_msg, created
FROM net._http_response
ORDER BY created DESC;
```

Failed requests can be identified from `status_code` and `error_msg`. The response table does not preserve every original request argument, so store request metadata separately if you need retry workflows.

### Configuration

```sql
SHOW pg_net.batch_size;
SHOW pg_net.ttl;
SHOW pg_net.database_name;
SHOW pg_net.username;
```

- `pg_net.batch_size`, default `200`, limits how many queued requests the worker processes per cycle.
- `pg_net.ttl`, default `6 hours`, controls response retention.
- `pg_net.database_name`, default `postgres`, selects the database where the worker runs.
- `pg_net.username`, default NULL, selects the worker connection user; NULL uses the bootstrap user.

Settings can be changed in `postgresql.conf` or with `ALTER SYSTEM`:

```sql
ALTER SYSTEM SET pg_net.ttl TO '1 hour';
ALTER SYSTEM SET pg_net.batch_size TO 500;
SELECT pg_reload_conf();
```

Changing `pg_net.database_name` or `pg_net.username` requires restarting the worker:

```sql
SELECT net.worker_restart();
```

### Caveats

- Pigsty metadata carries `pg_net` 0.20.3 for PostgreSQL 14-18, but local package notes say 0.20.3 is available only on `d12`, `d13`, `el10`, `u24`, and `u26`; `el8`, `el9`, and `u22` remain on 0.9.2 because of older `libcurl`.
- Upstream documents PostgreSQL 12+ compatibility, but this catalog row is packaged for PostgreSQL 14-18.
- `pg_net` supports only one database per cluster through `pg_net.database_name`.
- v0.20.3 is a worker/maintenance release: it flushes pgstat counters for autovacuum visibility and reports worker activity to `pg_stat_activity`; no new SQL request API was documented.
