---
title: "pgrdf"
linkTitle: "pgrdf"
description: "RDF, SPARQL, SHACL, and OWL reasoning for PostgreSQL"
weight: 2640
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/styk-tv/pgRDF">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">styk-tv/pgRDF</div>
    <div class="ext-card__desc">https://github.com/styk-tv/pgRDF</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgrdf-0.6.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgrdf-0.6.4.tar.gz</div>
    <div class="ext-card__desc">pgrdf-0.6.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgrdf`**](/ext/e/pgrdf) | `0.6.4` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2640  | [**`pgrdf`**](/ext/e/pgrdf) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgrdf` |
{.ext-table}

| **Related** | [`rdf_fdw`](/ext/e/rdf_fdw) [`pg_sparql`](/ext/e/pg_sparql) [`rdkit`](/ext/e/rdkit) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> PG14-17 only; production hook/cache deployments should preload pgrdf; pgrx patched to 0.18.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.4` | {{< pgvers "14,15,16,17" >}} | `pgrdf` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.4` | {{< pgvers "14,15,16,17" >}} | `pgrdf_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.4` | {{< pgvers "14,15,16,17" >}} | `postgresql-$v-pgrdf` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el8.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el9.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el9.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el10.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| el10.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| d12.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| d12.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| d13.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| d13.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| u22.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| u22.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| u24.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| u24.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| u26.x86_64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
| u26.aarch64 | MISS PIGSTY - 0 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 | AVAIL PIGSTY 0.6.4 1 |
@ el8.x86_64 17 pgrdf_17 pgrdf_17-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 7.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_17-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgrdf_17 pgrdf_17-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_17-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgrdf_17 pgrdf_17-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_17-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgrdf_17 pgrdf_17-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_17-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgrdf_17 pgrdf_17-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_17-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgrdf_17 pgrdf_17-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_17-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgrdf_16 pgrdf_16-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 7.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_16-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgrdf_16 pgrdf_16-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_16-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgrdf_16 pgrdf_16-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_16-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgrdf_16 pgrdf_16-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_16-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgrdf_16 pgrdf_16-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_16-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgrdf_16 pgrdf_16-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_16-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgrdf_15 pgrdf_15-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 7.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_15-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgrdf_15 pgrdf_15-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 6.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_15-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgrdf_15 pgrdf_15-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_15-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgrdf_15 pgrdf_15-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 7.0MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_15-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgrdf_15 pgrdf_15-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_15-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgrdf_15 pgrdf_15-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_15-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgrdf_14 pgrdf_14-0.6.4-1PIGSTY.el8.x86_64.rpm pigsty 0.6.4 7.4MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_14-0.6.4-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgrdf_14 pgrdf_14-0.6.4-1PIGSTY.el8.aarch64.rpm pigsty 0.6.4 6.7MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_14-0.6.4-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgrdf_14 pgrdf_14-0.6.4-1PIGSTY.el9.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_14-0.6.4-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgrdf_14 pgrdf_14-0.6.4-1PIGSTY.el9.aarch64.rpm pigsty 0.6.4 6.9MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_14-0.6.4-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgrdf_14 pgrdf_14-0.6.4-1PIGSTY.el10.x86_64.rpm pigsty 0.6.4 7.1MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_14-0.6.4-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgrdf_14 pgrdf_14-0.6.4-1PIGSTY.el10.aarch64.rpm pigsty 0.6.4 6.9MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_14-0.6.4-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb pigsty 0.6.4 5.2MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb pigsty 0.6.4 6.4MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb pigsty 0.6.4 6.0MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.4-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgrdf` using `pig build`:

```bash
pig build pkg pgrdf         # build RPM / DEB packages
```


## Install

You can install `pgrdf` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgrdf;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgrdf -v 17  # PG 17
pig ext install -y pgrdf -v 16  # PG 16
pig ext install -y pgrdf -v 15  # PG 15
pig ext install -y pgrdf -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgrdf_17       # PG 17
dnf install -y pgrdf_16       # PG 16
dnf install -y pgrdf_15       # PG 15
dnf install -y pgrdf_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-17-pgrdf   # PG 17
apt install -y postgresql-16-pgrdf   # PG 16
apt install -y postgresql-15-pgrdf   # PG 15
apt install -y postgresql-14-pgrdf   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Preload**:

```bash
shared_preload_libraries = 'pgrdf';
```


**Create Extension**:

```sql
CREATE EXTENSION pgrdf;
```

## Usage

> Sources: [pgRDF upstream README](https://github.com/styk-tv/pgRDF), [pgRDF user guide](https://github.com/styk-tv/pgRDF/tree/main/guide), [local metadata](../db/extension.csv).

`pgRDF` stores RDF data inside PostgreSQL and exposes SQL-callable helpers for Turtle/TriG/N-Quads loading, SPARQL query/update, named graphs, SHACL validation, and RDFS/OWL 2 RL materialization.

```sql
CREATE EXTENSION pgrdf;
SELECT pgrdf.version();
```

### Preload And PostgreSQL Version Caveat

The local Pigsty metadata packages `pgrdf` for PostgreSQL 14, 15, 16, and 17 only. Upstream also documents PostgreSQL 14-17 support and defers PostgreSQL 18 while it remains pinned to `pgrx` 0.16.

`pgrdf` must be present in `shared_preload_libraries` before PostgreSQL starts. Without preload, upstream documents that the shared-memory dictionary and plan-cache atomics are not initialized and the first pgRDF call can fail.

```conf
shared_preload_libraries = 'pgrdf'
```

Restart PostgreSQL after changing this setting, then verify:

```sql
SHOW shared_preload_libraries;

