---
title: "rdkit"
linkTitle: "rdkit"
description: "Cheminformatics functionality for PostgreSQL."
weight: 2930
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/rdkit/rdkit">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">rdkit/rdkit</div>
    <div class="ext-card__desc">https://github.com/rdkit/rdkit</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/rdkit-Release_2026_09_1.tar.gz better-enums-0.11.3-enum.h RingDecomposerLib-1.1.3_rdkit.tar.gz rdkit_202303.3.orig.tar.xz rdkit_202303.3-3.pgdg120+1.dsc rdkit_202303.3-3.pgdg120+1.debian.tar.xz rdkit_202303.3-3.pgdg22.04+1.dsc rdkit_202303.3-3.pgdg22.04+1.debian.tar.xz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">rdkit-Release_2026_09_1.tar.gz better-enums-0.11.3-enum.h RingDecomposerLib-1.1.3_rdkit.tar.gz rdkit_202303.3.orig.tar.xz rdkit_202303.3-3.pgdg120+1.dsc rdkit_202303.3-3.pgdg120+1.debian.tar.xz rdkit_202303.3-3.pgdg22.04+1.dsc rdkit_202303.3-3.pgdg22.04+1.debian.tar.xz</div>
    <div class="ext-card__desc">rdkit-Release_2026_09_1.tar.gz better-enums-0.11.3-enum.h RingDecomposerLib-1.1.3_rdkit.tar.gz rdkit_202303.3.orig.tar.xz rdkit_202303.3-3.pgdg120+1.dsc rdkit_202303.3-3.pgdg120+1.debian.tar.xz rdkit_202303.3-3.pgdg22.04+1.dsc rdkit_202303.3-3.pgdg22.04+1.debian.tar.xz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`rdkit`**](/ext/e/rdkit) | `202609.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2930  | [**`rdkit`**](/ext/e/rdkit) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`postbis`](/ext/e/postbis) [`vector`](/ext/e/vector) [`pg_similarity`](/ext/e/pg_similarity) [`pg_trgm`](/ext/e/pg_trgm) [`smlar`](/ext/e/smlar) [`imgsmlr`](/ext/e/imgsmlr) [`pgcontext`](/ext/e/pgcontext) [`vectorize`](/ext/e/vectorize) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> RDKit 2026.09.1 (package 202609.1) installs SQL extension 4.8.0. Modern recipes target EL9+, Trixie, Noble and Resolute; DEB supports PG14-18 across suppliers. Legacy Bookworm/Jammy recipes use 202303.3 with librdkit1; modern DEB uses librdkit1t64.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `202609.1` | {{< pgvers "18,17,16,15,14" >}} | `rdkit` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `202609.1` | {{< pgvers "18,17,16,15,14" >}} | `rdkit_$v` | `rdkit` |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `202609.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-rdkit` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 |
| el8.aarch64 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 |
| el9.x86_64 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 |
| el9.aarch64 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 |
| el10.x86_64 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 |
| el10.aarch64 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 |
| d12.x86_64 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 |
| d12.aarch64 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 |
| d13.x86_64 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 |
| d13.aarch64 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 |
| u22.x86_64 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 |
| u22.aarch64 | AVAIL PIGSTY 202303.3 1 | AVAIL PIGSTY 202303.3 1 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 | AVAIL PGDG 202303.3 2 |
| u24.x86_64 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 |
| u24.aarch64 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 | AVAIL PIGSTY 202609.1 2 |
| u26.x86_64 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 |
| u26.aarch64 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 | AVAIL PIGSTY 202609.1 1 |
@ el8.x86_64 18 rdkit_18 rdkit_18-202303.3-1PIGSTY.el8.x86_64.rpm pigsty 202303.3 165.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdkit_18-202303.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 rdkit_18 rdkit_18-202303.3-1PIGSTY.el8.aarch64.rpm pigsty 202303.3 158.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdkit_18-202303.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 rdkit_18 rdkit_18-202609.1-1PGSTY.el9.x86_64.rpm pigsty 202609.1 131.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdkit_18-202609.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 rdkit_18 rdkit_18-202609.1-1PGSTY.el9.aarch64.rpm pigsty 202609.1 124.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdkit_18-202609.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 rdkit_18 rdkit_18-202609.1-1PGSTY.el10.x86_64.rpm pigsty 202609.1 139.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdkit_18-202609.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 rdkit_18 rdkit_18-202609.1-1PGSTY.el10.aarch64.rpm pigsty 202609.1 131.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdkit_18-202609.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202303.3-4PIGSTY~bookworm_amd64.deb pigsty 202303.3 74.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-18-rdkit_202303.3-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202303.3-4PIGSTY~bookworm_arm64.deb pigsty 202303.3 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-18-rdkit_202303.3-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202609.1-1PGSTY~trixie_amd64.deb pigsty 202609.1 113.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-18-rdkit_202609.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202609.1-1PGSTY~trixie_arm64.deb pigsty 202609.1 104.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-18-rdkit_202609.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.6KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202303.3-4PIGSTY~jammy_amd64.deb pigsty 202303.3 81.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-18-rdkit_202303.3-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202303.3-4PIGSTY~jammy_arm64.deb pigsty 202303.3 77.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-18-rdkit_202303.3-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202609.1-1PGSTY~noble_amd64.deb pigsty 202609.1 122.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-18-rdkit_202609.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202609.1-1PGSTY~noble_arm64.deb pigsty 202609.1 117.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-18-rdkit_202609.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-18-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ u26.x86_64 18 postgresql-18-rdkit postgresql-18-rdkit_202609.1-1PGSTY~resolute_amd64.deb pigsty 202609.1 123.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-18-rdkit_202609.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-rdkit postgresql-18-rdkit_202609.1-1PGSTY~resolute_arm64.deb pigsty 202609.1 118.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-18-rdkit_202609.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 rdkit_17 rdkit_17-202303.3-1PIGSTY.el8.x86_64.rpm pigsty 202303.3 165.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdkit_17-202303.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 rdkit_17 rdkit_17-202303.3-1PIGSTY.el8.aarch64.rpm pigsty 202303.3 158.8KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdkit_17-202303.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 rdkit_17 rdkit_17-202609.1-1PGSTY.el9.x86_64.rpm pigsty 202609.1 131.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdkit_17-202609.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 rdkit_17 rdkit_17-202609.1-1PGSTY.el9.aarch64.rpm pigsty 202609.1 124.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdkit_17-202609.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 rdkit_17 rdkit_17-202609.1-1PGSTY.el10.x86_64.rpm pigsty 202609.1 139.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdkit_17-202609.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 rdkit_17 rdkit_17-202609.1-1PGSTY.el10.aarch64.rpm pigsty 202609.1 131.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdkit_17-202609.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202303.3-4PIGSTY~bookworm_amd64.deb pigsty 202303.3 74.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-17-rdkit_202303.3-4PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202303.3-4PIGSTY~bookworm_arm64.deb pigsty 202303.3 67.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-17-rdkit_202303.3-4PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202609.1-1PGSTY~trixie_amd64.deb pigsty 202609.1 113.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-17-rdkit_202609.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202609.1-1PGSTY~trixie_arm64.deb pigsty 202609.1 104.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-17-rdkit_202609.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202303.3-4PIGSTY~jammy_amd64.deb pigsty 202303.3 81.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-17-rdkit_202303.3-4PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202303.3-4PIGSTY~jammy_arm64.deb pigsty 202303.3 77.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-17-rdkit_202303.3-4PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202609.1-1PGSTY~noble_amd64.deb pigsty 202609.1 122.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-17-rdkit_202609.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202609.1-1PGSTY~noble_arm64.deb pigsty 202609.1 118.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-17-rdkit_202609.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-17-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ u26.x86_64 17 postgresql-17-rdkit postgresql-17-rdkit_202609.1-1PGSTY~resolute_amd64.deb pigsty 202609.1 123.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-17-rdkit_202609.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-rdkit postgresql-17-rdkit_202609.1-1PGSTY~resolute_arm64.deb pigsty 202609.1 118.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-17-rdkit_202609.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 rdkit_16 rdkit_16-202303.3-1PIGSTY.el8.x86_64.rpm pigsty 202303.3 165.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdkit_16-202303.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 rdkit_16 rdkit_16-202303.3-1PIGSTY.el8.aarch64.rpm pigsty 202303.3 158.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdkit_16-202303.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 rdkit_16 rdkit_16-202609.1-1PGSTY.el9.x86_64.rpm pigsty 202609.1 131.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdkit_16-202609.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 rdkit_16 rdkit_16-202609.1-1PGSTY.el9.aarch64.rpm pigsty 202609.1 124.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdkit_16-202609.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 rdkit_16 rdkit_16-202609.1-1PGSTY.el10.x86_64.rpm pigsty 202609.1 139.5KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdkit_16-202609.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 rdkit_16 rdkit_16-202609.1-1PGSTY.el10.aarch64.rpm pigsty 202609.1 131.8KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdkit_16-202609.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg120+1_amd64.deb pgdg 202303.3 393.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg120+1_amd64.deb
@ d12.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3PIGSTY~legacy_amd64.deb pigsty 202303.3 74.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3PIGSTY~legacy_amd64.deb
@ d12.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg120+1_arm64.deb pgdg 202303.3 384.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg120+1_arm64.deb
@ d12.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3PIGSTY~legacy_arm64.deb pigsty 202303.3 66.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3PIGSTY~legacy_arm64.deb
@ d13.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202609.1-1PGSTY~trixie_amd64.deb pigsty 202609.1 113.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-16-rdkit_202609.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202609.1-1PGSTY~trixie_arm64.deb pigsty 202609.1 103.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-16-rdkit_202609.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg22.04+1_amd64.deb pgdg 202303.3 395.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3PIGSTY~legacy_amd64.deb pigsty 202303.3 81.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3PIGSTY~legacy_amd64.deb
@ u22.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3.pgdg22.04+1_arm64.deb pgdg 202303.3 387.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202303.3-3PIGSTY~legacy_arm64.deb pigsty 202303.3 77.0KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-16-rdkit_202303.3-3PIGSTY~legacy_arm64.deb
@ u24.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202609.1-1PGSTY~noble_amd64.deb pigsty 202609.1 122.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-16-rdkit_202609.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202609.1-1PGSTY~noble_arm64.deb pigsty 202609.1 117.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-16-rdkit_202609.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-16-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ u26.x86_64 16 postgresql-16-rdkit postgresql-16-rdkit_202609.1-1PGSTY~resolute_amd64.deb pigsty 202609.1 123.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-16-rdkit_202609.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-rdkit postgresql-16-rdkit_202609.1-1PGSTY~resolute_arm64.deb pigsty 202609.1 118.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-16-rdkit_202609.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 15 rdkit_15 rdkit_15-202303.3-1PIGSTY.el8.x86_64.rpm pigsty 202303.3 166.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdkit_15-202303.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 rdkit_15 rdkit_15-202303.3-1PIGSTY.el8.aarch64.rpm pigsty 202303.3 159.3KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdkit_15-202303.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 rdkit_15 rdkit_15-202609.1-1PGSTY.el9.x86_64.rpm pigsty 202609.1 131.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdkit_15-202609.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 15 rdkit_15 rdkit_15-202609.1-1PGSTY.el9.aarch64.rpm pigsty 202609.1 124.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdkit_15-202609.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 15 rdkit_15 rdkit_15-202609.1-1PGSTY.el10.x86_64.rpm pigsty 202609.1 139.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdkit_15-202609.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 15 rdkit_15 rdkit_15-202609.1-1PGSTY.el10.aarch64.rpm pigsty 202609.1 131.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdkit_15-202609.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg120+1_amd64.deb pgdg 202303.3 394.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg120+1_amd64.deb
@ d12.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3PIGSTY~legacy_amd64.deb pigsty 202303.3 75.5KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3PIGSTY~legacy_amd64.deb
@ d12.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg120+1_arm64.deb pgdg 202303.3 385.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg120+1_arm64.deb
@ d12.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3PIGSTY~legacy_arm64.deb pigsty 202303.3 67.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3PIGSTY~legacy_arm64.deb
@ d13.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202609.1-1PGSTY~trixie_amd64.deb pigsty 202609.1 113.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-15-rdkit_202609.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202609.1-1PGSTY~trixie_arm64.deb pigsty 202609.1 104.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-15-rdkit_202609.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg22.04+1_amd64.deb pgdg 202303.3 395.8KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3PIGSTY~legacy_amd64.deb pigsty 202303.3 82.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3PIGSTY~legacy_amd64.deb
@ u22.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3.pgdg22.04+1_arm64.deb pgdg 202303.3 387.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202303.3-3PIGSTY~legacy_arm64.deb pigsty 202303.3 77.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-15-rdkit_202303.3-3PIGSTY~legacy_arm64.deb
@ u24.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202609.1-1PGSTY~noble_amd64.deb pigsty 202609.1 122.8KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-15-rdkit_202609.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 243.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202609.1-1PGSTY~noble_arm64.deb pigsty 202609.1 117.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-15-rdkit_202609.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-15-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ u26.x86_64 15 postgresql-15-rdkit postgresql-15-rdkit_202609.1-1PGSTY~resolute_amd64.deb pigsty 202609.1 123.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-15-rdkit_202609.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-rdkit postgresql-15-rdkit_202609.1-1PGSTY~resolute_arm64.deb pigsty 202609.1 118.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-15-rdkit_202609.1-1PGSTY~resolute_arm64.deb
@ el8.x86_64 14 rdkit_14 rdkit_14-202303.3-1PIGSTY.el8.x86_64.rpm pigsty 202303.3 166.6KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/rdkit_14-202303.3-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 rdkit_14 rdkit_14-202303.3-1PIGSTY.el8.aarch64.rpm pigsty 202303.3 159.4KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/rdkit_14-202303.3-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 rdkit_14 rdkit_14-202609.1-1PGSTY.el9.x86_64.rpm pigsty 202609.1 131.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/rdkit_14-202609.1-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 14 rdkit_14 rdkit_14-202609.1-1PGSTY.el9.aarch64.rpm pigsty 202609.1 124.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/rdkit_14-202609.1-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 14 rdkit_14 rdkit_14-202609.1-1PGSTY.el10.x86_64.rpm pigsty 202609.1 139.6KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/rdkit_14-202609.1-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 14 rdkit_14 rdkit_14-202609.1-1PGSTY.el10.aarch64.rpm pigsty 202609.1 131.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/rdkit_14-202609.1-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg120+1_amd64.deb pgdg 202303.3 394.1KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg120+1_amd64.deb
@ d12.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3PIGSTY~legacy_amd64.deb pigsty 202303.3 75.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3PIGSTY~legacy_amd64.deb
@ d12.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg120+1_arm64.deb pgdg 202303.3 385.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg120+1_arm64.deb
@ d12.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3PIGSTY~legacy_arm64.deb pigsty 202303.3 67.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3PIGSTY~legacy_arm64.deb
@ d13.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202609.1-1PGSTY~trixie_amd64.deb pigsty 202609.1 113.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-14-rdkit_202609.1-1PGSTY~trixie_amd64.deb
@ d13.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg13+1_amd64.deb pgdg 202503.1 245.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg13+1_amd64.deb
@ d13.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202609.1-1PGSTY~trixie_arm64.deb pigsty 202609.1 104.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/rdkit/postgresql-14-rdkit_202609.1-1PGSTY~trixie_arm64.deb
@ d13.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg13+1_arm64.deb pgdg 202503.1 237.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg13+1_arm64.deb
@ u22.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg22.04+1_amd64.deb pgdg 202303.3 395.5KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg22.04+1_amd64.deb
@ u22.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3PIGSTY~legacy_amd64.deb pigsty 202303.3 81.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3PIGSTY~legacy_amd64.deb
@ u22.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3.pgdg22.04+1_arm64.deb pgdg 202303.3 387.2KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3.pgdg22.04+1_arm64.deb
@ u22.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202303.3-3PIGSTY~legacy_arm64.deb pigsty 202303.3 77.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/rdkit/postgresql-14-rdkit_202303.3-3PIGSTY~legacy_arm64.deb
@ u24.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202609.1-1PGSTY~noble_amd64.deb pigsty 202609.1 122.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-14-rdkit_202609.1-1PGSTY~noble_amd64.deb
@ u24.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg24.04+1_amd64.deb pgdg 202503.1 242.9KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg24.04+1_amd64.deb
@ u24.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202609.1-1PGSTY~noble_arm64.deb pigsty 202609.1 117.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/rdkit/postgresql-14-rdkit_202609.1-1PGSTY~noble_arm64.deb
@ u24.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202503.1-5.pgdg24.04+1_arm64.deb pgdg 202503.1 237.0KiB https://apt.postgresql.org/pub/repos/apt/pool/main/r/rdkit/postgresql-14-rdkit_202503.1-5.pgdg24.04+1_arm64.deb
@ u26.x86_64 14 postgresql-14-rdkit postgresql-14-rdkit_202609.1-1PGSTY~resolute_amd64.deb pigsty 202609.1 123.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-14-rdkit_202609.1-1PGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-rdkit postgresql-14-rdkit_202609.1-1PGSTY~resolute_arm64.deb pigsty 202609.1 118.8KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/rdkit/postgresql-14-rdkit_202609.1-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `rdkit` using `pig build`:

```bash
pig build pkg rdkit         # build RPM / DEB packages
```


## Install

You can install `rdkit` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install rdkit;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y rdkit -v 18  # PG 18
pig ext install -y rdkit -v 17  # PG 17
pig ext install -y rdkit -v 16  # PG 16
pig ext install -y rdkit -v 15  # PG 15
pig ext install -y rdkit -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y rdkit_18       # PG 18
dnf install -y rdkit_17       # PG 17
dnf install -y rdkit_16       # PG 16
dnf install -y rdkit_15       # PG 15
dnf install -y rdkit_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-rdkit   # PG 18
apt install -y postgresql-17-rdkit   # PG 17
apt install -y postgresql-16-rdkit   # PG 16
apt install -y postgresql-15-rdkit   # PG 15
apt install -y postgresql-14-rdkit   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION rdkit;
```

