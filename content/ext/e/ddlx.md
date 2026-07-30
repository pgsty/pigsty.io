---
title: "ddlx"
linkTitle: "ddlx"
description: "DDL eXtractor functions"
weight: 5080
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/lacanoid/pgddl">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">lacanoid/pgddl</div>
    <div class="ext-card__desc">https://github.com/lacanoid/pgddl</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgddl-0.30.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgddl-0.30.tar.gz</div>
    <div class="ext-card__desc">pgddl-0.30.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_ddlx`**](/ext/e/ddlx) | `0.30` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5080  | [**`ddlx`**](/ext/e/ddlx) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_readme`](/ext/e/pg_readme) [`pgdd`](/ext/e/pgdd) [`meta`](/ext/e/meta) [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_get_functiondef`](/ext/e/pg_get_functiondef) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_render`](/ext/e/pg_render) [`schedoc`](/ext/e/schedoc) [`pg_query_rewrite`](/ext/e/pg_query_rewrite) [`pgpdf`](/ext/e/pgpdf) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.30` | {{< pgvers "18,17,16,15,14" >}} | `pg_ddlx` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.30` | {{< pgvers "18,17,16,15,14" >}} | `ddlx_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.30` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-ddlx` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.30 1 | AVAIL PIGSTY 0.30 3 | AVAIL PIGSTY 0.30 6 | AVAIL PIGSTY 0.30 8 | AVAIL PIGSTY 0.30 8 |
| el8.aarch64 | AVAIL PGDG 0.30 1 | AVAIL PIGSTY 0.30 3 | AVAIL PIGSTY 0.30 6 | AVAIL PIGSTY 0.30 8 | AVAIL PIGSTY 0.30 8 |
| el9.x86_64 | AVAIL PGDG 0.30 2 | AVAIL PGDG 0.30 4 | AVAIL PGDG 0.30 7 | AVAIL PGDG 0.30 9 | AVAIL PGDG 0.30 9 |
| el9.aarch64 | AVAIL PGDG 0.30 2 | AVAIL PGDG 0.30 4 | AVAIL PGDG 0.30 7 | AVAIL PGDG 0.30 9 | AVAIL PGDG 0.30 9 |
| el10.x86_64 | AVAIL PGDG 0.30 2 | AVAIL PGDG 0.30 3 | AVAIL PGDG 0.30 3 | AVAIL PGDG 0.30 3 | AVAIL PGDG 0.30 3 |
| el10.aarch64 | AVAIL PGDG 0.30 2 | AVAIL PGDG 0.30 3 | AVAIL PGDG 0.30 3 | AVAIL PGDG 0.30 3 | AVAIL PGDG 0.30 3 |
| d12.x86_64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| d12.aarch64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| d13.x86_64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| d13.aarch64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| u22.x86_64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| u22.aarch64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| u24.x86_64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| u24.aarch64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| u26.x86_64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
| u26.aarch64 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 | AVAIL PIGSTY 0.30 1 |
@ el8.x86_64 18 ddlx_18 ddlx_18-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.9KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/ddlx_18-0.30-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 ddlx_18 ddlx_18-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/ddlx_18-0.30-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 ddlx_18 ddlx_18-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ddlx_18-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 ddlx_18 ddlx_18-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/ddlx_18-0.30-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 ddlx_18 ddlx_18-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ddlx_18-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 ddlx_18 ddlx_18-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/ddlx_18-0.30-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 ddlx_18 ddlx_18-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ddlx_18-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 ddlx_18 ddlx_18-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/ddlx_18-0.30-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 ddlx_18 ddlx_18-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ddlx_18-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 ddlx_18 ddlx_18-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.2KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/ddlx_18-0.30-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~bookworm_amd64.deb pigsty 0.30 28.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~bookworm_arm64.deb pigsty 0.30 28.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~trixie_amd64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~trixie_arm64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~jammy_amd64.deb pigsty 0.30 26.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~jammy_arm64.deb pigsty 0.30 26.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~noble_amd64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~noble_arm64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~resolute_amd64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-ddlx postgresql-18-ddlx_0.30-1PIGSTY~resolute_arm64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-18-ddlx_0.30-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 ddlx_17 ddlx_17-0.30-1PIGSTY.el8.x86_64.rpm pigsty 0.30 32.4KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddlx_17-0.30-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 17 ddlx_17 ddlx_17-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ddlx_17-0.30-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 17 ddlx_17 ddlx_17-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/ddlx_17-0.29-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 ddlx_17 ddlx_17-0.30-1PIGSTY.el8.aarch64.rpm pigsty 0.30 32.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddlx_17-0.30-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 17 ddlx_17 ddlx_17-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ddlx_17-0.30-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 ddlx_17 ddlx_17-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/ddlx_17-0.29-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 ddlx_17 ddlx_17-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ddlx_17-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 ddlx_17 ddlx_17-0.30-1PIGSTY.el9.x86_64.rpm pigsty 0.30 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddlx_17-0.30-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 17 ddlx_17 ddlx_17-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ddlx_17-0.30-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 17 ddlx_17 ddlx_17-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.9KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/ddlx_17-0.29-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 ddlx_17 ddlx_17-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ddlx_17-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 ddlx_17 ddlx_17-0.30-1PIGSTY.el9.aarch64.rpm pigsty 0.30 31.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddlx_17-0.30-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 17 ddlx_17 ddlx_17-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ddlx_17-0.30-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 ddlx_17 ddlx_17-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/ddlx_17-0.29-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 ddlx_17 ddlx_17-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ddlx_17-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 ddlx_17 ddlx_17-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ddlx_17-0.30-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 17 ddlx_17 ddlx_17-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/ddlx_17-0.29-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 ddlx_17 ddlx_17-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ddlx_17-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 ddlx_17 ddlx_17-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.2KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ddlx_17-0.30-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 ddlx_17 ddlx_17-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/ddlx_17-0.29-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~bookworm_amd64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~bookworm_arm64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~trixie_amd64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~trixie_arm64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~jammy_amd64.deb pigsty 0.30 26.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~jammy_arm64.deb pigsty 0.30 26.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~noble_amd64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~noble_arm64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~resolute_amd64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-ddlx postgresql-17-ddlx_0.30-1PIGSTY~resolute_arm64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-17-ddlx_0.30-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 ddlx_16 ddlx_16-0.30-1PIGSTY.el8.x86_64.rpm pigsty 0.30 32.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddlx_16-0.30-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 16 ddlx_16 ddlx_16-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ddlx_16-0.30-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 ddlx_16 ddlx_16-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ddlx_16-0.29-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 ddlx_16 ddlx_16-0.27-1PGDG.rhel8.noarch.rpm pgdg 0.27 32.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ddlx_16-0.27-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 ddlx_16 ddlx_16-0.26-1PGDG.rhel8.noarch.rpm pgdg 0.26 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ddlx_16-0.26-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 16 ddlx_16 ddlx_16-0.24-1PGDG.rhel8.noarch.rpm pgdg 0.24 30.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/ddlx_16-0.24-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 ddlx_16 ddlx_16-0.30-1PIGSTY.el8.aarch64.rpm pigsty 0.30 32.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddlx_16-0.30-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 16 ddlx_16 ddlx_16-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ddlx_16-0.30-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 ddlx_16 ddlx_16-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ddlx_16-0.29-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 ddlx_16 ddlx_16-0.27-1PGDG.rhel8.noarch.rpm pgdg 0.27 31.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ddlx_16-0.27-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 ddlx_16 ddlx_16-0.26-1PGDG.rhel8.noarch.rpm pgdg 0.26 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ddlx_16-0.26-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 ddlx_16 ddlx_16-0.24-1PGDG.rhel8.noarch.rpm pgdg 0.24 30.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/ddlx_16-0.24-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 ddlx_16 ddlx_16-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ddlx_16-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 ddlx_16 ddlx_16-0.30-1PIGSTY.el9.x86_64.rpm pigsty 0.30 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddlx_16-0.30-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 16 ddlx_16 ddlx_16-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ddlx_16-0.30-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 ddlx_16 ddlx_16-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.9KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ddlx_16-0.29-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 ddlx_16 ddlx_16-0.27-1PGDG.rhel9.noarch.rpm pgdg 0.27 30.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ddlx_16-0.27-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 ddlx_16 ddlx_16-0.26-1PGDG.rhel9.noarch.rpm pgdg 0.26 29.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ddlx_16-0.26-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 16 ddlx_16 ddlx_16-0.24-1PGDG.rhel9.noarch.rpm pgdg 0.24 28.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/ddlx_16-0.24-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 ddlx_16 ddlx_16-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ddlx_16-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 ddlx_16 ddlx_16-0.30-1PIGSTY.el9.aarch64.rpm pigsty 0.30 31.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddlx_16-0.30-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 16 ddlx_16 ddlx_16-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ddlx_16-0.30-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 ddlx_16 ddlx_16-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ddlx_16-0.29-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 ddlx_16 ddlx_16-0.27-1PGDG.rhel9.noarch.rpm pgdg 0.27 30.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ddlx_16-0.27-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 ddlx_16 ddlx_16-0.26-1PGDG.rhel9.noarch.rpm pgdg 0.26 29.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ddlx_16-0.26-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 ddlx_16 ddlx_16-0.24-1PGDG.rhel9.noarch.rpm pgdg 0.24 28.6KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/ddlx_16-0.24-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 ddlx_16 ddlx_16-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ddlx_16-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 ddlx_16 ddlx_16-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.2KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ddlx_16-0.30-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 16 ddlx_16 ddlx_16-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/ddlx_16-0.29-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 ddlx_16 ddlx_16-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ddlx_16-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 ddlx_16 ddlx_16-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.1KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ddlx_16-0.30-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 ddlx_16 ddlx_16-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/ddlx_16-0.29-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~bookworm_amd64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~bookworm_arm64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~trixie_amd64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~trixie_arm64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~jammy_amd64.deb pigsty 0.30 26.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~jammy_arm64.deb pigsty 0.30 26.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~noble_amd64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~noble_arm64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~resolute_amd64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-ddlx postgresql-16-ddlx_0.30-1PIGSTY~resolute_arm64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-16-ddlx_0.30-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 ddlx_15 ddlx_15-0.30-1PIGSTY.el8.x86_64.rpm pigsty 0.30 32.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddlx_15-0.30-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 15 ddlx_15 ddlx_15-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ddlx_15-0.30-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 ddlx_15 ddlx_15-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ddlx_15-0.29-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 ddlx_15 ddlx_15-0.27-1PGDG.rhel8.noarch.rpm pgdg 0.27 32.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ddlx_15-0.27-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 ddlx_15 ddlx_15-0.26-1PGDG.rhel8.noarch.rpm pgdg 0.26 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ddlx_15-0.26-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 ddlx_15 ddlx_15-0.24-1PGDG.rhel8.noarch.rpm pgdg 0.24 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ddlx_15-0.24-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 15 ddlx_15 ddlx_15-0.23-1.rhel8.noarch.rpm pgdg 0.23 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ddlx_15-0.23-1.rhel8.noarch.rpm
@ el8.x86_64 15 ddlx_15 ddlx_15-0.22-1.rhel8.noarch.rpm pgdg 0.22 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/ddlx_15-0.22-1.rhel8.noarch.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.30-1PIGSTY.el8.aarch64.rpm pigsty 0.30 32.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddlx_15-0.30-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ddlx_15-0.30-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ddlx_15-0.29-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.27-1PGDG.rhel8.noarch.rpm pgdg 0.27 31.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ddlx_15-0.27-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.26-1PGDG.rhel8.noarch.rpm pgdg 0.26 30.9KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ddlx_15-0.26-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.24-1PGDG.rhel8.noarch.rpm pgdg 0.24 30.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ddlx_15-0.24-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.23-1.rhel8.noarch.rpm pgdg 0.23 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ddlx_15-0.23-1.rhel8.noarch.rpm
@ el8.aarch64 15 ddlx_15 ddlx_15-0.22-1.rhel8.noarch.rpm pgdg 0.22 29.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/ddlx_15-0.22-1.rhel8.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.30-1PIGSTY.el9.x86_64.rpm pigsty 0.30 31.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddlx_15-0.30-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.30-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.29-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.27-1PGDG.rhel9.noarch.rpm pgdg 0.27 30.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.27-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.26-1PGDG.rhel9.noarch.rpm pgdg 0.26 29.2KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.26-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.24-1PGDG.rhel9.noarch.rpm pgdg 0.24 28.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.24-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.23-1.rhel9.noarch.rpm pgdg 0.23 28.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.23-1.rhel9.noarch.rpm
@ el9.x86_64 15 ddlx_15 ddlx_15-0.22-1.rhel9.noarch.rpm pgdg 0.22 29.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/ddlx_15-0.22-1.rhel9.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.30-1PIGSTY.el9.aarch64.rpm pigsty 0.30 31.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddlx_15-0.30-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.30-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.29-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.27-1PGDG.rhel9.noarch.rpm pgdg 0.27 30.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.27-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.26-1PGDG.rhel9.noarch.rpm pgdg 0.26 29.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.26-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.24-1PGDG.rhel9.noarch.rpm pgdg 0.24 28.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.24-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.23-1.rhel9.noarch.rpm pgdg 0.23 28.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.23-1.rhel9.noarch.rpm
@ el9.aarch64 15 ddlx_15 ddlx_15-0.22-1.rhel9.noarch.rpm pgdg 0.22 28.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/ddlx_15-0.22-1.rhel9.noarch.rpm
@ el10.x86_64 15 ddlx_15 ddlx_15-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ddlx_15-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 ddlx_15 ddlx_15-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ddlx_15-0.30-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 15 ddlx_15 ddlx_15-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/ddlx_15-0.29-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 ddlx_15 ddlx_15-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ddlx_15-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 ddlx_15 ddlx_15-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.1KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ddlx_15-0.30-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 ddlx_15 ddlx_15-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/ddlx_15-0.29-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~bookworm_amd64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~bookworm_arm64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~trixie_amd64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~trixie_arm64.deb pigsty 0.30 28.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~jammy_amd64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~jammy_arm64.deb pigsty 0.30 25.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~noble_amd64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~noble_arm64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~resolute_amd64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-ddlx postgresql-15-ddlx_0.30-1PIGSTY~resolute_arm64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-15-ddlx_0.30-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 ddlx_14 ddlx_14-0.30-1PIGSTY.el8.x86_64.rpm pigsty 0.30 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/ddlx_14-0.30-1PIGSTY.el8.x86_64.rpm
@ el8.x86_64 14 ddlx_14 ddlx_14-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ddlx_14-0.30-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 ddlx_14 ddlx_14-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ddlx_14-0.29-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 ddlx_14 ddlx_14-0.27-1PGDG.rhel8.noarch.rpm pgdg 0.27 31.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ddlx_14-0.27-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 ddlx_14 ddlx_14-0.26-1PGDG.rhel8.noarch.rpm pgdg 0.26 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ddlx_14-0.26-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 ddlx_14 ddlx_14-0.24-1PGDG.rhel8.noarch.rpm pgdg 0.24 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ddlx_14-0.24-1PGDG.rhel8.noarch.rpm
@ el8.x86_64 14 ddlx_14 ddlx_14-0.23-1.rhel8.noarch.rpm pgdg 0.23 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ddlx_14-0.23-1.rhel8.noarch.rpm
@ el8.x86_64 14 ddlx_14 ddlx_14-0.22-1.rhel8.noarch.rpm pgdg 0.22 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/ddlx_14-0.22-1.rhel8.noarch.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.30-1PIGSTY.el8.aarch64.rpm pigsty 0.30 32.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/ddlx_14-0.30-1PIGSTY.el8.aarch64.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.30-1PGDG.rhel8.noarch.rpm pgdg 0.30 33.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ddlx_14-0.30-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.29-1PGDG.rhel8.noarch.rpm pgdg 0.29 32.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ddlx_14-0.29-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.27-1PGDG.rhel8.noarch.rpm pgdg 0.27 31.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ddlx_14-0.27-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.26-1PGDG.rhel8.noarch.rpm pgdg 0.26 30.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ddlx_14-0.26-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.24-1PGDG.rhel8.noarch.rpm pgdg 0.24 30.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ddlx_14-0.24-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.23-1.rhel8.noarch.rpm pgdg 0.23 30.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ddlx_14-0.23-1.rhel8.noarch.rpm
@ el8.aarch64 14 ddlx_14 ddlx_14-0.22-1.rhel8.noarch.rpm pgdg 0.22 29.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/ddlx_14-0.22-1.rhel8.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.30-1PIGSTY.el9.x86_64.rpm pigsty 0.30 31.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/ddlx_14-0.30-1PIGSTY.el9.x86_64.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.30-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.29-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.27-1PGDG.rhel9.noarch.rpm pgdg 0.27 30.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.27-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.26-1PGDG.rhel9.noarch.rpm pgdg 0.26 29.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.26-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.24-1PGDG.rhel9.noarch.rpm pgdg 0.24 28.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.24-1PGDG.rhel9.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.23-1.rhel9.noarch.rpm pgdg 0.23 28.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.23-1.rhel9.noarch.rpm
@ el9.x86_64 14 ddlx_14 ddlx_14-0.22-1.rhel9.noarch.rpm pgdg 0.22 29.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/ddlx_14-0.22-1.rhel9.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.30-2PGDG.rhel9.8.noarch.rpm pgdg 0.30 31.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.30-2PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.30-1PIGSTY.el9.aarch64.rpm pigsty 0.30 30.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/ddlx_14-0.30-1PIGSTY.el9.aarch64.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.30-1PGDG.rhel9.noarch.rpm pgdg 0.30 31.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.30-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.29-1PGDG.rhel9.noarch.rpm pgdg 0.29 30.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.29-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.27-1PGDG.rhel9.noarch.rpm pgdg 0.27 29.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.27-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.26-1PGDG.rhel9.noarch.rpm pgdg 0.26 29.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.26-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.24-1PGDG.rhel9.noarch.rpm pgdg 0.24 28.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.24-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.23-1.rhel9.noarch.rpm pgdg 0.23 28.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.23-1.rhel9.noarch.rpm
@ el9.aarch64 14 ddlx_14 ddlx_14-0.22-1.rhel9.noarch.rpm pgdg 0.22 28.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/ddlx_14-0.22-1.rhel9.noarch.rpm
@ el10.x86_64 14 ddlx_14 ddlx_14-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.6KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ddlx_14-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 ddlx_14 ddlx_14-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 32.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ddlx_14-0.30-1PGDG.rhel10.noarch.rpm
@ el10.x86_64 14 ddlx_14 ddlx_14-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.2KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/ddlx_14-0.29-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 ddlx_14 ddlx_14-0.30-2PGDG.rhel10.2.noarch.rpm pgdg 0.30 31.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ddlx_14-0.30-2PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 ddlx_14 ddlx_14-0.30-1PGDG.rhel10.noarch.rpm pgdg 0.30 31.9KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ddlx_14-0.30-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 ddlx_14 ddlx_14-0.29-1PGDG.rhel10.noarch.rpm pgdg 0.29 31.1KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/ddlx_14-0.29-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~bookworm_amd64.deb pigsty 0.30 28.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~bookworm_arm64.deb pigsty 0.30 28.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~trixie_amd64.deb pigsty 0.30 28.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~trixie_arm64.deb pigsty 0.30 28.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~jammy_amd64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~jammy_arm64.deb pigsty 0.30 25.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~noble_amd64.deb pigsty 0.30 25.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~noble_arm64.deb pigsty 0.30 25.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~resolute_amd64.deb pigsty 0.30 25.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-ddlx postgresql-14-ddlx_0.30-1PIGSTY~resolute_arm64.deb pigsty 0.30 25.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/d/ddlx/postgresql-14-ddlx_0.30-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_ddlx` using `pig build`:

