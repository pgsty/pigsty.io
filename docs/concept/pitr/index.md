# Point-in-Time Recovery — A Time Machine for PostgreSQL

> High availability handles machine failure; point-in-time recovery handles incorrect data. Pigsty uses pgBackRest to provide PITR out of the box, allowing a cluster to return to any recoverable point covered by its backup and WAL history.

---

LLMS index: [llms.txt](/llms.txt)

---

> Point-in-Time Recovery (PITR) can restore an earlier cluster state after accidental deletion of data, a table, or a database.
>
> Pigsty enables PITR in its standard PostgreSQL configuration. This work once required specialist DBA knowledge.


----------------

## Replication Is Not Backup

[**High availability**](/docs/concept/ha/) can fail over to another instance after hardware failure. However, **replication is not backup**.

Streaming replication sends every primary change to replicas within milliseconds. This includes `DELETE` without `WHERE` or `DROP TABLE` against the wrong database. Failover handles machine failure. If the data is wrong, every replica can contain the same error.

Database disasters fall into two main classes. Multiple copies and automatic failover handle physical service failures. Logical errors require **history**: a base backup and continuous WAL archives. PostgreSQL uses them to reconstruct the state before an error.

| Threat | [**High Availability**](/docs/concept/ha/) | [**Delayed Cluster**](/docs/pgsql/config/cluster/#delayed-cluster) | **PITR** |
|:-------|:-----------------:|:-----------------:|:--------:|
| Hardware or instance failure | ✔ Automatic failover | ✘ | ✔, with a longer RTO |
| Accidental DML, table drop, or database drop | ✘ The error is replicated | ✔ Within the delay | ✔ At any recoverable point |
| Defective software corrupts data over time | ✘ The error is replicated | ✔ Within the delay | ✔ Try different recovery targets |
| Entire cluster or site is lost | ✘ | ✘ | ✔ Only if the repository survives that failure domain |
{.full-width}

These mechanisms work together. HA restores service quickly. A delayed cluster provides a short recovery window. PITR provides the final recovery path through historical data.


----------------

## How the Time Machine Works

A database is a state machine. A **base backup** is a complete physical snapshot at one point. **WAL** (Write-Ahead Log) records later state changes. With the snapshot and unbroken WAL history, PostgreSQL can replay to any covered target. The backup sets the earliest recovery point. The latest archived WAL sets the most recent recovery point.

<p style="text-align: center; font-size: 1.2em;"><strong>Base backup + WAL archive = point-in-time recovery</strong></p>

Pigsty manages both inputs. By default, cluster initialization attempts an initial full backup. The primary continuously sends completed WAL segments to the selected repository. See [**How PITR Works**](/docs/concept/pitr/mechanism/) for backups, archives, targets, and timelines.


----------------

## Available Out of the Box

The standard PostgreSQL configuration enables PITR. Pigsty prepares each cluster with a backup repository, WAL archiving, and [**pgBackRest**](https://pgbackrest.org/) recovery tools. Customize the declarative policy with these parameters:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pgbackrest_method: minio       # Silo / S3-compatible storage; local is the default
    pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]  # daily full backup at 01:00
```

The default `local` method stores backups under `/pg/backup` and retains two full backups. One successful daily full backup gives a recovery window of roughly 24–48 hours. The remote `minio` preset uses Silo or compatible S3 storage, AES-256-CBC repository encryption, and time-based retention. With 14-day retention and weekly full backups, its steady-state window is roughly 14–21 days. Both ranges are policy estimates. Actual coverage starts at the oldest usable backup and ends at the latest WAL in the repository.

For declarative recovery, specify a target. The playbook stops the cluster, restores files, replays WAL, and rebuilds HA. An operator must verify the recovered business state.

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "time": "2026-07-11 10:00:00+08", "action": "promote" }}'
```

This follows Pigsty's [**declarative configuration**](/docs/concept/iac/) model. The cluster definition includes backup policy. The recovery target is another declared [**parameter**](/docs/concept/iac/parameter/).


----------------

## Benefits and Costs

PITR improves data integrity and availability:

* **RPO** (maximum data loss) usually decreases to minutes. WAL that has not reached a surviving repository sets this limit.
* **RTO** (time to restore service) becomes tens of minutes to hours, instead of permanent loss. It depends on backup size, WAL replay distance, and disk or network throughput.

| Standalone strategy | Event | RTO | RPO |
|:--------------------|:------|:----|:----|
| No backup | Host and local data are lost | **Permanent loss** | **All data** |
| Base backups only | Host and local data are lost | Backup size and bandwidth, often hours | Changes since the latest backup |
| Base backups + WAL archives | Host and local data are lost | Backup size, replay distance, and bandwidth | WAL not yet present in the surviving repository |
{.full-width}

The costs fall mainly into three areas:

* **Confidentiality:** Backups copy business data and need encryption and access control. The remote preset enables repository encryption. Change its default password.
* **Resources:** Backups consume storage; archiving consumes bandwidth. Compression, bundling, and block incremental backup reduce these costs. Capacity planning remains necessary.
* **Operations:** Monitor backup status and rehearse recovery. A successful backup job does not prove that recovery can meet the required RTO.

PITR does not replace HA. Production designs usually combine HA for physical failures with PITR for logical errors and site recovery.


----------------

## Next Steps

* [**How PITR Works**](/docs/concept/pitr/mechanism/): snapshots, WAL history, recovery windows, targets, and timelines
* [**PITR Architecture**](/docs/concept/pitr/arch/): pgBackRest, repository selection, archive flow, scheduling, and failover behavior
* [**PITR Tradeoffs**](/docs/concept/pitr/tradeoff/): failure domains, capacity, retention, and backup frequency
* [**Declarative Recovery**](/docs/concept/pitr/restore/): the `pg_pitr` parameter, `pgsql-pitr.yml`, and `pig pitr`
* [**PITR Scenarios**](/docs/concept/pitr/scenarios/): accidental deletion, bad releases, investigation, and site loss

For the operational runbooks, see [**PGSQL Backup and Recovery**](/docs/pgsql/backup/).

---

Section pages:

- [How PITR Works](/docs/concept/pitr/mechanism/): Snapshots, WAL history, recovery windows, recovery targets, and timelines: the five concepts needed to reason accurately about PostgreSQL PITR.
- [PITR Architecture](/docs/concept/pitr/arch/): Pigsty implements PITR with pgBackRest: repository selection, archive flow, scheduling, primary-aware backup execution, performance defaults, and observability.
- [PITR Tradeoffs](/docs/concept/pitr/tradeoff/): Repository location determines the failure domain, retention determines the recovery window, and backup frequency shapes restore time. Together they define a backup policy.
- [Declarative Recovery](/docs/concept/pitr/restore/): Declare the desired pg_pitr recovery target and let pgsql-pitr.yml or pig orchestrate the recovery workflow.
- [PITR Scenarios](/docs/concept/pitr/scenarios/): How to choose a recovery target and workflow for accidental DML, dropped objects, defective releases, investigations, and site loss — and why recovery drills must be routine.
