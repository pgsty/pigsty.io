---
title: "pglogical_origin"
linkTitle: "pglogical_origin"
description: "Dummy extension for compatibility when upgrading from Postgres 9.4"
weight: 9501
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/2ndQuadrant/pglogical">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">2ndQuadrant/pglogical</div>
    <div class="ext-card__desc">https://github.com/2ndQuadrant/pglogical</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pglogical-2.4.6.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pglogical-2.4.6.tar.gz</div>
    <div class="ext-card__desc">pglogical-2.4.6.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pglogical`**](/ext/e/pglogical) | `2.4.7` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9500  | [**`pglogical`**](/ext/e/pglogical) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pglogical` |
| 9501  | [**`pglogical_origin`**](/ext/e/pglogical_origin) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pglogical_origin` |
{.ext-table}

| **Related** | [`spock`](/ext/e/spock) [`pgactive`](/ext/e/pgactive) [`pgoutput`](/ext/e/pgoutput) [`mimeo`](/ext/e/mimeo) [`wal2json`](/ext/e/wal2json) [`test_decoding`](/ext/e/test_decoding) [`postgres_fdw`](/ext/e/postgres_fdw) [`pgl_ddl_deploy`](/ext/e/pgl_ddl_deploy) [`logical_ddl`](/ext/e/logical_ddl) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Latest PGDG DEB/catalog version is 2.4.7; PGDG RPM and Pigsty source remain on 2.4.6.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.7` | {{< pgvers "18,17,16,15,14" >}} | `pglogical` | - |
| [**RPM**](/ext/rpm#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.6` | {{< pgvers "18,17,16,15,14" >}} | `pglogical_$v` | - |
| [**DEB**](/ext/deb#etl) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `2.4.7` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pglogical` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 2.4.8 2 | AVAIL PGDG 2.4.8 2 | AVAIL PGDG 2.4.8 2 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 5 |
| el8.aarch64 | AVAIL PGDG 2.4.8 2 | AVAIL PGDG 2.4.8 2 | AVAIL PGDG 2.4.8 2 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| el9.x86_64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 4 | AVAIL PGDG 2.4.8 5 |
| el9.aarch64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 4 | AVAIL PGDG 2.4.8 4 |
| el10.x86_64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| el10.aarch64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| d12.x86_64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| d12.aarch64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| d13.x86_64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| d13.aarch64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| u22.x86_64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| u22.aarch64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| u24.x86_64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| u24.aarch64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| u26.x86_64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
| u26.aarch64 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 | AVAIL PGDG 2.4.8 3 |
{{< /pgext_matrix >}}


## Install

You can install `pglogical` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) repository is added and enabled:

```bash
pig repo add pgdg -u          # Add PGDG repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pglogical;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pglogical -v 18  # PG 18
pig ext install -y pglogical -v 17  # PG 17
pig ext install -y pglogical -v 16  # PG 16
pig ext install -y pglogical -v 15  # PG 15
pig ext install -y pglogical -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pglogical_18       # PG 18
dnf install -y pglogical_17       # PG 17
dnf install -y pglogical_16       # PG 16
dnf install -y pglogical_15       # PG 15
dnf install -y pglogical_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pglogical   # PG 18
apt install -y postgresql-17-pglogical   # PG 17
apt install -y postgresql-16-pglogical   # PG 16
apt install -y postgresql-15-pglogical   # PG 15
apt install -y postgresql-14-pglogical   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pglogical_origin;
```




## Usage

> [pglogical_origin: Dummy extension for compatibility when upgrading from Postgres 9.4](https://github.com/2ndQuadrant/pglogical)

The `pglogical_origin` extension is a compatibility shim provided alongside pglogical. It exists solely to facilitate upgrades from PostgreSQL 9.4, where replication origin tracking was handled by the pglogical extension itself rather than by PostgreSQL core.

### Enabling

```sql
CREATE EXTENSION pglogical_origin;
```

### Overview

Starting with PostgreSQL 9.5, replication origin tracking became a built-in PostgreSQL feature (`pg_replication_origin`). The `pglogical_origin` extension is a dummy/empty extension that:

- Prevents errors when upgrading databases that previously depended on it
- Provides a smooth migration path from pglogical on PostgreSQL 9.4 to newer versions
- Contains no actual functionality -- all origin tracking is handled by PostgreSQL core

### When to Use

This extension is only needed when:

- Upgrading a database from PostgreSQL 9.4 that used pglogical
- The database has existing references to the `pglogical_origin` extension

For new installations, this extension is not required. Use pglogical directly, which leverages PostgreSQL's built-in replication origin support.
