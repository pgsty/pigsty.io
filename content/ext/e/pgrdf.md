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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgrdf-0.6.40.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgrdf-0.6.40.tar.gz</div>
    <div class="ext-card__desc">pgrdf-0.6.40.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgrdf`**](/ext/e/pgrdf) | `0.6.40` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2640  | [**`pgrdf`**](/ext/e/pgrdf) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pgrdf` |
{.ext-table}

| **Related** | [`sparql`](/ext/e/sparql) [`rdf_fdw`](/ext/e/rdf_fdw) [`age`](/ext/e/age) [`pg_liquid`](/ext/e/pg_liquid) [`onesparse`](/ext/e/onesparse) [`graph`](/ext/e/graph) [`ltree`](/ext/e/ltree) [`xml2`](/ext/e/xml2) [`plxslt`](/ext/e/plxslt) [`omni_xml`](/ext/e/omni_xml) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Production hook/cache deployments should preload pgrdf.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.40` | {{< pgvers "18,17,16,15,14" >}} | `pgrdf` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.40` | {{< pgvers "18,17,16,15,14" >}} | `pgrdf_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.6.40` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgrdf` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| el8.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| el9.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| el9.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| el10.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| el10.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| d12.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| d12.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| d13.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| d13.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| u22.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| u22.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| u24.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| u24.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| u26.x86_64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
| u26.aarch64 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 | AVAIL PIGSTY 0.6.39 1 |
@ el8.x86_64 18 pgrdf_18 pgrdf_18-0.6.39-1PGSTY.el8.x86_64.rpm pigsty 0.6.39 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_18-0.6.39-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgrdf_18 pgrdf_18-0.6.39-1PGSTY.el8.aarch64.rpm pigsty 0.6.39 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_18-0.6.39-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgrdf_18 pgrdf_18-0.6.39-1PGSTY.el9.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_18-0.6.39-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgrdf_18 pgrdf_18-0.6.39-1PGSTY.el9.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_18-0.6.39-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgrdf_18 pgrdf_18-0.6.39-1PGSTY.el10.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_18-0.6.39-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgrdf_18 pgrdf_18-0.6.39-1PGSTY.el10.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_18-0.6.39-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb pigsty 0.6.39 6.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~noble_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~noble_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pgrdf postgresql-18-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb pigsty 0.6.39 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-18-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgrdf_17 pgrdf_17-0.6.39-1PGSTY.el8.x86_64.rpm pigsty 0.6.39 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_17-0.6.39-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgrdf_17 pgrdf_17-0.6.39-1PGSTY.el8.aarch64.rpm pigsty 0.6.39 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_17-0.6.39-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgrdf_17 pgrdf_17-0.6.39-1PGSTY.el9.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_17-0.6.39-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgrdf_17 pgrdf_17-0.6.39-1PGSTY.el9.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_17-0.6.39-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgrdf_17 pgrdf_17-0.6.39-1PGSTY.el10.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_17-0.6.39-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgrdf_17 pgrdf_17-0.6.39-1PGSTY.el10.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_17-0.6.39-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb pigsty 0.6.39 6.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~noble_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~noble_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pgrdf postgresql-17-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb pigsty 0.6.39 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-17-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgrdf_16 pgrdf_16-0.6.39-1PGSTY.el8.x86_64.rpm pigsty 0.6.39 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_16-0.6.39-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgrdf_16 pgrdf_16-0.6.39-1PGSTY.el8.aarch64.rpm pigsty 0.6.39 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_16-0.6.39-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgrdf_16 pgrdf_16-0.6.39-1PGSTY.el9.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_16-0.6.39-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgrdf_16 pgrdf_16-0.6.39-1PGSTY.el9.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_16-0.6.39-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgrdf_16 pgrdf_16-0.6.39-1PGSTY.el10.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_16-0.6.39-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgrdf_16 pgrdf_16-0.6.39-1PGSTY.el10.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_16-0.6.39-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb pigsty 0.6.39 6.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~noble_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~noble_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pgrdf postgresql-16-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb pigsty 0.6.39 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-16-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgrdf_15 pgrdf_15-0.6.39-1PGSTY.el8.x86_64.rpm pigsty 0.6.39 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_15-0.6.39-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgrdf_15 pgrdf_15-0.6.39-1PGSTY.el8.aarch64.rpm pigsty 0.6.39 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_15-0.6.39-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgrdf_15 pgrdf_15-0.6.39-1PGSTY.el9.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_15-0.6.39-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgrdf_15 pgrdf_15-0.6.39-1PGSTY.el9.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_15-0.6.39-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgrdf_15 pgrdf_15-0.6.39-1PGSTY.el10.x86_64.rpm pigsty 0.6.39 6.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_15-0.6.39-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgrdf_15 pgrdf_15-0.6.39-1PGSTY.el10.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_15-0.6.39-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb pigsty 0.6.39 6.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~noble_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~noble_arm64.deb pigsty 0.6.39 5.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pgrdf postgresql-15-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb pigsty 0.6.39 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-15-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgrdf_14 pgrdf_14-0.6.39-1PGSTY.el8.x86_64.rpm pigsty 0.6.39 6.8MiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgrdf_14-0.6.39-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgrdf_14 pgrdf_14-0.6.39-1PGSTY.el8.aarch64.rpm pigsty 0.6.39 6.0MiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgrdf_14-0.6.39-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgrdf_14 pgrdf_14-0.6.39-1PGSTY.el9.x86_64.rpm pigsty 0.6.39 6.6MiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgrdf_14-0.6.39-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgrdf_14 pgrdf_14-0.6.39-1PGSTY.el9.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgrdf_14-0.6.39-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgrdf_14 pgrdf_14-0.6.39-1PGSTY.el10.x86_64.rpm pigsty 0.6.39 6.5MiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgrdf_14-0.6.39-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgrdf_14 pgrdf_14-0.6.39-1PGSTY.el10.aarch64.rpm pigsty 0.6.39 6.2MiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgrdf_14-0.6.39-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb pigsty 0.6.39 5.1MiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb pigsty 0.6.39 6.2MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb pigsty 0.6.39 5.8MiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~noble_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~noble_arm64.deb pigsty 0.6.39 5.7MiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb pigsty 0.6.39 6.1MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pgrdf postgresql-14-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb pigsty 0.6.39 5.7MiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pgrdf/postgresql-14-pgrdf_0.6.39-1PGSTY~resolute_arm64.deb
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install pgrdf;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y pgrdf -v 18  # PG 18
pig ext install -y pgrdf -v 17  # PG 17
pig ext install -y pgrdf -v 16  # PG 16
pig ext install -y pgrdf -v 15  # PG 15
pig ext install -y pgrdf -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y pgrdf_18       # PG 18
dnf install -y pgrdf_17       # PG 17
dnf install -y pgrdf_16       # PG 16
dnf install -y pgrdf_15       # PG 15
dnf install -y pgrdf_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-pgrdf   # PG 18
apt install -y postgresql-17-pgrdf   # PG 17
apt install -y postgresql-16-pgrdf   # PG 16
apt install -y postgresql-15-pgrdf   # PG 15
apt install -y postgresql-14-pgrdf   # PG 14
```


