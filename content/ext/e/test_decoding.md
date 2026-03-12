---
title: "test_decoding"
linkTitle: "test_decoding"
description: "SQL-based test/example module for WAL logical decoding"
weight: 9970
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/test-decoding.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/test-decoding.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/test-decoding.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`test_decoding`**](/ext/e/test_decoding) | `-` | <a class="ext-badge ext-badge--cate etl" href="/ext/cate/etl">ETL</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 9970  | [**`test_decoding`**](/ext/e/test_decoding) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`wal2json`](/ext/e/wal2json) [`decoderbufs`](/ext/e/decoderbufs) [`decoder_raw`](/ext/e/decoder_raw) [`pgoutput`](/ext/e/pgoutput) [`pglogical`](/ext/e/pglogical) [`pg_failover_slots`](/ext/e/pg_failover_slots) [`pgactive`](/ext/e/pgactive) [`kafka_fdw`](/ext/e/kafka_fdw) |
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

> [test_decoding: SQL-based test/example module for WAL logical decoding](https://www.postgresql.org/docs/current/test-decoding.html)

A built-in PostgreSQL logical decoding output plugin that produces text representations of WAL changes. Primarily used for testing and as a reference implementation.

### Configuration

In `postgresql.conf`:

```ini
wal_level = logical
max_replication_slots = 10
max_wal_senders = 10
```

### Using with SQL Functions

```sql
-- Create a logical replication slot
SELECT * FROM pg_create_logical_replication_slot('test_slot', 'test_decoding');

-- Perform some changes
CREATE TABLE test_table (id serial PRIMARY KEY, data text);
INSERT INTO test_table (data) VALUES ('hello');
UPDATE test_table SET data = 'world' WHERE id = 1;
DELETE FROM test_table WHERE id = 1;

-- Peek at changes (without consuming)
SELECT * FROM pg_logical_slot_peek_changes('test_slot', NULL, NULL);

-- Get and consume changes
SELECT * FROM pg_logical_slot_get_changes('test_slot', NULL, NULL);
```

### Output Format

```
BEGIN 1234
table public.test_table: INSERT: id[integer]:1 data[text]:'hello'
table public.test_table: UPDATE: id[integer]:1 data[text]:'world'
table public.test_table: DELETE: id[integer]:1
COMMIT 1234
```

### Using with pg_recvlogical

```bash
# Create slot
pg_recvlogical -d postgres --slot test_slot --create-slot -P test_decoding

# Stream changes
pg_recvlogical -d postgres --slot test_slot --start -f -

# Drop slot
pg_recvlogical -d postgres --slot test_slot --drop-slot
```

### Options

Pass options as key-value pairs:

```sql
SELECT * FROM pg_logical_slot_get_changes('test_slot', NULL, NULL,
    'include-xids', '1',
    'skip-empty-xacts', '1',
    'include-timestamp', '1'
);
```

- `include-xids` - include transaction IDs in output
- `skip-empty-xacts` - skip transactions with no changes
- `include-timestamp` - include commit timestamps

### Notes

- Ships with PostgreSQL (contrib module, no separate installation needed)
- Intended for testing and debugging logical decoding
- For production CDC, use purpose-built plugins (wal2json, pgoutput, decoderbufs)
