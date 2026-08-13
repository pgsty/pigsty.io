---
title: "pg_readme_test_extension"
linkTitle: "pg_readme_test_extension"
description: "Fixture extension used to test pg_readme document generation"
weight: 4301
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/bigsmoke/pg_readme/tree/master/pg_readme_test_extension">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">master/pg_readme_test_extension</div>
    <div class="ext-card__desc">https://github.com/bigsmoke/pg_readme/tree/master/pg_readme_test_extension</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pg_readme-0.7.1.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pg_readme-0.7.1.tar.gz</div>
    <div class="ext-card__desc">pg_readme-0.7.1.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_readme`**](/ext/e/pg_readme) | `0.7.1` | <a class="ext-badge ext-badge--cate util" href="/ext/cate/util">UTIL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4300  | [**`pg_readme`**](/ext/e/pg_readme) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 4301  | [**`pg_readme_test_extension`**](/ext/e/pg_readme_test_extension) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_readme`](/ext/e/pg_readme) [`schedoc`](/ext/e/schedoc) [`ddlx`](/ext/e/ddlx) [`pgpdf`](/ext/e/pgpdf) [`pg_render`](/ext/e/pg_render) [`pgdd`](/ext/e/pgdd) [`meta`](/ext/e/meta) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


> Bundled test fixture; its control default_version is forever and it does not require hstore; package ownership follows pg_readme: PGDG RPM 0.7.0 and PIGSTY DEB 0.7.1.


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#util) | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | `0.7.1` | {{< pgvers "14,15,16,17,18" >}} | `pg_readme` | - |
| [**RPM**](/ext/rpm#util) | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | `0.7.0` | {{< pgvers "18,17,16,15,14" >}} | `pg_readme_$v` | - |
| [**DEB**](/ext/deb#util) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `0.7.1` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pg-readme` | - |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el8.aarch64 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 | AVAIL PGDG 0.7.0 1 |
| el9.x86_64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| el9.aarch64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| el10.x86_64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| el10.aarch64 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 | AVAIL PGDG 0.7.0 2 |
| d12.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| d12.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| d13.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| d13.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u22.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u22.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u24.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u24.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u26.x86_64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
| u26.aarch64 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 | AVAIL PIGSTY 0.7.1 1 |
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

Install the extension using [**pig**](https://pig.pgsty.com) or `apt/yum/dnf`:

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
CREATE EXTENSION pg_readme_test_extension;
```

## Usage

Sources:

- [pg_readme 0.7.1 README](https://api.pgxn.org/src/pg_readme/pg_readme-0.7.1/README.md)
- [Test-extension control file](https://api.pgxn.org/src/pg_readme/pg_readme-0.7.1/pg_readme_test_extension/pg_readme_test_extension.control)
- [Test-extension SQL fixture](https://api.pgxn.org/src/pg_readme/pg_readme-0.7.1/pg_readme_test_extension/pg_readme_test_extension--forever.sql)
- [Pigsty package matrix](https://pgext.cloud/ext/pg_readme_test_extension)

`pg_readme_test_extension` is the bundled integration-test fixture for `pg_readme`. It installs commented domains, types, tables, views, routines, triggers, and processing instructions so upstream can verify `pg_extension_readme()`. It is not an application feature or a production dependency.

### Exercise the Fixture

```sql
CREATE EXTENSION pg_readme CASCADE;
CREATE EXTENSION pg_readme_test_extension;

SELECT pg_extension_readme('pg_readme_test_extension'::name);
```

Use the output to test or demonstrate the generator, then remove the fixture from a disposable database:

```sql
DROP EXTENSION pg_readme_test_extension;
```

### Boundary and Caveats

- The upstream distribution version is 0.7.1, but this fixture's control version is deliberately the literal `forever`.
- The fixture ships with `pg_readme`; current Pigsty DEB packages are 0.7.1 and RPM packages remain 0.7.0. The extension version stays `forever` on both sides.
- It is relocatable, does not require `hstore` itself, and creates sample objects with generic names. Install it only where those objects cannot collide with real application schemas.
- Its SQL surface exists to cover generator behavior and can change as tests evolve. Do not build application code against the fixture objects.
