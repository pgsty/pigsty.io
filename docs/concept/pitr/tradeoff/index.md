# PITR Tradeoffs

> Repository location determines the failure domain, retention determines the recovery window, and backup frequency shapes restore time. Together they define a backup policy.

---

LLMS index: [llms.txt](/llms.txt)

---

Backups require storage, network traffic, and operational work. They determine how much data you can recover and how quickly service returns. More history usually requires more capacity. A shorter RTO usually requires newer backups and tested procedures.

A backup policy must define **repository location, history retention, and backup frequency**.


----------------

## Where: Choose the Failure Domain

Repository location is the most important choice. It determines which disasters the backup can survive.

A **local repository** (`pgbackrest_method: local`) uses the primary's local filesystem. It is simple and fast, with no remote service dependency. Data and backups usually share one failure domain. Machine, disk, or filesystem loss can destroy both. Local backup protects against logical errors. For protection against total host loss, `/pg/backup` must use independent storage.

An **object storage repository** (`pgbackrest_method: minio` or a custom S3 definition) sends backups to Silo or S3. For an independent disaster recovery copy, deploy it outside the database host or site failure domain. The `minio` preset enables AES-256-CBC repository encryption, bundling, and block incremental backup. Recovery throughput depends on the network and storage service. Operating that service adds responsibility.

| Scenario | Recommended repository | Reason |
|:---------|:-----------------------|:-------|
| Development, test, demo | `local` | Minimal dependencies; rebuild is acceptable |
| Production | Dedicated Silo or compatible S3 storage | Independent failure domain and encrypted repository |
| Cloud deployment | Managed S3-compatible or cloud object storage supported by pgBackRest | Independent storage and lower operational burden |
| Ransomware/compliance | Versioned storage plus correctly configured object lock/retention | Prevent privileged database-host access from deleting protected versions |
{.full-width}

The repository contains sensitive business data. Change default access keys and `cipher_pass`. Restrict access and protect credentials separately from database hosts. Verify any object-lock policy. See [**Backup Repository**](/docs/pgsql/backup/repository/).


----------------

## How Long: Capacity and Recovery Window

Longer history generally requires more storage. Actual use depends on compression, deduplication, block incremental backup, database change rate, and the full/differential/incremental backup mix. Measure backup and WAL growth instead of using a fixed multiplier.

For an illustrative 100 GB database changing by 10 GB per day, before compression:

* **Daily full, retain two** (`local` preset): Full backups use about 200 GB, plus WAL. Successful daily jobs commonly provide roughly one to two days of recovery history.
* **Weekly full, daily incremental, retain 14 days** (`minio` preset): The oldest surviving weekly chain commonly provides roughly 14–21 days of coverage. Allow capacity for multiple full backups, their incrementals, archived WAL, and temporary retention-plus-one behavior during expiration.

The retention setting alone does not define the recovery window. Coverage starts at the oldest usable chain and ends at the latest WAL in the surviving repository. Time retention removes an old full backup only when another qualifying full backup satisfies the period. Related incremental backups and WAL follow the retained full chains. Check `pig pb info`, monitor archive health, and perform a restore to prove coverage.

Retain enough history to cover **the delay between an error and its detection**. A dropped table may be noticed within minutes. Slow corruption or month-end reconciliation failure can take weeks to detect.


----------------

## How Often: Backup Frequency and RTO

Recovery first restores a backup chain, then replays WAL to the target. Backup size and storage throughput control restore time. The distance from backup to target controls replay time.

WAL replay is mostly serial. Restoring a weekly full backup just before the next full can require nearly a week of replay on a write-heavy database. Daily incremental backups shorten replay distance and transfer only changes since the preceding backup. They still require a valid chain. Monitor and test the entire chain, not only the latest file.

Choose a backup frequency that meets the measured RTO within the available backup window and production load budget.


----------------

## Pigsty Presets

Pigsty provides two candidate repository definitions. [`pgbackrest_method`](/docs/pgsql/param/#pgbackrest_method) selects **one** for the generated `repo1` configuration.

**Standard policy: local repository and daily full backup.** This policy is simple and restores through local I/O. Use it for development or environments with separate protection against host loss:

```yaml
pgbackrest_method: local
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
# Local preset retains two full backups; actual coverage depends on successful jobs and WAL continuity.
```

**Production policy: remote Silo/S3 repository, weekly full, daily incremental.** Place the repository in a separate failure domain and use the encrypted `minio` preset:

```yaml
pgbackrest_method: minio
pg_crontab:
  - '00 01 * * 1 /pg/bin/pg-backup full'
  - '00 01 * * 2,3,4,5,6,7 /pg/bin/pg-backup'
# The preset retains full history by 14 days; weekly fulls commonly yield about 14–21 days.
```

`local` and `minio` entries in `pgbackrest_repo` are alternatives, not two active repositories. The template renders only `pgbackrest_repo[pgbackrest_method]` as `repo1`. Multiple active pgBackRest repositories require explicit advanced configuration. They also require independently tested backup, expiration, and restore procedures. The two presets alone do not provide this setup.

Use [**Backup Policy**](/docs/pgsql/backup/policy/) for capacity modelling and schedule details.


----------------

## A Backup Is Proven by Restore

Monitor backup job success, and add clone recovery drills to routine operations. Use them to answer:

1. **Is the chain usable?** Restore it end to end and validate data.
2. **What is the measured RTO?** Database size and WAL volume change over time.
3. **Can the on-call operator execute the runbook?** The first full exercise should not happen during an incident.

[**Clone recovery**](/docs/pgsql/backup/cluster/) leaves the source online and overwrites the selected destination. Verify the exact destination and use disposable infrastructure. See [**Declarative Recovery**](/docs/concept/pitr/restore/) for the recovery interface.
