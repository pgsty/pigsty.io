---
title: "omni_csv"
linkTitle: "omni_csv"
description: "CSV toolkit"
weight: 2946
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://docs.omnigres.org/omni_csv/">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://docs.omnigres.org/omni_csv/</div>
    <div class="ext-card__desc">https://docs.omnigres.org/omni_csv/</div>
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
| [**`omni_csv`**](/ext/e/omni) | `0.1.1` | <a class="ext-badge ext-badge--cate feat" href="/ext/cate/feat">FEAT</a> | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2946  | [**`omni_csv`**](/ext/e/omni_csv) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `omni_csv` |
{.ext-table}

| **Related** | [`file_fdw`](/ext/e/file_fdw) [`pg_csv`](/ext/e/pg_csv) [`pg_bulkload`](/ext/e/pg_bulkload) [`aws_s3`](/ext/e/aws_s3) [`pg_parquet`](/ext/e/pg_parquet) [`pg_lake`](/ext/e/pg_lake) [`log_fdw`](/ext/e/log_fdw) [`pg_fact_loader`](/ext/e/pg_fact_loader) [`pg_ducklake`](/ext/e/pg_ducklake) [`pg_sqlog`](/ext/e/pg_sqlog) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `omni_csv` | - |
| [**RPM**](/ext/rpm#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `omnigres_$v` | - |
| [**DEB**](/ext/deb#feat) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.1.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-omnigres` | - |
{.ext-table}

## Build

You can build the RPM / DEB packages for `omni_csv` using `pig build`:

```bash
pig build pkg omni_csv         # build RPM / DEB packages
```


## Install

You can install `omni_csv` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

```bash {tab="Install" group="install-pig-dnf-apt" value="install"}
pig install omni_csv;          # Install for current active PG version
```

```bash {tab="pig" value="pig"}
pig ext install -y omni_csv -v 18  # PG 18
pig ext install -y omni_csv -v 17  # PG 17
pig ext install -y omni_csv -v 16  # PG 16
pig ext install -y omni_csv -v 15  # PG 15
pig ext install -y omni_csv -v 14  # PG 14
```

```bash {tab="dnf" value="dnf"}
dnf install -y omnigres_18       # PG 18
dnf install -y omnigres_17       # PG 17
dnf install -y omnigres_16       # PG 16
dnf install -y omnigres_15       # PG 15
dnf install -y omnigres_14       # PG 14
```

```bash {tab="apt" value="apt"}
apt install -y postgresql-18-omnigres   # PG 18
apt install -y postgresql-17-omnigres   # PG 17
apt install -y postgresql-16-omnigres   # PG 16
apt install -y postgresql-15-omnigres   # PG 15
apt install -y postgresql-14-omnigres   # PG 14
```


**Create Extension**:

```sql
CREATE EXTENSION omni_csv;
```




## Usage

> [omni_csv: CSV toolkit](https://docs.omnigres.org/omni_csv/)

The `omni_csv` extension provides CSV parsing, inspection, and generation functions.

### Inspect CSV Structure

```sql
SELECT * FROM omni_csv.csv_info(E'name,age,city\nJohn,25,NYC\nJane,30,LA');
-- Returns: name, age, city (one row per column)
```

### Parse CSV into Records

```sql
SELECT * FROM omni_csv.parse(E'name,age,city\nJohn,25,NYC\nJane,30,LA')
    AS t(name text, age text, city text);
```

Column structure must be specified using the `AS t(...)` clause and should match the CSV structure.

### Generate CSV from Query Results

```sql
SELECT omni_csv.csv_agg(t)
FROM (SELECT name, age, city FROM employees ORDER BY name) t;
```

Returns CSV text with headers and properly escaped values. Returns empty string on empty result sets.

### Limitations

- Large CSV strings are processed entirely in memory (no streaming)
- Column types must be declared in the `AS t(...)` clause
- Consider materializing parsed data for repeated access
