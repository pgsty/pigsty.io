---
title: "debversion"
linkTitle: "debversion"
description: "Debian version number data type"
weight: 3870
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ATIX-AG/postgresql-debversion-evr">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ATIX-AG/postgresql-debversion-evr</div>
    <div class="ext-card__desc">https://github.com/ATIX-AG/postgresql-debversion-evr</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`debversion`**](/ext/e/debversion) | `1.2.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3870  | [**`debversion`**](/ext/e/debversion) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) [`roaringbitmap`](/ext/e/roaringbitmap) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `debversion` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `1.2.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-debversion` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el8.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el9.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.x86_64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| el10.aarch64 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 | MISS PGDG - 0 |
| d12.x86_64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| d12.aarch64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| d13.x86_64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| d13.aarch64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u22.x86_64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u22.aarch64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u24.x86_64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u24.aarch64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u26.x86_64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
| u26.aarch64 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 | AVAIL PGDG 1.2.0 1 |
@ d12.x86_64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg12+1_amd64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg12+1_arm64.deb pgdg 1.2.0 14.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg13+1_amd64.deb pgdg 1.2.0 14.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg13+1_arm64.deb pgdg 1.2.0 14.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg22.04+1_amd64.deb pgdg 1.2.0 16.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg22.04+1_arm64.deb pgdg 1.2.0 15.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg24.04+1_amd64.deb pgdg 1.2.0 14.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg24.04+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg26.04+1_amd64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 18 postgresql-18-debversion postgresql-18-debversion_1.2.0-3.pgdg26.04+1_arm64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-18-debversion_1.2.0-3.pgdg26.04+1_arm64.deb
@ d12.x86_64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg12+1_amd64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg12+1_arm64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg13+1_amd64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg13+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg22.04+1_amd64.deb pgdg 1.2.0 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg22.04+1_arm64.deb pgdg 1.2.0 16.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg24.04+1_amd64.deb pgdg 1.2.0 14.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg24.04+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg26.04+1_amd64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 17 postgresql-17-debversion postgresql-17-debversion_1.2.0-3.pgdg26.04+1_arm64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-17-debversion_1.2.0-3.pgdg26.04+1_arm64.deb
@ d12.x86_64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg12+1_amd64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg12+1_arm64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg13+1_amd64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg13+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg22.04+1_amd64.deb pgdg 1.2.0 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg22.04+1_arm64.deb pgdg 1.2.0 16.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg24.04+1_amd64.deb pgdg 1.2.0 14.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg24.04+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg26.04+1_amd64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 16 postgresql-16-debversion postgresql-16-debversion_1.2.0-3.pgdg26.04+1_arm64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-16-debversion_1.2.0-3.pgdg26.04+1_arm64.deb
@ d12.x86_64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg12+1_amd64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg12+1_arm64.deb pgdg 1.2.0 14.7KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg13+1_amd64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg13+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg22.04+1_amd64.deb pgdg 1.2.0 16.4KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg22.04+1_arm64.deb pgdg 1.2.0 16.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg24.04+1_amd64.deb pgdg 1.2.0 14.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg24.04+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg26.04+1_amd64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 15 postgresql-15-debversion postgresql-15-debversion_1.2.0-3.pgdg26.04+1_arm64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-15-debversion_1.2.0-3.pgdg26.04+1_arm64.deb
@ d12.x86_64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg12+1_amd64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg12+1_amd64.deb
@ d12.aarch64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg12+1_arm64.deb pgdg 1.2.0 14.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg12+1_arm64.deb
@ d13.x86_64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg13+1_amd64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg13+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg22.04+1_amd64.deb pgdg 1.2.0 16.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg22.04+1_amd64.deb
@ u22.aarch64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg22.04+1_arm64.deb pgdg 1.2.0 15.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg22.04+1_arm64.deb
@ u24.x86_64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg24.04+1_amd64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg24.04+1_arm64.deb pgdg 1.2.0 13.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg26.04+1_amd64.deb pgdg 1.2.0 14.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg26.04+1_amd64.deb
@ u26.aarch64 14 postgresql-14-debversion postgresql-14-debversion_1.2.0-3.pgdg26.04+1_arm64.deb pgdg 1.2.0 14.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/p/postgresql-debversion/postgresql-14-debversion_1.2.0-3.pgdg26.04+1_arm64.deb
{{< /pgext_matrix >}}


## Install

You can install `debversion` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install debversion;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y debversion -v 18  # PG 18
pig ext install -y debversion -v 17  # PG 17
pig ext install -y debversion -v 16  # PG 16
pig ext install -y debversion -v 15  # PG 15
pig ext install -y debversion -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-debversion   # PG 18
apt install -y postgresql-17-debversion   # PG 17
apt install -y postgresql-16-debversion   # PG 16
apt install -y postgresql-15-debversion   # PG 15
apt install -y postgresql-14-debversion   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION debversion;
```



## Usage

> [debversion: Debian version number type for PostgreSQL](https://github.com/ATIX-AG/postgresql-debversion-evr)

The `debversion` extension provides Debian package version comparison functionality, implementing the same sorting logic used by `dpkg`.

```sql
CREATE EXTENSION debversion;
```

### Data Type

The `debversion` type stores Debian package version strings and compares them according to the Debian versioning specification (epoch:upstream-revision format).

```sql
CREATE TABLE packages (
    name    text,
    version debversion
);

INSERT INTO packages VALUES ('foo', '1.0-1'), ('foo', '2.0-1'), ('foo', '1.0-2');

SELECT * FROM packages ORDER BY version;
```

### Version Comparison

```sql
SELECT '1.60-26+b1'::debversion < '1.60+git20161116.90da8a0-1'::debversion;
```

### Operators

Standard comparison operators are supported: `=`, `<>`, `<`, `>`, `<=`, `>=`.

The comparison algorithm mirrors `dpkg --compare-versions`, ensuring results identical to standard Debian package management utilities.
