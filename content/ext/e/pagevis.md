---
title: "pagevis"
linkTitle: "pagevis"
description: "Visualise database pages in ascii code"
weight: 6860
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hollobon/pagevis">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hollobon/pagevis</div>
    <div class="ext-card__desc">https://github.com/hollobon/pagevis</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pagevis-0.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pagevis-0.1.tar.gz</div>
    <div class="ext-card__desc">pagevis-0.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pagevis`**](/ext/e/pagevis) | `0.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6860  | [**`pagevis`**](/ext/e/pagevis) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pageinspect`](/ext/e/pageinspect) [`pg_visibility`](/ext/e/pg_visibility) [`amcheck`](/ext/e/amcheck) [`pg_surgery`](/ext/e/pg_surgery) [`pgstattuple`](/ext/e/pgstattuple) [`pg_dirtyread`](/ext/e/pg_dirtyread) [`toastinfo`](/ext/e/toastinfo) [`pg_profile`](/ext/e/pg_profile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1` | {{< pgvers "18,17,16,15,14" >}} | `pagevis` | - |
| [**RPM**](/ext/rpm#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1` | {{< pgvers "18,17,16,15,14" >}} | `pagevis_$v` | - |
| [**DEB**](/ext/deb#stat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pagevis` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el8.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el9.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el9.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el10.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| el10.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d12.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 | AVAIL PIGSTY 0.1 1 |
@ el8.x86_64 18 pagevis_18 pagevis_18-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pagevis_18-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 pagevis_18 pagevis_18-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pagevis_18-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 pagevis_18 pagevis_18-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pagevis_18-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 pagevis_18 pagevis_18-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pagevis_18-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 pagevis_18 pagevis_18-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pagevis_18-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 pagevis_18 pagevis_18-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pagevis_18-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~trixie_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~trixie_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~jammy_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~jammy_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~noble_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~noble_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~resolute_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-pagevis postgresql-18-pagevis_0.1-1PIGSTY~resolute_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-18-pagevis_0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 pagevis_17 pagevis_17-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pagevis_17-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 pagevis_17 pagevis_17-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pagevis_17-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 pagevis_17 pagevis_17-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pagevis_17-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 pagevis_17 pagevis_17-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pagevis_17-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 pagevis_17 pagevis_17-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pagevis_17-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 pagevis_17 pagevis_17-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pagevis_17-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~trixie_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~trixie_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~jammy_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~jammy_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~noble_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~noble_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~resolute_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-pagevis postgresql-17-pagevis_0.1-1PIGSTY~resolute_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-17-pagevis_0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 pagevis_16 pagevis_16-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pagevis_16-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 pagevis_16 pagevis_16-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pagevis_16-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 pagevis_16 pagevis_16-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pagevis_16-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 pagevis_16 pagevis_16-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pagevis_16-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 pagevis_16 pagevis_16-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pagevis_16-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 pagevis_16 pagevis_16-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pagevis_16-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~trixie_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~trixie_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~jammy_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~jammy_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~noble_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~noble_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~resolute_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-pagevis postgresql-16-pagevis_0.1-1PIGSTY~resolute_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-16-pagevis_0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 15 pagevis_15 pagevis_15-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pagevis_15-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 pagevis_15 pagevis_15-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pagevis_15-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 pagevis_15 pagevis_15-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pagevis_15-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 pagevis_15 pagevis_15-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pagevis_15-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 pagevis_15 pagevis_15-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pagevis_15-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 pagevis_15 pagevis_15-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pagevis_15-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~trixie_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~trixie_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~jammy_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~jammy_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~noble_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~noble_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~resolute_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 15 postgresql-15-pagevis postgresql-15-pagevis_0.1-1PIGSTY~resolute_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-15-pagevis_0.1-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 14 pagevis_14 pagevis_14-0.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/pagevis_14-0.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 pagevis_14 pagevis_14-0.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/pagevis_14-0.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 pagevis_14 pagevis_14-0.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/pagevis_14-0.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 pagevis_14 pagevis_14-0.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1 8.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/pagevis_14-0.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 pagevis_14 pagevis_14-0.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/pagevis_14-0.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 pagevis_14 pagevis_14-0.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1 8.2KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/pagevis_14-0.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~trixie_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~trixie_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~jammy_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~jammy_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~noble_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~noble_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~noble_arm64.deb
@ u26.x86_64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~resolute_amd64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 14 postgresql-14-pagevis postgresql-14-pagevis_0.1-1PIGSTY~resolute_arm64.deb pigsty 0.1 5.2KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/p/pagevis/postgresql-14-pagevis_0.1-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pagevis` using `pig build`:

```bash
pig build pkg pagevis         # build RPM / DEB packages
```


## Install

You can install `pagevis` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pagevis;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pagevis -v 18  # PG 18
pig ext install -y pagevis -v 17  # PG 17
pig ext install -y pagevis -v 16  # PG 16
pig ext install -y pagevis -v 15  # PG 15
pig ext install -y pagevis -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pagevis_18       # PG 18
dnf install -y pagevis_17       # PG 17
dnf install -y pagevis_16       # PG 16
dnf install -y pagevis_15       # PG 15
dnf install -y pagevis_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pagevis   # PG 18
apt install -y postgresql-17-pagevis   # PG 17
apt install -y postgresql-16-pagevis   # PG 16
apt install -y postgresql-15-pagevis   # PG 15
apt install -y postgresql-14-pagevis   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pagevis;
```



## Usage

> [pagevis: ASCII visualization of PostgreSQL database pages](https://github.com/hollobon/pagevis)

pagevis provides an ASCII-graphical representation of the contents of a PostgreSQL database page. It requires the `pageinspect` extension.

### Function

```sql
-- show_page(relation, block_number, line_width)
SELECT show_page('my_table', 0, 64);
```

### Output Characters

| Character | Meaning |
|-----------|---------|
| `P` | Page header |
| `U` | Unused line pointer |
| `N` | Normal line pointer |
| `R` | Redirect line pointer |
| `D` | Dead line pointer |
| (space) | Free space (the "hole") |
| `[n]` | Tuple number (overlaid on tuple header) |
| `H` | Tuple header |
| `#` | Tuple data |
| `-` | Tuple invisible to current transaction (dead) |
| `.` | Inter-tuple padding |

### Example

```sql
SELECT show_page('pvtest', 0, 64);
                             show_page
------------------------------------------------------------------
 PPPPPPPPPPPPPPPPPPPPPPPP001N002N003N004N005N006N007N008N009N010N
 011N012N013N014N015N016N017N018N019N020N...

 [226]HHHHHHHHHHHHHHHHHHH####....[225]HHHHHHHHHHHHHHHHHHH####....
 [224]HHHHHHHHHHHHHHHHHHH####....[223]HHHHHHHHHHHHHHHHHHH####....
```

The page header (`P`) and line pointers (`N`) appear at the start, free space in the middle, and tuples grow from the end of the page backward. The page is full when no more space remains between line pointers and tuples.

Requires superuser access (uses `pageinspect`'s `get_raw_page`).
