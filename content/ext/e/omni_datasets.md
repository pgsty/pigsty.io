---
title: "omni_datasets"
linkTitle: "omni_datasets"
description: "Dataset provisioning"
weight: 2947
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://docs.omnigres.org/omni_datasets/northwind/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://docs.omnigres.org/omni_datasets/northwind/</div>
    <div class="ext-card__desc">https://docs.omnigres.org/omni_datasets/northwind/</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/omnigres-20251108.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">omnigres-20251108.tar.gz</div>
    <div class="ext-card__desc">omnigres-20251108.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`omni_datasets`**](/ext/e/omni) | `0.1.0` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2947  | [**`omni_datasets`**](/ext/e/omni_datasets) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `omni_datasets` |
{.ext-table}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `omni_datasets` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `omnigres_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-omnigres` | - |
{.ext-table}

## Build

You can build the RPM / DEB packages for `omni_datasets` using `pig build`:

```bash
pig build pkg omni_datasets         # build RPM / DEB packages
```


## Install

You can install `omni_datasets` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install omni_datasets;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y omni_datasets -v 18  # PG 18
pig ext install -y omni_datasets -v 17  # PG 17
pig ext install -y omni_datasets -v 16  # PG 16
pig ext install -y omni_datasets -v 15  # PG 15
pig ext install -y omni_datasets -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y omnigres_18       # PG 18
dnf install -y omnigres_17       # PG 17
dnf install -y omnigres_16       # PG 16
dnf install -y omnigres_15       # PG 15
dnf install -y omnigres_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-omnigres   # PG 18
apt install -y postgresql-17-omnigres   # PG 17
apt install -y postgresql-16-omnigres   # PG 16
apt install -y postgresql-15-omnigres   # PG 15
apt install -y postgresql-14-omnigres   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION omni_datasets;
```




## Usage

> [omni_datasets: Dataset provisioning](https://docs.omnigres.org/omni_datasets/northwind/)

The `omni_datasets` extension provides access to sample datasets, currently including the Northwind database.

### Northwind Dataset

```sql
CREATE EXTENSION omni_datasets;
CREATE SCHEMA northwind;
SELECT omni_datasets.instantiate_northwind(schema => 'northwind');
```

The Northwind dataset is a classic sample database originally from Microsoft Access/SQL Server, using a PostgreSQL-compatible version maintained by Yugabyte. It provides a small but realistic business dataset with tables for customers, orders, products, employees, and more.
