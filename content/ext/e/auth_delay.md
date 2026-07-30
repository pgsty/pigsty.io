---
title: "auth_delay"
linkTitle: "auth_delay"
description: "pause briefly before reporting authentication failure"
weight: 7970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/auth-delay.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/auth-delay.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/auth-delay.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`auth_delay`**](/ext/e/auth_delay) | `-` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7970  | [**`auth_delay`**](/ext/e/auth_delay) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_session_jwt`](/ext/e/pg_session_jwt) [`login_hook`](/ext/e/login_hook) [`set_user`](/ext/e/set_user) [`pg_auth_mon`](/ext/e/pg_auth_mon) [`pgjwt`](/ext/e/pgjwt) [`pg_oidc_validator`](/ext/e/pg_oidc_validator) [`oidc_validator`](/ext/e/oidc_validator) [`pg_permissions`](/ext/e/pg_permissions) [`pgaudit`](/ext/e/pgaudit) |
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

> [auth_delay: Pause before reporting authentication failure](https://www.postgresql.org/docs/current/auth-delay.html)

`auth_delay` pauses the server briefly before reporting authentication failures, making brute-force password attacks more difficult.

### Configuration

Add to `postgresql.conf`:

```ini
shared_preload_libraries = 'auth_delay'
auth_delay.milliseconds = '500'
```

### Configuration Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `auth_delay.milliseconds` | `0` | Milliseconds to wait before reporting auth failure |

### Notes

- Must be loaded via `shared_preload_libraries`
- Does not prevent denial-of-service attacks (waiting processes still hold connection slots)
- No `CREATE EXTENSION` is required -- this is a shared library module only
