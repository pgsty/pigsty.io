---
title: Admin Commands
description: Managing backup repositories and backups
icon: fa-solid fa-terminal
weight: 1504
categories: [Task]
---


## Enable Backup

If [`pgbackrest_enabled`](/docs/pgsql/param/#pgbackrest_enabled) is set to `true` when the database cluster is created, backups will be automatically enabled.

If this value was `false` at creation time, you can enable the pgbackrest component with the following command:

```bash
./pgsql.yml -t pg_backup    # Run pgbackrest subtask
```


--------

## Remove Backup

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


--------

## List Backups

This command will list all backups in the pgbackrest repository (shared across all clusters)

```bash
pgbackrest info
````


--------

## Manual Backup

Pigsty provides a built-in script `/pg/bin/pg-backup` that wraps the `pgbackrest` backup command.

```bash
pg-backup        # Perform incremental backup
pg-backup full   # Perform full backup
pg-backup incr   # Perform incremental backup
pg-backup diff   # Perform differential backup
```


--------

## Base Backup

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


--------

## Logical Backup

You can also perform logical backups using the `pg_dump` command.

Logical backups cannot be used for PITR (Point-in-Time Recovery), but are very useful for migrating data between different major versions or implementing flexible data export logic.


--------

## Bootstrap from Repository

Suppose you have an existing cluster `pg-meta` and want to **clone** it as `pg-meta2`:

You need to create a new `pg-meta2` cluster branch and then run `pitr` on it.
