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
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/re2-0.1.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">re2-0.1.1.tar.gz</div>
    <div class="ext-card__desc">re2-0.1.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`re2`**](/ext/e/re2) | `0.1.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4235  | [**`re2`**](/ext/e/re2) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}


> release 0.1.1; SQL v0.1


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `re2` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16" >}} | `re2_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16" >}} | `postgresql-$v-re2` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el8.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el9.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| el10.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d12.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| d13.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u22.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.x86_64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u24.aarch64 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | AVAIL PIGSTY 0.1.1 1 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 18 re2_18 re2_18-0.1.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1.1 25.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_18-0.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 18 re2_18 re2_18-0.1.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1.1 25.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_18-0.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 18 re2_18 re2_18-0.1.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_18-0.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 18 re2_18 re2_18-0.1.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1.1 25.1KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_18-0.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 18 re2_18 re2_18-0.1.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_18-0.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 18 re2_18 re2_18-0.1.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1.1 25.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_18-0.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1.1 37.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1.1 36.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~trixie_amd64.deb pigsty 0.1.1 38.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~trixie_arm64.deb pigsty 0.1.1 37.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~jammy_amd64.deb pigsty 0.1.1 38.1KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~jammy_arm64.deb pigsty 0.1.1 37.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~noble_amd64.deb pigsty 0.1.1 37.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 18 postgresql-18-re2 postgresql-18-re2_0.1.1-1PIGSTY~noble_arm64.deb pigsty 0.1.1 37.3KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-18-re2_0.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 17 re2_17 re2_17-0.1.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1.1 25.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_17-0.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 17 re2_17 re2_17-0.1.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1.1 25.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_17-0.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 17 re2_17 re2_17-0.1.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_17-0.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 17 re2_17 re2_17-0.1.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1.1 25.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_17-0.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 17 re2_17 re2_17-0.1.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_17-0.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 17 re2_17 re2_17-0.1.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1.1 25.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_17-0.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1.1 37.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1.1 36.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~trixie_amd64.deb pigsty 0.1.1 38.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~trixie_arm64.deb pigsty 0.1.1 37.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~jammy_amd64.deb pigsty 0.1.1 39.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~jammy_arm64.deb pigsty 0.1.1 38.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~noble_amd64.deb pigsty 0.1.1 37.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 17 postgresql-17-re2 postgresql-17-re2_0.1.1-1PIGSTY~noble_arm64.deb pigsty 0.1.1 37.1KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-17-re2_0.1.1-1PIGSTY~noble_arm64.deb
@ el8.x86_64 16 re2_16 re2_16-0.1.1-1PIGSTY.el8.x86_64.rpm pigsty 0.1.1 25.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/re2_16-0.1.1-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 re2_16 re2_16-0.1.1-1PIGSTY.el8.aarch64.rpm pigsty 0.1.1 25.1KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/re2_16-0.1.1-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 re2_16 re2_16-0.1.1-1PIGSTY.el9.x86_64.rpm pigsty 0.1.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/re2_16-0.1.1-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 re2_16 re2_16-0.1.1-1PIGSTY.el9.aarch64.rpm pigsty 0.1.1 25.0KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/re2_16-0.1.1-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 re2_16 re2_16-0.1.1-1PIGSTY.el10.x86_64.rpm pigsty 0.1.1 25.8KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/re2_16-0.1.1-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 re2_16 re2_16-0.1.1-1PIGSTY.el10.aarch64.rpm pigsty 0.1.1 25.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/re2_16-0.1.1-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~bookworm_amd64.deb pigsty 0.1.1 37.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~bookworm_arm64.deb pigsty 0.1.1 36.4KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~trixie_amd64.deb pigsty 0.1.1 38.3KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~trixie_arm64.deb pigsty 0.1.1 37.4KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~jammy_amd64.deb pigsty 0.1.1 39.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~jammy_arm64.deb pigsty 0.1.1 38.8KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~noble_amd64.deb pigsty 0.1.1 37.4KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-re2 postgresql-16-re2_0.1.1-1PIGSTY~noble_arm64.deb pigsty 0.1.1 37.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/r/re2/postgresql-16-re2_0.1.1-1PIGSTY~noble_arm64.deb
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
pig ext install -y re2 -v 15  # PG 15
pig ext install -y re2 -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y re2_18       # PG 18
dnf install -y re2_17       # PG 17
dnf install -y re2_16       # PG 16
dnf install -y re2_15       # PG 15
dnf install -y re2_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-re2   # PG 18
apt install -y postgresql-17-re2   # PG 17
apt install -y postgresql-16-re2   # PG 16
apt install -y postgresql-15-re2   # PG 15
apt install -y postgresql-14-re2   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION re2;
```
