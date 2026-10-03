---
title: "macavity"
linkTitle: "macavity"
description: "Deterministic session-local fault injection for PostgreSQL test clusters"
weight: 5215
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/CrystallineCore/Macavity">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">CrystallineCore/Macavity</div>
    <div class="ext-card__desc">https://github.com/CrystallineCore/Macavity</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/macavity-0.2.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">macavity-0.2.0.tar.gz</div>
    <div class="ext-card__desc">macavity-0.2.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`macavity`**](/ext/e/macavity) | `0.2.0` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5215  | [**`macavity`**](/ext/e/macavity) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> Testing release; destructive crash action affects the entire instance. Disposable test clusters only.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16" >}} | `macavity` | - |
| [**RPM**](/ext/rpm#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16" >}} | `macavity_$v` | - |
| [**DEB**](/ext/deb#admin) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.2.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-macavity` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | AVAIL PIGSTY 0.2.0 1 | N/A PIGSTY - 0 | N/A PIGSTY - 0 |
@ el8.x86_64 18 macavity_18 macavity_18-0.2.0-1PGSTY.el8.x86_64.rpm pigsty 0.2.0 47.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/macavity_18-0.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 18 macavity_18 macavity_18-0.2.0-1PGSTY.el8.aarch64.rpm pigsty 0.2.0 47.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/macavity_18-0.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 18 macavity_18 macavity_18-0.2.0-1PGSTY.el9.x86_64.rpm pigsty 0.2.0 47.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/macavity_18-0.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 18 macavity_18 macavity_18-0.2.0-1PGSTY.el9.aarch64.rpm pigsty 0.2.0 47.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/macavity_18-0.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 18 macavity_18 macavity_18-0.2.0-1PGSTY.el10.x86_64.rpm pigsty 0.2.0 47.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/macavity_18-0.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 18 macavity_18 macavity_18-0.2.0-1PGSTY.el10.aarch64.rpm pigsty 0.2.0 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/macavity_18-0.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~bookworm_amd64.deb pigsty 0.2.0 40.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~bookworm_arm64.deb pigsty 0.2.0 40.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~trixie_amd64.deb pigsty 0.2.0 40.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~trixie_arm64.deb pigsty 0.2.0 40.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~jammy_amd64.deb pigsty 0.2.0 40.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~jammy_arm64.deb pigsty 0.2.0 39.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~noble_amd64.deb pigsty 0.2.0 39.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~noble_arm64.deb pigsty 0.2.0 39.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~resolute_amd64.deb pigsty 0.2.0 39.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-macavity postgresql-18-macavity_0.2.0-1PGSTY~resolute_arm64.deb pigsty 0.2.0 39.3KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/macavity/postgresql-18-macavity_0.2.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 17 macavity_17 macavity_17-0.2.0-1PGSTY.el8.x86_64.rpm pigsty 0.2.0 47.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/macavity_17-0.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 17 macavity_17 macavity_17-0.2.0-1PGSTY.el8.aarch64.rpm pigsty 0.2.0 47.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/macavity_17-0.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 17 macavity_17 macavity_17-0.2.0-1PGSTY.el9.x86_64.rpm pigsty 0.2.0 47.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/macavity_17-0.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 17 macavity_17 macavity_17-0.2.0-1PGSTY.el9.aarch64.rpm pigsty 0.2.0 47.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/macavity_17-0.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 17 macavity_17 macavity_17-0.2.0-1PGSTY.el10.x86_64.rpm pigsty 0.2.0 47.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/macavity_17-0.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 17 macavity_17 macavity_17-0.2.0-1PGSTY.el10.aarch64.rpm pigsty 0.2.0 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/macavity_17-0.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~bookworm_amd64.deb pigsty 0.2.0 40.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~bookworm_arm64.deb pigsty 0.2.0 40.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~trixie_amd64.deb pigsty 0.2.0 40.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~trixie_arm64.deb pigsty 0.2.0 40.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~jammy_amd64.deb pigsty 0.2.0 44.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~jammy_arm64.deb pigsty 0.2.0 44.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~noble_amd64.deb pigsty 0.2.0 39.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~noble_arm64.deb pigsty 0.2.0 39.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~resolute_amd64.deb pigsty 0.2.0 39.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-macavity postgresql-17-macavity_0.2.0-1PGSTY~resolute_arm64.deb pigsty 0.2.0 39.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/macavity/postgresql-17-macavity_0.2.0-1PGSTY~resolute_arm64.deb
@ el8.x86_64 16 macavity_16 macavity_16-0.2.0-1PGSTY.el8.x86_64.rpm pigsty 0.2.0 47.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/macavity_16-0.2.0-1PGSTY.el8.x86_64.rpm
@ el8.aarch64 16 macavity_16 macavity_16-0.2.0-1PGSTY.el8.aarch64.rpm pigsty 0.2.0 47.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/macavity_16-0.2.0-1PGSTY.el8.aarch64.rpm
@ el9.x86_64 16 macavity_16 macavity_16-0.2.0-1PGSTY.el9.x86_64.rpm pigsty 0.2.0 47.7KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/macavity_16-0.2.0-1PGSTY.el9.x86_64.rpm
@ el9.aarch64 16 macavity_16 macavity_16-0.2.0-1PGSTY.el9.aarch64.rpm pigsty 0.2.0 47.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/macavity_16-0.2.0-1PGSTY.el9.aarch64.rpm
@ el10.x86_64 16 macavity_16 macavity_16-0.2.0-1PGSTY.el10.x86_64.rpm pigsty 0.2.0 47.7KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/macavity_16-0.2.0-1PGSTY.el10.x86_64.rpm
@ el10.aarch64 16 macavity_16 macavity_16-0.2.0-1PGSTY.el10.aarch64.rpm pigsty 0.2.0 47.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/macavity_16-0.2.0-1PGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~bookworm_amd64.deb pigsty 0.2.0 40.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~bookworm_arm64.deb pigsty 0.2.0 40.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~trixie_amd64.deb pigsty 0.2.0 40.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~trixie_arm64.deb pigsty 0.2.0 40.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~jammy_amd64.deb pigsty 0.2.0 44.7KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~jammy_arm64.deb pigsty 0.2.0 44.3KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~noble_amd64.deb pigsty 0.2.0 39.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~noble_arm64.deb pigsty 0.2.0 39.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~resolute_amd64.deb pigsty 0.2.0 39.4KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-macavity postgresql-16-macavity_0.2.0-1PGSTY~resolute_arm64.deb pigsty 0.2.0 39.1KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/m/macavity/postgresql-16-macavity_0.2.0-1PGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `macavity` using `pig build`:

```bash
pig build pkg macavity         # build RPM / DEB packages
```


## Install

You can install `macavity` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="extension-install" value="install"}
pig install macavity;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y macavity -v 18  # PG 18
pig ext install -y macavity -v 17  # PG 17
pig ext install -y macavity -v 16  # PG 16
```

```bash {tab="dnf" value="dnf"}
dnf install -y macavity_18       # PG 18
dnf install -y macavity_17       # PG 17
dnf install -y macavity_16       # PG 16
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-macavity   # PG 18
apt install -y postgresql-17-macavity   # PG 17
apt install -y postgresql-16-macavity   # PG 16
```


**Create Extension**:

```sql
CREATE EXTENSION macavity;
```

## Usage

Sources:

- [README.md](https://github.com/CrystallineCore/Macavity/blob/v0.2.0/README.md)
- [CHANGELOG.md](https://github.com/CrystallineCore/Macavity/blob/v0.2.0/CHANGELOG.md)
- [macavity.control](https://github.com/CrystallineCore/Macavity/blob/v0.2.0/macavity.control)
- [sql/macavity--0.2.0.sql](https://github.com/CrystallineCore/Macavity/blob/v0.2.0/sql/macavity--0.2.0.sql)
- [sql/macavity--0.1.0--0.2.0.sql](https://github.com/CrystallineCore/Macavity/blob/v0.2.0/sql/macavity--0.1.0--0.2.0.sql)

`macavity` 0.2.0 provides deterministic fault injection for disposable PostgreSQL test clusters. Upstream tests PostgreSQL 16–18 on Linux; PostgreSQL 19+ and other platforms are not validated, and Windows crash injection is unsupported. The crash action can disconnect every session and force crash recovery.

### Event workflow

```sql
CREATE EXTENSION macavity;
SELECT * FROM macavity_points();
SELECT macavity_arm('executor_start', 'error', 1);
SELECT 1; -- expected injected error
SELECT * FROM macavity_status();
SELECT macavity_disarm();
SELECT macavity_reset();
```

### Registry and upgrade

Each session keeps multiple events with stable IDs, separate counters and states `armed`, `completed` or `disarmed`. `macavity_arm` returns an integer event ID; its single-ID overload re-arms a completed or disarmed event. `macavity_status` returns zero or more event rows. `macavity_disarm` retains event history; `macavity_reset` clears it and restarts IDs.

Points are `executor_start`, `executor_end`, `before_commit` and `before_abort`; actions are `error`, `delay` and `crash`. Delay lasts one second. Abort-time error injection is rejected. At a shared hit, delay precedes crash, then error, with IDs breaking ties.

Creation requires a superuser; no shared preload is needed. Only point enumeration is granted to `PUBLIC`. Upgrading with `ALTER EXTENSION macavity UPDATE` recreates functions with changed signatures: restore explicit grants, update callers and reconnect old sessions. Current Pigsty package fields still refer to 0.1.0.
