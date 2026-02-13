---
title: Fork Instance with XFS
linkTitle: Fork Instance
weight: 1708
description: Clone a PostgreSQL instance on the same machine with pg-fork.
icon: fa-solid fa-code-fork
categories: [Task]
---

Pigsty provides `pg-fork`, a utility script for quickly cloning a PostgreSQL instance on the same machine.

If your filesystem supports Copy-on-Write (XFS with reflink, Btrfs, ZFS), cloning is usually sub-second and requires almost no extra storage.


--------

## Quick Start

Run as `postgres` (dbsu):

```bash
pg-fork 1                         # /pg/data -> /pg/data1, port 15432
pg-fork 2 -d /pg/data1            # /pg/data1 -> /pg/data2, port 25432
pg-fork 3 -D /tmp/test -P 5555    # custom target directory and port
```

Start and verify the cloned instance:

```bash
pg_ctl -D /pg/data1 start
psql -p 15432
```


--------

## Syntax

```bash
pg-fork <FORK_ID> [options]
```

Required:

| Param | Description |
|:------|:------------|
| `<FORK_ID>` | Clone ID (`1-9`), used to derive default target data dir and port |

Optional:

| Param | Description | Default |
|:------|:------------|:--------|
| `-d, --data <datadir>` | Source data directory | `/pg/data` or `$PG_DATA` |
| `-D, --dst <dst_dir>` | Target data directory | `/pg/data<FORK_ID>` |
| `-p, --port <port>` | Source instance port | `5432` or `$PG_PORT` |
| `-P, --dst-port <port>` | Target instance port | `<FORK_ID>5432` |
| `-s, --skip` | Skip backup API and use cold copy mode | - |
| `-y, --yes` | Skip confirmation prompts | - |
| `-h, --help` | Print help | - |


--------

## How It Works

`pg-fork` supports two modes:

- Hot backup mode (default): calls `pg_backup_start()` and `pg_backup_stop()`, then copies data with `cp --reflink=auto`.
- Cold copy mode (`-s`): directly copies the data directory when source PostgreSQL is stopped.

In both cases, `pg-fork` updates the cloned instance config to avoid conflicts with the source instance.


--------

## Related

- Combined clone + PITR workflow: [Instance Recovery](/docs/pgsql/tutorial/instance/)
- Manual PITR walkthrough: [Manual Recovery](/docs/pgsql/tutorial/pitr/)
