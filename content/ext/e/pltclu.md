---
title: "pltclu"
linkTitle: "pltclu"
description: "PL/TclU untrusted procedural language"
weight: 3250
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

| **Related** | [`plpgsql`](/ext/e/plpgsql) [`plperlu`](/ext/e/plperlu) [`plpython3u`](/ext/e/plpython3u) [`plv8`](/ext/e/plv8) [`plluau`](/ext/e/plluau) [`pljava`](/ext/e/pljava) [`pg_tle`](/ext/e/pg_tle) |
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
CREATE EXTENSION pltclu;
```




## Usage

> [pltclu: PL/Tcl untrusted procedural language](https://www.postgresql.org/docs/current/pltcl.html)

PL/Tcl Untrusted provides full Tcl capabilities including filesystem access and external program execution. Only superusers can create functions in this language.

```sql
CREATE EXTENSION pltclu;

-- Read a file from the server filesystem
CREATE FUNCTION read_file(filename text) RETURNS text
LANGUAGE pltclu AS $$
  set fd [open $1 r]
  set content [read $fd]
  close $fd
  return $content
$$;

-- Execute an external command
CREATE FUNCTION run_command(cmd text) RETURNS text
LANGUAGE pltclu AS $$
  return [exec {*}$1]
$$;

-- Access environment variables
CREATE FUNCTION get_env(varname text) RETURNS text
LANGUAGE pltclu AS $$
  if {[info exists ::env($1)]} {
    return $::env($1)
  }
  return ""
$$;

SELECT get_env('HOME');
```
