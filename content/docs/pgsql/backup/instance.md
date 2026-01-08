---
title: Instance Recovery
weight: 1508
description: Clone instances and perform point-in-time recovery on the same machine
icon: fa-solid fa-rotate-left
categories: [Task]
---

Pigsty provides two utility scripts for quickly cloning instances and performing point-in-time recovery on the same machine:

- [`pg-fork`](#pg-fork): Quickly clone a new PostgreSQL instance on the same machine
- [`pg-pitr`](#pg-pitr): Manually perform point-in-time recovery using pgbackrest

These two scripts can be used together: first use `pg-fork` to clone the instance, then use `pg-pitr` to restore the cloned instance to a specified point in time.


--------


## pg-fork

[`pg-fork`](https://github.com/pgsty/pigsty/blob/main/files/postgres/pg-fork) can quickly clone a new PostgreSQL instance on the same machine.

### Quick Start

Execute the following command as the `postgres` user (dbsu) to create a new instance:

```bash
pg-fork 1                         # Clone from /pg/data to /pg/data1, port 15432
pg-fork 2 -d /pg/data1            # Clone from /pg/data1 to /pg/data2, port 25432
pg-fork 3 -D /tmp/test -P 5555    # Clone to custom directory and port
```

After cloning, start and access the new instance:

```bash
pg_ctl -D /pg/data1 start         # Start cloned instance
psql -p 15432                     # Connect to cloned instance
```


### Command Syntax

```bash
pg-fork <FORK_ID> [options]
```

**Required Parameters:**

| Parameter | Description |
|-----------|-------------|
| `<FORK_ID>` | Clone instance number (1-9), determines default port and data directory |

**Optional Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `-d, --data <datadir>` | Source instance data directory | `/pg/data` or `$PG_DATA` |
| `-D, --dst <dst_dir>` | Target data directory | `/pg/data<FORK_ID>` |
| `-p, --port <port>` | Source instance port | `5432` or `$PG_PORT` |
| `-P, --dst-port <port>` | Target instance port | `<FORK_ID>5432` |
| `-s, --skip` | Skip backup API, use cold copy mode | - |
| `-y, --yes` | Skip confirmation prompts | - |
| `-h, --help` | Show help information | - |


### How It Works

`pg-fork` supports two working modes:

**Hot Backup Mode** (default, source instance running):
1. Call `pg_backup_start()` to start backup
2. Use `cp --reflink=auto` to copy data directory
3. Call `pg_backup_stop()` to end backup
4. Modify configuration files to avoid conflicts with source instance

**Cold Copy Mode** (using `-s` parameter or source instance not running):
1. Directly use `cp --reflink=auto` to copy data directory
2. Modify configuration files

If you use XFS (with reflink enabled), Btrfs, or ZFS file systems, `pg-fork` will leverage **Copy-on-Write** features. The data directory copy completes in a few hundred milliseconds and takes almost no additional storage space.


--------


## pg-pitr

[`pg-pitr`](https://github.com/pgsty/pigsty/blob/main/files/postgres/pg-pitr) is a script for manually performing point-in-time recovery, based on pgbackrest.

### Quick Start

```bash
pg-pitr -d                                  # Restore to latest state
pg-pitr -i                                  # Restore to backup completion time
pg-pitr -t "2025-01-01 12:00:00+08"         # Restore to specified time point
pg-pitr -n my-savepoint                     # Restore to named restore point
pg-pitr -l "0/7C82CB8"                      # Restore to specified LSN
pg-pitr -x 12345678 -X                      # Restore to before transaction
pg-pitr -b 20251225-120000F                 # Restore to specified backup set
```


### Command Syntax

```bash
pg-pitr [options] [recovery_target]
```

**Recovery Target (choose one):**

| Parameter | Description |
|-----------|-------------|
| `-d, --default` | Restore to end of WAL archive stream (latest state) |
| `-i, --immediate` | Restore to database consistency point (fastest recovery) |
| `-t, --time <timestamp>` | Restore to specified time point |
| `-n, --name <restore_point>` | Restore to named restore point |
| `-l, --lsn <lsn>` | Restore to specified LSN |
| `-x, --xid <xid>` | Restore to specified transaction ID |
| `-b, --backup <label>` | Restore to specified backup set |

**Optional Parameters:**

| Parameter | Description | Default |
|-----------|-------------|---------|
| `-D, --data <path>` | Recovery target data directory | `/pg/data` |
| `-s, --stanza <name>` | pgbackrest stanza name | Auto-detect |
| `-X, --exclusive` | Exclude target point (restore to before target) | - |
| `-P, --promote` | Auto-promote after recovery (default pauses) | - |
| `-c, --check` | Dry run mode, only print commands | - |
| `-y, --yes` | Skip confirmation and countdown | - |


### Post-Recovery Processing

After recovery completes, the instance will be in **recovery paused** state (unless `-P` parameter is used). You need to:

1. **Start instance**: `pg_ctl -D /pg/data start`
2. **Verify data**: Check if data meets expectations
3. **Promote instance**: `pg_ctl -D /pg/data promote`
4. **Enable archiving**: `psql -c "ALTER SYSTEM SET archive_mode = on;"`
5. **Restart instance**: `pg_ctl -D /pg/data restart`
6. **Execute backup**: `pg-backup full`


--------


## Combined Usage

`pg-fork` and `pg-pitr` can be combined for a safe PITR verification workflow:

```bash
# 1. Clone current instance
pg-fork 1 -y

# 2. Execute PITR on cloned instance (doesn't affect production)
pg-pitr -D /pg/data1 -t "2025-12-27 10:00:00+08"

# 3. Start cloned instance
pg_ctl -D /pg/data1 start

# 4. Verify recovery results
psql -p 15432 -c "SELECT count(*) FROM orders WHERE created_at < '2025-12-27 10:00:00';"

# 5. After confirmation, you can choose:
#    - Option A: Execute the same PITR on production instance
#    - Option B: Promote cloned instance as new production instance

# 6. Clean up test instance
pg_ctl -D /pg/data1 stop
rm -rf /pg/data1
```


--------


## Notes

### Runtime Requirements

- Must be executed as `postgres` user (or postgres group member)
- `pg-pitr` requires stopping target instance's PostgreSQL before execution
- `pg-fork` hot backup mode requires source instance to be running

### File System

- XFS (with reflink enabled) or Btrfs file system recommended
- Cloning on CoW file systems is almost instant and takes no extra space
- Non-CoW file systems will perform full copy, taking longer

### Port Planning

| FORK_ID | Default Port | Default Data Directory |
|---------|--------------|------------------------|
| 1 | 15432 | /pg/data1 |
| 2 | 25432 | /pg/data2 |
| 3 | 35432 | /pg/data3 |
| ... | ... | ... |
| 9 | 95432 | /pg/data9 |
