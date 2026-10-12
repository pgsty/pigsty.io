---
title: "pig pgbackrest"
description: "Manage pgBackRest backup and restore primitives with pig pgbackrest"
weight: 180
icon: fas fa-database
module: [PIG]
categories: [Reference]
---

Use `pig pgbackrest`, or its alias `pig pb`, to manage pgBackRest backups and run low-level restores.
It simplifies common `pgbackrest` operations. All commands run as the database superuser, which defaults to `postgres`.
For managed-cluster point-in-time recovery with lifecycle control, use [`pig pitr`](/docs/pig/pitr/).

```bash
pig pb - Manage pgBackRest backup and point-in-time recovery.

Information:
  pig pb info                      show backup info
  pig pb list                      list backups
  pig pb list repo                 list configured repositories
  pig pb list stanza               list all stanzas

Backup & Restore:
  pig pb backup                    create backup (auto: full/incr)
  pig pb backup full               create full backup
  pig pb restore                   low-level restore primitive
  pig pb restore -t "..."          restore to specific time
  pig pb expire                    cleanup expired backups

Stanza Management:
  pig pb create                    create stanza (first-time setup)
  pig pb upgrade                   upgrade stanza (after PG upgrade)
  pig pb delete                    delete stanza (DANGEROUS!)

Control:
  pig pb check                     verify backup integrity
  pig pb start                     enable pgBackRest operations
  pig pb stop                      disable pgBackRest operations
  pig pb log                       view pgBackRest logs

Examples:
  pig pb info                      # show all backup info
  pig pb backup                    # auto: full if none, else incr
  pig pb backup full               # full backup
  pig pb restore -d                # restore to latest (end of WAL)
  pig pb restore -t "2025-01-01 12:00:00+08"  # restore to time
  pig pb create                    # initialize stanza
  pig pb expire                    # cleanup per retention policy
```

## Command Overview

**Information Query**:

| Command | Alias | Description | Implementation |
|:---|:---|:---|:---|
| `pb info` | `i` | Show backup repository info | `pgbackrest info` |
| `pb list` | `ls` | List backup sets, repos, and stanzas | `pgbackrest info` |
{.full-width}

**Backup & Restore**:

| Command | Alias | Description | Implementation |
|:---|:---|:---|:---|
| `pb backup` | `b` | Create backup | `pgbackrest backup` |
| `pb restore` | `r` | Low-level restore primitive | `pgbackrest restore` |
| `pb expire` | `e` | Clean up expired backups | `pgbackrest expire` |
{.full-width}

**Stanza Management**:

| Command | Alias | Description | Implementation |
|:---|:---|:---|:---|
| `pb create` | `c` | Create stanza (first-time setup) | `pgbackrest stanza-create` |
| `pb upgrade` | `u` | Upgrade stanza after PG major upgrade | `pgbackrest stanza-upgrade` |
| `pb delete` | `d` | Delete stanza (dangerous!) | `pgbackrest stanza-delete` |
{.full-width}

**Control Commands**:

| Command | Alias | Description | Implementation |
|:---|:---|:---|:---|
| `pb check` | `ck` | Verify backup repository integrity | `pgbackrest check` |
| `pb start` | `up` | Enable pgBackRest operations | `pgbackrest start` |
| `pb stop` | `dw` | Disable pgBackRest operations | `pgbackrest stop` |
| `pb log` | `l` | View logs | latest log snapshot / tail |
{.full-width}


## Quick Start

```bash
# View backup info
pig pb info                          # Show all backup info
pig pb info -o json                  # Result-wrapped structured JSON output
pig pb info --raw --raw-output json  # Native pgBackRest JSON output
pig pb ls                            # List all backups
pig pb ls repo                       # List configured repos
pig pb ls stanza                     # List all stanzas

# Create backup (must run on primary)
pig pb backup                        # Auto mode: full if none, else incr
pig pb backup full                   # Full backup
pig pb backup diff                   # Differential backup
pig pb backup incr                   # Incremental backup

# Restore (low-level restore primitive, at least one recovery target is required)
pig pb restore -d                    # Restore to latest (end of WAL)
pig pb restore -I                    # Restore to backup consistency point
pig pb restore -t "2025-01-01 12:00:00+08"  # Restore to specific time
pig pb restore --name savepoint      # Restore to named restore point

# Stanza management
pig pb create                        # Initialize stanza
pig pb upgrade                       # Upgrade stanza after PG major upgrade
pig pb check                         # Verify repository integrity

# Cleanup
pig pb expire                        # Clean up per retention policy
pig pb expire --plan                 # Preview cleanup plan only
```


