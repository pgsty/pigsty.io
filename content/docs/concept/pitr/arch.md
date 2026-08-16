---
title: PITR Architecture
linkTitle: Architecture
weight: 212
description: "Pigsty implements PITR with pgBackRest: repository selection, archive flow, scheduling, primary-aware backup execution, performance defaults, and observability."
icon: fa-solid fa-sitemap
module: [PGSQL]
categories: [Concept]
---

The [**PITR principle**](/docs/concept/pitr/mechanism/) is compact; the engineering is not. WAL archiving must not stall production writes, object-storage backups need encryption, backup jobs must follow the primary after failover, shared repositories must isolate clusters, and large numbers of small objects can limit throughput.

Pigsty uses [**pgBackRest**](https://pgbackrest.org/) as its backup engine and ships production-oriented defaults for those concerns. This page describes the engine, repository abstraction, archive path, scheduler, and primary-aware execution model.


----------------

## Backup Engine: pgBackRest

Pigsty uses pgBackRest for three responsibilities: create base backups with `backup`, receive WAL with `archive-push`, and restore data with `restore` plus `archive-get`.

Relevant capabilities include:

* **Parallelism:** backup, archive, and restore operations can use multiple processes.
* **Backup chains:** full, differential, incremental, and block incremental backups reduce repeated transfer and storage.
* **Compression and encryption:** zstd compression and AES-256-CBC repository encryption are built in.
* **Repository backends:** POSIX filesystems, S3-compatible services such as Silo and MinIO, Azure, GCS, and SFTP are supported by pgBackRest.
* **Bundling:** small files can be packed into larger repository objects, reducing object-storage overhead.

pgBackRest separates cluster histories using a **stanza**. Pigsty maps the stanza name directly to [`pg_cluster`](/docs/pgsql/param/#pg_cluster), allowing multiple clusters to share one storage service without sharing a backup identity:

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

Two parameters define repository selection. [`pgbackrest_method`](/docs/pgsql/param/#pgbackrest_method) chooses one repository name, and [`pgbackrest_repo`](/docs/pgsql/param/#pgbackrest_repo) is a dictionary of candidate definitions. Pigsty v4.5.0 renders **only the selected `pgbackrest_repo[pgbackrest_method]` entry** as pgBackRest `repo1`; listing both `local` and `minio` does not enable two active repositories.

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

The presets intentionally differ. `local` favors simplicity and fast local restore; it is unencrypted, unbundled, and retained by full-backup count. `minio` targets a remote Silo or compatible S3 repository, enabling encryption, bundles, block incremental backup, and time-based retention.

Rendering is mechanical: underscores in the chosen repository's keys become hyphens and each key gets a `repo1-` prefix in `/etc/pgbackrest/pgbackrest.conf`. A custom cloud repository can therefore use pgBackRest options directly:

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

When [`pgbackrest_enabled`](/docs/pgsql/param/#pgbackrest_enabled) is true, as it is by default, the Patroni templates configure:

```yaml
archive_mode: 'on'
archive_timeout: 300
archive_command: 'pgbackrest --stanza=<cluster> archive-push %p'
```

Base backups enter the system in two ways:

* **Initial backup:** after bootstrapping a top-level primary, Pigsty attempts a backup when [`pgbackrest_init_backup`](/docs/pgsql/param/#pgbackrest_init_backup) is true. The task ignores backup failure and writes `/etc/pgbackrest/initial.done` only after success, so the marker means “completed,” not merely “attempted.”
* **Scheduled backup:** [`pg_crontab`](/docs/pgsql/param/#pg_crontab) installs jobs in the database superuser's crontab. Its role default is an empty list; standard example configurations usually add a daily 01:00 full backup.

```yaml
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
```

`pg-backup [full|diff|incr]` is a small wrapper around `pgbackrest backup`. With no argument it requests an incremental backup, which pgBackRest promotes to a full backup if no usable full exists.


----------------

## Backups Follow the Primary

pgBackRest and the same scheduled job are installed on every PostgreSQL node, but `pg-backup` checks `/pg/bin/pg-role` and only proceeds on the current primary. Replicas fail fast rather than writing a competing backup.

That design decouples the backup schedule from the HA topology:

* all members receive the same repository configuration and crontab;
* after failover, the new primary becomes eligible for subsequent backups and WAL archiving without rewriting the schedule;
* one current primary owns the authoritative write flow to a stanza.

With a non-local repository, Pigsty also adds pgBackRest after `basebackup` in Patroni's `create_replica_methods`. Patroni tries `basebackup` first; if that method fails, it can restore a replica from the repository with `pgbackrest --delta restore`, shifting the copy load away from the primary.


----------------

## Performance Defaults

The shipped pgBackRest template favors light production overhead and aggressive restore throughput:

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

The 4 GiB queue is a safety tradeoff: if the repository remains unavailable and the queue exceeds the limit, pgBackRest can discard queued archive files. PostgreSQL continues running, but the WAL archive becomes incomplete and a new full backup is needed to establish a new recovery chain. See [**How PITR Works**](/docs/concept/pitr/mechanism/#wal-history).


----------------

## Observability

When both backup and exporter settings are enabled, `pgbackrest_exporter` runs on each PostgreSQL node and exposes metrics on port `9854`. The monitoring stack uses those metrics for backup age, type, size, duration, and error visibility.

Useful diagnostic entry points include:

| Entry | Purpose |
|:------|:--------|
| `pb info` | Shell helper for `pgbackrest info` using the configured stanza |
| `/pg/log/pgbackrest/` | pgBackRest backup, archive, and restore logs |
| `pg-backup` | Manually request a backup on the primary: `full` / `diff` / `incr` |
{.full-width}

See [**Backup Administration**](/docs/pgsql/backup/admin/) for operational checks, then [**PITR Tradeoffs**](/docs/concept/pitr/tradeoff/) for policy design.
