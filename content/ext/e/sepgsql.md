---
title: "sepgsql"
linkTitle: "sepgsql"
description: "label-based mandatory access control (MAC) based on SELinux security policy."
weight: 7960
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/sepgsql.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/sepgsql.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/sepgsql.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`sepgsql`**](/ext/e/sepgsql) | `-` | <a class="ext-badge ext-badge--cate sec" href="/ext/cate/sec">SEC</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 7960  | [**`sepgsql`**](/ext/e/sepgsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`pg_readonly`](/ext/e/pg_readonly) [`pg_permissions`](/ext/e/pg_permissions) [`set_user`](/ext/e/set_user) [`noset`](/ext/e/noset) [`pgaudit`](/ext/e/pgaudit) [`credcheck`](/ext/e/credcheck) [`login_hook`](/ext/e/login_hook) [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) |
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

> [sepgsql: SELinux label-based mandatory access control for PostgreSQL](https://www.postgresql.org/docs/current/sepgsql.html)

`sepgsql` provides label-based mandatory access control (MAC) based on SELinux security policy. It adds an extra layer of security checking above PostgreSQL's standard SQL permissions.

### Configuration Parameters

| Parameter | Default | Description |
|-----------|---------|-------------|
| `sepgsql.permissive` | `off` | Enable permissive mode regardless of system SELinux settings |
| `sepgsql.debug_audit` | `off` | Force all possible logging regardless of policy |

### Functions

| Function | Returns | Description |
|----------|---------|-------------|
| `sepgsql_getcon()` | `text` | Get current client security label |
| `sepgsql_setcon(text)` | `boolean` | Switch client domain to new label (NULL to revert) |
| `sepgsql_mcstrans_in(text)` | `text` | Translate qualified MLS/MCS range to raw format |
| `sepgsql_mcstrans_out(text)` | `text` | Translate raw MLS/MCS range to qualified format |
| `sepgsql_restorecon(text)` | `boolean` | Set initial security labels for all objects in database |

### Security Labels

Security labels can be assigned to schemas, tables, columns, sequences, views, and functions:

```sql
SECURITY LABEL ON COLUMN customer.credit
    IS 'system_u:object_r:sepgsql_secret_table_t:s0';
```

### Dynamic Domain Transitions

```sql
SELECT sepgsql_getcon();
-- unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023

SELECT sepgsql_setcon('unconfined_u:unconfined_r:unconfined_t:s0-s0:c1.c4');
-- t
```

### Trusted Procedures

```sql
-- Create function to access sensitive data with masking
CREATE FUNCTION show_credit(int) RETURNS text
    AS 'SELECT regexp_replace(credit, ''-[0-9]+$'', ''-xxxx'', ''g'')
         FROM customer WHERE cid = $1'
    LANGUAGE sql;

-- Mark as trusted procedure
SECURITY LABEL ON FUNCTION show_credit(int)
    IS 'system_u:object_r:sepgsql_trusted_proc_exec_t:s0';
```

### Permission Classes

DML operations check: `db_table:{select|insert|update|delete}` and `db_column:{select|update|insert}`.
DDL operations check: `create`, `drop`, `setattr`, `add_name`, `remove_name`.
Schema access requires: `db_schema:search`.