## Usage

Sources:

- [Cartridge documentation](https://github.com/rdkit/rdkit/blob/Release_2026_03_6/Docs/Book/Cartridge.md)
- [Control](https://github.com/rdkit/rdkit/blob/Release_2026_03_6/Code/PgSQL/rdkit/rdkit.control)
- [SQL template](https://github.com/rdkit/rdkit/blob/Release_2026_03_6/Code/PgSQL/rdkit/rdkit.sql.in)
- [Upgrade script](https://github.com/rdkit/rdkit/blob/Release_2026_03_6/Code/PgSQL/rdkit/update_sql/rdkit--4.7.0--4.8.0.sql.in)

`rdkit` provides molecular types, substructure search, fingerprints and chemical descriptors. This page follows the PostgreSQL cartridge shipped in RDKit 2026.03.6.

### Create The Extension

```sql
CREATE EXTENSION rdkit;
```

The cartridge adds chemistry-specific types including `mol`, `bfp`, and `sfp`.

### Core Search Operators

The cartridge documentation covers:

- `@>` and `<@` for substructure matching.
- `@=` for exact molecular equality.
- `%`, `<%>`, and `<#>` style fingerprint similarity and KNN operators for similarity search.

These are typically combined with GiST indexes over fingerprint columns.

### Fingerprints And Similarity

Common fingerprint functions documented for SQL usage include `morgan_fp`, `morganbv_fp`, `featmorgan_fp`, `rdkit_fp`, `atompair_fp`, `torsion_fp`, `layered_fp`, and `maccs_fp`.

Example from the cartridge docs:

```sql
SELECT tanimoto_sml(
  morganbv_fp('c1ccccc1'::mol),
  morganbv_fp('c1ccccc1O'::mol)
);
```

### Descriptors And Validation

The cartridge docs also expose validation and descriptor helpers such as:

- `is_valid_smiles()`
- `is_valid_ctab()`
- `is_valid_smarts()`
- `mol_amw()`
- `mol_hba()`
- `mol_numrings()`

These functions are the main user-facing surface for SQL analytics on molecular structures.

### Version and Upgrade Boundary

The RDKit toolkit release 2026.03.6 contains SQL extension version `4.8.0`; these are different version namespaces. The upstream `4.7.0` to `4.8.0` SQL template changes function costs, but its `fmcs_smiles` statement has a line comment that swallows the cost clause and terminator. Do not assume an unpatched `ALTER EXTENSION rdkit UPDATE` path works: verify the installed upgrade script and test the update on a restored copy first. A packaging patch is distinct from the upstream source.
