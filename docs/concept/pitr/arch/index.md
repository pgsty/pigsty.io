# PITR Architecture

> Pigsty implements PITR with pgBackRest: repository selection, archive flow, scheduling, primary-aware backup execution, performance defaults, and observability.

---

LLMS index: [llms.txt](/llms.txt)

---

The [**PITR principle**](/docs/concept/pitr/mechanism/) is simple, but implementation must address several constraints. WAL archiving must not block production writes. Object storage backups need encryption. Backup jobs must follow the primary after failover, and shared repositories must isolate clusters. Large numbers of small objects can also limit throughput.

Pigsty uses [**pgBackRest**](https://pgbackrest.org/) with production defaults that address these constraints. This page describes the engine, repository abstraction, archive path, scheduler, and execution on the current primary.


----------------

## Backup Engine: pgBackRest

Pigsty uses pgBackRest to create base backups with `backup`, receive WAL with `archive-push`, and restore data with `restore` and `archive-get`.

Relevant capabilities include:

* **Parallelism:** Backup, archive, and restore operations can use multiple processes.
* **Backup chains:** Full, differential, incremental, and block incremental backups reduce repeated transfers and storage.
* **Compression and encryption:** pgBackRest includes zstd compression and AES-256-CBC repository encryption.
* **Repository backends:** pgBackRest supports POSIX filesystems, S3-compatible services such as Silo and MinIO, Azure, GCS, and SFTP.
* **Bundling:** Pack small files into larger repository objects to reduce object storage overhead.

pgBackRest separates cluster histories by **stanza**. Pigsty uses [`pg_cluster`](/docs/pgsql/param/#pg_cluster) as the stanza name. Multiple clusters can share storage while retaining separate backup identities:

```text
repository
├── backup/
│   ├── pg-meta/          # base backups for pg-meta
│   └── pg-test/          # base backups for pg-test
└── archive/
    ├── pg-meta/          # archived WAL for pg-meta
    └── pg-test/          # archived WAL for pg-test
```


----------------

## Repository Abstraction

[`pgbackrest_method`](/docs/pgsql/param/#pgbackrest_method) selects a repository name. [`pgbackrest_repo`](/docs/pgsql/param/#pgbackrest_repo) contains a dictionary of candidate definitions. Pigsty v4.5.0 renders **only the selected `pgbackrest_repo[pgbackrest_method]` entry** as `repo1`. Listing `local` and `minio` does not activate both repositories.

```yaml
pgbackrest_method: local          # local, minio, or a custom key below
pgbackrest_repo:
  local:
    path: /pg/backup
    retention_full_type: count
    retention_full: 2             # retain two full backups; a third may exist before expiration
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
    cipher_pass: pgBackRest       # replace this default secret in production
    retention_full_type: time
    retention_full: 14
```

The `local` preset provides simple backups and fast local restores. It has no encryption or bundling and retains backups by full-backup count. The `minio` preset uses remote Silo or compatible S3 storage. It enables encryption, bundling, block incremental backup, and time-based retention.

Pigsty converts underscores in repository keys to hyphens. It adds a `repo1-` prefix and writes the keys to `/etc/pgbackrest/pgbackrest.conf`. A custom cloud repository can therefore use pgBackRest options directly:

```yaml
pgbackrest_method: s3
pgbackrest_repo:
  s3:
    type: s3                         # repo1-type=s3
    s3_endpoint: s3.us-west-1.amazonaws.com
    s3_region: us-west-1
    s3_bucket: <your_bucket>
    s3_key: <your_access_key>
    s3_key_secret: <your_secret>
    s3_uri_style: host
    path: /pgbackrest
    cipher_type: aes-256-cbc
    cipher_pass: <your_password>
    retention_full_type: time
    retention_full: 90
```

See [**Backup Repository**](/docs/pgsql/backup/repository/) for Silo, external S3-compatible storage, versioning, object locking, TLS, and credential details.


----------------

## Archiving and Scheduling

When [`pgbackrest_enabled`](/docs/pgsql/param/#pgbackrest_enabled) is true, the Patroni templates set the following configuration. This option defaults to true.

```yaml
archive_mode: 'on'
archive_timeout: 300
archive_command: 'pgbackrest --stanza=<cluster> archive-push %p'
```

Base backups enter the system in two ways:

* **Initial backup:** After bootstrapping a top-level primary, Pigsty attempts a backup if [`pgbackrest_init_backup`](/docs/pgsql/param/#pgbackrest_init_backup) is true. The task ignores backup failures. It writes `/etc/pgbackrest/initial.done` only after success, so the marker confirms completion.
* **Scheduled backup:** [`pg_crontab`](/docs/pgsql/param/#pg_crontab) installs jobs in the database superuser's crontab. The role default is an empty list. Standard examples usually add a daily full backup at 01:00.

```yaml
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
```

`pg-backup [full|diff|incr]` wraps `pgbackrest backup`. Without an argument, it requests an incremental backup. If no usable full backup exists, pgBackRest makes a full backup instead.


----------------

## Backups Follow the Primary

Every PostgreSQL node receives pgBackRest and the same scheduled job. However, `pg-backup` checks `/pg/bin/pg-role` and proceeds only on the current primary. Replicas exit immediately without creating competing backups.

The backup schedule therefore operates independently of HA topology:

* All members receive the same repository configuration and crontab.
* After failover, the new primary can run subsequent backups and archive WAL. The schedule needs no change.
* The current primary alone controls authoritative writes to a stanza.

For a non-local repository, Pigsty adds pgBackRest after `basebackup` in Patroni's `create_replica_methods`. Patroni tries `basebackup` first. If it fails, Patroni can restore the replica with `pgbackrest --delta restore`. This moves the copy load from the primary to the repository.


----------------

## Performance Defaults

The pgBackRest template limits overhead during normal operation and prioritizes restore throughput:

| Setting | v4.5.0 behavior | Rationale |
|:--------|:----------------|:----------|
| Compression | `compress-type=zst` | Balance compression ratio and throughput |
| Backup/archive workers | One quarter of CPU, clamped to 2–4 | Limit competition with the database |
| Restore workers | All detected CPU, capped at 8 | Minimize restore time |
| Asynchronous archive | `archive-async=y`, spool under `/pg/spool` | Batch transfer without synchronous object-store latency |
| Archive queue limit | `archive-push-queue-max=4GiB` | Bound local spool growth |
| Fast backup start | `start-fast=y` | Request an immediate checkpoint |
| Incremental restore | `delta=y` | Reuse destination files that already match |
{.full-width}

The 4 GiB queue limit has a tradeoff. If the repository remains unavailable and the queue exceeds this limit, pgBackRest can discard queued archive files. PostgreSQL continues running, but the WAL archive has a gap. Create a new full backup to establish a new recovery chain. See [**How PITR Works**](/docs/concept/pitr/mechanism/#wal-history).


----------------

## Observability

When backup and exporter settings are enabled, `pgbackrest_exporter` runs on each PostgreSQL node. It exposes metrics on port `9854`. Monitoring uses these metrics to show backup age, type, size, duration, and errors.

Useful diagnostic entry points include:

| Entry | Purpose |
|:------|:--------|
| `pb info` | Shell helper for `pgbackrest info` using the configured stanza |
| `/pg/log/pgbackrest/` | pgBackRest backup, archive, and restore logs |
| `pg-backup` | Manually request a backup on the primary: `full` / `diff` / `incr` |
{.full-width}

See [**Backup Administration**](/docs/pgsql/backup/admin/) for operational checks, then [**PITR Tradeoffs**](/docs/concept/pitr/tradeoff/) for policy design.