## Global Options

These options apply to all `pig pb` subcommands:

| Option | Short | Description |
|:---|:---|:---|
| `--stanza` | `-s` | pgBackRest stanza name (auto-detected) |
| `--config` | `-c` | Config file path |
| `--repo` | `-r` | Repository number (multi-repo scenario) |
| `--dbsu` | `-U` | Database superuser (default: `$PIG_DBSU` or `postgres`) |
{.full-width}

**Stanza Auto-Detection:**

If `-s` is not specified, pig auto-detects the stanza name from the config file:

1. Read the config file (default `/etc/pgbackrest/pgbackrest.conf`)
2. Find sections that do not start with `[global*]`
3. Use the first stanza found

If the configuration has multiple stanzas, pig warns and selects the first.
In this case, specify `--stanza` explicitly.

**Multi-Repo Support:**

pgBackRest supports multiple repositories (repo1, repo2, etc.). Use `-r` to choose the target repository:

```bash
pig pb backup -r 1                   # Backup to repo1
pig pb backup -r 2                   # Backup to repo2
pig pb info -r 2                     # View repo2 backup info
```


## Information Commands

### pb info

Show detailed backup repository information, including all backup sets and WAL archive status.

```bash
pig pb info                          # Show all backup info
pig pb info --raw --raw-output json  # Raw JSON output
pig pb info --set 20250101-120000F   # Show details for a specific backup set
```

**Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--raw` | `-R` | Raw output mode (passes through pgBackRest output) |
| `--raw-output` | | Raw output format: text, json (only in `--raw` mode) |
| `--set` | | Show details for a specific backup set |
{.full-width}


### pb ls

List resources in the backup repository.

```bash
pig pb ls                            # List all backups (default)
pig pb ls backup                     # List all backups (explicit)
pig pb ls repo                       # List configured repos
pig pb ls stanza                     # List all stanzas
```

**Types:**

| Type | Description | Data Source |
|:---|:---|:---|
| backup | List all backup sets (default) | pgbackrest info |
| repo | List configured repos | Parse pgbackrest.conf |
| stanza | List all stanzas | Parse pgbackrest.conf |
{.full-width}


## Backup Commands

### pb backup

Create a physical backup. Backups can only run on the primary instance.

```bash
pig pb backup                        # Auto mode
pig pb backup full                   # Full backup
pig pb backup diff                   # Differential backup
pig pb backup incr                   # Incremental backup
pig pb backup --force                # Skip primary role check
```

**Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--force` | `-f` | Skip primary role check |
{.full-width}

**Backup Types:**

| Type | Description |
|:---|:---|
| (empty) | Auto mode: full if no backup exists, otherwise incremental |
| full | Full backup: backup all data |
| diff | Differential backup: changes since the last full backup |
| incr | Incremental backup: changes since the last backup of any type |
{.full-width}

**Primary Check:**

Before a backup, the command checks whether the instance is primary.
If it is a replica, the command returns an error.
Use `--force` to skip this check.


### pb expire

Clean up expired backups and WAL archives according to the retention policy.

```bash
pig pb expire                        # Clean up per policy
pig pb expire --set 20250101-*       # Delete a specific backup set
pig pb expire --set 20250101-* -y    # Skip confirmation when deleting backup set
pig pb expire --plan                 # Preview cleanup plan only, do not delete
```

**Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--set` | | Delete a specific backup set |
| `--plan` | | Preview cleanup plan only, do not delete backups |
| `--yes` | `-y` | Skip confirmation prompt when used with `--set` |
{.full-width}

**Retention Policy:**

Retention policy is configured in `pgbackrest.conf`:

```ini
[global]
repo1-retention-full=2               # Full backups to retain
repo1-retention-diff=4               # Differential backups to retain
repo1-retention-archive=2            # WAL archive retention policy
```


## Restore Commands

### pb restore

Restore a backup to a recovery target.
Specify at least one target explicitly: `-d/-I/-t/--name/--lsn/--xid`.
Without parameters, the command shows help.

```bash
# Recovery target (mutually exclusive options)
pig pb restore -d                    # Restore to latest (explicit)
pig pb restore -I                    # Restore to backup consistency point
pig pb restore -t "2025-01-01 12:00:00+08"  # Restore to specific time
pig pb restore -t "2025-01-01"       # Restore to date (00:00:00 that day)
pig pb restore -t "12:00:00"         # Restore to time (today)
pig pb restore --name my-savepoint   # Restore to named restore point
pig pb restore --lsn "0/7C82CB8"     # Restore to LSN
pig pb restore --xid 12345           # Restore to transaction ID

