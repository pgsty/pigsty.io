---
title: "plpgsql"
linkTitle: "plpgsql"
description: "PL/pgSQL procedural language"
weight: 3280
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/plpgsql.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/plpgsql.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/plpgsql.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`plpgsql`**](/ext/e/plpgsql) | `1.0` | <a class="ext-badge ext-badge--cate lang" href="/ext/cate/lang">LANG</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3280  | [**`plpgsql`**](/ext/e/plpgsql) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | `pg_catalog` |
{.ext-table}

| **Related** | [`pldbgapi`](/ext/e/pldbgapi) [`plprofiler`](/ext/e/plprofiler) [`pltclu`](/ext/e/pltclu) [`plv8`](/ext/e/plv8) [`plluau`](/ext/e/plluau) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`data_historization`](/ext/e/data_historization) [`ddl_historization`](/ext/e/ddl_historization) [`pg4ml`](/ext/e/pg4ml) [`pg_drop_events`](/ext/e/pg_drop_events) [`pg_profile`](/ext/e/pg_profile) [`pg_upless`](/ext/e/pg_upless) [`plpgsql_check`](/ext/e/plpgsql_check) [`powa`](/ext/e/powa) [`table_version`](/ext/e/table_version) [`unit`](/ext/e/unit) [`biscuit`](/ext/e/biscuit) [`db2fce`](/ext/e/db2fce) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> | <span class="ext-badge ext-badge--avail">1.0</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION plpgsql;
```




## Usage

> [plpgsql: PL/pgSQL procedural language](https://www.postgresql.org/docs/current/plpgsql.html)

PL/pgSQL is PostgreSQL's default procedural language. It extends SQL with control structures, variables, cursors, and exception handling.

```sql
CREATE EXTENSION plpgsql;  -- installed by default

-- Basic function with variables and control flow
CREATE FUNCTION calculate_discount(price numeric, quantity integer) RETURNS numeric
LANGUAGE plpgsql AS $$
DECLARE
  discount numeric := 0;
BEGIN
  IF quantity >= 100 THEN
    discount := 0.20;
  ELSIF quantity >= 50 THEN
    discount := 0.10;
  ELSIF quantity >= 10 THEN
    discount := 0.05;
  END IF;
  RETURN price * quantity * (1 - discount);
END;
$$;

-- Loop and set-returning function
CREATE FUNCTION fibonacci(n integer) RETURNS SETOF integer
LANGUAGE plpgsql AS $$
DECLARE
  a integer := 0;
  b integer := 1;
  tmp integer;
BEGIN
  FOR i IN 1..n LOOP
    RETURN NEXT a;
    tmp := a + b;
    a := b;
    b := tmp;
  END LOOP;
END;
$$;

SELECT * FROM fibonacci(10);

-- Exception handling
CREATE FUNCTION safe_divide(a numeric, b numeric) RETURNS numeric
LANGUAGE plpgsql AS $$
BEGIN
  RETURN a / b;
EXCEPTION
  WHEN division_by_zero THEN
    RAISE NOTICE 'Division by zero, returning NULL';
    RETURN NULL;
END;
$$;

-- Trigger function
CREATE FUNCTION update_modified_column() RETURNS trigger
LANGUAGE plpgsql AS $$
BEGIN
  NEW.modified_at = now();
  RETURN NEW;
END;
$$;

CREATE TRIGGER set_modified
  BEFORE UPDATE ON my_table
  FOR EACH ROW EXECUTE FUNCTION update_modified_column();

-- Procedure with transaction control (PG 11+)
CREATE PROCEDURE batch_archive(batch_size integer)
LANGUAGE plpgsql AS $$
DECLARE
  rows_moved integer;
BEGIN
  LOOP
    WITH moved AS (
      DELETE FROM orders WHERE status = 'completed'
      RETURNING *
    )
    INSERT INTO orders_archive SELECT * FROM moved;

    GET DIAGNOSTICS rows_moved = ROW_COUNT;
    COMMIT;
    EXIT WHEN rows_moved < batch_size;
  END LOOP;
END;
$$;
```
