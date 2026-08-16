---
title: PITR Tradeoffs
linkTitle: Tradeoffs
weight: 213
description: Repository location determines the failure domain, retention determines the recovery window, and backup frequency shapes restore time. Together they define a backup policy.
icon: fa-solid fa-scale-balanced
module: [PGSQL]
categories: [Concept]
---

A backup is an insurance policy. Its premium is storage, network traffic, and operational work; its benefit is how much data can be recovered and how quickly service can return. There is no universal free policy: more history normally needs more capacity, while a shorter RTO normally needs newer backups and tested procedures.

Designing a policy means answering three questions: **where is the repository, how long is history retained, and how often are backups taken?**


----------------

## Where: Choose the Failure Domain

Repository location is the most important decision because it defines which disasters the backup survives.

A **local repository** (`pgbackrest_method: local`) stores backups on the primary's local filesystem. It is simple, fast, and has no remote service dependency. But data and backup normally share one host failure domain: loss of the machine, disk, or filesystem can destroy both. Local backup protects well against logical errors, but not total host loss unless `/pg/backup` is deliberately placed on independent storage.

An **object-storage repository** (`pgbackrest_method: minio` or a custom S3 definition) sends backups to Silo or S3. It becomes an independent disaster-recovery copy only when deployed outside the database host or site failure domain. Pigsty's `minio` preset also enables AES-256-CBC repository encryption, bundling, and block incremental backup. Recovery throughput then depends on the network and storage service, and that service adds operational responsibility.

| Scenario | Recommended repository | Reason |
|:---------|:-----------------------|:-------|
| Development, test, demo | `local` | Minimal dependencies; rebuild is acceptable |
| Production | Dedicated Silo or compatible S3 storage | Independent failure domain and encrypted repository |
| Cloud deployment | Managed S3-compatible or cloud object storage supported by pgBackRest | Independent storage and lower operational burden |
| Ransomware/compliance | Versioned storage plus correctly configured object lock/retention | Prevent privileged database-host access from deleting protected versions |
{.full-width}

The backup repository is itself sensitive business data. Change the default access keys and `cipher_pass`, restrict access, protect credentials separately from the database hosts, and verify any object-lock policy. See [**Backup Repository**](/docs/pgsql/backup/repository/).


----------------

## How Long: Capacity and Recovery Window

Longer retained history generally consumes more storage, but compression, deduplication, block incremental backup, database change rate, and the mix of full/differential/incremental backups determine the actual amount. Measure real backup and WAL growth instead of relying on a fixed multiplier.

For an illustrative 100 GB database changing by 10 GB per day, before compression:

* **Daily full, retain two** (`local` preset policy): about 200 GB of full backups plus WAL, commonly giving roughly a one-to-two-day window when every job succeeds.
* **Weekly full, daily incremental, retain full history by 14 days** (`minio` preset policy): the oldest surviving weekly chain commonly produces roughly 14–21 days of coverage. Capacity must include multiple full backups, their incrementals, archived WAL, and transient retention-plus-one behavior during expiration.

The precise window is not the configuration number alone. It runs from the oldest usable backup chain to the newest WAL present in the surviving repository. pgBackRest's time retention removes an old full only when another qualifying full can satisfy the period, and related incrementals and WAL follow the retained full chains. Check `pig pb info`, monitor archive health, and prove coverage with a restore.

Choose a window long enough to cover **the delay between an error occurring and being detected**. A dropped table may be noticed in minutes; slow corruption or a month-end reconciliation failure can take weeks to surface.


----------------

## How Often: Backup Frequency and RTO

Restore time has two main components: restore a backup chain, then replay WAL to the target. Backup size and storage throughput shape the first; the distance between the chosen backup and target shapes the second.

WAL replay is largely serial. On a write-heavy database, restoring from a weekly full immediately before the next full can require nearly a week of replay. Daily incremental backups reduce that replay distance while transferring only changes since the previous backup. They still depend on a valid chain, so monitor and test the entire chain rather than only the newest file.

A useful rule is: within the available backup window and production load budget, take backups often enough that measured restore time meets the RTO.


----------------

## Pigsty Presets

Pigsty provides two candidate repository definitions, but [`pgbackrest_method`](/docs/pgsql/param/#pgbackrest_method) selects **one** for the generated `repo1` configuration.

**Standard policy: local repository and daily full backup.** It is simple and restores through local I/O, making it suitable for development or environments where host-level disaster recovery is provided separately:

```yaml
pgbackrest_method: local
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
# Local preset retains two full backups; actual coverage depends on successful jobs and WAL continuity.
```

**Production policy: remote Silo/S3 repository, weekly full, daily incremental.** It separates the repository failure domain and uses the encrypted `minio` preset:

```yaml
pgbackrest_method: minio
pg_crontab:
  - '00 01 * * 1 /pg/bin/pg-backup full'
  - '00 01 * * 2,3,4,5,6,7 /pg/bin/pg-backup'
# The preset retains full history by 14 days; weekly fulls commonly yield about 14–21 days.
```

Keeping both `local` and `minio` in `pgbackrest_repo` is not a dual-repository setup. They are alternative definitions, and the template renders only `pgbackrest_repo[pgbackrest_method]` as `repo1`. A genuine multi-repository pgBackRest design requires explicit advanced configuration plus an independently tested backup, expiration, and restore workflow; the two presets alone do not provide it.

Use [**Backup Policy**](/docs/pgsql/backup/policy/) for capacity modelling and schedule details.


----------------

## A Backup Is Proven by Restore

Monitoring a successful backup job is necessary but insufficient. Add clone restore drills to routine operations so you can answer:

1. **Is the chain usable?** Restore it end to end and validate data.
2. **What is the measured RTO?** Database size and WAL volume change over time.
3. **Can the on-call operator execute the runbook?** The first full exercise should not happen during an incident.

A [**clone recovery**](/docs/pgsql/backup/cluster/) leaves the source cluster online but overwrites the designated destination cluster, so verify the exact target and use disposable infrastructure. See [**Declarative Recovery**](/docs/concept/pitr/restore/) for the recovery interface.
