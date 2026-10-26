---
title: "uuid-ossp"
linkTitle: "uuid-ossp"
description: "generate universally unique identifiers (UUIDs)"
weight: 4930
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/uuid-ossp.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/uuid-ossp.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/uuid-ossp.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`uuid-ossp`**](/ext/e/uuid-ossp) | `1.1` | <a class="ext-badge ext-badge--cate func" href="/ext/cate/func">FUNC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 4930  | [**`uuid-ossp`**](/ext/e/uuid-ossp) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_uuidv7`](/ext/e/pg_uuidv7) [`sequential_uuids`](/ext/e/sequential_uuids) [`pg_idkit`](/ext/e/pg_idkit) [`pgx_ulid`](/ext/e/pgx_ulid) [`snowflake`](/ext/e/snowflake) [`pg_uuid_v8`](/ext/e/pg_uuid_v8) [`typeid`](/ext/e/typeid) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`babelfishpg_tsql`](/ext/e/babelfishpg_tsql) [`provsql`](/ext/e/provsql) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION uuid-ossp;
```




## Usage

> [uuid-ossp: UUID generation functions](https://www.postgresql.org/docs/current/uuid-ossp.html)

Provides functions to generate UUIDs using several standard algorithms. Note: for simple random UUIDs, consider using the built-in `gen_random_uuid()` instead.

```sql
CREATE EXTENSION "uuid-ossp";
```

### UUID Generation Functions

| Function | Description |
|---|---|
| `uuid_generate_v1()` | Version 1: MAC address + timestamp |
| `uuid_generate_v1mc()` | Version 1 with random multicast MAC |
| `uuid_generate_v3(namespace uuid, name text)` | Version 3: MD5 hash of namespace + name |
| `uuid_generate_v4()` | Version 4: fully random |
| `uuid_generate_v5(namespace uuid, name text)` | Version 5: SHA-1 hash of namespace + name (preferred over v3) |

### Namespace Constants

| Function | Description |
|---|---|
| `uuid_nil()` | Nil UUID (all zeros) |
| `uuid_ns_dns()` | DNS namespace |
| `uuid_ns_url()` | URL namespace |
| `uuid_ns_oid()` | ISO OID namespace |
| `uuid_ns_x500()` | X.500 DN namespace |

### Examples

```sql
-- Random UUID (v4)
SELECT uuid_generate_v4();

-- Timestamp-based UUID (v1)
SELECT uuid_generate_v1();

-- Deterministic UUID from name (v5, preferred over v3)
SELECT uuid_generate_v5(uuid_ns_url(), 'http://www.postgresql.org');

-- Use as default primary key
CREATE TABLE items (
  id uuid DEFAULT uuid_generate_v4() PRIMARY KEY,
  name text
);
```
