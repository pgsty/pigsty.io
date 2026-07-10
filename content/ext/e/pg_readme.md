---
title: "pg_readme"
linkTitle: "pg_readme"
description: "Generate a README.md document for a database extension or schema"
weight: 4300
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_readme">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_readme</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_readme</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_readme-0.7.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_readme-0.7.0.tar.gz</div>
    <div class="ext-card__desc">pg_readme-0.7.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_readme`**](/ext/e/pg_readme) | `0.7.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4300  | [**`pg_readme`**](/ext/e/pg_readme) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 4301  | [**`pg_readme_test_extension`**](/ext/e/pg_readme_test_extension) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`hstore`](/ext/e/hstore) [`ddl_historization`](/ext/e/ddl_historization) [`schedoc`](/ext/e/schedoc) [`pg_render`](/ext/e/pg_render) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_readme` | `hstore` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_readme_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-readme` | - |
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
| d12.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
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
@ d12.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-readme postgresql-18-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-18-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb
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
@ d12.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-readme postgresql-17-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-17-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb
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
@ d12.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-readme postgresql-16-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-16-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb
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
@ d12.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-readme postgresql-15-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-15-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb
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
@ d12.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb pigsty 0.7.0 18.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb pigsty 0.7.0 18.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-readme postgresql-14-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb pigsty 0.7.0 18.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-readme/postgresql-14-pg-readme_0.7.0-1PIGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_readme;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_readme -v 18  # PG 18
pig ext install -y pg_readme -v 17  # PG 17
pig ext install -y pg_readme -v 16  # PG 16
pig ext install -y pg_readme -v 15  # PG 15
pig ext install -y pg_readme -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_readme_18       # PG 18
dnf install -y pg_readme_17       # PG 17
dnf install -y pg_readme_16       # PG 16
dnf install -y pg_readme_15       # PG 15
dnf install -y pg_readme_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-readme   # PG 18
apt install -y postgresql-17-pg-readme   # PG 17
apt install -y postgresql-16-pg-readme   # PG 16
apt install -y postgresql-15-pg-readme   # PG 15
apt install -y postgresql-14-pg-readme   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_readme CASCADE;  -- requires: hstore
```




## Usage

> [pg_readme: Auto-generate README documentation from PostgreSQL COMMENT objects](https://github.com/bigsmoke/pg_readme)

Generates `README.md` documents for extensions or schemas based on `COMMENT` objects in the `pg_description` system catalog.

### Generate Extension README

```sql
SELECT pg_extension_readme('my_extension'::name);
```

### Generate Schema README

```sql
SELECT pg_schema_readme('my_schema'::regnamespace);
```

### Processing Instructions

Include these XML processing instructions in your `COMMENT ON EXTENSION` or `COMMENT ON SCHEMA`:

- `<?pg-readme-reference?>` -- replaced with a full object reference
- `<?pg-readme-colophon?>` -- adds a colophon with pg_readme info

### Typical Workflow

Create a readme-generating function in your extension:

```sql
CREATE FUNCTION my_ext_readme() RETURNS text
    VOLATILE SET search_path FROM current
    SET pg_readme.include_view_definitions TO 'true'
    LANGUAGE plpgsql AS $$
DECLARE _readme text;
BEGIN
    CREATE EXTENSION IF NOT EXISTS pg_readme WITH VERSION '0.1.0';
    _readme := pg_extension_readme('my_extension'::name);
    RAISE transaction_rollback;
EXCEPTION WHEN transaction_rollback THEN RETURN _readme;
END; $$;
```

Then generate with: `make README.md`

### Settings

| Setting | Default |
|---------|---------|
| `pg_readme.include_view_definitions` | `true` |
| `pg_readme.include_routine_definitions_like` | `'{test__%}'` |
| `pg_readme.include_this_routine_definition` | `null` |
