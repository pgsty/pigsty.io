---
title: "pg_query_rewrite"
linkTitle: "pg_query_rewrite"
description: "Rewrite SQL statements with a PostgreSQL ProcessUtility hook"
weight: 5030
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pierreforstmann/pg_query_rewrite">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pierreforstmann/pg_query_rewrite</div>
    <div class="ext-card__desc">https://github.com/pierreforstmann/pg_query_rewrite</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_query_rewrite-0.0.5.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_query_rewrite-0.0.5.tar.gz</div>
    <div class="ext-card__desc">pg_query_rewrite-0.0.5.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_query_rewrite`**](/ext/e/pg_query_rewrite) | `0.0.5` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5030  | [**`pg_query_rewrite`**](/ext/e/pg_query_rewrite) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_fsql`](/ext/e/pg_fsql) [`ddlx`](/ext/e/ddlx) [`pg_readme`](/ext/e/pg_readme) [`pglinter`](/ext/e/pglinter) [`omni_sql`](/ext/e/omni_sql) [`pg_variables`](/ext/e/pg_variables) [`pre_prepare`](/ext/e/pre_prepare) [`plan_filter`](/ext/e/plan_filter) [`pg_hint_plan`](/ext/e/pg_hint_plan) [`pgdd`](/ext/e/pgdd) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Requires shared_preload_libraries=pg_query_rewrite.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_query_rewrite` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.5` | {{< pgvers "18,17,16,15,14" >}} | `pg_query_rewrite_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.0.5` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-query-rewrite` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el8.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el9.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el9.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el10.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| el10.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d12.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d12.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d13.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| d13.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u22.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u22.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u24.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u24.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u26.x86_64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
| u26.aarch64 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 | AVAIL PIGSTY 0.0.5 1 |
@ el8.x86_64 18 pg_query_rewrite_18 pg_query_rewrite_18-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_query_rewrite_18-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_query_rewrite_18 pg_query_rewrite_18-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_query_rewrite_18-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_query_rewrite_18 pg_query_rewrite_18-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 18.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_query_rewrite_18-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_query_rewrite_18 pg_query_rewrite_18-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_query_rewrite_18-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_query_rewrite_18 pg_query_rewrite_18-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_query_rewrite_18-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_query_rewrite_18 pg_query_rewrite_18-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 19.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_query_rewrite_18-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 24.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 25.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 25.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 25.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 25.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-query-rewrite postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 25.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-18-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_query_rewrite_17 pg_query_rewrite_17-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_query_rewrite_17-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_query_rewrite_17 pg_query_rewrite_17-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_query_rewrite_17-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_query_rewrite_17 pg_query_rewrite_17-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_query_rewrite_17-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_query_rewrite_17 pg_query_rewrite_17-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_query_rewrite_17-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_query_rewrite_17 pg_query_rewrite_17-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_query_rewrite_17-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_query_rewrite_17 pg_query_rewrite_17-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 19.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_query_rewrite_17-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 24.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 24.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 31.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 31.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 25.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 25.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-query-rewrite postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 25.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-17-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_query_rewrite_16 pg_query_rewrite_16-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_query_rewrite_16-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_query_rewrite_16 pg_query_rewrite_16-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_query_rewrite_16-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_query_rewrite_16 pg_query_rewrite_16-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_query_rewrite_16-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_query_rewrite_16 pg_query_rewrite_16-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_query_rewrite_16-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_query_rewrite_16 pg_query_rewrite_16-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_query_rewrite_16-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_query_rewrite_16 pg_query_rewrite_16-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 19.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_query_rewrite_16-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 24.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 24.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 30.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 30.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 25.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 25.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-query-rewrite postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 25.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-16-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_query_rewrite_15 pg_query_rewrite_15-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_query_rewrite_15-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_query_rewrite_15 pg_query_rewrite_15-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 19.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_query_rewrite_15-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_query_rewrite_15 pg_query_rewrite_15-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_query_rewrite_15-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_query_rewrite_15 pg_query_rewrite_15-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_query_rewrite_15-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_query_rewrite_15 pg_query_rewrite_15-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_query_rewrite_15-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_query_rewrite_15 pg_query_rewrite_15-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 19.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_query_rewrite_15-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 24.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 24.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 24.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 30.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 30.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 25.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 25.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-query-rewrite postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 25.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-15-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_query_rewrite_14 pg_query_rewrite_14-0.0.5-1PIGSTY.el8.x86_64.rpm pigsty 0.0.5 18.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_query_rewrite_14-0.0.5-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_query_rewrite_14 pg_query_rewrite_14-0.0.5-1PIGSTY.el8.aarch64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_query_rewrite_14-0.0.5-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_query_rewrite_14 pg_query_rewrite_14-0.0.5-1PIGSTY.el9.x86_64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_query_rewrite_14-0.0.5-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_query_rewrite_14 pg_query_rewrite_14-0.0.5-1PIGSTY.el9.aarch64.rpm pigsty 0.0.5 18.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_query_rewrite_14-0.0.5-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_query_rewrite_14 pg_query_rewrite_14-0.0.5-1PIGSTY.el10.x86_64.rpm pigsty 0.0.5 19.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_query_rewrite_14-0.0.5-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_query_rewrite_14 pg_query_rewrite_14-0.0.5-1PIGSTY.el10.aarch64.rpm pigsty 0.0.5 19.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_query_rewrite_14-0.0.5-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb pigsty 0.0.5 23.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb pigsty 0.0.5 23.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb pigsty 0.0.5 23.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb pigsty 0.0.5 23.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb pigsty 0.0.5 28.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb pigsty 0.0.5 28.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb pigsty 0.0.5 24.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb pigsty 0.0.5 24.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb pigsty 0.0.5 24.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-query-rewrite postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb pigsty 0.0.5 24.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-query-rewrite/postgresql-14-pg-query-rewrite_0.0.5-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_query_rewrite` using `pig build`:

```bash
pig build pkg pg_query_rewrite         # build RPM / DEB packages
```


## Install

You can install `pg_query_rewrite` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_query_rewrite;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_query_rewrite -v 18  # PG 18
pig ext install -y pg_query_rewrite -v 17  # PG 17
pig ext install -y pg_query_rewrite -v 16  # PG 16
pig ext install -y pg_query_rewrite -v 15  # PG 15
pig ext install -y pg_query_rewrite -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_query_rewrite_18       # PG 18
dnf install -y pg_query_rewrite_17       # PG 17
dnf install -y pg_query_rewrite_16       # PG 16
dnf install -y pg_query_rewrite_15       # PG 15
dnf install -y pg_query_rewrite_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-query-rewrite   # PG 18
apt install -y postgresql-17-pg-query-rewrite   # PG 17
apt install -y postgresql-16-pg-query-rewrite   # PG 16
apt install -y postgresql-15-pg-query-rewrite   # PG 15
apt install -y postgresql-14-pg-query-rewrite   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pg_query_rewrite';
```


**Create Extension**:

```sql
CREATE EXTENSION pg_query_rewrite;
```




## Usage

Source: [README](https://github.com/pierreforstmann/pg_query_rewrite/blob/master/README.md)

`pg_query_rewrite` rewrites an exact source SQL statement into a predefined target statement using rules stored in shared memory.

### Required setup

```sql
-- postgresql.conf
shared_preload_libraries = 'pg_query_rewrite'
pg_query_rewrite.max_rules = 10

CREATE EXTENSION pg_query_rewrite;
```

### Rule management

```sql
SELECT pgqr_add_rule('select 10;', 'select 11;');
SELECT pgqr_rules();
SELECT pgqr_remove_rule('select 10;');
SELECT pgqr_truncate();
```

- `pgqr_add_rule(source, target)`: add a rewrite rule.
- `pgqr_remove_rule(source)`: remove one rule.
- `pgqr_truncate()`: remove all rules.
- `pgqr_rules()`: inspect current shared-memory rules and rewrite counts.

### Caveats

- Matching is exact: case, whitespace, and semicolons must match character-for-character.
- Parameterized SQL is not supported.
- Maximum statement length is hard-coded at 32 KB.
- Rules are not persisted; they vanish on restart unless you reapply them.
