---
title: Backup Mechanism
description: Backup scripts, cron jobs, backup repository and infrastructure
icon: fa-solid fa-gears
weight: 1502
categories: [Task, Concept]
---


Backups can be invoked via built-in [scripts](#scripts), scheduled using node [crontab](#scheduled-backups),
managed by [pgbackrest](https://pgbackrest.org/), and stored in backup repositories,
which can be local disk filesystems or MinIO / S3, supporting different [retention](#retention-policy) policies.


--------

## Scripts

You can create backups using the [`pg_dbsu`](/docs/pgsql/param#pg_dbsu) user (defaults to `postgres`) to execute `pgbackrest` commands:

{{< tabpane persist="disabled" >}}
{{% tab header="Backup Commands" disabled=true /%}}
{{< tab header="backup" lang="bash" >}}
pgbackrest --stanza=pg-meta --type=full backup   # Create full backup for cluster pg-meta
{{< /tab >}}
{{< tab header="full" lang="bash" >}}
$ pgbackrest --stanza=pg-meta --type=full backup
2025-07-15 01:36:57.007 P00   INFO: backup command begin 2.54.2: --annotation=pg_cluster=pg-meta ...
2025-07-15 01:36:57.030 P00   INFO: execute non-exclusive backup start: backup begins after the requested immediate checkpoint completes
2025-07-15 01:36:57.105 P00   INFO: backup start archive = 000000010000000000000006, lsn = 0/6000028
2025-07-15 01:36:58.540 P00   INFO: new backup label = 20250715-013657F
2025-07-15 01:36:58.588 P00   INFO: full backup size = 44.5MB, file total = 1437
2025-07-15 01:36:58.589 P00   INFO: backup command end: completed successfully (1584ms)
{{< /tab >}}
{{< tab header="diff" lang="bash" >}}
$ pgbackrest --stanza=pg-meta --type=diff backup
2025-07-15 01:37:24.952 P00   INFO: backup command begin 2.54.2: ...
2025-07-15 01:37:24.985 P00   INFO: last backup label = 20250715-013657F, version = 2.54.2
2025-07-15 01:37:26.337 P00   INFO: new backup label = 20250715-013657F_20250715-013724D
2025-07-15 01:37:26.381 P00   INFO: diff backup size = 424.3KB, file total = 1437
2025-07-15 01:37:26.381 P00   INFO: backup command end: completed successfully (1431ms)
{{< /tab >}}
{{< tab header="incr" lang="bash" >}}
$ pgbackrest --stanza=pg-meta --type=incr backup
2025-07-15 01:37:30.305 P00   INFO: backup command begin 2.54.2: ...
2025-07-15 01:37:30.337 P00   INFO: last backup label = 20250715-013657F_20250715-013724D, version = 2.54.2
2025-07-15 01:37:31.356 P00   INFO: new backup label = 20250715-013657F_20250715-013730I
2025-07-15 01:37:31.403 P00   INFO: incr backup size = 8.3KB, file total = 1437
2025-07-15 01:37:31.403 P00   INFO: backup command end: completed successfully (1099ms)
{{< /tab >}}
{{< tab header="info" lang="bash" >}}
$ pgbackrest --stanza=pg-meta info
stanza: pg-meta
    status: ok
    cipher: aes-256-cbc

    db (current)
        wal archive min/max (17): 000000010000000000000001/00000001000000000000000A

        full backup: 20250715-013657F
            timestamp start/stop: 2025-07-15 01:36:57+00 / 2025-07-15 01:36:58+00
            wal start/stop: 000000010000000000000006 / 000000010000000000000006
            database size: 44.5MB, database backup size: 44.5MB
            repo1: backup size: 8.7MB

        diff backup: 20250715-013657F_20250715-013724D
            timestamp start/stop: 2025-07-15 01:37:24+00 / 2025-07-15 01:37:26+00
            database size: 44.5MB, database backup size: 424.3KB
            repo1: backup size: 94KB
            backup reference total: 1 full

        incr backup: 20250715-013657F_20250715-013730I
            timestamp start/stop: 2025-07-15 01:37:30+00 / 2025-07-15 01:37:31+00
            database size: 44.5MB, database backup size: 8.3KB
            repo1: backup size: 504B
            backup reference total: 1 full, 1 diff
{{< /tab >}}
{{< /tabpane >}}

Here the `stanza` is the database cluster name: [`pg_cluster`](/docs/pgsql/param#pg_cluster), which is `pg-meta` in the default configuration.

Pigsty provides the `pb` alias and `pg-backup` wrapper script, which automatically fills in the current cluster name as the stanza:

```bash title="Alias"
function pb() {
    local stanza=$(grep -o '\[[^][]*]' /etc/pgbackrest/pgbackrest.conf | head -n1 | sed 's/.*\[\([^]]*\)].*/\1/')
    pgbackrest --stanza=$stanza $@
}
pb ...    # pgbackrest --stanza=pg-meta ...
pb info   # pgbackrest --stanza=pg-meta info
pb backup # pgbackrest --stanza=pg-meta backup
```

```bash title="Script"
pg-backup full   # Perform full backup         = pgbackrest --stanza=pg-meta --type=full backup
pg-backup incr   # Perform incremental backup  = pgbackrest --stanza=pg-meta --type=incr backup
pg-backup diff   # Perform differential backup = pgbackrest --stanza=pg-meta --type=diff backup
```


--------

## Scheduled Backups

Pigsty uses Linux crontab to schedule backup tasks. You can use it to define backup policies.

For example, most single-node configuration templates have the following [`node_crontab`](/docs/node/param#node_crontab) for backups:

```yaml title="Full backup at 1 AM daily"
node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ]
```

You can design more complex backup strategies using crontab and the `pg-backup` script, for example:

```yaml title="Full backup on Monday, incremental backups on weekdays"
node_crontab:  # Full backup at 1 AM on Monday, incremental backups on weekdays
  - '00 01 * * 1 postgres /pg/bin/pg-backup full'
  - '00 01 * * 2,3,4,5,6,7 postgres /pg/bin/pg-backup'
```

To apply crontab changes, use [`node.yml`](/docs/node/playbook/#nodeyml) to update crontab on all nodes:

```bash title="Apply crontab"
./node.yml -t node_crontab -l pg-meta    # Apply crontab changes to pg-meta group
```


--------

## pgbackrest

Here are the configuration details for pgbackrest in Pigsty:

- pgbackrest backup tool is enabled and configured by default ([`pgbackrest_enabled`](/docs/pgsql/param/#pgbackrest_enabled))
- Installed in the `pg_install` task of the [`pgsql.yml`](/docs/pgsql/playbook/#pgsqlyml) playbook, defined in [`pg_packages`](/docs/pgsql/param/#pg_packages)
- Configured in the `pg_backup` task of the [`pgsql.yml`](/docs/pgsql/playbook/#pgsqlyml) playbook, see [Parameters: PG_BACKUP](/docs/pgsql/param/#pg_backup)
- Backup repository initialized in the `pgbackrest_init` task, which will fail if the repository already exists (error can be ignored)
- Initial backup created in the `pgbackrest_backup` task, controlled by [`pgbackrest_init_backup`](/docs/pgsql/param/#pgbackrest_init_backup)

### File Hierarchy

- bin: `/usr/bin/pgbackrest`, from PGDG's `pgbackrest` package, in group alias `pgsql-common`.
- conf: `/etc/pgbackrest`, main configuration file is [`/etc/pgbackrest/pgbackrest.conf`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pgbackrest.conf).
- logs: `/pg/log/pgbackrest/*`, controlled by [`pgbackrest_log_dir`](/docs/pgsql/param/#pgbackrest_log_dir)
- tmp: `/pg/spool` used as temporary spool directory for pgbackrest
- data: `/pg/backup` used to store data (when using the default `local` filesystem backup repository)

Additionally, during [PITR recovery](/docs/pgsql/backup/restore), Pigsty creates a temporary `/pg/conf/pitr.conf` pgbackrest configuration file,
and writes postgres recovery logs to the `/pg/tmp/recovery.log` file.

### Monitoring

There is a `pgbackrest_exporter` service running on [`pgbackrest_exporter_port`](/docs/pgsql/param/#pgbackrest_exporter_port) (`9854`) port for exporting pgbackrest metrics.
You can customize it via [`pgbackrest_exporter_options`](/docs/pgsql/param/#pgbackrest_exporter_options),
or set [`pgbackrest_exporter_enabled`](/docs/pgsql/param/#pgbackrest_exporter_enabled) to `false` to disable it.

### Initial Backup

When creating a postgres cluster, Pigsty automatically creates an initial backup.
Since the new cluster is almost empty, this is a very small backup.
It leaves a `/etc/pgbackrest/initial.done` marker file to avoid recreating the initial backup.
If you don't want an initial backup, set [`pgbackrest_init_backup`](/docs/pgsql/param/#pgbackrest_init_backup) to `false`.


--------

## Management

### Enable Backup

If [`pgbackrest_enabled`](/docs/pgsql/param/#pgbackrest_enabled) is set to `true` when the database cluster is created, backups will be automatically enabled.

If this value was `false` at creation time, you can enable the pgbackrest component with the following command:

```bash
./pgsql.yml -t pg_backup    # Run pgbackrest subtask
```

### Remove Backup

When removing the primary instance ([`pg_role`](/docs/pgsql/param/#pg_role) = `primary`), Pigsty will delete the pgbackrest backup stanza.

```bash
./pgsql-rm.yml
./pgsql-rm.yml -e pg_rm_backup=false   # Keep backups
./pgsql-rm.yml -t pg_backup            # Remove backups only
```

Use the `pg_backup` subtask to remove backups only, and the [`pg_rm_backup`](/docs/pgsql/param/#pg_rm_backup) parameter (set to `false`) to preserve backups.

If your backup repository is **locked** (e.g., S3 / MinIO has locking options), this operation will fail.

{{% alert color="warning" title="Backup Deletion" %}}
Deleting backups may result in permanent data loss. This is a dangerous operation, please proceed with caution.
{{% /alert %}}


### List Backups

This command will list all backups in the pgbackrest repository (shared across all clusters)

```bash
pgbackrest info
````

### Manual Backup

Pigsty provides a built-in script `/pg/bin/pg-backup` that wraps the `pgbackrest` backup command.

```bash
pg-backup        # Perform incremental backup
pg-backup full   # Perform full backup
pg-backup incr   # Perform incremental backup
pg-backup diff   # Perform differential backup
```

### Base Backup

Pigsty provides an alternative backup script `/pg/bin/pg-basebackup` that does not depend on `pgbackrest` and directly provides a physical copy of the database cluster.
The default backup directory is `/pg/backup`.

{{< tabpane persist="disabled" >}}
{{% tab header="pg-basebackup" disabled=true /%}}
{{< tab header="help" lang="bash" >}}
NAME
  pg-basebackup  -- make base backup from PostgreSQL instance

SYNOPSIS
  pg-basebackup -sdfeukr
  pg-basebackup --src postgres:/// --dst . --file backup.tar.lz4

DESCRIPTION
-s, --src, --url     Backup source URL, optional, defaults to "postgres:///", password should be provided in url, ENV, or .pgpass if required
-d, --dst, --dir     Location to store backup file, defaults to "/pg/backup"
-f, --file           Override default backup filename, "backup_${tag}_${date}.tar.lz4"
-r, --remove         Remove .lz4 files older than n minutes, defaults to 1200 (20 hours)
-t, --tag            Backup file tag, uses target cluster name or local IP address if not set, also used for default filename
-k, --key            Encryption key when --encrypt is specified, defaults to ${tag}
-u, --upload         Upload backup file to cloud storage (needs to be implemented by yourself)
-e, --encryption     Use OpenSSL RC4 encryption, uses tag as key if not specified
-h, --help           Print this help information
{{< /tab >}}
{{< tab header="backup" lang="bash" >}}
postgres@pg-meta-1:~$ pg-basebackup
[2025-07-13 06:16:05][INFO] ================================================================
[2025-07-13 06:16:05][INFO] [INIT] pg-basebackup begin, checking parameters
[2025-07-13 06:16:05][DEBUG] [INIT] filename  (-f)    :   backup_pg-meta_20250713.tar.lz4
[2025-07-13 06:16:05][DEBUG] [INIT] src       (-s)    :   postgres:///
[2025-07-13 06:16:05][DEBUG] [INIT] dst       (-d)    :   /pg/backup
[2025-07-13 06:16:05][INFO] [LOCK] lock acquired success on /tmp/backup.lock, pid=107417
[2025-07-13 06:16:05][INFO] [BKUP] backup begin, from postgres:/// to /pg/backup/backup_pg-meta_20250713.tar.lz4
pg_basebackup: initiating base backup, waiting for checkpoint to complete
pg_basebackup: checkpoint completed
pg_basebackup: write-ahead log start point: 0/7000028 on timeline 1
pg_basebackup: write-ahead log end point: 0/7000FD8
pg_basebackup: syncing data to disk ...
pg_basebackup: base backup completed
[2025-07-13 06:16:06][INFO] [BKUP] backup complete!
[2025-07-13 06:16:06][INFO] [DONE] backup procedure complete!
[2025-07-13 06:16:06][INFO] ================================================================
{{< /tab >}}
{{< /tabpane >}}

The backup uses `lz4` compression. You can decompress and extract the tarball with the following command:

```bash
mkdir -p /tmp/data   # Extract backup to this directory
cat /pg/backup/backup_pg-meta_20250713.tar.lz4 | unlz4 -d -c | tar -xC /tmp/data
```

### Logical Backup

You can also perform logical backups using the `pg_dump` command.

Logical backups cannot be used for PITR (Point-in-Time Recovery), but are very useful for migrating data between different major versions or implementing flexible data export logic.


### Bootstrap from Repository

Suppose you have an existing cluster `pg-meta` and want to **clone** it as `pg-meta2`:

You need to create a new `pg-meta2` cluster branch and then run `pitr` on it.
