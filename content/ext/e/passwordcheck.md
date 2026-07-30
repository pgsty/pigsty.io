---
title: "passwordcheck"
linkTitle: "passwordcheck"
description: "checks user passwords and reject weak password"
weight: 7990
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/passwordcheck.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/passwordcheck.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/passwordcheck.html</div>
  </a>
  <a class="ext-card ext-card--source" href="https://repo.pigsty.io/ext/src/passwordcheck_cracklib-3.1.0.tar.gz">
    <div class="ext-card__kicker">Source</div>
    <div class="ext-card__title">passwordcheck_cracklib-3.1.0.tar.gz</div>
    <div class="ext-card__desc">passwordcheck_cracklib-3.1.0.tar.gz</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`passwordcheck`**](/ext/e/passwordcheck) | `-` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7990  | [**`passwordcheck`**](/ext/e/passwordcheck) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_pwhash`](/ext/e/pg_pwhash) [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) [`credcheck`](/ext/e/credcheck) [`passwordpolicy`](/ext/e/passwordpolicy) [`chkpass`](/ext/e/chkpass) [`pg_enigma`](/ext/e/pg_enigma) [`column_encrypt`](/ext/e/column_encrypt) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> | <span class="ext-badge ext-badge--avail">-</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL





## Usage

> [passwordcheck: Check password strength on CREATE/ALTER ROLE](https://www.postgresql.org/docs/current/passwordcheck.html)

`passwordcheck` validates password strength whenever passwords are set using `CREATE ROLE` or `ALTER ROLE`. Weak passwords are rejected with an error.

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'passwordcheck'
```

### Configuration Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `passwordcheck.min_password_length` | `8` | Minimum password length in bytes (superuser only) |

### How It Works

The module checks passwords set via `CREATE ROLE` or `ALTER ROLE`:

```sql
-- Rejected if password is too short or too weak
CREATE ROLE myuser WITH LOGIN PASSWORD 'abc';
-- ERROR: password is too short

-- Accepted with a strong enough password
CREATE ROLE myuser WITH LOGIN PASSWORD 'Str0ng_P@ssword!';
```

### Default Checks

Without CrackLib, the module enforces:
- Minimum password length (configurable via `passwordcheck.min_password_length`)
- Password must not be the username
- Basic complexity requirements

### Limitations

- Pre-encrypted passwords sent by client programs cannot be fully validated
- The module can only guess the actual password from encrypted submissions
- For stronger security, consider external authentication methods (e.g., GSSAPI)
- No `CREATE EXTENSION` is required -- this is a shared library module only
