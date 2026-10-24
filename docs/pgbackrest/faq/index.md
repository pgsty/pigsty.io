# Frequently Asked Questions

> Frequently asked questions about pgBackRest backup, restore, configuration, and troubleshooting.

---

LLMS index: [llms.txt](/llms.txt)

---

--------

## Introduction

These answers cover specific questions that the User Guide and references might not cover. If your issue is absent, check the pgBackRest [Issues List in GitHub](https://github.com/pgbackrest/pgbackrest/issues).


--------

## What if I get the "could not find WAL segment" error?

This error has several possible causes:

- misconfigured `archive_command`
- misconfigured pgBackRest configuration files
- network or permissions issue
- third party product (e.g. S3, Swift or Minio) configuration issue
- large amount of WAL queueing to be archived

Check these items:

- Check PostgreSQL `archive_command`.
- Check pgBackRest settings on each host. For example, configure `pg*` on the repository host and `repo*` on the PostgreSQL host.
- Run `check` with `--archive-timeout` higher than the configured value or default. This shows whether the WAL queue needs more time to clear. For high WAL volumes, consider [asynchronous archiving](/docs/pgbackrest/user-guide/#asynchronous-archiving).


--------

## How do I manually purge a backup set?

Use `--set` to expire a full backup set. See [Command Reference: Expire](/docs/pgbackrest/command/expire/).


--------

## How can I configure options independently for each command?

The configuration file can set options independently for each command. See [Configure Cluster Stanza](/docs/pgbackrest/user-guide/#configure-cluster-stanza) for details and option precedence.

For example, the `process-max` option can be optimized for each command:

```ini
[global]
# used where not overridden
process-max=2

[global:backup]
# more cores for backup
process-max=4

[global:restore]
# all the cores for restore
process-max=8

[global:archive-push]
# more cores for archive-push
process-max=3

[global:archive-get]
# fewer cores for archive-get
process-max=1
```


--------

## Can I use dots (periods) in my S3 bucket name?

RFC-2818 does not allow a wildcard to match a dot (.). Therefore, S3 bucket names must not contain dots. A name with dots causes an error such as "unable to find hostname 'my.backup.bucket.s3.amazonaws.com' in certificate common name or subject alternative names".

The exception is `repo-s3-uri-style=path`, which adds the bucket to the URI instead of the host. The certificate then matches only the endpoint, so dots in the bucket name are permitted. Some S3-compatible object stores do not support path-style URIs.


--------

## Where can I find packages for older versions of pgBackRest?

The [apt.postgresql.org](https://apt.postgresql.org) repository maintains an [archive of older versions](https://apt-archive.postgresql.org). Debian also maintains [snapshots](https://snapshot.debian.org/binary/pgbackrest/) of all test builds.


--------

## Why does a backup attempt fail when `backup-standby=y` and the standby database is down?

Backups from a standby usually reduce primary load. Moving backups to the primary when the standby fails defeats this purpose. Avoid additional primary load while the system has failures. If a reasonably recent backup exists, keep WAL archiving current and wait until the system is stable for another backup.

If you need a backup, add more standbys or remove `backup-standby`. For a single backup, use `--no-backup-standby` on the command line without changing the configuration.


--------

## Should I setup my repository on a standby host?

No. Configure primary and standby databases symmetrically so that pgBackRest can handle failover. Otherwise, you must change configuration after failover or risk further problems.

See the [Dedicated Repository Host](/docs/pgbackrest/user-guide/#dedicated-repository-host) section of the User Guide for more information.


--------

## Time-based Point-in-Time Recovery does not appear to work, why?

For time-based Point-in-Time Recovery, choose a backup that completed before the target time. A common error is to omit this check. Without `--set`, pgBackRest tries to find a backup suitable for `--target=`. If none matches, restore uses the latest backup. If that backup is newer than the target, PostgreSQL ignores the invalid `--target=` and replays WAL to the latest available time.

Run `info` and find a backup whose timestamp stop precedes the target time. Select it with `--set` during restore. Use `--set=BACKUP_LABEL`, replacing `BACKUP_LABEL` with that backup label.

See the [Point-in-Time Recovery](/docs/pgbackrest/user-guide/#point-in-time-recovery) section of the User Guide for more information.


--------

## What does the WAL archive suffix mean?

The suffix is the SHA1 checksum used to verify file integrity. There is no way to omit it.


--------

## Does it take longer to restore specific backup types (full, differential, incremental)?

All backup types take the same time to restore under equal disk I/O, network I/O, and other conditions. Restore retrieves files from the backup manifest. Incremental and differential manifests can reference files from earlier backups. Backup creation time varies by type, but database size determines restore time.


--------

## How can I export a backup for use in a network-isolated environment?

The repository stores backups, WAL archives, and essential metadata for compression, encryption, and file bundles. Copying a backup with only some WAL files usually fails. It works only under specific, restrictive conditions.

To create a self-contained database export, for example for USB transfer, take a backup with [`--archive-copy`](/docs/pgbackrest/command/backup/#copy-archive-option---archive-copy). This includes the WAL segments necessary for consistency. Restore with [`--type=none`](/docs/pgbackrest/command/restore/#type-option---type) and `--pg1-path=/your/target/path`. The restored PostgreSQL data directory contains all required WAL in `pg_wal`, similar to `pg_basebackup` output.

Copy this directory to another system. PostgreSQL should recover without access to the pgBackRest repository.

Recovery from this backup does not switch timelines. The new cluster should not push WAL to the source repository. Network isolation of the new cluster should prevent this problem.
