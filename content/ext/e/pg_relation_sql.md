---
title: "pg_relation_sql"
linkTitle: "pg_relation_sql"
description: "Generate inlinable SQL functions for navigating PostgreSQL foreign-key relations"
weight: 4210
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/asmgit/pg_relation_sql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">asmgit/pg_relation_sql</div>
    <div class="ext-card__desc">https://github.com/asmgit/pg_relation_sql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_relation_sql-0.2.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_relation_sql-0.2.2.tar.gz</div>
    <div class="ext-card__desc">pg_relation_sql-0.2.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_relation_sql`**](/ext/e/pg_relation_sql) | `0.2.2` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang plpgsql" href="/ext/language#plpgsql">PLpgSQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4210  | [**`pg_relation_sql`**](/ext/e/pg_relation_sql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_readme`](/ext/e/pg_readme) [`pg_dbms_metadata`](/ext/e/pg_dbms_metadata) [`pg_get_functiondef`](/ext/e/pg_get_functiondef) [`pg_rewrite`](/ext/e/pg_rewrite) [`pg_query_rewrite`](/ext/e/pg_query_rewrite) [`ddl_historization`](/ext/e/ddl_historization) [`data_historization`](/ext/e/data_historization) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Upstream intentionally ships no control file or CREATE EXTENSION path; execute the packaged relation_sql.sql in each database; relation_sql('install') requires superuser only for its optional event trigger.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_relation_sql` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.2` | {{< pgvers "18,17,16,15,14" >}} | `pg_relation_sql_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.2` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-relation-sql` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el8.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el9.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el9.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el10.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| el10.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d12.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d12.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d13.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| d13.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u22.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u22.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u24.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u24.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u26.x86_64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
| u26.aarch64 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 | AVAIL PIGSTY 0.2.2 1 |
@ el8.x86_64 18 pg_relation_sql_18 pg_relation_sql_18-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relation_sql_18-0.2.2-1PGSTY.el8.noarch.rpm
@ el8.aarch64 18 pg_relation_sql_18 pg_relation_sql_18-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relation_sql_18-0.2.2-1PGSTY.el8.noarch.rpm
@ el9.x86_64 18 pg_relation_sql_18 pg_relation_sql_18-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relation_sql_18-0.2.2-1PGSTY.el9.noarch.rpm
@ el9.aarch64 18 pg_relation_sql_18 pg_relation_sql_18-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relation_sql_18-0.2.2-1PGSTY.el9.noarch.rpm
@ el10.x86_64 18 pg_relation_sql_18 pg_relation_sql_18-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relation_sql_18-0.2.2-1PGSTY.el10.noarch.rpm
@ el10.aarch64 18 pg_relation_sql_18 pg_relation_sql_18-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relation_sql_18-0.2.2-1PGSTY.el10.noarch.rpm
@ d12.x86_64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d12.aarch64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d13.x86_64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ d13.aarch64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ u22.x86_64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u22.aarch64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u24.x86_64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u24.aarch64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u26.x86_64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ u26.aarch64 18 postgresql-18-pg-relation-sql postgresql-18-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-18-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ el8.x86_64 17 pg_relation_sql_17 pg_relation_sql_17-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relation_sql_17-0.2.2-1PGSTY.el8.noarch.rpm
@ el8.aarch64 17 pg_relation_sql_17 pg_relation_sql_17-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relation_sql_17-0.2.2-1PGSTY.el8.noarch.rpm
@ el9.x86_64 17 pg_relation_sql_17 pg_relation_sql_17-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relation_sql_17-0.2.2-1PGSTY.el9.noarch.rpm
@ el9.aarch64 17 pg_relation_sql_17 pg_relation_sql_17-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relation_sql_17-0.2.2-1PGSTY.el9.noarch.rpm
@ el10.x86_64 17 pg_relation_sql_17 pg_relation_sql_17-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relation_sql_17-0.2.2-1PGSTY.el10.noarch.rpm
@ el10.aarch64 17 pg_relation_sql_17 pg_relation_sql_17-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relation_sql_17-0.2.2-1PGSTY.el10.noarch.rpm
@ d12.x86_64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d12.aarch64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d13.x86_64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ d13.aarch64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ u22.x86_64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u22.aarch64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u24.x86_64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u24.aarch64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u26.x86_64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ u26.aarch64 17 postgresql-17-pg-relation-sql postgresql-17-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-17-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ el8.x86_64 16 pg_relation_sql_16 pg_relation_sql_16-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relation_sql_16-0.2.2-1PGSTY.el8.noarch.rpm
@ el8.aarch64 16 pg_relation_sql_16 pg_relation_sql_16-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relation_sql_16-0.2.2-1PGSTY.el8.noarch.rpm
@ el9.x86_64 16 pg_relation_sql_16 pg_relation_sql_16-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relation_sql_16-0.2.2-1PGSTY.el9.noarch.rpm
@ el9.aarch64 16 pg_relation_sql_16 pg_relation_sql_16-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relation_sql_16-0.2.2-1PGSTY.el9.noarch.rpm
@ el10.x86_64 16 pg_relation_sql_16 pg_relation_sql_16-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relation_sql_16-0.2.2-1PGSTY.el10.noarch.rpm
@ el10.aarch64 16 pg_relation_sql_16 pg_relation_sql_16-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relation_sql_16-0.2.2-1PGSTY.el10.noarch.rpm
@ d12.x86_64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d12.aarch64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d13.x86_64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ d13.aarch64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ u22.x86_64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u22.aarch64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u24.x86_64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u24.aarch64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u26.x86_64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ u26.aarch64 16 postgresql-16-pg-relation-sql postgresql-16-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-16-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ el8.x86_64 15 pg_relation_sql_15 pg_relation_sql_15-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relation_sql_15-0.2.2-1PGSTY.el8.noarch.rpm
@ el8.aarch64 15 pg_relation_sql_15 pg_relation_sql_15-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relation_sql_15-0.2.2-1PGSTY.el8.noarch.rpm
@ el9.x86_64 15 pg_relation_sql_15 pg_relation_sql_15-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relation_sql_15-0.2.2-1PGSTY.el9.noarch.rpm
@ el9.aarch64 15 pg_relation_sql_15 pg_relation_sql_15-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relation_sql_15-0.2.2-1PGSTY.el9.noarch.rpm
@ el10.x86_64 15 pg_relation_sql_15 pg_relation_sql_15-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relation_sql_15-0.2.2-1PGSTY.el10.noarch.rpm
@ el10.aarch64 15 pg_relation_sql_15 pg_relation_sql_15-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relation_sql_15-0.2.2-1PGSTY.el10.noarch.rpm
@ d12.x86_64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d12.aarch64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d13.x86_64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ d13.aarch64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ u22.x86_64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u22.aarch64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u24.x86_64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u24.aarch64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u26.x86_64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ u26.aarch64 15 postgresql-15-pg-relation-sql postgresql-15-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-15-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ el8.x86_64 14 pg_relation_sql_14 pg_relation_sql_14-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_relation_sql_14-0.2.2-1PGSTY.el8.noarch.rpm
@ el8.aarch64 14 pg_relation_sql_14 pg_relation_sql_14-0.2.2-1PGSTY.el8.noarch.rpm pigsty 0.2.2 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_relation_sql_14-0.2.2-1PGSTY.el8.noarch.rpm
@ el9.x86_64 14 pg_relation_sql_14 pg_relation_sql_14-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_relation_sql_14-0.2.2-1PGSTY.el9.noarch.rpm
@ el9.aarch64 14 pg_relation_sql_14 pg_relation_sql_14-0.2.2-1PGSTY.el9.noarch.rpm pigsty 0.2.2 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_relation_sql_14-0.2.2-1PGSTY.el9.noarch.rpm
@ el10.x86_64 14 pg_relation_sql_14 pg_relation_sql_14-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_relation_sql_14-0.2.2-1PGSTY.el10.noarch.rpm
@ el10.aarch64 14 pg_relation_sql_14 pg_relation_sql_14-0.2.2-1PGSTY.el10.noarch.rpm pigsty 0.2.2 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_relation_sql_14-0.2.2-1PGSTY.el10.noarch.rpm
@ d12.x86_64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d12.aarch64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~bookworm_all.deb
@ d13.x86_64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ d13.aarch64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb pigsty 0.2.2 14.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~trixie_all.deb
@ u22.x86_64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u22.aarch64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~jammy_all.deb
@ u24.x86_64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u24.aarch64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~noble_all.deb
@ u26.x86_64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
@ u26.aarch64 14 postgresql-14-pg-relation-sql postgresql-14-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb pigsty 0.2.2 14.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-relation-sql/postgresql-14-pg-relation-sql_0.2.2-1PGSTY~resolute_all.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_relation_sql` using `pig build`:

