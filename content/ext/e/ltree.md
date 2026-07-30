---
title: "ltree"
linkTitle: "ltree"
description: "data type for hierarchical tree-like structures"
weight: 3960
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/ltree.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/ltree.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/ltree.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`ltree`**](/ext/e/ltree) | `1.3` | <a class="ext-badge ext-badge--cate type" href="/ext/cate/type">TYPE</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 3960  | [**`ltree`**](/ext/e/ltree) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`age`](/ext/e/age) [`pg_liquid`](/ext/e/pg_liquid) [`onesparse`](/ext/e/onesparse) [`graph`](/ext/e/graph) [`pgrdf`](/ext/e/pgrdf) [`ltree_plpython3u`](/ext/e/ltree_plpython3u) [`prefix`](/ext/e/prefix) [`ip4r`](/ext/e/ip4r) [`seg`](/ext/e/seg) [`cube`](/ext/e/cube) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Depended By** | [`fsm_core`](/ext/e/fsm_core) [`ltree_plpython3u`](/ext/e/ltree_plpython3u) |
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> | <span class="ext-badge ext-badge--avail">1.3</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION ltree;
```




## Usage

> [ltree: hierarchical tree-like label data type](https://www.postgresql.org/docs/current/ltree.html)

The `ltree` extension provides data types for hierarchical tree-structured data with extensive search facilities.

```sql
CREATE EXTENSION ltree;
```

### Data Types

- **`ltree`**: Label path (e.g., `Top.Science.Astronomy`)
- **`lquery`**: Regex-like pattern for matching ltree values
- **`ltxtquery`**: Full-text-search-like pattern

### Basic Usage

```sql
CREATE TABLE categories (path ltree);
INSERT INTO categories VALUES
    ('Top'), ('Top.Science'), ('Top.Science.Astronomy'),
    ('Top.Hobbies'), ('Top.Collections.Pictures');

-- Find descendants
SELECT path FROM categories WHERE path <@ 'Top.Science';

-- Pattern matching
SELECT path FROM categories WHERE path ~ '*.Astronomy.*';

-- Full-text search
SELECT path FROM categories WHERE path @ 'Science & !Pictures';
```

### Operators

| Operator | Description |
|----------|-------------|
| `@>` | Is ancestor of (or equal) |
| `<@` | Is descendant of (or equal) |
| `~` | Matches lquery pattern |
| `?` | Matches any lquery in array |
| `@` | Matches ltxtquery |
| `\|\|` | Concatenate paths |

### lquery Patterns

```sql
'*.Science.*'           -- any path containing Science
'Top.*{1,2}.Astronomy'  -- 1-2 labels between Top and Astronomy
'*.astro*'              -- prefix matching
'*.Astro*@'             -- case-insensitive prefix
```

### Functions

```sql
SELECT nlevel('Top.Science.Astronomy');                     -- 3
SELECT subltree('Top.Science.Astronomy', 1, 2);            -- Science
SELECT subpath('Top.Science.Astronomy', 1);                 -- Science.Astronomy
SELECT index('a.b.c.d', 'b.c');                             -- 1
SELECT lca('1.2.3', '1.2.3.4.5');                          -- 1.2
SELECT lca(ARRAY['1.2.3'::ltree, '1.2.4'::ltree]);        -- 1.2
```

### Index Support

```sql
-- GiST index (supports @>, <@, ~, ?, @)
CREATE INDEX path_gist_idx ON categories USING gist (path);

-- B-tree index (supports <, <=, =, >=, >)
CREATE INDEX path_idx ON categories USING btree (path);
```
