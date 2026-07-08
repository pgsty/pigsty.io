---
title: "re2"
linkTitle: "re2"
description: "ClickHouse-compatible regex functions using RE2"
weight: 4235
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/ClickHouse/pg_re2">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">ClickHouse/pg_re2</div>
    <div class="ext-card__desc">https://github.com/ClickHouse/pg_re2</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/re2-0.4.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">re2-0.4.0.tar.gz</div>
    <div class="ext-card__desc">re2-0.4.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`re2`**](/ext/e/re2) | `0.4.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4235  | [**`re2`**](/ext/e/re2) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> release 0.3.0; SQL v0.3


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16" >}} | `re2` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16" >}} | `re2_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.4.0` | {{< pgvers "18,17,16" >}} | `postgresql-$v-re2` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.x86_64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | AVAIL PIGSTY 0.4.0 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 re2_18 re2_18-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 39.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_18-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 re2_18 re2_18-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 37.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_18-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 re2_18 re2_18-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_18-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 re2_18 re2_18-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 38.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_18-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 re2_18 re2_18-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 40.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_18-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 re2_18 re2_18-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 38.7KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_18-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 66.8KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 65.2KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 68.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 67.1KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 69.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 67.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 67.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 66.7KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 67.9KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 66.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-18-re2_0.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 17 re2_17 re2_17-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 39.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_17-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 re2_17 re2_17-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 37.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_17-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 re2_17 re2_17-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_17-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 re2_17 re2_17-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 38.4KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_17-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 re2_17 re2_17-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_17-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 re2_17 re2_17-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 38.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_17-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 66.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 65.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 68.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 67.0KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 74.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 73.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 66.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 66.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 67.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 66.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-17-re2_0.4.0-1PIGSTY~resolute_arm64.deb
@ el8.x86_64 16 re2_16 re2_16-0.4.0-1PIGSTY.el8.x86_64.rpm pigsty 0.4.0 39.3KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_16-0.4.0-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 re2_16 re2_16-0.4.0-1PIGSTY.el8.aarch64.rpm pigsty 0.4.0 37.6KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_16-0.4.0-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 re2_16 re2_16-0.4.0-1PIGSTY.el9.x86_64.rpm pigsty 0.4.0 39.4KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_16-0.4.0-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 re2_16 re2_16-0.4.0-1PIGSTY.el9.aarch64.rpm pigsty 0.4.0 38.3KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_16-0.4.0-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 re2_16 re2_16-0.4.0-1PIGSTY.el10.x86_64.rpm pigsty 0.4.0 40.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_16-0.4.0-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 re2_16 re2_16-0.4.0-1PIGSTY.el10.aarch64.rpm pigsty 0.4.0 38.6KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_16-0.4.0-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~bookworm_amd64.deb pigsty 0.4.0 66.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~bookworm_arm64.deb pigsty 0.4.0 65.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~trixie_amd64.deb pigsty 0.4.0 68.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~trixie_arm64.deb pigsty 0.4.0 66.9KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~jammy_amd64.deb pigsty 0.4.0 74.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~jammy_arm64.deb pigsty 0.4.0 73.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~noble_amd64.deb pigsty 0.4.0 66.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~noble_arm64.deb pigsty 0.4.0 66.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~noble_arm64.deb
@ u26.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~resolute_amd64.deb pigsty 0.4.0 67.7KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~resolute_amd64.deb
@ u26.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.4.0-1PIGSTY~resolute_arm64.deb pigsty 0.4.0 66.6KiB https://repo.pigsty.io/apt/pgsql/resolute/pool/main/r/re2/postgresql-16-re2_0.4.0-1PIGSTY~resolute_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `re2` using `pig build`:

```bash
pig build pkg re2         # build RPM / DEB packages
```


## Install

You can install `re2` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install re2;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y re2 -v 18  # PG 18
pig ext install -y re2 -v 17  # PG 17
pig ext install -y re2 -v 16  # PG 16
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y re2_18       # PG 18
dnf install -y re2_17       # PG 17
dnf install -y re2_16       # PG 16
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-re2   # PG 18
apt install -y postgresql-17-re2   # PG 17
apt install -y postgresql-16-re2   # PG 16
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION re2;
```




## Usage

Sources: [official README](https://github.com/ClickHouse/pg_re2/blob/main/README.md), [official reference doc](https://github.com/ClickHouse/pg_re2/blob/main/doc/re2.md), [v0.3.0 release](https://github.com/ClickHouse/pg_re2/releases/tag/v0.3.0)

`re2` provides ClickHouse-compatible regular expression functions backed by Google's RE2 engine. It exposes both `text` and `bytea` overloads, so binary data with `\\0` bytes can be searched too. Pigsty packages version `0.3.0` for PostgreSQL 16-18 while upstream documents PostgreSQL 13+ support.

```sql
CREATE EXTENSION re2;

SELECT re2match('hello world', 'h.*o');
SELECT re2extract('Order #123', '(\\d+)');
SELECT re2countmatches('a1 b2 c3', '\\d');
```

### Core Functions

- `re2match(haystack, pattern) -> boolean`
- `re2extract(haystack, pattern) -> text|bytea`
- `re2extractall(haystack, pattern) -> text[]|bytea[]`
- `re2regexpextract(haystack, pattern, index default 1) -> text|bytea`
- `re2extractgroups(haystack, pattern) -> text[]|bytea[]`
- `re2extractallgroupsvertical(haystack, pattern) -> text[]|bytea[]`
- `re2extractallgroupshorizontal(haystack, pattern) -> text[]|bytea[]`
- `re2regexpquotemeta(haystack) -> text|bytea`
- `re2splitbyregexp(pattern, haystack, max_substrings default 0) -> text[]|bytea[]`
- `re2replaceregexpone(haystack, pattern, replacement) -> text|bytea`
- `re2replaceregexpall(haystack, pattern, replacement) -> text|bytea`
- `re2countmatches(...)` and `re2countmatchescaseinsensitive(...)`

```sql
SELECT re2extractallgroupsvertical('a=1 b=2', '(\\w)=(\\d)');
SELECT re2regexpquotemeta('a+b?');
SELECT re2splitbyregexp('\\s+', 'one two three', 2);
```

### Multi-Pattern Matching

The `re2multimatch*` family accepts either multiple pattern arguments or a `VARIADIC` array:

```sql
SELECT re2multimatchany('error: timeout', 'timeout', 'denied');
SELECT re2multimatchanyindex('error: timeout', VARIADIC ARRAY['timeout', 'denied']);
SELECT re2multimatchallindices('error: timeout', 'error', 'timeout', 'panic');
```

### Matching Semantics

- To match ClickHouse behavior, `.` matches line breaks by default.
- Prefix the pattern with `(?-s)` if you want `.` not to cross line breaks.
- Replacement strings support `\\0` through `\\9` backreferences.

### Caveats

- Upstream requires the system `re2` library at build/install time.
- Release `v0.3.0` uses SQL version `0.3`; run `ALTER EXTENSION re2 UPDATE TO '0.3'` after replacing extension binaries from an older minor release.
- `re2splitbyregexp` changed argument order in `v0.3.0` to `pattern, haystack[, max_substrings]`, matching ClickHouse. Earlier `0.2.0` builds used `haystack, pattern`.
- Upstream treats patch releases as binary-only, but minor releases can require SQL upgrade scripts.
