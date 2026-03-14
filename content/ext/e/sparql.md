---
title: "sparql"
linkTitle: "sparql"
description: "Query SPARQL datasource with SQL"
weight: 4470
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/lacanoid/pgsparql">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">lacanoid/pgsparql</div>
    <div class="ext-card__desc">https://github.com/lacanoid/pgsparql</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgsparql-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgsparql-1.0.tar.gz</div>
    <div class="ext-card__desc">pgsparql-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgsparql`**](/ext/e/sparql) | `1.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4470  | [**`sparql`**](/ext/e/sparql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `sparql` |
{.ext-table}

| **Related** | [`plperl`](/ext/e/plperl) [`plperlu`](/ext/e/plperlu) [`pgjq`](/ext/e/pgjq) [`pgjwt`](/ext/e/pgjwt) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgsparql` | `plperl`, `plperlu` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `pgsparql_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgsparql` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el8.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el9.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| el10.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d12.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| d13.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u22.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u24.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 pgsparql_18 pgsparql_18-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsparql_18-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgsparql_18 pgsparql_18-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsparql_18-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgsparql_18 pgsparql_18-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsparql_18-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgsparql_18 pgsparql_18-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsparql_18-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgsparql_18 pgsparql_18-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsparql_18-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgsparql_18 pgsparql_18-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsparql_18-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgsparql postgresql-18-pgsparql_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-18-pgsparql_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 pgsparql_17 pgsparql_17-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsparql_17-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgsparql_17 pgsparql_17-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsparql_17-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgsparql_17 pgsparql_17-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsparql_17-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgsparql_17 pgsparql_17-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsparql_17-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgsparql_17 pgsparql_17-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsparql_17-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgsparql_17 pgsparql_17-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsparql_17-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgsparql postgresql-17-pgsparql_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-17-pgsparql_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 pgsparql_16 pgsparql_16-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsparql_16-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgsparql_16 pgsparql_16-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsparql_16-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgsparql_16 pgsparql_16-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsparql_16-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgsparql_16 pgsparql_16-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsparql_16-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgsparql_16 pgsparql_16-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsparql_16-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgsparql_16 pgsparql_16-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsparql_16-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgsparql postgresql-16-pgsparql_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-16-pgsparql_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 pgsparql_15 pgsparql_15-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsparql_15-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgsparql_15 pgsparql_15-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsparql_15-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgsparql_15 pgsparql_15-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsparql_15-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgsparql_15 pgsparql_15-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsparql_15-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgsparql_15 pgsparql_15-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsparql_15-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgsparql_15 pgsparql_15-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsparql_15-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgsparql postgresql-15-pgsparql_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-15-pgsparql_1.0-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 pgsparql_14 pgsparql_14-1.0-1PIGSTY.el8.x86_64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgsparql_14-1.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgsparql_14 pgsparql_14-1.0-1PIGSTY.el8.aarch64.rpm pigsty 1.0 17.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgsparql_14-1.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgsparql_14 pgsparql_14-1.0-1PIGSTY.el9.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgsparql_14-1.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgsparql_14 pgsparql_14-1.0-1PIGSTY.el9.aarch64.rpm pigsty 1.0 17.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgsparql_14-1.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgsparql_14 pgsparql_14-1.0-1PIGSTY.el10.x86_64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgsparql_14-1.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgsparql_14 pgsparql_14-1.0-1PIGSTY.el10.aarch64.rpm pigsty 1.0 17.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgsparql_14-1.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~trixie_amd64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~trixie_arm64.deb pigsty 1.0 10.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~jammy_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~jammy_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~noble_amd64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgsparql postgresql-14-pgsparql_1.0-1PIGSTY~noble_arm64.deb pigsty 1.0 10.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgsparql/postgresql-14-pgsparql_1.0-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgsparql` using `pig build`:

```bash
pig build pkg pgsparql         # build RPM / DEB packages
```


## Install

You can install `pgsparql` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgsparql;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgsparql -v 18  # PG 18
pig ext install -y pgsparql -v 17  # PG 17
pig ext install -y pgsparql -v 16  # PG 16
pig ext install -y pgsparql -v 15  # PG 15
pig ext install -y pgsparql -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgsparql_18       # PG 18
dnf install -y pgsparql_17       # PG 17
dnf install -y pgsparql_16       # PG 16
dnf install -y pgsparql_15       # PG 15
dnf install -y pgsparql_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgsparql   # PG 18
apt install -y postgresql-17-pgsparql   # PG 17
apt install -y postgresql-16-pgsparql   # PG 16
apt install -y postgresql-15-pgsparql   # PG 15
apt install -y postgresql-14-pgsparql   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION sparql CASCADE;  -- requires: plperl, plperlu
```




## Usage

> [sparql: SPARQL query support for PostgreSQL](https://github.com/lacanoid/pgsparql)

Query SPARQL endpoints (e.g., DBpedia/Virtuoso) from PostgreSQL. SPARQL queries are compiled into Postgres views for use in SQL.

### Get Properties of a Resource

```sql
SELECT * FROM sparql.get_properties('dbpedia', 'http://dbpedia.org/resource/Johann_Sebastian_Bach');
```

### Get References to a Resource

```sql
SELECT * FROM sparql.get_references('dbpedia', 'http://dbpedia.org/resource/Johann_Sebastian_Bach');
```

### Compile SPARQL Query into SQL View

```sql
SELECT sparql.compile_query(endpoint, identifier, sparql_query [, grouping]);
```

Parameters:
- `endpoint` -- default SPARQL endpoint name
- `identifier` -- SQL identifier for the created function and view
- `sparql_query` -- the SPARQL query to compile
- `grouping` -- optional array of identifiers to group by (non-grouped columns are aggregated into arrays)

### Example

```sql
SELECT sparql.compile_query('dbpedia', 'ludwig_van', $$
  SELECT ?predicate, ?object
  WHERE {
    <http://dbpedia.org/resource/Ludwig_van_Beethoven> ?predicate ?object.
  }
$$, '{predicate}');

-- Now query via the created view
SELECT * FROM ludwig_van;
```

This creates a function `ludwig_van()` and a view `ludwig_van` that queries the SPARQL endpoint and returns results as a SQL table.
