---
title: "columnar"
linkTitle: "columnar"
description: "Hydra Columnar extension"
weight: 2410
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/hydradatabase/hydra">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">hydradatabase/hydra</div>
    <div class="ext-card__desc">https://github.com/hydradatabase/hydra</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/hydra-1.1.2.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">hydra-1.1.2.tar.gz</div>
    <div class="ext-card__desc">hydra-1.1.2.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`hydra`**](/ext/e/columnar) | `1.1.2` | <a class="ext-badge ext-badge--cate olap" href="/ext/cate/olap">OLAP</a> | <a class="ext-badge ext-badge--license agpl30" href="/ext/license#agpl30">AGPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2410  | [**`columnar`**](/ext/e/columnar) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`citus`](/ext/e/citus) [`citus_columnar`](/ext/e/citus_columnar) [`pg_mooncake`](/ext/e/pg_mooncake) [`timescaledb`](/ext/e/timescaledb) [`pg_analytics`](/ext/e/pg_analytics) [`pg_parquet`](/ext/e/pg_parquet) [`pg_duckdb`](/ext/e/pg_duckdb) [`duckdb_fdw`](/ext/e/duckdb_fdw) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> conflict with citus columnar, obsolete, no longer maintained


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "16,15,14" >}} | `hydra` | - |
| [**RPM**](/ext/rpm#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "16,15,14" >}} | `hydra_$v` | - |
| [**DEB**](/ext/deb#olap) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `1.1.2` | {{< pgvers "16,15,14" >}} | `postgresql-$v-hydra` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el8.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el9.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el9.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el10.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| el10.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d12.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d12.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d13.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| d13.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u22.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u22.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u24.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u24.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 | AVAIL PIGSTY 1.1.2 1 |
| u26.x86_64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
| u26.aarch64 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 | MISS PIGSTY - 0 |
@ el8.x86_64 16 hydra_16 hydra_16-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 143.1KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hydra_16-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 16 hydra_16 hydra_16-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 136.7KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hydra_16-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 16 hydra_16 hydra_16-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 116.2KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hydra_16-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 16 hydra_16 hydra_16-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 112.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hydra_16-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 16 hydra_16 hydra_16-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 118.3KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hydra_16-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 16 hydra_16 hydra_16-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 113.9KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hydra_16-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~bookworm_amd64.deb pigsty 1.1.2 354.6KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~bookworm_arm64.deb pigsty 1.1.2 409.0KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~trixie_amd64.deb pigsty 1.1.2 355.8KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~trixie_arm64.deb pigsty 1.1.2 347.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~jammy_amd64.deb pigsty 1.1.2 430.5KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~jammy_arm64.deb pigsty 1.1.2 425.2KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~noble_amd64.deb pigsty 1.1.2 359.9KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 16 postgresql-16-hydra postgresql-16-hydra_1.1.2-1PIGSTY~noble_arm64.deb pigsty 1.1.2 363.6KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-16-hydra_1.1.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 15 hydra_15 hydra_15-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 146.7KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hydra_15-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 15 hydra_15 hydra_15-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 140.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hydra_15-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 15 hydra_15 hydra_15-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 136.8KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hydra_15-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 15 hydra_15 hydra_15-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 131.2KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hydra_15-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 15 hydra_15 hydra_15-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 138.1KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hydra_15-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 15 hydra_15 hydra_15-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 132.3KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hydra_15-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~bookworm_amd64.deb pigsty 1.1.2 358.3KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~bookworm_arm64.deb pigsty 1.1.2 412.7KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~trixie_amd64.deb pigsty 1.1.2 359.5KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~trixie_arm64.deb pigsty 1.1.2 349.7KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~jammy_amd64.deb pigsty 1.1.2 449.6KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~jammy_arm64.deb pigsty 1.1.2 443.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~noble_amd64.deb pigsty 1.1.2 377.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 15 postgresql-15-hydra postgresql-15-hydra_1.1.2-1PIGSTY~noble_arm64.deb pigsty 1.1.2 381.2KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-15-hydra_1.1.2-1PIGSTY~noble_arm64.deb
@ el8.x86_64 14 hydra_14 hydra_14-1.1.2-1PIGSTY.el8.x86_64.rpm pigsty 1.1.2 146.8KiB https://repo.pigsty.io/yum/pgsql/el8.x86_64/hydra_14-1.1.2-1PIGSTY.el8.x86_64.rpm
@ el8.aarch64 14 hydra_14 hydra_14-1.1.2-1PIGSTY.el8.aarch64.rpm pigsty 1.1.2 140.2KiB https://repo.pigsty.io/yum/pgsql/el8.aarch64/hydra_14-1.1.2-1PIGSTY.el8.aarch64.rpm
@ el9.x86_64 14 hydra_14 hydra_14-1.1.2-1PIGSTY.el9.x86_64.rpm pigsty 1.1.2 137.1KiB https://repo.pigsty.io/yum/pgsql/el9.x86_64/hydra_14-1.1.2-1PIGSTY.el9.x86_64.rpm
@ el9.aarch64 14 hydra_14 hydra_14-1.1.2-1PIGSTY.el9.aarch64.rpm pigsty 1.1.2 131.5KiB https://repo.pigsty.io/yum/pgsql/el9.aarch64/hydra_14-1.1.2-1PIGSTY.el9.aarch64.rpm
@ el10.x86_64 14 hydra_14 hydra_14-1.1.2-1PIGSTY.el10.x86_64.rpm pigsty 1.1.2 138.2KiB https://repo.pigsty.io/yum/pgsql/el10.x86_64/hydra_14-1.1.2-1PIGSTY.el10.x86_64.rpm
@ el10.aarch64 14 hydra_14 hydra_14-1.1.2-1PIGSTY.el10.aarch64.rpm pigsty 1.1.2 133.0KiB https://repo.pigsty.io/yum/pgsql/el10.aarch64/hydra_14-1.1.2-1PIGSTY.el10.aarch64.rpm
@ d12.x86_64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~bookworm_amd64.deb pigsty 1.1.2 359.9KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~bookworm_amd64.deb
@ d12.aarch64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~bookworm_arm64.deb pigsty 1.1.2 414.1KiB https://repo.pigsty.io/apt/pgsql/bookworm/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~bookworm_arm64.deb
@ d13.x86_64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~trixie_amd64.deb pigsty 1.1.2 360.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~trixie_amd64.deb
@ d13.aarch64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~trixie_arm64.deb pigsty 1.1.2 350.6KiB https://repo.pigsty.io/apt/pgsql/trixie/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~trixie_arm64.deb
@ u22.x86_64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~jammy_amd64.deb pigsty 1.1.2 451.4KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~jammy_amd64.deb
@ u22.aarch64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~jammy_arm64.deb pigsty 1.1.2 444.9KiB https://repo.pigsty.io/apt/pgsql/jammy/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~jammy_arm64.deb
@ u24.x86_64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~noble_amd64.deb pigsty 1.1.2 378.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~noble_amd64.deb
@ u24.aarch64 14 postgresql-14-hydra postgresql-14-hydra_1.1.2-1PIGSTY~noble_arm64.deb pigsty 1.1.2 382.5KiB https://repo.pigsty.io/apt/pgsql/noble/pool/main/h/hydra/postgresql-14-hydra_1.1.2-1PIGSTY~noble_arm64.deb
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `hydra` using `pig build`:

```bash
pig build pkg hydra         # build RPM / DEB packages
```


## Install

You can install `hydra` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install hydra;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y hydra -v 16  # PG 16
pig ext install -y hydra -v 15  # PG 15
pig ext install -y hydra -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y hydra_16       # PG 16
dnf install -y hydra_15       # PG 15
dnf install -y hydra_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-16-hydra   # PG 16
apt install -y postgresql-15-hydra   # PG 15
apt install -y postgresql-14-hydra   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION columnar;
```


> [!WARNING] This extension is archived and no longer maintained.
