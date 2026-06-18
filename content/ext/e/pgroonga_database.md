---
title: "pgroonga_database"
linkTitle: "pgroonga_database"
description: "PGroonga database management module"
weight: 2111
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://github.com/pgroonga/pgroonga">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">pgroonga/pgroonga</div>
    <div class="ext-card__desc">https://github.com/pgroonga/pgroonga</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/pgroonga-4.0.4.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">pgroonga-4.0.4.tar.gz</div>
    <div class="ext-card__desc">pgroonga-4.0.4.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pgroonga`**](/ext/e/pgroonga) | `4.0.4` | <a class="ext-badge ext-badge--cate fts" href="/ext/cate/fts">FTS</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 2110  | [**`pgroonga`**](/ext/e/pgroonga) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 2111  | [**`pgroonga_database`**](/ext/e/pgroonga_database) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`pg_search`](/ext/e/pg_search) [`zhparser`](/ext/e/zhparser) [`pg_bigm`](/ext/e/pg_bigm) [`pg_tokenizer`](/ext/e/pg_tokenizer) [`pg_trgm`](/ext/e/pg_trgm) [`fuzzystrmatch`](/ext/e/fuzzystrmatch) [`rum`](/ext/e/rum) [`unaccent`](/ext/e/unaccent) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| Type | Repo | Version | PG Ver | Package | Deps |
|:----:|:----:|:----:|:------:|:--------:|:----:|
| [**EXT**](/ext/list#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga` | - |
| [**RPM**](/ext/rpm#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.4` | {{< pgvers "18,17,16,15,14" >}} | `pgroonga_$v` | `groonga-libs` |
| [**DEB**](/ext/deb#fts) | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | `4.0.4` | {{< pgvers "18,17,16,15,14" >}} | `postgresql-$v-pgroonga` | `libgroonga0` |
{.ext-table}

{{< pgext_matrix >}}
| **OS / PG** | **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:--:|:--:|:--:|:--:|:--:|:--:|
| el8.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el8.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el9.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el9.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el10.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| el10.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d12.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d12.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d13.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| d13.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u22.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u22.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u24.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u24.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u26.x86_64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
| u26.aarch64 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 | AVAIL PIGSTY 4.0.4 1 |
{{< /pgext_matrix >}}

## Build

You can build the RPM / DEB packages for `pgroonga` using `pig build`:

```bash
pig build pkg pgroonga         # build RPM / DEB packages
```


## Install

You can install `pgroonga` directly. First, make sure the [**PGDG**](/docs/repo/pgdg) and [**PIGSTY**](/docs/repo/pgsql) repositories are added and enabled:

```bash
pig repo add pgsql -u          # Add repo and update cache
```

Install the extension using [**pig**](/docs/pig) or `apt/yum/dnf`:

{{< tabpane text=true persist=header >}}
{{% tab header="Install" %}}
```bash
pig install pgroonga;          # Install for current active PG version
```
{{% /tab %}}
{{% tab header="pig" %}}
```bash
pig ext install -y pgroonga -v 18  # PG 18
pig ext install -y pgroonga -v 17  # PG 17
pig ext install -y pgroonga -v 16  # PG 16
pig ext install -y pgroonga -v 15  # PG 15
pig ext install -y pgroonga -v 14  # PG 14
```
{{% /tab %}}
{{% tab header="dnf" %}}
```bash
dnf install -y pgroonga_18       # PG 18
dnf install -y pgroonga_17       # PG 17
dnf install -y pgroonga_16       # PG 16
dnf install -y pgroonga_15       # PG 15
dnf install -y pgroonga_14       # PG 14
```
{{% /tab %}}
{{% tab header="apt" %}}
```bash
apt install -y postgresql-18-pgroonga   # PG 18
apt install -y postgresql-17-pgroonga   # PG 17
apt install -y postgresql-16-pgroonga   # PG 16
apt install -y postgresql-15-pgroonga   # PG 15
apt install -y postgresql-14-pgroonga   # PG 14
```
{{% /tab %}}
{{< /tabpane >}}


**Create Extension**:

```sql
CREATE EXTENSION pgroonga_database;
```



## Usage

> [PGroonga Documentation](https://pgroonga.github.io/) | [GitHub: pgroonga/pgroonga](https://github.com/pgroonga/pgroonga)

`pgroonga_database` is a sub-extension of the [PGroonga](https://pgroonga.github.io/) project. It provides database management functionality for PGroonga, which makes PostgreSQL a fast full text search platform for all languages.

PGroonga is a comprehensive full text search solution that uses [Groonga](https://groonga.org/) as a backend. It supports all languages including CJK (Chinese, Japanese, Korean) out of the box, and provides rich features such as:

- Fast full text search with all language support
- Rich query syntax (query language, script syntax)
- JSON search
- HTML/XML tag aware highlighting
- Similar search
- Synonym expansion
- Autocomplete
- Query log analysis

The PGroonga documentation is extensive and spans hundreds of pages. For detailed usage, API reference, operators, functions, and tuning guides, please refer to the official documentation site:

- [PGroonga Official Documentation](https://pgroonga.github.io/)
- [Getting Started](https://pgroonga.github.io/install/)
- [Tutorial](https://pgroonga.github.io/tutorial/)
- [How-to Guides](https://pgroonga.github.io/how-to/)
- [Reference](https://pgroonga.github.io/reference/)

## Quick Start

```sql
CREATE EXTENSION pgroonga_database;
CREATE EXTENSION pgroonga;

-- Create a table with text content
CREATE TABLE memos (
  id integer,
  content text
);

-- Create a PGroonga index
CREATE INDEX pgroonga_content_index ON memos USING pgroonga (content);

-- Insert data
INSERT INTO memos VALUES (1, 'PostgreSQL is a relational database management system.');
INSERT INTO memos VALUES (2, 'Groonga is a fast full text search engine that supports all languages.');
INSERT INTO memos VALUES (3, 'PGroonga is a PostgreSQL extension that uses Groonga as its backend.');

-- Full text search
SELECT * FROM memos WHERE content &@~ 'PostgreSQL OR Groonga';
```
