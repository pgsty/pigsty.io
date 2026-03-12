---
title: "plperl"
linkTitle: "plperl"
description: "PL/Perl procedural language"
weight: 3260
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/plperl.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/plperl.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/plperl.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plperl`**](/ext/e/plperl) | `1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3260  | [**`plperl`**](/ext/e/plperl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3261  | [**`bool_plperl`**](/ext/e/bool_plperl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3262  | [**`hstore_plperl`**](/ext/e/hstore_plperl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3263  | [**`jsonb_plperl`**](/ext/e/jsonb_plperl) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plperl`](/ext/e/plperl) [`plperlu`](/ext/e/plperlu) [`bool_plperlu`](/ext/e/bool_plperlu) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) [`hstore_plperlu`](/ext/e/hstore_plperlu) [`plpgsql`](/ext/e/plpgsql) [`pg_tle`](/ext/e/pg_tle) [`plv8`](/ext/e/plv8) [`pllua`](/ext/e/pllua) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`bool_plperl`](/ext/e/bool_plperl) [`hstore_plperl`](/ext/e/hstore_plperl) [`jsonb_plperl`](/ext/e/jsonb_plperl) [`plperl`](/ext/e/plperl) [`sparql`](/ext/e/sparql) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION plperl;
```



## Usage

> [plperl: PL/Perl trusted procedural language](https://www.postgresql.org/docs/current/plperl.html)

PL/Perl allows writing PostgreSQL functions in Perl. As a trusted language, it runs in a restricted environment without access to the filesystem or external modules.

```sql
CREATE EXTENSION plperl;

-- Simple scalar function
CREATE FUNCTION perl_hello(text) RETURNS text
LANGUAGE plperl AS $$
  my ($name) = @_;
  return "Hello, $name!";
$$;

SELECT perl_hello('world');

-- Using Perl regex for text processing
CREATE FUNCTION clean_whitespace(text) RETURNS text
LANGUAGE plperl AS $$
  my ($str) = @_;
  $str =~ s/^\s+|\s+$//g;   # trim
  $str =~ s/\s+/ /g;         # collapse internal whitespace
  return $str;
$$;

-- Returning a composite type
CREATE TYPE name_parts AS (first_name text, last_name text);

CREATE FUNCTION split_name(text) RETURNS name_parts
LANGUAGE plperl AS $$
  my ($full) = @_;
  my ($first, $last) = split(/\s+/, $full, 2);
  return { first_name => $first, last_name => $last };
$$;

-- Set-returning function
CREATE FUNCTION perl_generate_series(integer, integer) RETURNS SETOF integer
LANGUAGE plperl AS $$
  my ($start, $stop) = @_;
  for my $i ($start .. $stop) {
    return_next($i);
  }
  return undef;
$$;

-- Trigger function
CREATE FUNCTION perl_audit_trigger() RETURNS trigger
LANGUAGE plperl AS $$
  $_TD->{new}{modified_at} = localtime();
  return "MODIFY";
$$;
```

Database access uses `spi_exec_query`:

```sql
CREATE FUNCTION perl_row_count(text) RETURNS integer
LANGUAGE plperl AS $$
  my ($table) = @_;
  my $rv = spi_exec_query("SELECT count(*) AS cnt FROM $table");
  return $rv->{rows}[0]{cnt};
$$;
```