```bash
pig build pkg pg_ddlx         # build DEB packages
```


## Install

You can install `pg_ddlx` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_ddlx;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_ddlx -v 18  # PG 18
pig ext install -y pg_ddlx -v 17  # PG 17
pig ext install -y pg_ddlx -v 16  # PG 16
pig ext install -y pg_ddlx -v 15  # PG 15
pig ext install -y pg_ddlx -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y ddlx_18       # PG 18
dnf install -y ddlx_17       # PG 17
dnf install -y ddlx_16       # PG 16
dnf install -y ddlx_15       # PG 15
dnf install -y ddlx_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-ddlx   # PG 18
apt install -y postgresql-17-ddlx   # PG 17
apt install -y postgresql-16-ddlx   # PG 16
apt install -y postgresql-15-ddlx   # PG 15
apt install -y postgresql-14-ddlx   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION ddlx;
```




## Usage

> [ddlx: DDL eXtractor functions](https://github.com/lacanoid/pgddl)

ddlx is a SQL-only extension that generates DDL scripts from PostgreSQL system catalogs. It provides three main functions that accept an OID and work with all `reg*` object identifier types.

### Core Functions

```sql
-- Generate CREATE statement for an object
SELECT ddlx_create('my_table'::regclass);
SELECT ddlx_create('my_type'::regtype);
SELECT ddlx_create('my_function'::regproc);
SELECT ddlx_create(current_role::regrole);

