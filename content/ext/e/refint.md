---
title: "refint"
linkTitle: "refint"
description: "functions for implementing referential integrity (obsolete)"
weight: 4880
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-REFINT">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-REFINT</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/contrib-spi.html#CONTRIB-SPI-REFINT</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`refint`**](/ext/e/refint) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4880  | [**`refint`**](/ext/e/refint) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`pg_uuidv7`](/ext/e/pg_uuidv7) [`permuteseq`](/ext/e/permuteseq) [`pg_hashids`](/ext/e/pg_hashids) [`sequential_uuids`](/ext/e/sequential_uuids) [`topn`](/ext/e/topn) [`quantile`](/ext/e/quantile) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION refint;
```




## Usage

> [refint: referential integrity trigger functions](https://www.postgresql.org/docs/current/contrib-spi.html)

Provides trigger functions for implementing referential integrity checks (largely superseded by built-in foreign key constraints).

```sql
CREATE EXTENSION refint;
```

### Trigger Functions

| Function | Description |
|---|---|
| `check_primary_key()` | Check referencing table -- ensures referenced row exists |
| `check_foreign_key()` | Check referenced table -- handles cascading actions on delete/update |

### check_primary_key

Trigger on the referencing table (`AFTER INSERT OR UPDATE`). Parameters: referencing column name(s), referenced table name, referenced column name(s).

```sql
CREATE TRIGGER check_fk
  AFTER INSERT OR UPDATE ON orders
  FOR EACH ROW
  EXECUTE FUNCTION check_primary_key('customer_id', 'customers', 'id');
```

### check_foreign_key

Trigger on the referenced table (`AFTER DELETE OR UPDATE`). Parameters: number of referencing tables, action (`cascade`, `restrict`, or `setnull`), primary key column(s), then referencing table and column pairs.

```sql
CREATE TRIGGER check_ref
  AFTER DELETE OR UPDATE ON customers
  FOR EACH ROW
  EXECUTE FUNCTION check_foreign_key(1, 'cascade', 'id', 'orders', 'customer_id');
```
