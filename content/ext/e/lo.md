---
title: "lo"
linkTitle: "lo"
description: "Large Object maintenance"
weight: 5930
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/lo.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/lo.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/lo.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`lo`**](/ext/e/lo) | `1.1` | <a class="ext-badge ext-badge--cate admin" href="/ext/cate/admin">ADMIN</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 5930  | [**`lo`**](/ext/e/lo) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`lolor`](/ext/e/lolor) [`pg_surgery`](/ext/e/pg_surgery) [`pg_repack`](/ext/e/pg_repack) [`pglogical`](/ext/e/pglogical) [`spock`](/ext/e/spock) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION lo;
```




## Usage

> [lo: Large Object maintenance](https://www.postgresql.org/docs/current/lo.html)

The `lo` extension provides a data type and trigger function for managing PostgreSQL Large Objects, preventing orphaned objects when references are updated or deleted.

### Data Type

The `lo` type is a domain over `oid`, used to identify columns that hold Large Object references. This is especially useful for ODBC driver compatibility.

```sql
CREATE TABLE image (
    title  text,
    raster lo      -- large object reference column
);
```

### Trigger Function

The `lo_manage()` trigger automatically calls `lo_unlink()` to delete the associated Large Object when a row is updated or deleted:

```sql
CREATE TRIGGER t_raster
    BEFORE UPDATE OR DELETE ON image
    FOR EACH ROW EXECUTE FUNCTION lo_manage(raster);
```

For multiple `lo` columns, create a separate trigger for each:

```sql
CREATE TABLE gallery (
    title     text,
    thumbnail lo,
    fullsize  lo
);

CREATE TRIGGER t_thumbnail
    BEFORE UPDATE OR DELETE ON gallery
    FOR EACH ROW EXECUTE FUNCTION lo_manage(thumbnail);

CREATE TRIGGER t_fullsize
    BEFORE UPDATE OR DELETE ON gallery
    FOR EACH ROW EXECUTE FUNCTION lo_manage(fullsize);
```

To restrict the trigger to column updates only:

```sql
CREATE TRIGGER t_raster
    BEFORE UPDATE OF raster OR DELETE ON image
    FOR EACH ROW EXECUTE FUNCTION lo_manage(raster);
```

### Limitations

- `DROP TABLE` and `TRUNCATE` do not fire row-level triggers, so Large Objects will be orphaned. Run `DELETE FROM table` before dropping.
- The trigger assumes each Large Object is referenced by only one column/row.
- Use the `vacuumlo` utility to clean up any orphaned Large Objects.

The extension is trusted and can be installed by non-superusers with `CREATE` privilege.
