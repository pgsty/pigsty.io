---
title: "pg_graphql"
linkTitle: "pg_graphql"
description: "Add in-database GraphQL support"
weight: 2740
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/supabase/pg_graphql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">supabase/pg_graphql</div>
    <div class="ext-card__desc">https://github.com/supabase/pg_graphql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_graphql-1.6.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_graphql-1.6.1.tar.gz</div>
    <div class="ext-card__desc">pg_graphql-1.6.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_graphql`**](/ext/e/pg_graphql) | `1.6.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2740  | [**`pg_graphql`**](/ext/e/pg_graphql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `graphql` |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`pg_jsonschema`](/ext/e/pg_jsonschema) [`jsquery`](/ext/e/jsquery) [`pg_net`](/ext/e/pg_net) [`http`](/ext/e/http) [`pg_summarize`](/ext/e/pg_summarize) [`pg_tiktoken`](/ext/e/pg_tiktoken) [`wrappers`](/ext/e/wrappers) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> not an official release by Vonng; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_graphql` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6.1` | {{< pgvers "18,17,16,15,14" >}} | `pg_graphql_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.6.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-graphql` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| el8.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| el9.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| el9.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| el10.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| el10.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| d12.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| d12.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| d13.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| d13.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| u22.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| u22.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| u24.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| u24.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| u26.x86_64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
| u26.aarch64 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 | AVAIL PIGSTY 1.6.1 1 |
@ el8.x86_64 18 pg_graphql_18 pg_graphql_18-1.6.1-1PIGSTY.el8.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_graphql_18-1.6.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pg_graphql_18 pg_graphql_18-1.6.1-1PIGSTY.el8.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_graphql_18-1.6.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pg_graphql_18 pg_graphql_18-1.6.1-1PIGSTY.el9.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_graphql_18-1.6.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pg_graphql_18 pg_graphql_18-1.6.1-1PIGSTY.el9.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_graphql_18-1.6.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pg_graphql_18 pg_graphql_18-1.6.1-1PIGSTY.el10.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_graphql_18-1.6.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pg_graphql_18 pg_graphql_18-1.6.1-1PIGSTY.el10.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_graphql_18-1.6.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb pigsty 1.6.1 937.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb pigsty 1.6.1 937.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pg-graphql postgresql-18-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-18-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pg_graphql_17 pg_graphql_17-1.6.1-1PIGSTY.el8.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_graphql_17-1.6.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pg_graphql_17 pg_graphql_17-1.6.1-1PIGSTY.el8.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_graphql_17-1.6.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pg_graphql_17 pg_graphql_17-1.6.1-1PIGSTY.el9.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_graphql_17-1.6.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pg_graphql_17 pg_graphql_17-1.6.1-1PIGSTY.el9.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_graphql_17-1.6.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pg_graphql_17 pg_graphql_17-1.6.1-1PIGSTY.el10.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_graphql_17-1.6.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pg_graphql_17 pg_graphql_17-1.6.1-1PIGSTY.el10.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_graphql_17-1.6.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb pigsty 1.6.1 935.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb pigsty 1.6.1 936.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pg-graphql postgresql-17-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-17-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pg_graphql_16 pg_graphql_16-1.6.1-1PIGSTY.el8.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_graphql_16-1.6.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pg_graphql_16 pg_graphql_16-1.6.1-1PIGSTY.el8.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_graphql_16-1.6.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pg_graphql_16 pg_graphql_16-1.6.1-1PIGSTY.el9.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_graphql_16-1.6.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pg_graphql_16 pg_graphql_16-1.6.1-1PIGSTY.el9.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_graphql_16-1.6.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pg_graphql_16 pg_graphql_16-1.6.1-1PIGSTY.el10.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_graphql_16-1.6.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pg_graphql_16 pg_graphql_16-1.6.1-1PIGSTY.el10.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_graphql_16-1.6.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb pigsty 1.6.1 934.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb pigsty 1.6.1 936.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pg-graphql postgresql-16-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-16-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pg_graphql_15 pg_graphql_15-1.6.1-1PIGSTY.el8.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_graphql_15-1.6.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pg_graphql_15 pg_graphql_15-1.6.1-1PIGSTY.el8.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_graphql_15-1.6.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pg_graphql_15 pg_graphql_15-1.6.1-1PIGSTY.el9.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_graphql_15-1.6.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pg_graphql_15 pg_graphql_15-1.6.1-1PIGSTY.el9.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_graphql_15-1.6.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pg_graphql_15 pg_graphql_15-1.6.1-1PIGSTY.el10.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_graphql_15-1.6.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pg_graphql_15 pg_graphql_15-1.6.1-1PIGSTY.el10.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_graphql_15-1.6.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb pigsty 1.6.1 930.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb pigsty 1.6.1 932.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pg-graphql postgresql-15-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-15-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pg_graphql_14 pg_graphql_14-1.6.1-1PIGSTY.el8.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pg_graphql_14-1.6.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pg_graphql_14 pg_graphql_14-1.6.1-1PIGSTY.el8.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pg_graphql_14-1.6.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pg_graphql_14 pg_graphql_14-1.6.1-1PIGSTY.el9.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pg_graphql_14-1.6.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pg_graphql_14 pg_graphql_14-1.6.1-1PIGSTY.el9.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pg_graphql_14-1.6.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pg_graphql_14 pg_graphql_14-1.6.1-1PIGSTY.el10.x86_64.rpm pigsty 1.6.1 1.3MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pg_graphql_14-1.6.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pg_graphql_14 pg_graphql_14-1.6.1-1PIGSTY.el10.aarch64.rpm pigsty 1.6.1 1.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pg_graphql_14-1.6.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb pigsty 1.6.1 928.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb pigsty 1.6.1 929.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb pigsty 1.6.1 1.2MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pg-graphql postgresql-14-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb pigsty 1.6.1 1.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pg-graphql/postgresql-14-pg-graphql_1.6.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pg_graphql` using `pig build`:

```bash
pig build pkg pg_graphql         # build RPM / DEB packages
```


## Install

You can install `pg_graphql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_graphql;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_graphql -v 18  # PG 18
pig ext install -y pg_graphql -v 17  # PG 17
pig ext install -y pg_graphql -v 16  # PG 16
pig ext install -y pg_graphql -v 15  # PG 15
pig ext install -y pg_graphql -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_graphql_18       # PG 18
dnf install -y pg_graphql_17       # PG 17
dnf install -y pg_graphql_16       # PG 16
dnf install -y pg_graphql_15       # PG 15
dnf install -y pg_graphql_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-graphql   # PG 18
apt install -y postgresql-17-pg-graphql   # PG 17
apt install -y postgresql-16-pg-graphql   # PG 16
apt install -y postgresql-15-pg-graphql   # PG 15
apt install -y postgresql-14-pg-graphql   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_graphql;
```




## Usage

> [pg_graphql: Add in-database GraphQL support](https://github.com/supabase/pg_graphql)

`pg_graphql` reflects a GraphQL schema from your existing SQL schema, enabling GraphQL queries directly inside PostgreSQL without additional servers or middleware.

### Schema Reflection

Tables, foreign keys, and enums are automatically mapped to GraphQL types:

```sql
CREATE TABLE account (
    id serial PRIMARY KEY,
    email varchar(255) NOT NULL,
    created_at timestamp NOT NULL
);