# Backup set selection (must combine with a recovery target)
pig pb restore -b 20251225-120000F -d  # Restore from specific backup set to latest

# Other options
pig pb restore -t "..." -X           # Exclusive mode (stop before target)
pig pb restore -t "..." --target-action=promote  # Promote after reaching target
pig pb restore -t "..." -T current   # Recover along current timeline
pig pb restore -d --plan             # Preview restore plan only
pig pb restore -d -y                 # Skip interactive y/yes confirmation
pig pb restore -d -- --delta         # Pass native pgBackRest restore args after --
```

**Recovery Target Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--default` | `-d` | Restore to end of WAL stream (latest data) |
| `--immediate` | `-I` | Restore to backup consistency point |
| `--time` | `-t` | Restore to specific timestamp |
| `--name` | | Restore to named restore point |
| `--lsn` | | Restore to specific LSN |
| `--xid` | | Restore to specific transaction ID |
{.full-width}

**Backup Set and Other Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--set` | `-b` | Restore from a specific backup set (can combine with target) |
| `--data` | `-D` | Target data directory |
| `--exclusive` | `-X` | Exclusive mode: stop before target |
| `--target-action` | | Action after reaching recovery target: pause/promote/shutdown |
| `--target-timeline` | `-T` | Recovery timeline: latest/current/N/0xN |
| `--plan` | | Preview restore plan only, do not execute |
| `--yes` | `-y` | Skip interactive y/yes confirmation |
| Native args after `--` | | Pass through pgBackRest restore args, for example `-- --delta` |
{.full-width}

**Combination Rules:** do not combine `--target-action` with `--default`, which recovers to the end of the WAL stream.
Use `--exclusive/-X` only with an explicit stop target: `--time`, `--lsn`, or `--xid`.

Native pgBackRest arguments after `--` cannot override parameters that Pig manages.
These include recovery targets, lifecycle, data directory, repository, configuration, and selection parameters.
Use Pig's own options for those settings.
You can pass tablespace and link migration options, such as `--tablespace-map`, `--link-map`, and `--link-all`.

**Time Formats:**

The command accepts multiple time formats and completes missing timezones.
It also supports non-integer-hour zones, such as +05:30:

| Format | Example | Description |
|:---|:---|:---|
| Full format | `2025-01-01 12:00:00+08` | Complete timestamp with timezone |
| Date only | `2025-01-01` | Auto-completes to 00:00:00 that day (current timezone) |
| Time only | `12:00:00` | Auto-completes to today (current timezone) |
{.full-width}

**Restore Flow:**

1. Validate parameters and environment
2. Check that PostgreSQL is stopped
3. Show restore plan and wait for interactive `y`/`yes` confirmation
4. Execute pgbackrest restore
5. Provide post-restore guidance

**Important:** stop PostgreSQL before restoration.
If Patroni manages PGDATA, use [`pig pitr`](/docs/pig/pitr/) to control Patroni, PostgreSQL, and pgBackRest:

```bash
pig pg stop                          # Stop PostgreSQL
pig pb restore -t "..."              # Execute restore
pig pg start                         # Start PostgreSQL
```


## Stanza Management Commands

### pb create

Initialize a new stanza. Must run before the first backup.

```bash
pig pb create                        # Create stanza
pig pb create --no-online            # Create when PostgreSQL is not running
pig pb create --force                # Force create
```

**Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--no-online` | | Create when PostgreSQL is not running |
| `--force` | `-f` | Force create |
{.full-width}


### pb upgrade

Update stanza after a PostgreSQL major version upgrade.

```bash
pig pb upgrade                       # Upgrade stanza
pig pb upgrade --no-online           # Upgrade when PostgreSQL is not running
```

**Options:**

| Option | Description |
|:---|:---|
| `--no-online` | Upgrade when PostgreSQL is not running |
{.full-width}

**Use Case:**

After a PostgreSQL major version upgrade (for example, 16 -> 17), run this command to update stanza metadata.


### pb delete

Delete a stanza and all its backups.