-- Generate DROP statement
SELECT ddlx_drop('my_table'::regclass);

-- Generate full DDL script with dependency tree
SELECT ddlx_script('my_table'::regclass);
SELECT ddlx_script('my_enum');
SELECT ddlx_script(current_role::regrole);
```

### Options

Options are passed as a text array (e.g., `'{ine,nodcl}'`):

```sql
SELECT ddlx_create('my_table'::regclass, '{ine}');        -- add IF NOT EXISTS
SELECT ddlx_create('my_type'::regtype, '{noowner}');       -- omit ALTER SET OWNER
SELECT ddlx_script('my_table'::regclass, '{drop}');        -- include DROP statements
```

Available options: `drop`, `nodrop`, `owner`, `noowner`, `nogrants`, `nodcl`, `noalter`, `ine` (IF NOT EXISTS), `ie` (IF EXISTS), `ext`, `lite`, `nowrap`, `nopartitions`, `comments`, `nocomments`, `nostorage`, `noconstraints`, `noindexes`, `nosettings`, `notriggers`, `grantor`, `data`.

### For Objects Without reg* Types

```sql
SELECT ddlx_create(oid) FROM pg_foreign_data_wrapper WHERE fdwname = 'postgres_fdw';
SELECT ddlx_create(oid) FROM pg_database WHERE datname = current_database();
```

### Additional Functions

```sql
-- Identify any object by OID
SELECT * FROM ddlx_identify(oid);

-- Describe columns of a class
SELECT * FROM ddlx_describe('my_table'::regclass);

-- Get individual definition parts
SELECT * FROM ddlx_definitions(oid);

-- Generate pre-data creation statements only
SELECT ddlx_createonly('my_table'::regclass);

-- Generate post-data alteration statements
SELECT ddlx_alter('my_table'::regclass);

-- Search function/view bodies by regex
SELECT ddlx_create(objid) FROM ddlx_apropos('users');

-- Get GRANT statements
SELECT ddlx_grants('my_table'::regclass);
```