CREATE TABLE blog (
    id serial PRIMARY KEY,
    owner_id integer NOT NULL REFERENCES account(id),
    name varchar(255) NOT NULL,
    description varchar(255)
);

CREATE TYPE blog_post_status AS ENUM ('PENDING', 'RELEASED');

CREATE TABLE blog_post (
    id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    blog_id integer NOT NULL REFERENCES blog(id),
    title varchar(255) NOT NULL,
    body varchar(10000),
    status blog_post_status NOT NULL,
    created_at timestamp NOT NULL
);
```

This schema automatically generates GraphQL types (`Account`, `Blog`, `BlogPost`) with relationships derived from foreign keys.

### Name Inflection

Enable automatic snake_case to camelCase/PascalCase conversion:

```sql
COMMENT ON SCHEMA public IS e'@graphql({"inflect_names": true})';
```

### Querying

Execute a GraphQL query via the `graphql.resolve` function:

```sql
SELECT graphql.resolve($$
    {
      accountCollection(first: 1) {
        edges {
          node {
            id
            email
            blogCollection {
              edges {
                node {
                  name
                  blogPostCollection(filter: { status: { eq: RELEASED } }) {
                    edges {
                      node {
                        title
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
$$);
```

### Features

- Table queries appear as pageable collections on the root `Query` type
- Foreign key relationships create nested query fields automatically
- Mutations support bulk insert, update, and delete
- Filtering, ordering, and pagination are built in
- PostgreSQL Row-Level Security (RLS) policies are respected
