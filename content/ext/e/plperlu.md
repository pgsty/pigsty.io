---
title: "plperlu"
linkTitle: "plperlu"
description: "PL/PerlU untrusted procedural language"
weight: 3270
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
| [**`plperlu`**](/ext/e/plperlu) | `1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3270  | [**`plperlu`**](/ext/e/plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
| 3271  | [**`bool_plperlu`**](/ext/e/bool_plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3272  | [**`jsonb_plperlu`**](/ext/e/jsonb_plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
| 3273  | [**`hstore_plperlu`**](/ext/e/hstore_plperlu) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`plperl`](/ext/e/plperl) [`plpython3u`](/ext/e/plpython3u) [`plluau`](/ext/e/plluau) [`pltclu`](/ext/e/pltclu) [`plsh`](/ext/e/plsh) [`pljava`](/ext/e/pljava) [`plr`](/ext/e/plr) [`plxslt`](/ext/e/plxslt) [`plpgsql`](/ext/e/plpgsql) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`bool_plperlu`](/ext/e/bool_plperlu) [`hstore_plperlu`](/ext/e/hstore_plperlu) [`jsonb_plperlu`](/ext/e/jsonb_plperlu) [`pg_utl_smtp`](/ext/e/pg_utl_smtp) [`sparql`](/ext/e/sparql) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION plperlu;
```




## Usage

> [plperlu: PL/Perl untrusted procedural language](https://www.postgresql.org/docs/current/plperl.html)

PL/Perl Untrusted provides full Perl capabilities including external module loading, filesystem access, and network operations. Only superusers can create functions in this language.

```sql
CREATE EXTENSION plperlu;

-- Use external CPAN modules
CREATE FUNCTION fetch_url(text) RETURNS text
LANGUAGE plperlu AS $$
  use LWP::Simple;
  my ($url) = @_;
  return get($url);
$$;

-- Read a file from the server filesystem
CREATE FUNCTION read_server_file(text) RETURNS text
LANGUAGE plperlu AS $$
  my ($path) = @_;
  open my $fh, '<', $path or die "Cannot open $path: $!";
  local $/;
  my $content = <$fh>;
  close $fh;
  return $content;
$$;

-- JSON processing with external module
CREATE FUNCTION parse_json_key(text, text) RETURNS text
LANGUAGE plperlu AS $$
  use JSON;
  my ($json_str, $key) = @_;
  my $data = decode_json($json_str);
  return $data->{$key};
$$;

-- Send email using Net::SMTP
CREATE FUNCTION send_email(text, text, text) RETURNS boolean
LANGUAGE plperlu AS $$
  use Net::SMTP;
  my ($to, $subject, $body) = @_;
  my $smtp = Net::SMTP->new('localhost');
  $smtp->mail('postgres@localhost');
  $smtp->to($to);
  $smtp->data();
  $smtp->datasend("Subject: $subject\n\n$body");
  $smtp->dataend();
  $smtp->quit();
  return 1;
$$;
```
