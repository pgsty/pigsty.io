---
title: Backup Policy
description: Design backup policies according to your needs
icon: fa-solid fa-clipboard-list
weight: 1501
categories: [Task]
---


- **When**: Backup schedule
- **Where**: Backup repository
- **How**: Backup method


--------

## When to Backup

The first question is **when** to backup your database - this is a tradeoff between backup frequency and recovery time.
Since you need to replay WAL logs from the last backup to the recovery target point, the more frequent the backups, the less WAL logs need to be replayed, and the faster the recovery.


### Daily Full Backup

For production databases, it's recommended to start with the simplest daily full backup strategy.
This is also Pigsty's default backup strategy, implemented via [crontab](mechanism#scheduled-backups).

```yaml title="Full backup at 1 AM daily"
node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ]
pgbackrest_method: local          # Choose backup repository method: `local`, `minio`, or other custom repository
pgbackrest_repo:                  # pgbackrest repository configuration: https://pgbackrest.org/configuration.html#section-repository
  local:                          # Default pgbackrest repository using local POSIX filesystem
    path: /pg/backup              # Local backup directory, defaults to `/pg/backup`
    retention_full_type: count    # Retain full backups by count
    retention_full: 2             # Keep 2, up to 3 full backups when using local filesystem repository
```

When used with the default `local` local filesystem backup repository, this provides a 24~48 hour recovery window.

![pitr-scope](/img/pigsty/pitr-scope.png)

Assuming your database size is 100GB and writes 10GB of data per day, the backup size is as follows:

![pitr-space](/img/pigsty/pitr-space.png)

This will consume `2~3` times the database size in space, plus 2 days of WAL logs.
Therefore, in practice, you may need to prepare at least `3~5` times the database size for backup disk to use the default backup strategy.


### Full + Incremental Backup

You can optimize backup space usage by adjusting these parameters.

If using MinIO / S3 as a centralized backup repository, you can use storage space beyond local disk limitations.
In this case, consider using full + incremental backup with a 2-week retention policy:

```yaml
node_crontab:  # Full backup at 1 AM on Monday, incremental backups on weekdays
  - '00 01 * * 1 postgres /pg/bin/pg-backup full'
  - '00 01 * * 2,3,4,5,6,7 postgres /pg/bin/pg-backup'
pgbackrest_method: minio
pgbackrest_repo:                  # pgbackrest repository configuration: https://pgbackrest.org/configuration.html#section-repository
  minio:                          # Optional minio repository
    type: s3                      # minio is S3 compatible
    s3_endpoint: sss.pigsty       # minio endpoint domain, defaults to `sss.pigsty`
    s3_region: us-east-1          # minio region, defaults to us-east-1, meaningless for minio
    s3_bucket: pgsql              # minio bucket name, defaults to `pgsql`
    s3_key: pgbackrest            # minio user access key for pgbackrest
    s3_key_secret: S3User.Backup  # minio user secret for pgbackrest
    s3_uri_style: path            # minio uses path-style URIs instead of host-style
    path: /pgbackrest             # minio backup path, defaults to `/pgbackrest`
    storage_port: 9000            # minio port, defaults to 9000
    storage_ca_file: /etc/pki/ca.crt  # minio CA certificate path, defaults to `/etc/pki/ca.crt`
    block: y                      # Enable block-level incremental backup
    bundle: y                     # Bundle small files into a single file
    bundle_limit: 20MiB           # Bundle size limit, recommended 20MiB for object storage
    bundle_size: 128MiB           # Bundle target size, recommended 128MiB for object storage
    cipher_type: aes-256-cbc      # Enable AES encryption for remote backup repository
    cipher_pass: pgBackRest       # AES encryption password, defaults to 'pgBackRest'
    retention_full_type: time     # Retain full backups by time
    retention_full: 14            # Keep full backups from the last 14 days
```

When used with the built-in `minio` backup repository, this provides a guaranteed 1-week PITR recovery window.

![pitr-scope2](/img/pigsty/pitr-scope2.png)

Assuming your database size is 100GB and writes 10GB of data per day, the backup size is as follows:

![pitr-space2](/img/pigsty/pitr-space2.png)


--------

## Backup Location

By default, Pigsty provides two default backup repository definitions: `local` and `minio` backup repositories.

- `local`: **Default option**, uses local `/pg/backup` directory (symlink to [`pg_fs_backup`](/docs/pgsql/param/#pg_fs_backup): `/data/backups`)
- `minio`: Uses SNSD single-node MinIO cluster (supported by Pigsty, but not enabled by default)

```yaml
pgbackrest_method: local          # Choose backup repository method: `local`, `minio`, or other custom repository
pgbackrest_repo:                  # pgbackrest repository configuration: https://pgbackrest.org/configuration.html#section-repository
  local:                          # Default pgbackrest repository using local POSIX filesystem
    path: /pg/backup              # Local backup directory, defaults to `/pg/backup`
    retention_full_type: count    # Retain full backups by count
    retention_full: 2             # Keep 2, up to 3 full backups when using local filesystem repository
  minio:                          # Optional minio repository
    type: s3                      # minio is S3 compatible
    s3_endpoint: sss.pigsty       # minio endpoint domain, defaults to `sss.pigsty`
    s3_region: us-east-1          # minio region, defaults to us-east-1, meaningless for minio
    s3_bucket: pgsql              # minio bucket name, defaults to `pgsql`
    s3_key: pgbackrest            # minio user access key for pgbackrest
    s3_key_secret: S3User.Backup  # minio user secret for pgbackrest
    s3_uri_style: path            # minio uses path-style URIs instead of host-style
    path: /pgbackrest             # minio backup path, defaults to `/pgbackrest`
    storage_port: 9000            # minio port, defaults to 9000
    storage_ca_file: /etc/pki/ca.crt  # minio CA certificate path, defaults to `/etc/pki/ca.crt`
    block: y                      # Enable block-level incremental backup
    bundle: y                     # Bundle small files into a single file
    bundle_limit: 20MiB           # Bundle size limit, recommended 20MiB for object storage
    bundle_size: 128MiB           # Bundle target size, recommended 128MiB for object storage
    cipher_type: aes-256-cbc      # Enable AES encryption for remote backup repository
    cipher_pass: pgBackRest       # AES encryption password, defaults to 'pgBackRest'
    retention_full_type: time     # Retain full backups by time
    retention_full: 14            # Keep full backups from the last 14 days
```
