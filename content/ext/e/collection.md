---
title: "collection"
linkTitle: "collection"
description: "Memory optimized data type to be used inside of plpglsql func"
weight: 3690
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/aws/pgcollection">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">aws/pgcollection</div>
    <div class="ext-card__desc">https://github.com/aws/pgcollection</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgcollection-2.0.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgcollection-2.0.0.tar.gz</div>
    <div class="ext-card__desc">pgcollection-2.0.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgcollection`**](/ext/e/collection) | `2.0.0` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3690  | [**`collection`**](/ext/e/collection) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`prefix`](/ext/e/prefix) [`semver`](/ext/e/semver) [`unit`](/ext/e/unit) [`pgpdf`](/ext/e/pgpdf) [`pglite_fusion`](/ext/e/pglite_fusion) [`md5hash`](/ext/e/md5hash) [`asn1oid`](/ext/e/asn1oid) [`roaringbitmap`](/ext/e/roaringbitmap) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgcollection` | - |
| [**RPM**](/ext/rpm#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `pgcollection_$v` | - |
| [**DEB**](/ext/deb#type) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `2.0.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-collection` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el8.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el9.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| el10.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d12.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| d13.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u22.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u24.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.x86_64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
| u26.aarch64 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 | AVAIL PIGSTY 2.0.0 1 |
@ el8.x86_64 18 pgcollection_18 pgcollection_18-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 56.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcollection_18-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pgcollection_18 pgcollection_18-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 54.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcollection_18-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pgcollection_18 pgcollection_18-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 54.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcollection_18-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pgcollection_18 pgcollection_18-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 53.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcollection_18-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pgcollection_18 pgcollection_18-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 55.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcollection_18-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pgcollection_18 pgcollection_18-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 53.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcollection_18-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 131.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 128.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 132.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 129.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 149.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 148.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 139.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 137.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 138.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-collection postgresql-18-collection_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 135.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-18-collection_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pgcollection_17 pgcollection_17-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 56.0KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcollection_17-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pgcollection_17 pgcollection_17-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 54.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcollection_17-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pgcollection_17 pgcollection_17-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 54.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcollection_17-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pgcollection_17 pgcollection_17-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 53.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcollection_17-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pgcollection_17 pgcollection_17-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 55.4KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcollection_17-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pgcollection_17 pgcollection_17-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 53.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcollection_17-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 131.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 128.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 132.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 128.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 164.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 162.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 139.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 137.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 138.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-collection postgresql-17-collection_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 135.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-17-collection_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pgcollection_16 pgcollection_16-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 55.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcollection_16-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pgcollection_16 pgcollection_16-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 53.9KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcollection_16-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pgcollection_16 pgcollection_16-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 53.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcollection_16-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pgcollection_16 pgcollection_16-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 53.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcollection_16-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pgcollection_16 pgcollection_16-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 55.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcollection_16-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pgcollection_16 pgcollection_16-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 53.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcollection_16-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 130.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 127.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 131.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 127.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 162.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 161.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 138.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 136.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 137.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-collection postgresql-16-collection_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 134.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-16-collection_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pgcollection_15 pgcollection_15-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 56.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcollection_15-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pgcollection_15 pgcollection_15-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 54.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcollection_15-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pgcollection_15 pgcollection_15-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 53.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcollection_15-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pgcollection_15 pgcollection_15-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 54.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcollection_15-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pgcollection_15 pgcollection_15-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 56.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcollection_15-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pgcollection_15 pgcollection_15-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcollection_15-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 131.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 128.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 131.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 128.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 162.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 162.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 138.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 136.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 137.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-collection postgresql-15-collection_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 134.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-15-collection_2.0.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pgcollection_14 pgcollection_14-2.0.0-1PIGSTY.el8.x86_64.rpm pigsty 2.0.0 56.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pgcollection_14-2.0.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pgcollection_14 pgcollection_14-2.0.0-1PIGSTY.el8.aarch64.rpm pigsty 2.0.0 54.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pgcollection_14-2.0.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pgcollection_14 pgcollection_14-2.0.0-1PIGSTY.el9.x86_64.rpm pigsty 2.0.0 53.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pgcollection_14-2.0.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pgcollection_14 pgcollection_14-2.0.0-1PIGSTY.el9.aarch64.rpm pigsty 2.0.0 53.9KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pgcollection_14-2.0.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pgcollection_14 pgcollection_14-2.0.0-1PIGSTY.el10.x86_64.rpm pigsty 2.0.0 56.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pgcollection_14-2.0.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pgcollection_14 pgcollection_14-2.0.0-1PIGSTY.el10.aarch64.rpm pigsty 2.0.0 54.1KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pgcollection_14-2.0.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~bookworm_amd64.deb pigsty 2.0.0 131.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~bookworm_arm64.deb pigsty 2.0.0 128.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~trixie_amd64.deb pigsty 2.0.0 131.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~trixie_arm64.deb pigsty 2.0.0 128.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~jammy_amd64.deb pigsty 2.0.0 162.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~jammy_arm64.deb pigsty 2.0.0 162.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~noble_amd64.deb pigsty 2.0.0 138.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~noble_arm64.deb pigsty 2.0.0 136.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~resolute_amd64.deb pigsty 2.0.0 137.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-collection postgresql-14-collection_2.0.0-1PIGSTY~resolute_arm64.deb pigsty 2.0.0 134.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/c/collection/postgresql-14-collection_2.0.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgcollection` using `pig build`:

```bash
pig build pkg pgcollection         # build RPM / DEB packages
```


## Install

You can install `pgcollection` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgcollection;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgcollection -v 18  # PG 18
pig ext install -y pgcollection -v 17  # PG 17
pig ext install -y pgcollection -v 16  # PG 16
pig ext install -y pgcollection -v 15  # PG 15
pig ext install -y pgcollection -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgcollection_18       # PG 18
dnf install -y pgcollection_17       # PG 17
dnf install -y pgcollection_16       # PG 16
dnf install -y pgcollection_15       # PG 15
dnf install -y pgcollection_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-collection   # PG 18
apt install -y postgresql-17-collection   # PG 17
apt install -y postgresql-16-collection   # PG 16
apt install -y postgresql-15-collection   # PG 15
apt install -y postgresql-14-collection   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION collection;
```



## Usage

> [collection: key-value collection data types for PL/pgSQL](https://github.com/aws/pgcollection)

The `collection` extension provides two memory-optimized collection data types for use within PL/pgSQL functions.

```sql
CREATE EXTENSION collection;
```

### Data Types

- **`collection`**: Key-value pairs with text keys (max 32,767 chars), stored in creation order
- **`icollection`**: Key-value pairs with 64-bit integer keys, enabling sparse arrays

Both types support type modifiers to specify element types:

```sql
DECLARE
    c1  collection('date');
    ic1 icollection('int4');
```

### Subscript Access

```sql
DO $$
DECLARE t_capital collection;
BEGIN
    t_capital['USA'] := 'Washington, D.C.';
    t_capital['Japan'] := 'Tokyo';
    RAISE NOTICE '%', t_capital['USA'];  -- Washington, D.C.
END $$;
```

### Core Functions

| Function | Description |
|----------|-------------|
| `add(coll, key, value)` | Add element |
| `count(coll)` | Element count |
| `delete(coll, key)` | Remove element |
| `exist(coll, key)` | Check key existence |
| `find(coll, key)` | Retrieve value |
| `first(coll)` | Move iterator to start |
| `last(coll)` | Move iterator to end |
| `next(coll)` | Advance iterator |
| `prev(coll)` | Reverse iterator |
| `key(coll)` | Current key |
| `value(coll)` | Current value |
| `copy(coll)` | Create copy |
| `sort(coll)` | Sort by keys |
| `keys_to_table(coll)` | All keys as set |
| `values_to_table(coll)` | All values as set |
| `to_table(coll)` | Keys and values as table |

### Iterator Example

```sql
DO $$
DECLARE t_capital collection;
BEGIN
    t_capital['USA'] := 'Washington, D.C.';
    t_capital['United Kingdom'] := 'London';
    t_capital['Japan'] := 'Tokyo';

    t_capital := first(t_capital);
    WHILE NOT isnull(t_capital) LOOP
        RAISE NOTICE 'Capital of % is %', key(t_capital), value(t_capital);
        t_capital := next(t_capital);
    END LOOP;
END $$;
```

### Sparse Arrays (icollection)

`icollection` supports non-contiguous integer indices and distinguishes between NULL values and uninitialized keys:

```sql
DECLARE sparse icollection;
BEGIN
    sparse[1] := 'first';
    sparse[1000000] := 'millionth';  -- no memory wasted on gaps
END;
```