```bash
pig pb delete                        # Delete stanza (interactive y/N confirmation)
pig pb delete --yes                  # Skip interactive y/yes confirmation
pig pb delete --plan                 # Preview delete plan
```

**Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--plan` | | Preview delete plan only, do not execute |
| `--yes` | `-y` | Skip interactive y/yes confirmation |
{.full-width}

**Warning:** this operation **permanently deletes all backups**. You cannot reverse it.

The command includes multiple safety mechanisms:

1. In text mode, confirm with interactive `y`/`yes`, or specify `--yes`.
2. In structured output mode, specify `--yes` explicitly.
3. If the configuration has multiple stanzas, specify `--stanza`. Pig refuses to select the deletion target automatically.


## Control Commands

### pb check

Verify backup repository integrity and configuration.

```bash
pig pb check                         # Verify repository
```

This command checks:

- WAL archive configuration correctness
- Repository accessibility
- Stanza configuration validity


### pb start

Enable pgBackRest operations.

```bash
pig pb start                         # Enable operations
```

Use this command after `pb stop` to resume normal operations.


### pb stop

Disable pgBackRest operations for maintenance.

```bash
pig pb stop                          # Disable operations
pig pb stop --force                  # Terminate running operations
```

**Options:**

| Option | Short | Description |
|:---|:---|:---|
| `--force` | `-f` | Terminate running operations |
{.full-width}

**Use Case:**

Use this command during system maintenance to prevent new backup operations from starting.


## Log Commands

### pb log

View pgBackRest log files.
The command reads `log-path` from pgBackRest configuration, or uses `/pg/log/pgbackrest/` as a fallback.
By default, the parent command shows the latest log snapshot. Use `tail` or `-f` to follow new entries.
Only `pb log` and `pb log show` support JSONL output with `-o json`.
Snapshots do not support `yaml` or `json-pretty`. Follow and tail do not support structured output.

```bash
pig pb log                           # Show latest log lines
pig pb log list                      # List log files
pig pb log tail                      # Real-time view latest log
pig pb log tail -n 100               # Show last 100 lines and follow
pig pb log show                      # Show latest log content
pig pb log show -n 50                # Show last 50 lines
pig pb log cat                       # Alias for show
```

**Subcommands:**

| Subcommand | Aliases | Description |
|:---|:---|:---|
| list | ls | List log files |
| show | cat, c | Show latest log content |
| tail | t, f, follow | Real-time follow latest log |
{.full-width}

**Options:**

| Option | Short | Default | Description |
|:---|:---|:---|:---|
| `--lines` | `-n` | 50 | Number of lines to show |
| `--follow` | `-f` | false | Makes parent command `pb log` follow; no-op in `pb log tail` because tail always follows |
{.full-width}

**Permission Handling:**

If the current user does not have permission to read the log directory, the command automatically retries with `sudo`.


## Design Notes

**Command Execution:**

All `pig pb` commands run as the database superuser (DBSU).
PgBackRest requires access to PostgreSQL data files and WAL archives.

Execution logic:

- If the current user is DBSU: execute directly
- If the current user is root: use `su - postgres -c "..."` to execute
- Other users: use `sudo -inu postgres -- ...` to execute

**Relationship with pgbackrest:**

`pig pb` simplifies common `pgbackrest` operations through these features:

- Auto-detect stanza name without specifying it every time
- Auto-check primary role before backup
- Show restore plan and require interactive `y`/`yes` confirmation before restore
- Provide user-friendly time format input
- Provide post-restore guidance

For full `pgbackrest` functionality, use the `pgbackrest` command directly.

**Default Configuration Paths:**

| Config | Default |
|:---|:---|
| Config file | `/etc/pgbackrest/pgbackrest.conf` |
| Log directory | `/pg/log/pgbackrest` |
| Data directory | `pg1-path` from config, or `$PGDATA`, or `/pg/data` |
{.full-width}

**Security Considerations:**

- `pb delete` requires interactive `y`/`yes` confirmation unless you specify `--yes`. With multiple stanzas, specify `--stanza` explicitly.
- `pb restore` requires an explicit recovery target and validates `--time`. It requires interactive `y`/`yes` confirmation unless you specify `--yes`.
- `pb backup` checks the primary role by default to prevent backups on a replica.
- `pb log tail` does not support structured output. Use `pb log show -n N -o json` for a JSONL snapshot.

**Platform Support:**

This command is designed for Linux systems and depends on Pigsty's default directory layout.
