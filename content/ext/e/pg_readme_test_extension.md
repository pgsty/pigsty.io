---
title: "pg_readme_test_extension"
linkTitle: "pg_readme_test_extension"
description: "Test generating a README.md document for extension or schema"
weight: 4301
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_readme">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">bigsmoke/pg_readme</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_readme</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_readme-0.7.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_readme-0.7.0.tar.gz</div>
    <div class="ext-card__desc">pg_readme-0.7.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_readme`**](/ext/e/pg_readme) | `0.7.0` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4300  | [**`pg_readme`**](/ext/e/pg_readme) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 4301  | [**`pg_readme_test_extension`**](/ext/e/pg_readme_test_extension) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`hstore`](/ext/e/hstore) [`schedoc`](/ext/e/schedoc) [`gzip`](/ext/e/gzip) [`bzip`](/ext/e/bzip) [`zstd`](/ext/e/zstd) [`http`](/ext/e/http) [`pg_net`](/ext/e/pg_net) [`pg_curl`](/ext/e/pg_curl) [`pgjq`](/ext/e/pgjq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_readme` | `hstore` |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_readme_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-readme` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el8.aarch64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el9.x86_64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el9.aarch64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el10.x86_64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el10.aarch64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| d12.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| d12.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| d13.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| d13.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u22.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u22.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u24.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u24.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u26.x86_64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
| u26.aarch64 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 | AVAIL PIGSTY 0.7.0 1 |
{{< /pgext_matrix >}}

## Build

You can build the DEB packages for `pg_readme` using `pig build`:

```bash
pig build pkg pg_readme         # build DEB packages
```


## Install

You can install `pg_readme` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pg_readme;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pg_readme -v 18  # PG 18
pig ext install -y pg_readme -v 17  # PG 17
pig ext install -y pg_readme -v 16  # PG 16
pig ext install -y pg_readme -v 15  # PG 15
pig ext install -y pg_readme -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pg_readme_18       # PG 18
dnf install -y pg_readme_17       # PG 17
dnf install -y pg_readme_16       # PG 16
dnf install -y pg_readme_15       # PG 15
dnf install -y pg_readme_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pg-readme   # PG 18
apt install -y postgresql-17-pg-readme   # PG 17
apt install -y postgresql-16-pg-readme   # PG 16
apt install -y postgresql-15-pg-readme   # PG 15
apt install -y postgresql-14-pg-readme   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pg_readme_test_extension CASCADE;  -- requires: hstore
```




## Usage

> [pg_readme_test_extension: Test extension for pg_readme](https://github.com/bigsmoke/pg_readme)

This is a companion test extension for the `pg_readme` extension. It exists solely to test `pg_readme`'s functionality in generating documentation from PostgreSQL `COMMENT` objects.

It is not intended for direct use in production. It serves as a reference implementation demonstrating how to structure extension comments and processing instructions for `pg_readme` to generate proper README documentation.

### Related

See the [`pg_readme`](https://github.com/bigsmoke/pg_readme) extension for the actual documentation generation functionality.
