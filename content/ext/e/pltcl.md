---
title: "pltcl"
linkTitle: "pltcl"
description: "PL/Tcl procedural language"
weight: 3240
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pltcl.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pltcl.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pltcl.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pltcl`**](/ext/e/pltcl) | `1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3240  | [**`pltcl`**](/ext/e/pltcl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3250  | [**`pltclu`**](/ext/e/pltclu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`plperl`](/ext/e/plperl) [`plpython3u`](/ext/e/plpython3u) [`pg_tle`](/ext/e/pg_tle) [`plv8`](/ext/e/plv8) [`pllua`](/ext/e/pllua) [`pljava`](/ext/e/pljava) |
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
CREATE EXTENSION pltcl;
```



## Usage

> [pltcl: PL/Tcl trusted procedural language](https://www.postgresql.org/docs/current/pltcl.html)

PL/Tcl allows writing PostgreSQL functions in the Tcl programming language. As a trusted language, it restricts access to the filesystem and other system resources.

```sql
CREATE EXTENSION pltcl;

-- Simple function returning a greeting
CREATE FUNCTION tcl_hello(name text) RETURNS text
LANGUAGE pltcl AS $$
  return "Hello, $1!"
$$;

SELECT tcl_hello('world');

-- Function with conditional logic
CREATE FUNCTION tcl_max(a integer, b integer) RETURNS integer
LANGUAGE pltcl AS $$
  if {$1 > $2} {return $1}
  return $2
$$;

-- Set-returning function
CREATE FUNCTION tcl_sequence(count integer) RETURNS SETOF integer
LANGUAGE pltcl AS $$
  for {set i 1} {$i <= $1} {incr i} {
    return_next $i
  }
$$;

-- Trigger function
CREATE FUNCTION tcl_audit() RETURNS trigger
LANGUAGE pltcl AS $$
  set NEW(modified_at) [clock format [clock seconds] -format "%Y-%m-%d %H:%M:%S"]
  return [array get NEW]
$$;
```

Database access from PL/Tcl uses the `spi_exec` command:

```sql
CREATE FUNCTION tcl_count_rows(tbl text) RETURNS integer
LANGUAGE pltcl AS $$
  spi_exec "SELECT count(*) AS cnt FROM $1"
  return $cnt
$$;
```
