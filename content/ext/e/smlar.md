---
title: "smlar"
linkTitle: "smlar"
description: "Effective similarity search"
weight: 1850
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/jirutka/smlar">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">jirutka/smlar</div>
    <div class="ext-card__desc">https://github.com/jirutka/smlar</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/smlar-1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">smlar-1.0.tar.gz</div>
    <div class="ext-card__desc">smlar-1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`smlar`**](/ext/e/smlar) | `1.0` | <a class="ext-badge ext-badge--cate rag" href="/ext/cate/rag">RAG</a> | <a class="ext-badge ext-badge--license unknown" href="/ext/license#unknown">Unknown</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 1850  | [**`smlar`**](/ext/e/smlar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_similarity`](/ext/e/pg_similarity) [`pg_trgm`](/ext/e/pg_trgm) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`pgpcre`](/ext/e/pgpcre) [`re2`](/ext/e/re2) [`pg_bigm`](/ext/e/pg_bigm) [`biscuit`](/ext/e/biscuit) [`vector`](/ext/e/vector) [`imgsmlr`](/ext/e/imgsmlr) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> fix pg18 break issue by https://github.com/Vonng/smlar, no valid license, distribution suspend


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `smlar` | - |
| [**RPM**](/ext/rpm#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `smlar_$v` | - |
| [**DEB**](/ext/deb#rag) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-smlar` | - |
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
| u26.x86_64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
| u26.aarch64 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 | AVAIL PIGSTY 1.0 1 |
@ el8.x86_64 18 smlar_18 smlar_18-1.0-2PGSTY.el8.x86_64.rpm pigsty 1.0 34.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/smlar_18-1.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 smlar_18 smlar_18-1.0-2PGSTY.el8.aarch64.rpm pigsty 1.0 33.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/smlar_18-1.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 smlar_18 smlar_18-1.0-2PGSTY.el9.x86_64.rpm pigsty 1.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/smlar_18-1.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 smlar_18 smlar_18-1.0-2PGSTY.el9.aarch64.rpm pigsty 1.0 32.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/smlar_18-1.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 smlar_18 smlar_18-1.0-2PGSTY.el10.x86_64.rpm pigsty 1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/smlar_18-1.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 smlar_18 smlar_18-1.0-2PGSTY.el10.aarch64.rpm pigsty 1.0 33.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/smlar_18-1.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~bookworm_amd64.deb pigsty 1.0 73.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~bookworm_arm64.deb pigsty 1.0 72.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~trixie_amd64.deb pigsty 1.0 73.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~trixie_arm64.deb pigsty 1.0 72.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~jammy_amd64.deb pigsty 1.0 79.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~jammy_arm64.deb pigsty 1.0 78.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~noble_amd64.deb pigsty 1.0 77.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~noble_arm64.deb pigsty 1.0 76.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~resolute_amd64.deb pigsty 1.0 76.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-smlar postgresql-18-smlar_1.0-2PGSTY~resolute_arm64.deb pigsty 1.0 76.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-18-smlar_1.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 17 smlar_17 smlar_17-1.0-2PGSTY.el8.x86_64.rpm pigsty 1.0 34.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/smlar_17-1.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 smlar_17 smlar_17-1.0-2PGSTY.el8.aarch64.rpm pigsty 1.0 33.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/smlar_17-1.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 smlar_17 smlar_17-1.0-2PGSTY.el9.x86_64.rpm pigsty 1.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/smlar_17-1.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 smlar_17 smlar_17-1.0-2PGSTY.el9.aarch64.rpm pigsty 1.0 32.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/smlar_17-1.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 smlar_17 smlar_17-1.0-2PGSTY.el10.x86_64.rpm pigsty 1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/smlar_17-1.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 smlar_17 smlar_17-1.0-2PGSTY.el10.aarch64.rpm pigsty 1.0 33.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/smlar_17-1.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~bookworm_amd64.deb pigsty 1.0 73.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~bookworm_arm64.deb pigsty 1.0 72.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~trixie_amd64.deb pigsty 1.0 73.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~trixie_arm64.deb pigsty 1.0 72.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~jammy_amd64.deb pigsty 1.0 87.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~jammy_arm64.deb pigsty 1.0 86.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~noble_amd64.deb pigsty 1.0 77.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~noble_arm64.deb pigsty 1.0 76.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~resolute_amd64.deb pigsty 1.0 76.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-smlar postgresql-17-smlar_1.0-2PGSTY~resolute_arm64.deb pigsty 1.0 76.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-17-smlar_1.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 16 smlar_16 smlar_16-1.0-2PGSTY.el8.x86_64.rpm pigsty 1.0 34.9KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/smlar_16-1.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 smlar_16 smlar_16-1.0-2PGSTY.el8.aarch64.rpm pigsty 1.0 33.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/smlar_16-1.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 smlar_16 smlar_16-1.0-2PGSTY.el9.x86_64.rpm pigsty 1.0 33.6KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/smlar_16-1.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 smlar_16 smlar_16-1.0-2PGSTY.el9.aarch64.rpm pigsty 1.0 32.6KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/smlar_16-1.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 smlar_16 smlar_16-1.0-2PGSTY.el10.x86_64.rpm pigsty 1.0 34.0KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/smlar_16-1.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 smlar_16 smlar_16-1.0-2PGSTY.el10.aarch64.rpm pigsty 1.0 33.4KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/smlar_16-1.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~bookworm_amd64.deb pigsty 1.0 73.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~bookworm_arm64.deb pigsty 1.0 71.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~trixie_amd64.deb pigsty 1.0 73.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~trixie_arm64.deb pigsty 1.0 72.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~jammy_amd64.deb pigsty 1.0 87.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~jammy_arm64.deb pigsty 1.0 86.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~noble_amd64.deb pigsty 1.0 77.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~noble_arm64.deb pigsty 1.0 76.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~resolute_amd64.deb pigsty 1.0 76.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-smlar postgresql-16-smlar_1.0-2PGSTY~resolute_arm64.deb pigsty 1.0 76.0KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-16-smlar_1.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 15 smlar_15 smlar_15-1.0-2PGSTY.el8.x86_64.rpm pigsty 1.0 35.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/smlar_15-1.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 15 smlar_15 smlar_15-1.0-2PGSTY.el8.aarch64.rpm pigsty 1.0 33.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/smlar_15-1.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 15 smlar_15 smlar_15-1.0-2PGSTY.el9.x86_64.rpm pigsty 1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/smlar_15-1.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 smlar_15 smlar_15-1.0-2PGSTY.el9.aarch64.rpm pigsty 1.0 32.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/smlar_15-1.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 smlar_15 smlar_15-1.0-2PGSTY.el10.x86_64.rpm pigsty 1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/smlar_15-1.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 smlar_15 smlar_15-1.0-2PGSTY.el10.aarch64.rpm pigsty 1.0 33.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/smlar_15-1.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~bookworm_amd64.deb pigsty 1.0 74.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~bookworm_arm64.deb pigsty 1.0 72.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~trixie_amd64.deb pigsty 1.0 73.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~trixie_arm64.deb pigsty 1.0 72.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~jammy_amd64.deb pigsty 1.0 88.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~jammy_arm64.deb pigsty 1.0 86.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~noble_amd64.deb pigsty 1.0 76.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~noble_arm64.deb pigsty 1.0 76.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~resolute_amd64.deb pigsty 1.0 76.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-smlar postgresql-15-smlar_1.0-2PGSTY~resolute_arm64.deb pigsty 1.0 75.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-15-smlar_1.0-2PGSTY~resolute_arm64.deb
@ el8.x86_64 14 smlar_14 smlar_14-1.0-2PGSTY.el8.x86_64.rpm pigsty 1.0 35.2KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/smlar_14-1.0-2PGSTY.el8.x86_64.rpm
@ el8.aarch64 14 smlar_14 smlar_14-1.0-2PGSTY.el8.aarch64.rpm pigsty 1.0 33.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/smlar_14-1.0-2PGSTY.el8.aarch64.rpm
@ el9.x86_64 14 smlar_14 smlar_14-1.0-2PGSTY.el9.x86_64.rpm pigsty 1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/smlar_14-1.0-2PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 smlar_14 smlar_14-1.0-2PGSTY.el9.aarch64.rpm pigsty 1.0 32.8KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/smlar_14-1.0-2PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 smlar_14 smlar_14-1.0-2PGSTY.el10.x86_64.rpm pigsty 1.0 34.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/smlar_14-1.0-2PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 smlar_14 smlar_14-1.0-2PGSTY.el10.aarch64.rpm pigsty 1.0 33.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/smlar_14-1.0-2PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~bookworm_amd64.deb pigsty 1.0 74.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~bookworm_arm64.deb pigsty 1.0 72.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~trixie_amd64.deb pigsty 1.0 73.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~trixie_arm64.deb pigsty 1.0 72.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~jammy_amd64.deb pigsty 1.0 88.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~jammy_arm64.deb pigsty 1.0 86.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~noble_amd64.deb pigsty 1.0 76.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~noble_arm64.deb pigsty 1.0 76.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~resolute_amd64.deb pigsty 1.0 76.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-smlar postgresql-14-smlar_1.0-2PGSTY~resolute_arm64.deb pigsty 1.0 75.5KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/s/smlar/postgresql-14-smlar_1.0-2PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `smlar` using `pig build`:

```bash
pig build pkg smlar         # build RPM / DEB packages
```


## Install

You can install `smlar` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install smlar;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y smlar -v 18  # PG 18
pig ext install -y smlar -v 17  # PG 17
pig ext install -y smlar -v 16  # PG 16
pig ext install -y smlar -v 15  # PG 15
pig ext install -y smlar -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y smlar_18       # PG 18
dnf install -y smlar_17       # PG 17
dnf install -y smlar_16       # PG 16
dnf install -y smlar_15       # PG 15
dnf install -y smlar_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-smlar   # PG 18
apt install -y postgresql-17-smlar   # PG 17
apt install -y postgresql-16-smlar   # PG 16
apt install -y postgresql-15-smlar   # PG 15
apt install -y postgresql-14-smlar   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION smlar;
```




## Usage

> [smlar](https://github.com/jirutka/smlar): Effective similarity search for PostgreSQL arrays.
> Source: [README](https://github.com/jirutka/smlar/blob/master/README)

The `smlar` extension provides effective similarity search on PostgreSQL arrays using configurable similarity formulas, GiST and GIN index support, and TF/IDF weighting.


--------

## Functions

```text
float4 smlar(anyarray, anyarray)
```
Computes similarity of two arrays. Arrays should be the same type.

```text
float4 smlar(anyarray, anyarray, bool useIntersect)
```
Computes similarity of two arrays of composite types. Composite type looks like:

```sql
CREATE TYPE type_name AS (element_name anytype, weight_name FLOAT4);
```

The `useIntersect` option points to use only intersected elements in the denominator.

```text
float4 smlar(anyarray a, anyarray b, text formula)
```
Computes similarity of two arrays by a given formula. Predefined variables in formula:

- `N.i` -- number of common elements in both arrays (intersection)
- `N.a` -- number of unique elements in first array
- `N.b` -- number of unique elements in second array

Example:

```sql
SELECT smlar('{1,4,6}'::int[], '{5,4,6}');
SELECT smlar('{1,4,6}'::int[], '{5,4,6}', 'N.i / sqrt(N.a * N.b)');
-- These two calls are equivalent.
```

```text
anyarray % anyarray
```
Returns true if similarity of the arrays is greater than the threshold limit.

```text
text[] tsvector2textarray(tsvector)
```
Transforms tsvector type to text array.

```text
anyarray array_unique(anyarray)
```
Sort and unique array.

```text
float4 inarray(anyarray, anyelement)
```
Returns zero if second argument does not present in the first one and 1.0 in opposite case.

```text
float4 inarray(anyarray, anyelement, float4, float4)
```
Returns fourth argument if second argument does not present in the first one and third argument in opposite case.


--------

## GUC Configuration Variables

```text
smlar.threshold  FLOAT
```
Arrays with similarity lower than threshold are not similar by `%` operation.

```text
smlar.persistent_cache  BOOL
```
Cache of global stat is stored in transaction-independent memory.

```text
smlar.type  STRING
```
Type of similarity formula: `cosine` (default), `tfidf`, `overlap`.

```text
smlar.stattable  STRING
```
Name of table storing set-wide statistic. Table should be defined as:

```sql
CREATE TABLE table_name (
    value   data_type UNIQUE,
    ndoc    int4 (or bigint)  NOT NULL CHECK (ndoc > 0)
);
```

A row with null value means total number of documents. Used only for `smlar.type = 'tfidf'`.

```text
smlar.tf_method  STRING
```
Calculation method for term frequency. Values:
- `"n"` -- simple counting of entries (default)
- `"log"` -- 1 + log(n)
- `"const"` -- TF is equal to 1

Used only for `smlar.type = 'tfidf'`.

```text
smlar.idf_plus_one  BOOL
```
If false (default), calculate idf as `log(d/df)`. If true, as `log(1+d/df)`. Used only for `smlar.type = 'tfidf'`.

It is highly recommended to add to `postgresql.conf`:

```text
smlar.threshold = 0.6  # or any other value > 0 and < 1
```


--------

## GiST/GIN Index Support

The `%` and `&&` operations are supported with GiST and GIN indexes for many array types:

| Array Type | GIN operator class | GiST operator class |
|---|---|---|
| `bit[]` | `_bit_sml_ops` | |
| `bytea[]` | `_bytea_sml_ops` | `_bytea_sml_ops` |
| `char[]` | `_char_sml_ops` | `_char_sml_ops` |
| `cidr[]` | `_cidr_sml_ops` | `_cidr_sml_ops` |
| `date[]` | `_date_sml_ops` | `_date_sml_ops` |
| `float4[]` | `_float4_sml_ops` | `_float4_sml_ops` |
| `float8[]` | `_float8_sml_ops` | `_float8_sml_ops` |
| `inet[]` | `_inet_sml_ops` | `_inet_sml_ops` |
| `int2[]` | `_int2_sml_ops` | `_int2_sml_ops` |
| `int4[]` | `_int4_sml_ops` | `_int4_sml_ops` |
| `int8[]` | `_int8_sml_ops` | `_int8_sml_ops` |
| `interval[]` | `_interval_sml_ops` | `_interval_sml_ops` |
| `macaddr[]` | `_macaddr_sml_ops` | `_macaddr_sml_ops` |
| `money[]` | `_money_sml_ops` | |
| `numeric[]` | `_numeric_sml_ops` | `_numeric_sml_ops` |
| `oid[]` | `_oid_sml_ops` | `_oid_sml_ops` |
| `text[]` | `_text_sml_ops` | `_text_sml_ops` |
| `time[]` | `_time_sml_ops` | `_time_sml_ops` |
| `timestamp[]` | `_timestamp_sml_ops` | `_timestamp_sml_ops` |
| `timestamptz[]` | `_timestamptz_sml_ops` | `_timestamptz_sml_ops` |
| `timetz[]` | `_timetz_sml_ops` | `_timetz_sml_ops` |
| `varbit[]` | `_varbit_sml_ops` | |
| `varchar[]` | `_varchar_sml_ops` | `_varchar_sml_ops` |
