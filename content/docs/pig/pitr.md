---
title: "pig pitr"
description: "Perform orchestrated point-in-time recovery (PITR) with pig pitr"
weight: 185
icon: fas fa-clock-rotate-left
module: [PIG]
categories: [Reference]
---

Use `pig pitr` for point-in-time recovery through pgBackRest.
It checks prerequisites, stops local Patroni and PostgreSQL when required, and restores the data.
It then starts PostgreSQL if the selected options allow it.
The lower-level `pig pb restore` command does not manage this lifecycle.

For a managed default data directory, `pig pitr` leaves Patroni stopped after recovery.
Validate the restored data before you manually restore Patroni management.
The command does not automatically rejoin a Patroni cluster, perform failover, or validate cluster member state.

```bash
pig pitr - Perform PITR with pgBackRest restore and conservative PostgreSQL stop/start handling.

For the managed default data directory, this command may:
  1. Stop Patroni only to keep the target PGDATA offline during restore
  2. Ensure PostgreSQL is stopped (fast stop with retry; destructive fallback only with --force-stop)
  3. Execute pgbackrest restore
  4. Start PostgreSQL unless --no-restart is used
  5. Leave Patroni stopped; provide post-restore guidance

Recovery Targets (at least one required):
  --default, -d      Recover to end of WAL stream (latest)
  --immediate, -I    Recover to backup consistency point
  --time, -t         Recover to specific timestamp
  --name             Recover to named restore point
  --lsn              Recover to specific LSN
  --xid              Recover to specific transaction ID

Backup and Target Options:
  --set, -b          Select backup set to start recovery from
  --target-action    Action when target is reached: pause, promote, shutdown
  --target-timeline  Recover along timeline: latest, current, N, or 0xN

Use --no-restart with --target-action=shutdown because PostgreSQL exits
after reaching the recovery target.

Custom -D side restores require --no-restart. The custom directory must
already exist, be owned by the configured DBSU (postgres by default), and
be writable by that user. Pig does not create this directory automatically.

Additional pgBackRest arguments:
  Put raw pgBackRest restore arguments after -- so Cobra stops parsing them.
  Example: pig pitr -d -- --delta

Time Format:
  - Full: "2025-01-01 12:00:00+08"
  - Date only: "2025-01-01" (defaults to 00:00:00)
  - Time only: "12:00:00" (defaults to today)

Examples:
  pig pitr -d                                      # Recover to latest
  pig pitr -t "2025-01-01 12:00:00+08"            # Recover to time
  pig pitr -d --plan                               # Preview plan
  pig pitr -d -y                                   # Skip y/yes confirmation
  pig pitr -d --no-restart                         # Leave PostgreSQL stopped
  pig pitr -d -D /tmp/pg-restore --no-restart      # Side restore
```


## Overview

The default target of `pig pitr` is the Pigsty-managed primary data directory. A typical workflow:

1. Validate recovery target parameters. One of `-d/-I/-t/--name/--lsn/--xid` is required.
2. Resolve pgBackRest configuration and target data directory.
3. For default data-directory recovery, stop Patroni if it is running.
4. Ensure PostgreSQL is stopped.
5. Run `pgbackrest restore`.
6. Start PostgreSQL unless `--no-restart` is specified.
7. Print post-recovery validation and Patroni recovery guidance.

**Comparison with `pig pb restore`:**

| Feature | `pig pitr` | `pig pb restore` |
|:---|:---|:---|
| Stop Patroni | Automatic for default data-directory recovery | Manual |
| Stop PostgreSQL | Checks and stops automatically | Must be pre-stopped |
| Start PostgreSQL | Automatic by default, can be disabled with `--no-restart` | Manual |
| Patroni recovery | Not automatic; restore manually after verification | Not handled |
| Use case | Production recovery orchestration | Low-level restore or scripting |
{.full-width}


## Quick Start