SELECT pgrdf.parse_turtle(
  '@prefix ex: <http://example.org/> . ex:t a ex:T .',
  1::bigint,
  'http://example.org/'
);
```

### Load RDF

Use `parse_turtle` for inline Turtle payloads and `load_turtle` for server-side files. Graph ids are `bigint` values; named graph helpers map ids to IRIs.

```sql
SELECT pgrdf.add_graph(100::bigint, 'http://example.org/graph/main');

SELECT pgrdf.parse_turtle(
  '@prefix ex: <http://example.org/> .
   ex:alice ex:knows ex:bob .
   ex:alice ex:name "Alice" .',
  100::bigint,
  'http://example.org/graph/main'
);

SELECT pgrdf.load_turtle('/srv/rdf/foaf.ttl', 100::bigint);
SELECT pgrdf.count_quads(100::bigint);
```

Related ingest and graph-management functions documented upstream include `parse_trig`, `parse_nquads`, `add_graph`, `drop`, `clear`, `copy`, `move_graph`, `graph_id`, and `graph_iri`.

### Query With SPARQL

`pgrdf.sparql(text)` returns SPARQL results as SQL rows. The upstream v0.5 surface includes `SELECT` and `ASK`, filters, ordering, limits, `OPTIONAL`, `UNION`, `MINUS`, aggregates, `VALUES`, `BIND`, `CONSTRUCT`, `DESCRIBE`, named-graph `GRAPH` clauses, and property paths.

```sql
SELECT *
FROM pgrdf.sparql(
  'PREFIX ex: <http://example.org/>
   SELECT ?person ?name
   WHERE {
     ?person ex:name ?name .
     FILTER(REGEX(?name, "^A", "i"))
   }
   ORDER BY ?name
   LIMIT 20'
);
```

Named-graph queries can bind graph IRIs:

```sql
SELECT *
FROM pgrdf.sparql(
  'PREFIX ex: <http://example.org/>
   SELECT ?g (COUNT(*) AS ?n)
   WHERE { GRAPH ?g { ?s ex:name ?name } }
   GROUP BY ?g
   ORDER BY ?g'
);
```

### Update Graphs

The upstream v0.5 surface includes SPARQL Update forms such as `INSERT DATA`, `DELETE DATA`, `INSERT/DELETE WHERE`, `DELETE+INSERT WHERE`, and graph lifecycle statements.

```sql
SELECT pgrdf.sparql(
  'PREFIX ex: <http://example.org/>
   INSERT DATA {
     GRAPH <http://example.org/graph/main> {
       ex:bob ex:name "Bob" .
     }
   }'
);
```

### Reasoning And Validation

Use `pgrdf.materialize(graph_id, profile)` to write inferred triples for `rdfs` or `owl-rl` profiles. Materialization is intended to be repeatable; upstream documents that previous inferred rows are dropped before writing the new closure.

```sql
SELECT pgrdf.parse_turtle(
  '@prefix ex:   <http://example.com/> .
   @prefix rdf:  <http://www.w3.org/1999/02/22-rdf-syntax-ns#> .
   @prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#> .
   ex:Engineer rdfs:subClassOf ex:Person .
   ex:Person   rdfs:subClassOf ex:Agent .
   ex:alice    rdf:type        ex:Engineer .',
  100::bigint
);

SELECT pgrdf.materialize(100::bigint, 'owl-rl');

SELECT *
FROM pgrdf.sparql(
  'PREFIX rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>
   PREFIX ex:  <http://example.com/>
   SELECT ?class WHERE { ex:alice rdf:type ?class }'
);
```

Use `pgrdf.validate(data, shapes, mode)` for SHACL validation; upstream documents JSONB `sh:ValidationReport` output and native SHACL Core support. SHACL-SPARQL constraint execution is documented upstream as gated by its RDF library dependency, so treat `mode => 'sparql'` as an advanced surface to verify against the exact installed version.

### Operational Helpers

Useful introspection and cache-management helpers documented upstream include:

| Function | Use |
|----------|-----|
| `pgrdf.stats()` | Inspect runtime counters and cache state |
| `pgrdf.shmem_reset()` | Reset shared-memory dictionary/cache state |
| `pgrdf.plan_cache_clear()` | Clear prepared SPARQL plan cache |
| `pgrdf.sparql_parse(text)` | Inspect parsed SPARQL without executing it |

The `pgrdf.path_max_depth` setting guards property-path expansion depth.
