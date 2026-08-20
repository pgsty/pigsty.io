---
title: Backup & Restore
description: Configure repositories and policies, manage pgBackRest backups, and perform point-in-time recovery safely.
icon: fa-solid fa-clock-rotate-left
weight: 1600
categories: [Task, Reference]
---

Pigsty uses [pgBackRest](/docs/pgbackrest/) for PostgreSQL backups. It supports full, differential, and incremental backups, parallel processing, encryption, and [Silo](/docs/minio/)/S3 object storage.
Every [PGSQL](/docs/pgsql/) cluster is configured for backup and WAL archiving by default.

This chapter is the operational manual for backup configuration, management, recovery, and drills.
For design concepts and tradeoffs, see [Point-in-Time Recovery](/docs/concept/pitr/).

All backup and recovery operations ultimately invoke pgBackRest. Pigsty provides several wrapper layers:

| Layer | Interface | Form | Scope |
|:------|:----------|:-----|:------|
| Cluster orchestration | [`pg_pitr`](/docs/pgsql/backup/restore/#pitr-parameter-definition) + `pgsql-pitr.yml` | Ansible playbook | HA, etcd, and multi-node recovery |
| Instance orchestration | [`pig pitr`](/docs/pig/pitr) | CLI | Local-node recovery without the admin node |
| Command primitives | [`pig pb`](/docs/pig/pb), `pb`, and `pg-backup` | pgBackRest wrappers | Backup, inspection, expiry, and unmanaged restore |
| Engine | [`pgbackrest`](/docs/pgbackrest/) | Native CLI | Underlying backup, archive, and restore engine |
{.full-width}

| Section | Content |
|:--------|:--------|
| [Mechanism](/docs/pgsql/backup/mechanism) | Stanzas, repositories, retention, timelines, and Pigsty wrapper mapping |
| [Policy](/docs/pgsql/backup/policy) | Scheduling, recovery windows, and storage planning |
| [Repository](/docs/pgsql/backup/repository) | Local, Silo, and external S3 repositories; encryption, versioning, and locking |
| [Administration](/docs/pgsql/backup/admin) | Backup commands, inspection, expiration, and stanza management |
| [Restore](/docs/pgsql/backup/restore) | Recovery targets, staged PITR, and complete parameter reference |
| [Clone](/docs/pgsql/backup/cluster) | Restore production history into another cluster and perform drills |
| [Tutorial](/docs/pgsql/tutorial/pitr) | A sandbox restore using pgBackRest primitives |
{.full-width}

> [!WARNING] Disclaimer
> Pigsty makes every effort to provide a reliable PITR solution, but accepts no liability for data loss caused by restore operations. If you need assistance, consider [professional services](/docs/about/service).

> [!CAUTION] Recovery overwrites target data
> Before PITR, inspect `pig pg list <target-cluster>` and `pig pb info`, verify a recent usable backup and recovery window,
> have the operator state the exact target cluster and recovery point, then run the target-scoped `./pgsql-pitr.yml -l <target-cluster> ...` command.
> `pgsql-pitr.yml` prints a plan but does not pause for approval. Production recovery also requires a maintenance window and an independently verified backup.


--------

## Quick Start

1. [Design a backup policy](/docs/pgsql/backup/policy): declare scheduled backups in `pg_crontab` and select a repository with `pgbackrest_repo`.
2. [Manage backups](/docs/pgsql/backup/admin): run `pg-backup` and inspect recovery coverage with `pb info`.
3. [Perform recovery](/docs/pgsql/backup/restore): declare `pg_pitr`, then run `pgsql-pitr.yml`.

```yaml title="Full backup every day at 01:00"
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
```

```bash title="Recover to a point in time"
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "time": "2025-07-13 10:00:00+00", "action": "promote" }}'
```