```bash
# Most common: recover to the end of the WAL stream
pig pitr -d

# Recover to a specific point in time
pig pitr -t "2025-01-01 12:00:00+08"

# Recover to the backup consistency point
pig pitr -I

# Preview the execution plan without running
pig pitr -d --plan

# Skip confirmation, suitable for automation
pig pitr -d -y

# Recover from a specific backup set
pig pitr -d -b 20251225-120000F

# Restore the default data directory but do not start PostgreSQL afterward
pig pitr -d --no-restart

# Side restore: restore to a custom directory without touching Patroni or /pg/data
install -d -m 700 -o postgres -g postgres /tmp/pg-restore
pig pitr -d -D /tmp/pg-restore --no-restart

# Extra native pgBackRest restore arguments go after --
pig pitr -d -- --delta
```


## Parameters

### Recovery Target

At least one recovery target is required.

| Parameter | Short | Description |
|:---|:---|:---|
| `--default` | `-d` | Recover to the end of the WAL stream, the latest data |
| `--immediate` | `-I` | Recover to the backup consistency point |
| `--time` | `-t` | Recover to a specific timestamp |
| `--name` | | Recover to a named restore point |
| `--lsn` | | Recover to a specific LSN |
| `--xid` | | Recover to a specific transaction ID |
{.full-width}

### Backup And Target Options

| Parameter | Short | Description |
|:---|:---|:---|
| `--set` | `-b` | Start recovery from a specific backup set |
| `--target-action` | | Action when the recovery target is reached: pause/promote/shutdown |
| `--target-timeline` | `-T` | Recovery timeline: latest/current/N/0xN |
| `--exclusive` | `-X` | Exclusive mode: stop before target |
{.full-width}

Use `--no-restart` with `--target-action=shutdown`. PostgreSQL exits when it reaches that recovery target.
You cannot combine `--target-action` with `--default`, which already means recovery to the end of WAL.
Use `--exclusive/-X` only with a precise stop-before target: `--time`, `--lsn`, or `--xid`.

Native pgBackRest arguments after `--` cannot override parameters that Pig manages.
These include recovery target, lifecycle, data directory, repository, configuration, and selection parameters.
Use Pig's own parameters for these settings.
The same restrictions apply to passthrough arguments for `pig pb restore`.

### Flow Control

| Parameter | Short | Description |
|:---|:---|:---|
| `--no-restart` | | Do not start PostgreSQL after restore |
| `--plan` | | Show execution plan only, do not execute |
| `--yes` | `-y` | Skip interactive y/yes confirmation |
| `--timeout` | | PostgreSQL startup/recovery wait timeout, default 120 seconds |
| `--force-stop` | | Allow immediate shutdown and kill fallback if fast stop fails |
{.full-width}

### Configuration

| Parameter | Short | Description |
|:---|:---|:---|
| `--stanza` | `-s` | pgBackRest stanza name |
| `--config` | `-c` | pgBackRest config file path |
| `--repo` | `-r` | Repository number |
| `--dbsu` | `-U` | Database superuser, default `postgres` |
| `--data` | `-D` | Target data directory |
{.full-width}


## Time Format

The `--time` parameter supports multiple formats and completes missing parts using the current timezone:

| Format | Example | Description |
|:---|:---|:---|
| Full | `2025-01-01 12:00:00+08` | Complete timestamp with timezone |
| Date time without timezone | `2025-01-01 12:00:00` | Adds the current local timezone automatically; `T` separator is also accepted |
| Date only | `2025-01-01` | Completes to 00:00:00 on that date |
| Time only | `12:00:00` | Completes to that time today |
{.full-width}

Plan output and reusable next-action commands convert date-only and time-only targets to fixed timestamps with timezones.
This is also the rule for `pig pb restore --plan`.


## Managed Directory And Side Restore

Pig determines the managed PostgreSQL data directory from the effective pgBackRest `pg1-path` and command parameters.
The path is not fixed to `/pg/data`. For example, `/var/lib/pgsql/18/data` can be managed PGDATA.
When needed, Pig resolves symlinks as the database superuser before comparing paths.
A symlink to managed PGDATA is therefore not treated as a side restore.