```bash
pig build pkg pg_relation_sql         # build RPM / DEB packages
```


## Install

You can install `pg_relation_sql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install pg_relation_sql;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pg_relation_sql -v 18  # PG 18
pig ext install -y pg_relation_sql -v 17  # PG 17
pig ext install -y pg_relation_sql -v 16  # PG 16
pig ext install -y pg_relation_sql -v 15  # PG 15
pig ext install -y pg_relation_sql -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pg_relation_sql_18       # PG 18
dnf install -y pg_relation_sql_17       # PG 17
dnf install -y pg_relation_sql_16       # PG 16
dnf install -y pg_relation_sql_15       # PG 15
dnf install -y pg_relation_sql_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pg-relation-sql   # PG 18
apt install -y postgresql-17-pg-relation-sql   # PG 17
apt install -y postgresql-16-pg-relation-sql   # PG 16
apt install -y postgresql-15-pg-relation-sql   # PG 15
apt install -y postgresql-14-pg-relation-sql   # PG 14
```

> This extension does not require `CREATE EXTENSION`

## Usage

Sources:

- [pg_relation_sql 0.2.2 on PGXN](https://pgxn.org/dist/pg_relation_sql/0.2.2/)
- [pg_relation_sql 0.2.2 README](https://api.pgxn.org/src/pg_relation_sql/pg_relation_sql-0.2.2/README.md)
- [pg_relation_sql 0.2.2 SQL script](https://api.pgxn.org/src/pg_relation_sql/pg_relation_sql-0.2.2/relation_sql.sql)
- [pg_relation_sql 0.2.2 plan comparison](https://api.pgxn.org/src/pg_relation_sql/pg_relation_sql-0.2.2/EXPLAIN.md)

`pg_relation_sql` 0.2.2 generates pairs of SQL functions from PostgreSQL foreign keys: a lookup follows a reference, while a list function returns rows that point back. The generated `LANGUAGE sql` functions are designed to be inlined by the planner, allowing queries to navigate declared relations without repeating join conditions.

Upstream deliberately ships one standalone `relation_sql.sql` file rather than a control file. There is no `CREATE EXTENSION pg_relation_sql`; execute the packaged script in every database where the functions are needed.

```bash
psql app -f /usr/pgsql-17/share/pg_relation_sql/relation_sql.sql
psql app -f /usr/share/postgresql/17/pg_relation_sql/relation_sql.sql
```

The script creates `relation_sql(text)` in the current schema and finishes by requesting `relation_sql('install')`.

### Generate and Use Relations

```sql
CREATE TABLE profile (
  id bigint PRIMARY KEY,
  name text
);

CREATE TABLE address (
  id bigint PRIMARY KEY,
  profile_id bigint REFERENCES profile(id),
  city text
);

SELECT status, command FROM relation_sql('sync');

SELECT a.city, p.name
FROM address AS a, profile(a) AS p;

SELECT p.name, a.city
FROM profile AS p, address_list(p) AS a;
```

For each foreign key, the lookup function follows the referenced row and the reverse function uses a `_list` suffix unless the foreign key is one-to-one. Composite and cross-schema foreign keys are supported, and several foreign keys to the same target receive role-specific names.

### Generator Modes

- `relation_sql()` returns a status dashboard.
- `relation_sql('show')` reports the computed functions and ready-to-run synchronization commands without changing objects.
- `relation_sql('sync')` creates, replaces, or removes marked relation functions to match current foreign keys.
- `relation_sql('install')` adds a `ddl_command_end` event trigger and synchronizes immediately.
- `relation_sql('uninstall')` removes the event trigger; `relation_sql('drop')` removes generated functions.

### Operational Boundaries

- Creating the event trigger requires superuser privileges. Without them, installation emits a warning and the one-time synchronization still runs with the caller's object privileges.
- Install the generator in a trusted schema with a controlled `search_path`: automatic mode creates a `SECURITY DEFINER` event-trigger helper that preserves the installation-time path.
- Generated functions depend on table row types. Dropping a table whose row type is used by them can require `CASCADE`; inspect dependencies before destructive DDL.
- The generated bodies use `SELECT *`, so column-level `SELECT` grants do not combine cleanly with them. Row-level security continues to apply.
- Put relation functions in `FROM` for plan-sensitive queries. Attribute notation in a select list becomes a `ProjectSet`, and `NOT EXISTS (SELECT FROM relation_function(row))` can remain a correlated probe instead of becoming the equivalent anti-join.
- Queries depend on generated functions just as they depend on views. Run `relation_sql('sync')` in the migration path when not using the event trigger.
- Upstream requires PostgreSQL 11 or later; Pigsty packages cover PostgreSQL 14–18.
