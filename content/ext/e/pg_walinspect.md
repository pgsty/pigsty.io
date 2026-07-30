---
title: "pg_walinspect"
linkTitle: "pg_walinspect"
description: "functions to inspect contents of PostgreSQL Write-Ahead Log"
weight: 6940
---

<div class="ext-cards">
  <a class="ext-card ext-card--repo" href="https://www.postgresql.org/docs/current/pgwalinspect.html">
    <div class="ext-card__kicker">Repository</div>
    <div class="ext-card__title">https://www.postgresql.org/docs/current/pgwalinspect.html</div>
    <div class="ext-card__desc">https://www.postgresql.org/docs/current/pgwalinspect.html</div>
  </a>
</div>


---------

## Overview

| **Package** | **Version** | **Category** | **License** | **Language** |
|:---------------------------------------------------:|:-------:|:--------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------:|:--------------------------------------------------------------------:|
| [**`pg_walinspect`**](/ext/e/pg_walinspect) | `1.1` | <a class="ext-badge ext-badge--cate stat" href="/ext/cate/stat">STAT</a> | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> |
{.ext-table}

|  ID   | **Extension** | **Bin** | **Lib** | **Load** | **Create** | **Trust** | **Reloc** | **Schema** |
|:-----:|:-------------------------------------------------------------------------|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:---------------------------------------------:|:--------------------------------------------:|:--------------------------------------------:|:----------|
| 6940  | [**`pg_walinspect`**](/ext/e/pg_walinspect) | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--yes">Yes</span> | <span class="ext-flag ext-flag--no">No</span> | <span class="ext-flag ext-flag--no">No</span> | - |
{.ext-table}

| **Related** | [`wal2json`](/ext/e/wal2json) [`pgoutput`](/ext/e/pgoutput) [`test_decoding`](/ext/e/test_decoding) [`pg_logicalinspect`](/ext/e/pg_logicalinspect) [`decoderbufs`](/ext/e/decoderbufs) [`wal2mongo`](/ext/e/wal2mongo) [`decoder_raw`](/ext/e/decoder_raw) [`pgmqtt`](/ext/e/pgmqtt) [`kafka_fdw`](/ext/e/kafka_fdw) [`pgq`](/ext/e/pgq) |
|:--------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
{.ext-table .ext-table--rel}


## Version

| **PG18** | **PG17** | **PG16** | **PG15** | **PG14** |
|:------:|:------:|:------:|:------:|:------:|
| <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--avail">1.1</span> | <span class="ext-badge ext-badge--miss">✗</span> |
{.ext-table}


## Install

> **Note**: This is a built-in contrib extension of PostgreSQL

```sql
CREATE EXTENSION pg_walinspect;
```




## Usage

> [pg_walinspect: low-level WAL inspection](https://www.postgresql.org/docs/current/pgwalinspect.html)

pg_walinspect provides SQL functions to inspect write-ahead log (WAL) contents on a running server. Similar to `pg_waldump` but accessible via SQL.

### Functions

**`pg_get_wal_record_info(in_lsn pg_lsn)`** -- single WAL record details:

```sql
SELECT * FROM pg_get_wal_record_info('0/E419E28');

 start_lsn        | 0/E419E28
 end_lsn          | 0/E419E68
 prev_lsn         | 0/E419D78
 xid              | 0
 resource_manager | Heap2
 record_type      | VACUUM
 record_length    | 58
 main_data_length | 2
 fpi_length       | 0
 description      | nunused: 5, unused: [1, 2, 3, 4, 5]
 block_ref        | blkref #0: rel 1663/16385/1249 fork main blk 364
```

**`pg_get_wal_records_info(start_lsn, end_lsn)`** -- all records in an LSN range:

```sql
SELECT * FROM pg_get_wal_records_info('0/1E913618', '0/1E913740');
```

**`pg_get_wal_block_info(start_lsn, end_lsn, show_data)`** -- block references from WAL records:

```sql
SELECT * FROM pg_get_wal_block_info('0/1230278', '0/12302B8');
```

Returns per block reference: `start_lsn`, `end_lsn`, `block_id`, `reltablespace`, `reldatabase`, `relfilenode`, `relforknumber`, `relblocknumber`, `xid`, `fork_flags`, `block_data`, `block_fpi_data`, etc.

**`pg_get_wal_stats(start_lsn, end_lsn, per_record)`** -- aggregate WAL statistics:

```sql
SELECT * FROM pg_get_wal_stats('0/1E847D00', '0/1E84F500')
WHERE count > 0;
```

### Tips

- Use `FFFFFFFF/FFFFFFFF` as `end_lsn` to read up to the current server LSN
- If `in_lsn` is not at a record boundary, the next valid record is returned
- All functions use the server's current timeline ID

### Access

Restricted to superusers and members of `pg_read_server_files`.