A `-D/--data` path that resolves outside the managed directory is a side restore.
Side restores require `--no-restart`. They do not stop Patroni or manage the default PostgreSQL service.
After restoration, manage the side instance manually. Example commands are `pg_ctl -D <dir> -o "-p 5433" start`, `pg_ctl -D <dir> status`, and `pgbackrest --pg1-path=<dir> stanza-create`.
The directory must already exist and be owned by the DBSU. It does not need the existing `PG_VERSION` marker required for managed PGDATA.
Pig does not create the directory. Before restoration, it needs a real path to classify the destructive operation, check ownership, and provide safe instructions.

```bash
install -d -m 700 -o postgres -g postgres /tmp/pg-restore
pig pitr -d -D /tmp/pg-restore --no-restart
```

For managed PGDATA outside `/pg/data`, post-restore runbook commands explicitly include the effective data directory:

```bash
pig pg start -D /var/lib/pgsql/18/data
pig pg psql -D /var/lib/pgsql/18/data
pig pg promote -D /var/lib/pgsql/18/data
```

`pig pg psql -D <dir>` reads the directory's `postmaster.pid`.
It uses the recorded port and socket directory to connect to the restored instance.
If it cannot resolve this information, it does not fall back to the default connection target.


## Execution Flow

### Phase 1: Pre-Checks

- Validate recovery target parameters; missing targets only print help and return an error.
- Resolve effective pgBackRest config, stanza, repository, and managed `pg1-path`.
- Check that the managed data directory exists and is initialized.
- For side restore, check that the custom data directory exists and is owned by the DBSU.
- Verify the selected stanza is healthy and has backups; if `--set` is specified, verify that backup set exists.
- Detect Patroni service state and PostgreSQL runtime state.

### Phase 2: Patroni Handling

For a managed restore, the command stops running Patroni to keep PGDATA offline.
Patroni remains stopped after recovery.
A custom `-D` side restore does not change managed PGDATA or stop Patroni.

### Phase 3: Ensure PostgreSQL Is Stopped

After Patroni stops, the command waits for PostgreSQL to exit.
It then retries `pg_ctl stop -m fast`.
If PostgreSQL still runs, the command does not use more aggressive methods by default.
Only explicit `--force-stop` allows immediate shutdown and a final kill fallback.

### Phase 4: Restore

The command maps the recovery target, backup set, timeline, target action, and related options to `pgbackrest restore`.
Put additional native pgBackRest arguments after `--`:

```bash
pig pitr -d -- --delta
```

### Phase 5: Start Or Stay Stopped

Unless you use `--no-restart`, the command starts PostgreSQL after restoration and waits for recovery to complete.
With `--default` or `--target-action=promote`, it waits for `pg_is_in_recovery()` to become false on the restored instance.
Recovery checks and later SQL probes use the port in the restored directory's `postmaster.pid`.
They also use its socket directory when present.
Use `--no-restart` in these cases:

- Running a custom `-D` side restore, because the restored config still keeps the original port and must be started manually on a free port.
- Using `--target-action=shutdown`, because PostgreSQL exits after reaching the recovery target.
- You need to inspect the restored directory before deciding whether to start.


## Examples

### Scenario 1: Recover Dropped Data

```bash
# 1. View available backups
pig pb info

# 2. Preview recovery plan
pig pitr -t "2025-01-15 09:30:00+08" --plan

# 3. Execute recovery
pig pitr -t "2025-01-15 09:30:00+08"

# 4. Verify data
pig pg psql
SELECT * FROM important_table;
```

### Scenario 2: Recover To Latest

```bash
pig pitr -d
```

### Scenario 3: Recover To Backup Consistency Point

```bash
pig pitr -I
```

### Scenario 4: Keep Stopped After Restore

