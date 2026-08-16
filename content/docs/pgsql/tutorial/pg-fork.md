---
title: Clone and Side-Restore a PostgreSQL Instance
linkTitle: Fork Instance
weight: 1708
description: Create a local physical copy with pg-fork and run low-level pgBackRest recovery against a stopped data directory with pg-pitr.
icon: fa-solid fa-code-fork
categories: [Task]
aliases: [/docs/pgsql/tutorial/instance/]
---

Pigsty v4.5.0 provides two local shell utilities:

- [`pg-fork`](#pg-fork) copies a PostgreSQL data directory and gives the copy a separate port.
- [`pg-pitr`](#pg-pitr) invokes pgBackRest to restore a **stopped** data directory to a selected target.

They are useful for sandbox drills, side-channel investigation, and temporary testing. They are not complete Patroni-cluster recovery orchestrators. Prefer [`pig pitr`](/docs/pig/pitr/) for a managed instance and staged [`pgsql-pitr.yml`](/docs/pgsql/backup/restore/) for a multi-node cluster.

{{% alert color="danger" title="Verify paths, backups, and stopped state first" %}}
`pg-fork` recursively removes an existing destination directory; `pg-pitr` overwrites the destination with backup data. Both can execute without a prompt in a non-interactive environment. Before a real run, verify source and destination absolute paths, ports, tablespaces, exact cluster/instance identity, and an independent recent backup that has been tested. A newly created CoW clone is not an independent backup.
{{% /alert %}}


--------

## pg-fork

[`pg-fork`](https://github.com/pgsty/pigsty/blob/main/files/postgres/pg-fork) copies a PostgreSQL data directory on the current node. Run it as the database OS user—normally `postgres`, or at least a member of the `postgres` group:

```bash
pg-fork 1                         # /pg/data -> /pg/data1, destination port 15432
pg-fork 2 -d /pg/data1            # /pg/data1 -> /pg/data2, destination port 25432
pg-fork 3 -D /srv/pg-clone -P 55432
```

### Parameters

```text
pg-fork <FORK_ID> [options]
```

| Parameter | Meaning | Default |
|:----------|:--------|:--------|
| `<FORK_ID>` | One digit from `1` to `9`, used to derive the default directory and port | Required |
| `-d, --data <path>` | Source data directory | `$PG_DATA` or `/pg/data` |
| `-D, --dst <path>` | Destination data directory | `/pg/data<FORK_ID>` |
| `-p, --port <port>` | Source instance port | `$PG_PORT` or `5432` |
| `-P, --dst-port <port>` | Destination instance port | `<FORK_ID>5432` |
| `-s, --skip` | Skip the online-backup API and force cold-copy mode | No |
| `-y, --yes` | Skip interactive confirmation | No |
{.full-width}

The script rejects equal normalized source and destination paths, but it cannot know whether a custom destination contains other important data. If the destination directory exists, it is recursively removed before copying.

### Hot Backup and Cold Copy

By default, the script connects to the source port and uses one `psql` session to run:

1. `CHECKPOINT`;
2. `pg_backup_start()`;
3. `rm -rf <destination>` followed by `cp -a --reflink=auto`;
4. `pg_backup_stop(wait_for_archive => false)`.

If the source cannot be reached on the selected port, the script **automatically falls back to a cold copy** instead of aborting. `-s` also forces a cold copy. A cold copy is safe only after you independently confirm that the source instance is fully stopped; a `postmaster.pid` warning is only a clue, not proof of process state.

On the same filesystem, the implementation recognizes these as fast CoW modes: XFS with reflink enabled, Btrfs, Bcachefs, and OCFS2. Other filesystems or cross-filesystem destinations still use `cp --reflink=auto` but may fall back to a full copy. The script's help text mentions ZFS more broadly than its detector; the v4.5.0 implementation does not classify ZFS as a confirmed fast-CoW mode.

### Clone Configuration

After a successful copy, `pg-fork`:

- removes `postmaster.pid`, `postmaster.opts`, and `standby.signal` from the destination;
- clears physical replication-slot files in the destination;
- writes a separate `port`, `archive_mode=off`, and a local `log_directory` to the destination's `postgresql.auto.conf`;
- removes `primary_conninfo`, `primary_slot_name`, and old `recovery_target*` overrides.

It does not check whether the destination port is free or resize memory settings. Before starting the copy, inspect at least:

```bash
postgres -D /pg/data1 -C port
postgres -D /pg/data1 -C archive_mode
postgres -D /pg/data1 -C shared_buffers
pg_ctl -D /pg/data1 status
```

{{% alert color="warning" title="External tablespaces are not isolated" %}}
`cp -a` preserves symlinks under `pg_tblspc`; `pg-fork` does not copy or remap tablespaces outside PGDATA. Starting such a clone can access or modify the source instance's tablespaces. If external tablespaces exist, independently copy and remap every one of them, or do not use this script to create a writable clone.
{{% /alert %}}

### Interaction Boundary

The script asks `Proceed with fork? [y/N]` only when standard input is a terminal and `-y` was not used. Pipes, CI, cron, and other non-interactive invocations do not receive that prompt. Automation must therefore enforce a strict absolute-path allowlist and destination-existence check before invoking the script; do not add `-y` by default merely for convenience.


--------

## pg-pitr

[`pg-pitr`](https://github.com/pgsty/pigsty/blob/main/files/postgres/pg-pitr) is a low-level pgBackRest restore wrapper. It does not pause or start Patroni, stop or start PostgreSQL, clear DCS state, or rebuild replicas.

### Recovery Targets

Understand and select a recovery target before execution. Invoking the command without arguments only shows help:

| Parameter | pgBackRest semantics |
|:----------|:---------------------|
| `-d, --default` | Set no stop target and replay to the available end of WAL |
| `-i, --immediate` | Stop when the selected backup becomes consistent |
| `-t, --time <timestamp>` | Recover to a timestamp |
| `-n, --name <restore-point>` | Recover to a named restore point |
| `-l, --lsn <lsn>` | Recover to an LSN |
| `-x, --xid <xid>` | Recover to a transaction ID |
{.full-width}

`-S/--set` (with compatibility alias `-b/--backup`) only selects **which backup set recovery starts from**; it is not a stop target. For example, `-S 20251225-120000F -d` still replays to the end of WAL. Combine `-S ... -i` to stop as soon as that backup becomes consistent.

For `time`, `name`, `lsn`, `xid`, and `immediate`, pgBackRest's effective default action is to pause at the target; `-P/--promote` changes it to automatic promotion. Use `-X/--exclusive` only with a precise boundary such as `time`, `lsn`, or `xid`.

### Other Options

| Parameter | Meaning |
|:----------|:--------|
| `-D, --data <path>` | Absolute destination data directory; default `/pg/data` |
| `-s, --stanza <name>` | pgBackRest stanza; defaults to the first non-`global` stanza in the config |
| `-T, --timeline <value>` | `latest`, `current`, or a positive numeric timeline |
| `-P, --promote` | Automatically promote recovery methods that have a stop target |
| `-v, --verbose` | Enable pgBackRest info-level console logging |
| `-c, --check, --dry-run` | Print the command without executing it |
| `-y, --yes` | Skip the five-second countdown |
| `-- <args>` | Pass additional arguments directly to pgBackRest |
{.full-width}

`-c` is a command-rendering check. It does not prove that the backup/WAL is usable or that PostgreSQL and Patroni are stopped. The wrapper also does not filter conflicting native arguments; review the final command carefully when passing repository, tablespace, or link-mapping options.

### Safe Execution Sequence

This example shows only the low-level flow for one isolated destination. Use the complete runbook for production cluster recovery:

```bash
# 1. Read-only verification of backup sets and the recovery window
pig pb info

# 2. Confirm the exact target is stopped; stop Patroni first for a managed instance
pg_ctl -D /pg/data1 status

# 3. Render and review the exact command without writing data
pg-pitr -D /pg/data1 -t "2026-08-13 10:00:00+08" -c

# 4. Remove -c only after the operator reconfirms destination, backup, and stopped state
pg-pitr -D /pg/data1 -t "2026-08-13 10:00:00+08"
```

Real execution refuses root and aborts whenever `postmaster.pid` exists in the destination. Even a stale PID file requires the operator to confirm that PostgreSQL is stopped before removing it. There is no `y/N` question: an interactive terminal gets only an interruptible five-second countdown; a non-interactive invocation skips the countdown and enters restore immediately.

After restore, the operator starts and validates the instance:

```bash
pg_ctl -D /pg/data1 start
psql -p 15432 -Atqc \
  'SELECT pg_is_in_recovery(), pg_is_wal_replay_paused(), pg_last_xact_replay_timestamp()'
```

Promote only after the recovery target, authorized application data, timeline, and archive settings are all verified. Promotion creates a new timeline; it is not a reversible “inspect” operation. `pg-pitr` does not itself disable archiving. Do not mechanically follow its generic final “enable archive_mode” hint—inspect the effective value first and correct only an override introduced by this recovery.

### Additional Side-Restore Risks

When restoring into a custom directory such as `/pg/data1`, pgBackRest can restore `postgresql.auto.conf` from the backup and overwrite the separate port written by `pg-fork`. Recheck `port`, `archive_mode`, sockets, logging, and memory settings before startup.

If the backup contains external tablespaces or links, a side restore can also use the original paths. For isolation, pass reviewed pgBackRest `--tablespace-map`, `--link-map`, or related arguments after `--` and inspect the rendered command. Otherwise, do not start the restored copy on the same host as production.


--------

## Recommended Clone-Validation Flow

1. Verify the source instance, destination absolute path, destination port, tablespaces, and independent backup.
2. Run `pg-fork <id>` in an interactive terminal and confirm that the plan shows hot backup rather than an unintended cold-copy fallback.
3. Before starting the clone, run `pg-pitr -D <clone> ... -c` and inspect the recovery command.
4. Execute restore only after explicit destination confirmation, then recheck the clone's port and every external path.
5. Start the clone on the isolated port and verify recovery state and only the application data you are authorized to inspect.
6. Promote only if the clone is intentionally becoming a new primary; otherwise stop it and clean up only the exact, verified path.

Side validation reduces direct writes to the current PGDATA, but still uses the same backup repository, consumes host resources, and may touch external tablespaces. It is not a risk-free sandbox.


--------

## Related

- [Manual PITR Drill](/docs/pgsql/tutorial/pitr/)
- [Restore Operations and `pgsql-pitr.yml`](/docs/pgsql/backup/restore/)
- [`pig pitr`](/docs/pig/pitr/)
- [`pig pb restore`](/docs/pig/pb/#pb-restore)
