---
title: "pig pitr"
description: "Perform point-in-time recovery with the pig pitr command"
weight: 185
icon: fas fa-clock-rotate-left
module: [PIG]
categories: [Reference]
---

The `pig pitr` command performs point-in-time recovery through pgBackRest and conservatively handles the local PostgreSQL and Patroni lifecycle. Unlike the lower-level `pig pb restore`, `pig pitr` runs pre-restore checks, stops Patroni and PostgreSQL when needed, executes restore, then starts PostgreSQL depending on the selected options.

Note: for the managed default data directory, `pig pitr` leaves Patroni stopped after recovery. Verify the restored data first, then manually restore Patroni management. This command does not automatically rejoin a Patroni cluster, perform failover, or validate cluster member state.

```bash
pig pitr - Perform PITR with pgBackRest restore and conservative PostgreSQL stop/start handling.

Recovery Targets (at least one required):
  --default, -d      Recover to end of WAL stream (latest)
  --immediate, -I    Recover to backup consistency point
  --time, -t         Recover to specific timestamp
  --name, -n         Recover to named restore point
  --lsn, -l          Recover to specific LSN
  --xid, -x          Recover to specific transaction ID

Backup and Target Options:
  --set, -b          Select backup set to start recovery from
  --target-action    Action when target is reached: pause, promote, shutdown
  --target-timeline  Recover along timeline: latest, current, N, or 0xN

Examples:
  pig pitr -d                                      # Recover to latest
  pig pitr -t "2025-01-01 12:00:00+08"            # Recover to time
  pig pitr -d --plan                               # Preview plan
  pig pitr -d -y                                   # Skip confirmation
  pig pitr -d --no-restart                         # Leave PostgreSQL stopped
  pig pitr -d -D /tmp/pg-restore -S -N             # Side restore
```


## Overview

The default target of `pig pitr` is Pigsty's managed primary data directory. The typical workflow:

1. Validate recovery target parameters; one of `-d/-I/-t/-n/-l/-x` is required
2. Resolve pgBackRest config and target data directory
3. For default data-directory recovery, stop Patroni if it is running
4. Ensure PostgreSQL is stopped
5. Run `pgbackrest restore`
6. Start PostgreSQL unless `--no-restart` is specified
7. Print post-recovery verification and Patroni recovery guidance

**Comparison with `pig pb restore`:**

| Feature | `pig pitr` | `pig pb restore` |
|:--------|:-----------|:-----------------|
| Stop Patroni | Automatic for default data-directory recovery | Manual |
| Stop PostgreSQL | Checks and stops automatically | Must be pre-stopped |
| Start PostgreSQL | Automatic by default, can be disabled with `--no-restart` | Manual |
| Patroni recovery | Not automatic; handle manually after verification | Not handled |
| Use case | Production recovery orchestration | Low-level restore or scripting |
{.full-width}


## Quick Start

```bash
# Most common: recover to end of WAL stream
pig pitr -d

# Recover to specific point in time
pig pitr -t "2025-01-01 12:00:00+08"

# Recover to backup consistency point
pig pitr -I

# View execution plan, no execution
pig pitr -d --plan

# Skip confirmation, suitable for automation
pig pitr -d -y

# Recover from specific backup set
pig pitr -d -b 20251225-120000F

# Restore default data directory, but do not start PostgreSQL afterward
pig pitr -d --no-restart

# Side restore: restore to a custom directory without touching Patroni or /pg/data
pig pitr -d -D /tmp/pg-restore --skip-patroni --no-restart

# Extra native pgBackRest restore args go after --
pig pitr -d -- --delta
```


## Parameters

### Recovery Target

Choose exactly one recovery target.

| Param | Short | Description |
|:------|:------|:------------|
| `--default` | `-d` | Recover to end of WAL stream (latest data) |
| `--immediate` | `-I` | Recover to backup consistency point |
| `--time` | `-t` | Recover to specific timestamp |
| `--name` | `-n` | Recover to named restore point |
| `--lsn` | `-l` | Recover to specific LSN |
| `--xid` | `-x` | Recover to specific transaction ID |
{.full-width}

### Backup And Target Options

| Param | Short | Description |
|:------|:------|:------------|
| `--set` | `-b` | Start recovery from a specific backup set |
| `--target-action` | | Action when recovery target is reached: pause/promote/shutdown |
| `--target-timeline` | `-T` | Recovery timeline: latest/current/N/0xN |
| `--exclusive` | `-X` | Exclusive mode: stop before target |
| `--promote` | `-P` | Auto-promote after reaching manual recovery target |
{.full-width}

### Flow Control

| Param | Short | Description |
|:------|:------|:------------|
| `--skip-patroni` | `-S` | Skip Patroni stop operation, for standalone PostgreSQL or custom-directory side restore |
| `--no-restart` | `-N` | Do not start PostgreSQL after restore |
| `--plan` | | Show execution plan only, do not execute |
| `--yes` | `-y` | Skip destructive-operation confirmation |
| `--timeout` | | PostgreSQL startup/recovery wait timeout, default 120 seconds |
| `--force-stop` | | Allow immediate shutdown and kill fallback if fast stop fails |
{.full-width}

