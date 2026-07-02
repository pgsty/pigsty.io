---
title: "tcn"
linkTitle: "tcn"
description: "Triggered change notifications"
weight: 4920
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/tcn.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/tcn.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/tcn.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`tcn`**](/ext/e/tcn) | `1.0` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4920  | [**`tcn`**](/ext/e/tcn) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
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
CREATE EXTENSION tcn;
```




## Usage

> [tcn: triggered change notifications via LISTEN/NOTIFY](https://www.postgresql.org/docs/current/tcn.html)

Provides a trigger function that sends NOTIFY events with information about changed rows, enabling asynchronous change tracking.

```sql
CREATE EXTENSION tcn;
```

### Trigger Function

| Function | Description |
|---|---|
| `triggered_change_notification()` | Send NOTIFY on row changes with primary key info |

Optional parameter: custom channel name (defaults to `tcn`).

### Notification Payload Format

```
"table_name",operation,"column"='value',"column"='value'
```

Operations: `I` (INSERT), `U` (UPDATE), `D` (DELETE).

### Examples

```sql
CREATE TABLE tcndata (
  a int NOT NULL,
  b date NOT NULL,
  c text,
  PRIMARY KEY (a, b)
);

-- Attach the trigger
CREATE TRIGGER tcndata_tcn
  AFTER INSERT OR UPDATE OR DELETE ON tcndata
  FOR EACH ROW
  EXECUTE FUNCTION triggered_change_notification();

-- Listen for notifications
LISTEN tcn;

-- Changes trigger notifications:
INSERT INTO tcndata VALUES (1, '2024-01-01', 'test');
-- Notification: "tcndata",I,"a"='1',"b"='2024-01-01'

UPDATE tcndata SET c = 'updated' WHERE a = 1;
-- Notification: "tcndata",U,"a"='1',"b"='2024-01-01'

DELETE FROM tcndata WHERE a = 1;
-- Notification: "tcndata",D,"a"='1',"b"='2024-01-01'

-- Use a custom channel name
CREATE TRIGGER my_trigger
  AFTER INSERT OR UPDATE OR DELETE ON my_table
  FOR EACH ROW
  EXECUTE FUNCTION triggered_change_notification('my_channel');
```
