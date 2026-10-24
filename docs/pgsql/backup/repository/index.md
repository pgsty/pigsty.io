# Backup Repository

> Configure local, Silo, and external S3 backup repositories, including retention, encryption, versioning, and Object Lock.

---

LLMS index: [llms.txt](/llms.txt)

---

Two parameters select the backup location.
[**`pgbackrest_repo`**](/docs/pgsql/param/#pgbackrest_repo) defines candidate repositories.
[**`pgbackrest_method`**](/docs/pgsql/param/#pgbackrest_method) selects one repository.
Pigsty [**converts repository keys**](/docs/pgsql/backup/mechanism/#how-configuration-is-rendered) to pgBackRest `repo1-*` options, so you can use any supported [**pgBackRest repository option**](/docs/pgbackrest/configuration) directly.
Pigsty v4.5.0 writes only the entry selected by `pgbackrest_method` as `repo1`.
Multiple candidate keys do not enable multi-repository backup.


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

The presets use different settings.
`local` provides simple, fast restores with count-based retention and no encryption or bundling.
`minio` enables AES-256-CBC encryption, bundles small files, uses block incremental backup, and retains full backups by time.

> [!WARNING] Replace public defaults in production
> For a remote repository, replace both `cipher_pass` and `s3_key_secret`.
> `pgBackRest` and `S3User.Backup` are public example defaults.
> If you lose the encryption passphrase, you cannot recover the repository.
> Store the passphrase separately from the backups under controlled recovery procedures.
> See [**Deployment Security**](/docs/deploy/security/#backup-and-recovery).


--------

## Retention Policy

pgBackRest applies retention after each backup (`expire-auto`).
When a full backup expires, its dependent differential/incremental backups expire with it.
WAL needed only by that chain also expires.

- `retention_full_type: count` with `retention_full: 2` keeps the two newest full chains. A third chain can exist briefly while a new full backup completes.
- `retention_full_type: time` with `retention_full: 14` defines a minimum time window. An old full backup expires only when another full backup is at least 14 days old. With weekly full backups, this usually retains three chains and approximately 14–21 days of recovery history.

See [**Backup Policy**](/docs/pgsql/backup/policy/) for recovery-window and space calculations, and [**Admin Commands**](/docs/pgsql/backup/admin/#expire-old-backups) for a safe expiration preview.


--------

## Use a Silo Repository

The [**MINIO module**](/docs/minio) currently deploys Silo, an S3-compatible object store.
It provides an independent disaster-recovery copy only if it is outside the database host or site failure domain.
Deploy it, then select the `minio` preset:

```yaml
all:
  vars:
    pgbackrest_method: minio
  children:
    minio: { hosts: { 10.10.10.10: { minio_seq: 1 }} ,vars: { minio_cluster: minio, minio_type: silo }}
```

By default, the preset uses the HTTPS endpoint `sss.pigsty` and validates it with `/etc/pki/ca.crt`.
MINIO initialization creates the default `pgsql` bucket and `pgbackrest` user.

For production, deploy and test a fault-tolerant object store with multiple nodes and drives.
See [**MINIO Configuration**](/docs/minio/config).
The `minio` preset also supports servers that Pigsty does not manage, including independent MinIO, RustFS, and other compatible implementations.
For these servers, installation, upgrades, certificates, and lifecycle management remain outside the MINIO role support scope.


--------

## Use S3 or Cloud Object Storage

For a single database node, an off-host cloud object store is often the most useful repository.
Define a new entry and select it:

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

A centralized repository can serve several PostgreSQL clusters.
Each [**stanza**](/docs/pgsql/backup/mechanism/#stanza-the-clusters-backup-identity) takes its name from [**`pg_cluster`**](/docs/pgsql/param#pg_cluster) and isolates one cluster's backup and archive history.
This also enables [**cross-cluster restore**](/docs/pgsql/backup/cluster/).

Cluster names must therefore be globally unique within a shared repository, even across otherwise separate deployment environments.


--------

## Repository Versioning

Object-store versioning can preserve earlier versions after an overwrite or deletion.
These versions share the same storage system and control plane.
Thus, versioning does not replace an independent off-site or offline copy.
Enable versioning when you create a bucket:

```yaml
minio_buckets:
  - { name: pgsql, versioning: true }
  - { name: meta, versioning: true }
  - { name: data }
```

pgBackRest's [**`repo-target-time`**](https://pgbackrest.org/user-guide.html#repo-target-time) option can read the repository as it existed at an earlier time when the backend retains those versions.


--------

## Repository Locking

Some S3-compatible services support Object Lock/WORM.
You cannot change or permanently delete a retained object version until its retention period ends.
A normal delete can still create a delete marker that hides the current object.
Historical versions remain and continue to consume capacity.

- [MinIO Object Lock](https://min.io/docs/minio/linux/administration/object-management/object-retention.html)
- [AWS S3 Object Lock](https://docs.aws.amazon.com/AmazonS3/latest/userguide/object-lock.html)

The `lock` flag enables versioning and lock capability only when Pigsty creates the bucket:

```yaml
minio_buckets:
  - { name: pgsql, lock: true }
  - { name: meta, versioning: true }
  - { name: data }
```

The flag does not set a default retention period.
Configure `GOVERNANCE` or `COMPLIANCE` retention with `mcli retention set` or the storage console.
Then verify it with `mcli retention info`.
A sufficiently privileged principal can bypass `GOVERNANCE`.
Even root cannot shorten `COMPLIANCE` retention.

Locking changes [**expiration**](/docs/pgsql/backup/admin/#expire-old-backups) and [**stanza deletion**](/docs/pgsql/backup/admin/#remove-backup).
pgBackRest may expire objects logically while retained historical versions remain until their deadline.
Before you enable locking, test backup, expiration, delete-marker cleanup, and version recovery on a non-production bucket.


--------

## Switch Repositories

After you change a repository definition or `pgbackrest_method`, generate the configuration again and initialize the stanza.
Promptly create a recovery point in the new repository:

```bash
./pgsql.yml -t pg_backup -l pg-meta           # Apply the repository definition and create the stanza
sudo -iu postgres pg-backup full              # Run on the current primary to establish the first recovery point
```

Pigsty does not migrate existing backups automatically.
While you retain the old repository, you can select it as a restore source through [**`pg_pitr.repo`**](/docs/pgsql/backup/restore/#pitr-parameter-definition).