### Configuration

| Param | Short | Description |
|:------|:------|:------------|
| `--stanza` | `-s` | pgBackRest stanza name |
| `--config` | `-c` | pgBackRest config file path |
| `--repo` | `-r` | Repository number |
| `--dbsu` | `-U` | Database superuser, default `postgres` |
| `--data` | `-D` | Target data directory |
{.full-width}


## Time Format

The `--time` parameter supports multiple formats and completes missing parts using the current timezone:

| Format | Example | Description |
|:-------|:--------|:------------|
| Full format | `2025-01-01 12:00:00+08` | Complete timestamp with timezone |
| Date only | `2025-01-01` | Auto-completes to 00:00:00 that day |
| Time only | `12:00:00` | Auto-completes to that time today |
{.full-width}


## Workflow Detail

### Phase 1: Pre-Checks

- Validate recovery target parameters; missing target only prints help and returns an error
- Resolve pgBackRest stanza, repo, and data directory
- Decide whether `-D` is a custom side restore
- Check target directory existence, initialization state, and DBSU ownership
- Detect Patroni service state and PostgreSQL runtime state

### Phase 2: Patroni Handling

For default data-directory recovery, if Patroni is running, the command stops Patroni so the target PGDATA remains offline during restore. Patroni remains stopped after recovery.

If Patroni is running and the target is the default data directory, `--skip-patroni` is rejected because Patroni could restart PostgreSQL during restore. A custom `-D` side restore does not touch `/pg/data`, so it can use `--skip-patroni --no-restart`.

### Phase 3: Ensure PostgreSQL Is Stopped

The command first tries fast stop. If PostgreSQL cannot stop, it does not use more aggressive methods by default. Specify `--force-stop` to allow immediate shutdown and kill fallback.

### Phase 4: Restore

The command runs pgBackRest restore and maps recovery target, backup set, timeline, and target action options into `pgbackrest restore`. Native pgBackRest args can be placed after `--`:

```bash
pig pitr -d -- --delta
```

### Phase 5: Start Or Stay Stopped

Unless `--no-restart` is specified, the command starts PostgreSQL after restore and waits for recovery completion. Use `--no-restart` when:

- Running a custom `-D` side restore, because the restored config still keeps the original port
- Using `--target-action=shutdown`, because PostgreSQL exits after reaching the recovery target
- You need to inspect the restored directory before deciding whether to start it


## Common Scenarios

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

# Inspect directory or logs, then start manually
pig pg start
```

### Scenario 5: Custom Directory Side Restore

```bash
pig pitr -d -D /tmp/pg-restore --skip-patroni --no-restart

# Start the side restore manually on a free port
pg_ctl -D /tmp/pg-restore -o "-p 15432" start
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

After successful recovery, verify data before restoring service orchestration:

```bash
# Verify data
pig pg psql

# If recovered to a manual target and promotion is needed
pig pg promote

# Restore Patroni management after verification
systemctl start patroni

# Re-create pgBackRest stanza if needed
pig pb create
```

Keeping Patroni stopped after managed data-directory recovery is intentional: it avoids putting restored old state back under HA orchestration before verification.


## Safety Mechanisms

**Recovery target required:** Without `-d/-I/-t/-n/-l/-x`, the command only shows help and does not run restore.

**Confirmation:** In text mode, destructive recovery requires confirmation before execution. Automation can use `-y|--yes`. Structured output mode is non-interactive and must use `--yes` to execute or `--plan` to preview.

**Patroni boundary:** For default data-directory recovery, the command blocks skipping Patroni stop when Patroni may still manage PostgreSQL. It also does not automatically rejoin Patroni after restore.

**Side restore boundary:** A custom `-D` side restore must use `--no-restart` because the restored PostgreSQL config still uses the original port.


## Notes

- `pig pitr` calls pgBackRest restore and locally handles Patroni/PostgreSQL stop and optional start.
- `pig pitr` is not a cluster recovery controller: it does not handle Patroni failover, rejoin, VIP, or application traffic switching.
- Use [`pig pb restore`](/docs/pig/pb/#pb-restore/) when you need lower-level restore semantics or fine-grained scripting control.
- Use [`pig pt switchover`](/docs/pig/pt/#pt-switchover/) or [`pig pt failover`](/docs/pig/pt/#pt-failover/) when you need manual Patroni cluster switching.

**DBSU Execution:**

- If current user is DBSU: execute directly
- If current user is root: execute with `su - postgres -c`
- Other users: execute with `sudo -inu postgres --`

**Platform:** This command is designed for Linux and depends on pgBackRest, systemd, and Pigsty default directory conventions.
