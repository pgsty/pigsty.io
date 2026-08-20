# Backup Repository

> Configure local, Silo, and external S3 backup repositories, including retention, encryption, versioning, and Object Lock.

---

LLMS index: [llms.txt](/llms.txt)

---

Two parameters decide where backups are stored: [**`pgbackrest_repo`**](/docs/pgsql/param/#pgbackrest_repo) defines candidate repositories, while [**`pgbackrest_method`**](/docs/pgsql/param/#pgbackrest_method) selects one. Repository keys are [**rendered deterministically**](/docs/pgsql/backup/mechanism/#how-configuration-is-rendered) as pgBackRest `repo1-*` options, so any supported [**pgBackRest repository option**](/docs/pgbackrest/configuration) can be used directly.
Pigsty v4.5.0 renders only the entry selected by `pgbackrest_method` as `repo1`; keeping several candidate keys does not enable multi-repository backup.


--------

## Default Repositories

Pigsty supplies two definitions: `local` and `minio`.

- `local` is the default. `/pg/backup` points at [**`pg_fs_backup`**](/docs/pgsql/param/#pg_fs_backup), `/data/backups` by default.
- `minio` uses Silo from the MINIO module or another compatible S3 service. It is supported but not selected by default.

```yaml
pgbackrest_method: local
pgbackrest_repo:
  local:
    path: /pg/backup
    retention_full_type: count
    retention_full: 2
  minio:
    type: s3
    s3_endpoint: sss.pigsty
    s3_region: us-east-1
    s3_bucket: pgsql
    s3_key: pgbackrest
    s3_key_secret: S3User.Backup
    s3_uri_style: path
    path: /pgbackrest
    storage_port: 9000
    storage_ca_file: /etc/pki/ca.crt
    block: y
    bundle: y
    bundle_limit: 20MiB
    bundle_size: 128MiB
    cipher_type: aes-256-cbc
    cipher_pass: pgBackRest
    retention_full_type: time
    retention_full: 14
```

The presets deliberately differ. `local` favors simple, fast restores with count-based retention and no encryption or bundling. `minio` enables AES-256-CBC encryption, bundles small files, uses block incremental backup, and retains full backups by time.

> [!WARNING] Replace public defaults in production
> For a remote repository, replace both `cipher_pass` and `s3_key_secret`. `pgBackRest` and `S3User.Backup` are public example defaults. Losing the encryption passphrase makes the repository unrecoverable, so store it separately from the backups under controlled recovery procedures; see [**Deployment Security**](/docs/deploy/security/#backup-and-recovery).


--------

## Retention Policy

pgBackRest applies retention after each backup (`expire-auto`). When a full backup expires, dependent differential/incremental backups and the WAL needed only by that chain expire with it.

- `retention_full_type: count` plus `retention_full: 2` keeps the two newest full chains; a third can exist briefly while a new full completes.
- `retention_full_type: time` plus `retention_full: 14` establishes a minimum time window. An old full does not expire until another full is at least 14 days old; with weekly full backups this usually leaves three chains and roughly 14–21 days of recovery history.

See [**Backup Policy**](/docs/pgsql/backup/policy/) for recovery-window and space calculations, and [**Admin Commands**](/docs/pgsql/backup/admin/#expire-old-backups) for a safe expiration preview.


--------

## Use a Silo Repository

The [**MINIO module**](/docs/minio) currently deploys Silo, an S3-compatible object store. It provides an independent disaster-recovery copy only when deployed outside the database host or site failure domain. Deploy it, then select the `minio` preset:

```yaml
all:
  vars:
    pgbackrest_method: minio
  children:
    minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio, minio_type: silo }}
```

The preset uses the HTTPS endpoint `sss.pigsty` by default and validates it with `/etc/pki/ca.crt`. MINIO initialization creates the default `pgsql` bucket and `pgbackrest` user.

For serious production use, deploy and test a fault-tolerant multi-node/multi-drive object store; see [**MINIO Configuration**](/docs/minio/config). The preset name `minio` does not require the server to be managed by Pigsty: independently operated MinIO, RustFS, or another compatible implementation can use it, but that service's installation, upgrades, certificates, and lifecycle remain outside the MINIO role's support boundary.


--------

## Use S3 or Cloud Object Storage

For a single database node, an off-host cloud object store is often the most valuable repository. Define a new entry and select it:

```yaml
pgbackrest_method: s3
pgbackrest_repo:
  s3:
    type: s3
    s3_endpoint: oss-cn-beijing-internal.aliyuncs.com
    s3_region: oss-cn-beijing
    s3_bucket: <your_bucket_name>
    s3_key: <your_access_key>
    s3_key_secret: <your_secret_key>
    s3_uri_style: host
    path: /pgbackrest
    bundle: y
    bundle_limit: 20MiB
    bundle_size: 128MiB
    cipher_type: aes-256-cbc
    cipher_pass: <separate-strong-passphrase>
    retention_full_type: time
    retention_full: 14
  local:
    path: /pg/backup
    retention_full_type: count
    retention_full: 2
```

pgBackRest also supports [Azure](https://pgbackrest.org/user-guide.html#azure-support), [GCS](https://pgbackrest.org/user-guide.html#gcs-support), and [SFTP](https://pgbackrest.org/user-guide.html#sftp-support) repositories.


--------

## Share a Repository Across Clusters

A centralized repository can serve several PostgreSQL clusters. Each [**stanza**](/docs/pgsql/backup/mechanism/#stanza-the-clusters-backup-identity), mapped from [**`pg_cluster`**](/docs/pgsql/param#pg_cluster), isolates one cluster's backup and archive history. This also enables [**cross-cluster restore**](/docs/pgsql/backup/cluster/).

Cluster names must therefore be globally unique within a shared repository, even across otherwise separate deployment environments.


--------

## Repository Versioning

Object-store versioning can preserve earlier versions after an overwrite or deletion. It still shares the same storage system and control plane, so it does not replace an independent off-site or offline copy. Enable it for a bucket when it is created:

```yaml
minio_buckets:
  - { name: pgsql, versioning: true }
  - { name: meta, versioning: true }
  - { name: data }
```

pgBackRest's [**`repo-target-time`**](https://pgbackrest.org/user-guide.html#repo-target-time) option can read the repository as it existed at an earlier time when the backend retains those versions.


--------

## Repository Locking

Some S3-compatible services support Object Lock/WORM. A retained object version cannot be changed or permanently deleted until its retention period ends. A normal delete can still create a delete marker that hides the current object while historical versions remain and continue consuming capacity.

- [MinIO Object Lock](https://min.io/docs/minio/linux/administration/object-management/object-retention.html)
- [AWS S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html)

The `lock` flag enables versioning and lock capability only when Pigsty creates the bucket:

```yaml
minio_buckets:
  - { name: pgsql, lock: true }
  - { name: meta, versioning: true }
  - { name: data }
```

It does not set a default retention period. Configure `GOVERNANCE` or `COMPLIANCE` retention with `mcli retention set` or the storage console, then verify with `mcli retention info`. A sufficiently privileged principal can bypass `GOVERNANCE`; even root cannot shorten `COMPLIANCE` retention.

Locking changes [**expiration**](/docs/pgsql/backup/admin/#expire-old-backups) and [**stanza deletion**](/docs/pgsql/backup/admin/#remove-backup): pgBackRest may expire objects logically while retained historical versions remain until their deadline. Test backup, expiration, delete-marker cleanup, and version recovery on a non-production bucket before enabling it.


--------

## Switch Repositories

After changing a repository definition or `pgbackrest_method`, rerender configuration, initialize the stanza, and create a recovery point in the new repository promptly:

```bash
./pgsql.yml -t pg_backup -l pg-meta           # Apply the repository definition and create the stanza
sudo -iu postgres pg-backup full              # Run on the current primary to establish the first recovery point
```

Existing backups are not migrated automatically. While retained, the old repository can still be selected as a restore source through [**`pg_pitr.repo`**](/docs/pgsql/backup/restore/#pitr-parameter-definition).
