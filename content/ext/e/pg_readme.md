---
title: "pg_readme"
linkTitle: "pg_readme"
description: "Generate a Markdown README from PostgreSQL COMMENT objects"
weight: 4300
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_readme">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_readme</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_readme</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_readme-0.7.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_readme-0.7.1.tar.gz</div>
    <div class="ext-card__desc">pg_readme-0.7.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_readme`**](/ext/e/pg_readme) | `0.7.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4300  | [**`pg_readme`**](/ext/e/pg_readme) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 4301  | [**`pg_readme_test_extension`**](/ext/e/pg_readme_test_extension) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`hstore`](/ext/e/hstore) [`ddlx`](/ext/e/ddlx) [`pg_render`](/ext/e/pg_render) [`schedoc`](/ext/e/schedoc) [`pgdd`](/ext/e/pgdd) [`meta`](/ext/e/meta) [`pgpdf`](/ext/e/pgpdf) [`pg_get_functiondef`](/ext/e/pg_get_functiondef) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_catcheck`](/ext/e/pg_catcheck) [`pg_query_rewrite`](/ext/e/pg_query_rewrite) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Catalog release is 0.7.1; PGDG remains the RPM maintainer at 0.7.0, so the PIGSTY 0.7.1 RPM must not be published; PIGSTY maintains the 0.7.1 DEB package.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.7.1` | {{< pgvers "14,15,16,17,18" >}} | `pg_readme` | `hstore` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_readme_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.7.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-readme` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el8.aarch64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el9.x86_64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| el9.aarch64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| el10.x86_64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| el10.aarch64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| d12.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
@ el8.x86_64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-x86_64/pg_readme_18-0.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-8-aarch64/pg_readme_18-0.7.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_readme_18-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-x86_64/pg_readme_18-0.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_readme_18-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.7KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-9-aarch64/pg_readme_18-0.7.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_readme_18-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.4KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-x86_64/pg_readme_18-0.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_readme_18-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 18 pg_readme_18 pg_readme_18-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.3KiB https://download.postgresql.org/pub/repos/yum/18/redhat/rhel-10-aarch64/pg_readme_18-0.7.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-x86_64/pg_readme_17-0.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-8-aarch64/pg_readme_17-0.7.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_readme_17-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-x86_64/pg_readme_17-0.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.7KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_readme_17-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-9-aarch64/pg_readme_17-0.7.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_readme_17-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.4KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-x86_64/pg_readme_17-0.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_readme_17-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 17 pg_readme_17 pg_readme_17-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.3KiB https://download.postgresql.org/pub/repos/yum/17/redhat/rhel-10-aarch64/pg_readme_17-0.7.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-x86_64/pg_readme_16-0.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-8-aarch64/pg_readme_16-0.7.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_readme_16-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-x86_64/pg_readme_16-0.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_readme_16-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-9-aarch64/pg_readme_16-0.7.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_readme_16-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.4KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-x86_64/pg_readme_16-0.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_readme_16-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 16 pg_readme_16 pg_readme_16-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.3KiB https://download.postgresql.org/pub/repos/yum/16/redhat/rhel-10-aarch64/pg_readme_16-0.7.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-x86_64/pg_readme_15-0.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-8-aarch64/pg_readme_15-0.7.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_readme_15-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-x86_64/pg_readme_15-0.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.7KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_readme_15-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-9-aarch64/pg_readme_15-0.7.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_readme_15-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.4KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-x86_64/pg_readme_15-0.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_readme_15-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 15 pg_readme_15 pg_readme_15-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.3KiB https://download.postgresql.org/pub/repos/yum/15/redhat/rhel-10-aarch64/pg_readme_15-0.7.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ el8.x86_64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-x86_64/pg_readme_14-0.7.0-1PGDG.rhel8.noarch.rpm
@ el8.aarch64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel8.noarch.rpm pgdg 0.7.0 31.5KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-8-aarch64/pg_readme_14-0.7.0-1PGDG.rhel8.noarch.rpm
@ el9.x86_64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_readme_14-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.x86_64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-x86_64/pg_readme_14-0.7.0-1PGDG.rhel9.noarch.rpm
@ el9.aarch64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel9.8.noarch.rpm pgdg 0.7.0 30.7KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_readme_14-0.7.0-1PGDG.rhel9.8.noarch.rpm
@ el9.aarch64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel9.noarch.rpm pgdg 0.7.0 30.8KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-9-aarch64/pg_readme_14-0.7.0-1PGDG.rhel9.noarch.rpm
@ el10.x86_64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_readme_14-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.x86_64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.4KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-x86_64/pg_readme_14-0.7.0-1PGDG.rhel10.noarch.rpm
@ el10.aarch64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel10.2.noarch.rpm pgdg 0.7.0 31.0KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_readme_14-0.7.0-1PGDG.rhel10.2.noarch.rpm
@ el10.aarch64 14 pg_readme_14 pg_readme_14-0.7.0-1PGDG.rhel10.noarch.rpm pgdg 0.7.0 31.3KiB https://download.postgresql.org/pub/repos/yum/14/redhat/rhel-10-aarch64/pg_readme_14-0.7.0-1PGDG.rhel10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~trixie_all.deb pigsty 0.7.1 19.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~jammy_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~noble_all.deb pigsty 0.7.1 20.0KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.1-1PIGSTY~resolute_all.deb pigsty 0.7.1 20.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.1-1PIGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_readme` using `pig build`:

```bash
pig build pkg pg_readme         # build DEB packages
```


## Install

You can install `pg_readme` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_readme;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_readme -v 18  # PG 18
pig ext install -y pg_readme -v 17  # PG 17
pig ext install -y pg_readme -v 16  # PG 16
pig ext install -y pg_readme -v 15  # PG 15
pig ext install -y pg_readme -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_readme_18       # PG 18
dnf install -y pg_readme_17       # PG 17
dnf install -y pg_readme_16       # PG 16
dnf install -y pg_readme_15       # PG 15
dnf install -y pg_readme_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-readme   # PG 18
apt install -y postgresql-17-pg-readme   # PG 17
apt install -y postgresql-16-pg-readme   # PG 16
apt install -y postgresql-15-pg-readme   # PG 15
apt install -y postgresql-14-pg-readme   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION pg_readme CASCADE;  -- requires: hstore
```

## Usage

Sources:

- [pg_readme 0.7.1 README](https://api.pgxn.org/src/pg_readme/pg_readme-0.7.1/README.md)
- [pg_readme 0.7.1 control file](https://api.pgxn.org/src/pg_readme/pg_readme-0.7.1/pg_readme.control)
- [pg_readme 0.7.1 upgrade SQL](https://api.pgxn.org/src/pg_readme/pg_readme-0.7.1/sql/pg_readme--0.7.0--0.7.1.sql)
- [Pigsty package matrix](https://pgext.cloud/ext/pg_readme)

`pg_readme` generates Markdown documentation for a PostgreSQL extension or schema from `COMMENT` objects and live catalog metadata. Use it to keep an extension's README close to its SQL definitions and verify the generated output in source control.

### Install and Generate Markdown

```sql
CREATE EXTENSION pg_readme CASCADE;

SELECT pg_extension_readme('my_extension'::name);
SELECT pg_schema_readme('my_schema'::regnamespace);
```

The control file requires `hstore`, is relocatable, and permits non-superuser installation when the caller can install its dependencies and create the objects.

### Add Processing Instructions

Put Markdown and processing instructions in the extension or schema comment:

```sql
COMMENT ON EXTENSION my_extension IS $markdown$
### `my_extension`

What the extension does.

### Reference

<?pg-readme-reference?>

### Colophon

<?pg-readme-colophon?>
$markdown$;
```

`<?pg-readme-reference?>` expands to a catalog-derived object reference. `<?pg-readme-colophon?>` adds generation metadata. Optional instruction attributes can adjust the heading depth when embedding generated sections.

### Settings

- `pg_readme.include_view_definitions`: include view definitions; default `true`.
- `pg_readme.include_routine_definitions_like`: array of routine-name patterns whose definitions are included; default `'{test__%}'`.
- `pg_readme.include_this_routine_definition`: routine-local override for including the current definition.
- `pg_readme.readme_url`: upstream README link used by generated material.

Use `SET` options on a wrapper function or transaction when a project needs reproducible generation settings.

### Version 0.7.1 and Caveats

- Version 0.7.1 fixes PostgreSQL 18 reference generation that could duplicate array/composite table types and `NOT NULL` markers.
- Upstream and the current Pigsty DEB package are 0.7.1, while the current Pigsty RPM package remains 0.7.0. Check `pg_available_extension_versions` before relying on the PostgreSQL 18 fix.
- Generated output reflects the current database catalog, installed extension versions, comments, and generation time. Review diffs instead of assuming two environments produce identical text.
- Catalog introspection does not replace hand-written operational guidance. Keep prerequisites, preload/restart behavior, upgrade notes, and unsafe operations in curated prose.
- The singular setting `pg_readme.include_routine_definition_like` appears in an old README wrapper example, but the documented current GUC is the plural `pg_readme.include_routine_definitions_like`.