**Preload**:

```bash
shared_preload_libraries = 'pgrdf';
```


**Create Extension**:

```sql
CREATE EXTENSION pgrdf;
```

## Usage

Sources:

- [0.6.40 release](https://github.com/styk-tv/pgRDF/releases/tag/v0.6.40)
- [pgrdf.control](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/pgrdf.control)
- [README.md](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/README.md)
- [Cargo.toml](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/Cargo.toml)
- [guide/01-install.md](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/guide/01-install.md)
- [guide/tour.md](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/guide/tour.md)
- [guide/05-graphs.md](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/guide/05-graphs.md)
- [guide/06-validation-recipes.md](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/guide/06-validation-recipes.md)
- [0.6.39 to 0.6.40 upgrade](https://github.com/styk-tv/pgRDF/blob/eefe44a459407c0d391b44baebe8905baaf7f9de/sql/pgrdf--0.6.39--0.6.40.sql)

`pgrdf` 0.6.40 stores RDF graphs in PostgreSQL with Turtle/TriG/N-Quads ingestion, SPARQL queries and updates, SHACL validation, and RDFS/OWL reasoning. Preload `pgrdf` and restart before creating the extension as a superuser.

### Core Workflow

```ini
shared_preload_libraries = 'pgrdf'
```

```sql
CREATE EXTENSION pgrdf;
SELECT pgrdf.add_graph('http://example.org/people');
SELECT pgrdf.parse_turtle(
  '@prefix ex: <http://example.org/> . ex:alice ex:name "Alice" .',
  pgrdf.graph_id('http://example.org/people'));
SELECT * FROM pgrdf.sparql('SELECT ?s ?p ?o WHERE { ?s ?p ?o } LIMIT 10');
SELECT * FROM pgrdf.surface();
```

### Operational Boundaries

The fixed `pgrdf` schema provides `add_graph`, `graph_id`, `parse_turtle`, `load_turtle`, `sparql`, `materialize`, `validate`, `stats` and `surface`. File loaders read server-side paths; grant access deliberately. `can_clear_graphs()` reports graph-clear privileges. Non-owner graph writes require the documented underlying table grants; graph locks still apply. `shacl_capability()` reports the supported validation surface, and path-depth/truncation settings bound traversal. Source features cover PostgreSQL 14–18; published Linux binaries target PG18. Version 0.6.39 allocates graph IDs from a non-reusing sequence; the IRI is the graph identity, and gaps are normal. After installing the matching library, run `ALTER EXTENSION pgrdf UPDATE` in each database. A newer library rejects old SQL with SQLSTATE 55000. Do not use the broken 0.6.35–0.6.38 PGXN source archives. Preserve graph/dictionary data together in verified backups.

### Ownership Repair in 0.6.40

The 0.6.39 upgrade could leave `_pgrdf_graph_id_seq` owned by the upgrade executor after storage tables had been transferred to another role, preventing new graph creation. Version 0.6.40 aligns that sequence with the owner of `_pgrdf_quads`; granting sequence usage alone is insufficient. `pgrdf.ownership_drift()` reports mismatched storage owners and proposed repair commands. Review them before applying role changes. Upgrade SQL in each database after installing matching binaries; versions 0.6.34–0.6.38 can upgrade directly to 0.6.40.
