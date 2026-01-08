---
title: Backup Repository
description: PostgreSQL backup storage repository configuration
icon: fa-solid fa-box-archive
weight: 1503
categories: [Task]
---


You can configure the backup **storage location** by specifying the [`pgbackrest_repo`](/docs/pgsql/param/#pgbackrest_repo) parameter.
You can define multiple repositories here, and Pigsty will choose which one to use based on the value of [`pgbackrest_method`](/docs/pgsql/param/#pgbackrest_method).


## Default Repositories

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


--------

## Repository Retention Policy

If you backup daily but don't delete old backups, the backup repository will grow indefinitely and exhaust disk space.
You need to define a retention policy to keep only a limited number of backups.

The default backup policy is defined in the [`pgbackrest_repo`](/docs/pgsql/param/#pgbackrest_repo) parameter and can be adjusted as needed.

- `local`: Keep the latest **2** full backups, allowing up to 3 during backup
- `minio`: Keep all full backups from the last **14** days


--------

## Space Planning

Object storage provides almost unlimited storage capacity, so there's no need to worry about disk space.
You can use a hybrid full + differential backup strategy to optimize space usage.

For local disk backup repositories, Pigsty recommends using a policy that keeps the latest **2** full backups,
meaning the disk will retain the two most recent full backups (there may be a third copy while running a new backup).

This guarantees at least a 24-hour recovery window. See [Backup Policy](policy) for details.


--------

## Other Repository Options

You can also use other services as backup repositories, refer to the [pgbackrest documentation](https://pgbackrest.org/user-guide.html) for details:

- [S3 Compatible Object Storage](https://pgbackrest.org/user-guide.html#s3-support)
- [Azure Compatible Object Storage](https://pgbackrest.org/user-guide.html#azure-support)
- [GCS Compatible Object Storage](https://pgbackrest.org/user-guide.html#gcs-support)
- [SFTP Support](https://pgbackrest.org/user-guide.html#sftp-support)


--------

## Repository Versioning

You can even specify [repo target time](https://pgbackrest.org/user-guide.html#sftp-support#repo-target-time) to get snapshots of object storage.

You can enable MinIO versioning by adding the `versioning` flag in [`minio_buckets`](/docs/minio/param#minio_buckets):

```yaml
minio_buckets:
  - { name: pgsql ,versioning: true }
  - { name: meta  ,versioning: true }
  - { name: data }
```


--------

## Repository Locking

Some object storage services (S3, MinIO, etc.) support **locking** functionality, which can prevent backups from being deleted, even by the DBA.

- [MinIO Object Locking](https://min.io/docs/minio/linux/administration/object-management/object-retention.html)
- [AWS S3: Locking Objects with Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html)

You can enable MinIO locking by adding the `lock` flag in [`minio_buckets`](/docs/minio/param#minio_buckets):

```yaml
minio_buckets:
  - { name: pgsql , lock: true }
  - { name: meta ,versioning: true  }
  - { name: data }
```


--------

## Using Object Storage

Object storage services provide almost unlimited storage capacity and provide remote disaster recovery capability for your system.
If you don't have an object storage service, Pigsty has built-in [MinIO](/docs/minio) support.

### MinIO

You can enable the MinIO backup repository by uncommenting the following settings.
Note that pgbackrest only supports HTTPS / domain names, so you must run MinIO with domain names and HTTPS endpoints.

```yaml
all:
  vars:
    pgbackrest_method: minio      # Use minio as default backup repository
  children:                       # Define a single-node minio SNSD cluster
    minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio }}
```

### S3

If you only have **one** node, a meaningful backup strategy would be to use cloud provider object storage services like AWS S3, Alibaba Cloud OSS, or Google Cloud, etc.
To do this, you can define a new repository:

```yaml
pgbackrest_method: s3             # Use 'pgbackrest_repo.s3' as backup repository
pgbackrest_repo:                  # pgbackrest repository configuration: https://pgbackrest.org/configuration.html#section-repository

  s3:                             # Alibaba Cloud OSS (S3 compatible) object storage service
    type: s3                      # oss is S3 compatible
    s3_endpoint: oss-cn-beijing-internal.aliyuncs.com
    s3_region: oss-cn-beijing
    s3_bucket: <your_bucket_name>
    s3_key: <your_access_key>
    s3_key_secret: <your_secret_key>
    s3_uri_style: host
    path: /pgbackrest
    bundle: y                     # Bundle small files into a single file
    bundle_limit: 20MiB           # Bundle size limit, recommended 20MiB for object storage
    bundle_size: 128MiB           # Bundle target size, recommended 128MiB for object storage
    cipher_type: aes-256-cbc      # Enable AES encryption for remote backup repository
    cipher_pass: pgBackRest       # AES encryption password, defaults to 'pgBackRest'
    retention_full_type: time     # Retain full backups by time
    retention_full: 14            # Keep full backups from the last 14 days

  local:                          # Default pgbackrest repository using local POSIX filesystem
    path: /pg/backup              # Local backup directory, defaults to `/pg/backup`
    retention_full_type: count    # Retain full backups by count
    retention_full: 2             # Keep 2, up to 3 full backups when using local filesystem repository
```


--------

## Managing Backups

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
