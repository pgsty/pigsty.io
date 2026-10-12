---
title: Admin Commands
description: Backup administration reference covering setup and removal, manual backups, inspection, expiration, stanza management, logs, and alternative tools.
icon: fa-solid fa-terminal
weight: 1704
categories: [Task]
---

On a database node, run backup commands as the database superuser ([**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu), which defaults to `postgres`.
Use one of these interfaces:

- **`pig pb`**: the [**PIG CLI wrapper**](/docs/pig/pb), with automatic stanza detection, DBSU switching, and safety checks; this is the recommended interface
- **`pb`**: a login-shell function that supplies `--stanza` and forwards arguments to pgBackRest
- **`pgbackrest`**: the native command; see the [**pgBackRest command reference**](/docs/pgbackrest/command/)


--------

## Command Overview

| PIG command                         | Alias | Native pgBackRest command                                         | Purpose |
|:------------------------------------|:-----:|:------------------------------------------------------------------|:--------|
| `pig pb info`                       | `i`   | [**`info`**](/docs/pgbackrest/command/info)                       | Show backup and archive status |
| `pig pb list`                       | `ls`  | —                                                                 | List repositories, stanzas, or backup sets |
| `pig pb backup [full/diff/incr]`    | `b`   | [**`backup`**](/docs/pgbackrest/command/backup)                   | Create a backup after checking the primary role |
| `pig pb restore`                    | `r`   | [**`restore`**](/docs/pgbackrest/command/restore)                 | Low-level restore primitive; see [**Restore Operations**](/docs/pgsql/backup/restore/) |
| `pig pb expire`                     | `e`   | [**`expire`**](/docs/pgbackrest/command/expire)                   | Expire backups according to retention (`--plan` previews) |
| `pig pb create`                     | `c`   | [**`stanza-create`**](/docs/pgbackrest/command/stanza-create)     | Create a stanza |
| `pig pb upgrade`                    | `u`   | [**`stanza-upgrade`**](/docs/pgbackrest/command/stanza-upgrade)   | Upgrade a stanza after a major-version change or clone |
| `pig pb delete`                     | `d`   | [**`stanza-delete`**](/docs/pgbackrest/command/stanza-delete)     | Delete a stanza and all of its backups |
| `pig pb check`                      | `ck`  | [**`check`**](/docs/pgbackrest/command/check)                     | Verify configuration, repository access, and archiving |
| `pig pb start`                      | `up`  | [**`start`**](/docs/pgbackrest/command/start)                     | Re-enable pgBackRest operations |
| `pig pb stop`                       | `dw`  | [**`stop`**](/docs/pgbackrest/command/stop)                       | Stop new pgBackRest operations |
| `pig pb log [list/show/tail]`       | `l`   | —                                                                 | Inspect pgBackRest logs |
{.full-width}


--------

## Enable Backup

If [**`pgbackrest_enabled`**](/docs/pgsql/param/#pgbackrest_enabled) is `true` at cluster creation, Pigsty enables backup automatically.
If backup was disabled at creation, or repository settings have changed, run the `pg_backup` subtask:


```bash
./pgsql.yml -t pg_backup -l pg-meta   # Configure pgBackRest and create the stanza
```

After cluster initialization, Pigsty attempts an initial full backup.
It writes `/etc/pgbackrest/initial.done` only after the backup command succeeds.
If the attempt fails, the playbook ignores the failure and leaves no marker.
This file only prevents the initialization task from repeating.
Always verify repository state with `pig pb info` or `pgbackrest info`.
Define scheduled backups with [**`pg_crontab`**](/docs/pgsql/param#pg_crontab); see [**Backup Policy**](/docs/pgsql/backup/policy/).


--------

## Remove Backup

To remove only a backup stanza, use `pig pb delete` as the preferred interface.
It asks for interactive confirmation.
With a multi-stanza configuration, you must also specify the target explicitly.
Verify the exact target first:

```bash
pig pb info -s pg-meta           # Verify the backup chain and recovery window
pig pb delete -s pg-meta         # Executes only after typing the exact stanza name
```

By default, `pgsql-rm.yml` also tries to delete the cluster's backup stanza when it removes a primary instance ([**`pg_role`**](/docs/pgsql/param/#pg_role) = `primary`).
Each command below changes or deletes state.
Do not run a command only because it appears in an example:

```bash
./pgsql-rm.yml -l pg-meta                          # Remove the cluster and its backups
./pgsql-rm.yml -l pg-meta -e pg_rm_backup=false    # Remove the cluster while preserving backups
./pgsql-rm.yml -l pg-meta -t pg_backup             # Remove backup-related state only
```

Before execution, verify a recent usable backup and record the recovery requirement.
Have the operator re-enter the exact cluster/stanza name.
To preserve backups when you remove the cluster, set [**`pg_rm_backup`**](/docs/pgsql/param/#pg_rm_backup) to `false`.

`pgsql-rm.yml -t pg_backup` forcibly runs `pgbackrest stanza-delete` on the primary.
In `local` mode, it removes the local repository directory.
It then removes the pgBackRest configuration and initial-backup marker.
The task ignores some deletion errors.
Thus, a successful playbook result does not prove that it physically removed the repository objects.
To delete only a stanza, prefer `pig pb delete`, which provides a plan and requires confirmation.

With object versioning and [**object-lock retention**](/docs/pgsql/backup/repository/#repository-locking), deletion may create a delete marker.
Locked historical versions continue to consume storage until their retention period expires.

> [!WARNING] Backup Deletion
> Deleting backups can permanently destroy recovery options.
> Confirm the cluster/stanza. Verify a recent backup and an alternative recovery copy.
> Keep the `pig pb info` output and deletion plan as an audit record.


--------

## Manual Backup

You can start a backup outside the crontab schedule.
Both `pg-backup` and `pig pb backup` check that the current instance is primary.
They exit on a replica:

```bash
pg-backup            # Incremental; pgBackRest promotes it to full if no full backup exists
pg-backup full       # Full backup
pg-backup diff       # Differential backup relative to the latest full
pg-backup incr       # Incremental backup relative to the latest backup

pig pb backup full   # Equivalent PIG wrapper with stanza and DBSU detection
```

Backup consumes disk I/O and network bandwidth.
Pigsty limits parallelism to a small number of processes.
Still, you should schedule production backups for periods with low traffic.

--------

## Inspect Backups

`pb info` shows backups and WAL archive status for the current stanza:

```bash
pb info          # pgbackrest --stanza=pg-meta info
pig pb info      # Equivalent PIG wrapper
pig pb list      # List backup sets; use "list stanza" for all stanzas
```

Backup labels that end in `F`, `D`, and `I` identify full, differential, and incremental backups.
The portion before an underscore identifies the full backup at the start of that chain.
The WAL archive range and oldest usable full backup define the [**recovery window**](/docs/pgsql/backup/mechanism/).

The `pgbackrest_exporter` service on port `9854` continuously exports [**metrics**](/docs/pgbackrest/metric) such as the latest backup time, type, size, and error status.


--------

## Expire Old Backups

pgBackRest applies the retention policy automatically after backups (`expire-auto`).
To preview or run expiration manually, use:

```bash
pig pb expire --plan    # Show what would be removed; no deletion
pig pb expire           # Apply the configured retention policy
```


--------

## Stanza Management

A [**stanza**](/docs/pgsql/backup/mechanism/) records a cluster's backup identity, including its system identifier and major version.
You may need to manage it manually:

```bash
pig pb create                    # Create a stanza; cluster initialization normally does this
pig pb upgrade                   # Update after a major-version upgrade or clone recovery
pig pb delete -s pg-meta         # Delete all backups and archives after confirmation; destructive
```

The usual manual `upgrade` case is [**post-clone cleanup**](/docs/pgsql/backup/cluster/).
After you restore another cluster's backup into a new cluster, update the stanza identity before you write new backups.


--------

## Check and Control

```bash
pig pb check     # End-to-end check of configuration, archive push, and repository access
pig pb stop      # Stop new pgBackRest operations for a maintenance window
pig pb start     # Re-enable pgBackRest operations
```

`check` verifies that WAL can reach the repository through the archive path.
It is not a purely local or read-only operation.


--------

## Logs

```bash
pig pb log              # Show the latest log snapshot
pig pb log list         # List log files
pig pb log tail         # Follow the latest log
ls /pg/log/pgbackrest/  # Directory containing backup, archive, and restore logs
```

For `pgsql-pitr.yml`, PostgreSQL writes recovery output to `/pg/tmp/recovery.log`.

--------

## Alternative Backup Tools

### pg-basebackup

The legacy `/pg/bin/pg-basebackup` script creates a single-file physical backup with native `pg_basebackup`.
It uses an `lz4`-compressed tar stream and writes to `/pg/backup` by default.
Use it only for a simple local copy when a pgBackRest repository is unavailable:

```bash
pg-basebackup                                      # /pg/backup/backup_<tag>_<date>.tar.lz4
pg-basebackup --dst /tmp --file backup.tar.lz4     # Explicit destination and filename

mkdir -p /tmp/data
cat /pg/backup/backup_pg-meta_20250713.tar.lz4 | unlz4 -d -c | tar -xC /tmp/data
```

> [!WARNING] Legacy Encryption
> `pg-basebackup -e` uses the obsolete OpenSSL **RC4** cipher. You must not treat it as confidentiality protection.
> For encrypted backups, use a pgBackRest repository with AES-256 (`cipher_type: aes-256-cbc`).

### Logical Backup

Logical backups made with `pg_dump` cannot provide PITR.
They are suitable for cross-major-version migration, partial exports, and long-term logical snapshots.
Production recovery plans commonly use logical and physical backups together.
See the [PostgreSQL documentation](https://www.postgresql.org/docs/18/backup-dump.html).
