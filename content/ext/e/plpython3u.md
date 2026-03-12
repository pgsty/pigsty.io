---
title: "plpython3u"
linkTitle: "plpython3u"
description: "PL/Python3U untrusted procedural language"
weight: 3290
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/plpython.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/plpython.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/plpython.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plpython3u`**](/ext/e/plpython3u) | `1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3290  | [**`plpython3u`**](/ext/e/plpython3u) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3291  | [**`jsonb_plpython3u`**](/ext/e/jsonb_plpython3u) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 3292  | [**`ltree_plpython3u`**](/ext/e/ltree_plpython3u) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
| 3293  | [**`hstore_plpython3u`**](/ext/e/hstore_plpython3u) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | - |
{.ext-table}

| **Related** | [`faker`](/ext/e/faker) [`plv8`](/ext/e/plv8) [`pllua`](/ext/e/pllua) [`plluau`](/ext/e/plluau) [`pltcl`](/ext/e/pltcl) [`pltclu`](/ext/e/pltclu) [`plperl`](/ext/e/plperl) [`plperlu`](/ext/e/plperlu) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`hstore_plpython3u`](/ext/e/hstore_plpython3u) [`jsonb_plpython3u`](/ext/e/jsonb_plpython3u) [`ltree_plpython3u`](/ext/e/ltree_plpython3u) [`omni_python`](/ext/e/omni_python) [`pg4ml`](/ext/e/pg4ml) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION plpython3u;
```



## Usage

> [plpython3u: PL/Python3 untrusted procedural language](https://www.postgresql.org/docs/current/plpython.html)

PL/Python3U allows writing PostgreSQL functions in Python 3. It is an untrusted language with full access to the Python ecosystem. Only superusers can create functions.

```sql
CREATE EXTENSION plpython3u;

-- Simple function
CREATE FUNCTION py_hello(name text) RETURNS text
LANGUAGE plpython3u AS $$
  return f"Hello, {name}!"
$$;

SELECT py_hello('world');

-- Using Python standard library
CREATE FUNCTION py_sha256(data text) RETURNS text
LANGUAGE plpython3u AS $$
  import hashlib
  return hashlib.sha256(data.encode()).hexdigest()
$$;

-- Returning a composite type
CREATE TYPE address AS (street text, city text, zip text);

CREATE FUNCTION parse_address(raw text) RETURNS address
LANGUAGE plpython3u AS $$
  import re
  m = re.match(r'(.+),\s*(.+)\s+(\d{5})', raw)
  if m:
    return (m.group(1), m.group(2), m.group(3))
  return None
$$;

-- Set-returning function
CREATE FUNCTION py_generate_dates(start text, days int) RETURNS SETOF date
LANGUAGE plpython3u AS $$
  from datetime import datetime, timedelta
  d = datetime.strptime(start, '%Y-%m-%d')
  for i in range(days):
    yield (d + timedelta(days=i)).strftime('%Y-%m-%d')
$$;

-- Database access via plpy
CREATE FUNCTION py_row_count(table_name text) RETURNS bigint
LANGUAGE plpython3u AS $$
  result = plpy.execute(f"SELECT count(*) AS cnt FROM {table_name}")
  return result[0]['cnt']
$$;

-- Using external packages (must be installed on the server)
CREATE FUNCTION py_parse_json(url text) RETURNS jsonb
LANGUAGE plpython3u AS $$
  import json, urllib.request
  response = urllib.request.urlopen(url)
  data = json.loads(response.read())
  return json.dumps(data)
$$;
```