```bash
pig pitr -d --no-restart

# PostgreSQL and Patroni both remain stopped; inspect directory or logs before starting
pig pg start
```

### Scenario 5: Custom Directory Side Restore

```bash
install -d -m 700 -o postgres -g postgres /tmp/pg-restore
pig pitr -d -D /tmp/pg-restore --no-restart

# Start the side restore manually on a free port
pg_ctl -D /tmp/pg-restore -o "-p 5433" start
```


## Execution Plan Example

Running `pig pitr -d --plan` shows a plan like:

```text
══════════════════════════════════════════════════════════════════
 PITR Execution Plan
══════════════════════════════════════════════════════════════════

Current State:
  Data Directory:  /pg/data
  Database User:   postgres
  Patroni Service: active
  PostgreSQL:      running (PID: 12345)

Recovery Target:
  Latest (end of WAL stream)

Execution Steps:
  [1] Stop Patroni service
  [2] Ensure PostgreSQL is stopped
  [3] Execute pgBackRest restore
  [4] Start PostgreSQL
  [5] Print post-restore guidance

══════════════════════════════════════════════════════════════════
```


## Post-Recovery Actions

After successful recovery, verify data before restoring orchestration:

```bash
# Verify data
pig pg psql

# If recovered to a manual target and promotion is needed
pig pg promote

# Restore Patroni management only after validation
systemctl start patroni

# Re-create pgBackRest stanza if needed
pig pb create
```

Patroni remains stopped after managed recovery so restored old data cannot rejoin HA management before validation.


## Safety Mechanisms

**Recovery target required:** Without `-d/-I/-t/--name/--lsn/--xid`, the command only shows help and does not run restore.

**Confirmation:** in text mode, destructive recovery requires interactive `y`/`yes` confirmation.
For automation, use `-y|--yes`.
Structured output does not prompt. Use `--yes` to execute or `--plan` to preview.

**Patroni boundary:** managed recovery stops Patroni when needed so it cannot restart PostgreSQL during restoration.
The command does not automatically rejoin Patroni after recovery.

**Side restore boundary:** a custom `-D` side restore requires `--no-restart` because the restored configuration keeps the original port.
It does not manage Patroni or the default PostgreSQL service.

**Failure boundary:** if restoration fails after Patroni stops, Patroni remains stopped. The target directory can contain partially restored data.
Fix the cause and rerun PITR, or validate the recovery state first.
Do not start Patroni before you confirm the recovery state.
If restoration runs but PostgreSQL fails to start, examine PostgreSQL and pgBackRest logs.
Validate the data directory before you decide whether to restore Patroni management.

**Structured output:** use `--yes` to execute or `--plan` to preview.
After success, the Result envelope contains post-restore actions in `next_actions`, outside `data`.
The `data` object includes `requested_data_dir`, `effective_data_dir`, `managed_data_dir`, and `side_restore`.
These fields let automation distinguish the requested path from the actual recovery target.


## Design Notes

- `pig pitr` calls pgBackRest restore and handles local Patroni/PostgreSQL stop and optional start.
- `pig pitr` is not a cluster recovery controller. It does not handle Patroni failover, rejoin, VIP, or application traffic switching.
- Use [`pig pb restore`](/docs/pig/pb/#pb-restore/) when you need lower-level restore semantics or fine-grained scripting control.
- Use [`pig pt switchover CLUSTER`](/docs/pig/pt/) or [`pig pt failover CLUSTER --candidate MEMBER`](/docs/pig/pt/) when you need manual Patroni cluster switching (native patronictl passthrough since v1.6.0; the cluster name is required).

**Privilege execution:**

- If the current user is the DBSU: execute directly.
- If the current user is root: execute with `su - postgres -c`.
- Other users: execute with `sudo -inu postgres --`.

**Platform support:**

This command is designed for Linux. It requires pgBackRest and data/log paths accessible to the DBSU.
Managed service operations also require systemd.
