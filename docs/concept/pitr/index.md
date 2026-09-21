# Point-in-Time Recovery — A Time Machine for PostgreSQL

> High availability handles machine failure; point-in-time recovery handles incorrect data. Pigsty uses pgBackRest to provide PITR out of the box, allowing a cluster to return to any recoverable point covered by its backup and WAL history.

---

LLMS index: [llms.txt](/llms.txt)

---

> If data, a table, or even a database is deleted accidentally, Point-in-Time Recovery (PITR) can return the cluster to an earlier state.
>
> This capability, once treated as specialist DBA work, is enabled by Pigsty's standard PostgreSQL configuration.


----------------

## Replication Is Not Backup

[**High availability**](/docs/concept/ha/) can fail over to another instance when hardware fails. It has a natural blind spot, however: **replication is not backup**.

Streaming replication faithfully sends every primary change to every replica within milliseconds, including a `DELETE` without a `WHERE` clause or a `DROP TABLE` issued against the wrong database. Failover handles a broken machine; when the data itself is wrong, every replica can contain the same error.

Database disasters therefore fall into two broad classes. Redundancy handles physical service failure through multiple copies and automatic failover. Logical errors require **history**: a base backup plus continuous WAL archives from which PostgreSQL can reconstruct a state before the mistake.

| Threat | [**High Availability**](/docs/concept/ha/) | [**Delayed Cluster**](/docs/pgsql/config/cluster/#delayed-cluster) | **PITR** |
|:-------|:-----------------:|:-----------------:|:--------:|
| Hardware or instance failure | ✔ Automatic failover | ✘ | ✔, with a longer RTO |
| Accidental DML, table drop, or database drop | ✘ The error is replicated | ✔ Within the delay | ✔ At any recoverable point |
| Defective software corrupts data over time | ✘ The error is replicated | ✔ Within the delay | ✔ Try different recovery targets |
| Entire cluster or site is lost | ✘ | ✘ | ✔ Only if the repository survives that failure domain |
{.full-width}

These mechanisms complement one another: HA restores service quickly, a delayed cluster provides a short undo window, and PITR is the final historical recovery path.


----------------

## How the Time Machine Works

A database can be viewed as a state machine. A **base backup** is a complete physical snapshot at one point, while **WAL** (Write-Ahead Log) records every subsequent state change. With a snapshot and an unbroken WAL history starting from it, PostgreSQL can replay the database to any target covered by that history. The backup determines how far back recovery can start; the latest archived WAL determines how close to the present it can reach.

<p style="text-align: center; font-size: 1.2em;"><strong>Base backup + WAL archive = point-in-time recovery</strong></p>

Pigsty orchestrates both inputs. Cluster initialization attempts an initial full backup by default, and the primary continuously sends completed WAL segments to the selected repository. See [**How PITR Works**](/docs/concept/pitr/mechanism/) for the complete model of backups, archives, targets, and timelines.


----------------

## Available Out of the Box

PITR is enabled in Pigsty's standard PostgreSQL configuration. Each cluster is prepared with a backup repository, WAL archiving, and recovery tooling powered by [**pgBackRest**](https://pgbackrest.org/). The policy remains declarative and can be customized with a few parameters:

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pgbackrest_method: minio       # Silo / S3-compatible storage; local is the default
    pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]  # daily full backup at 01:00
```

The default `local` method stores backups under `/pg/backup` and retains two full backups. With one successful full backup per day, the resulting window is roughly 24–48 hours. Selecting the remote `minio` preset places the repository in Silo or compatible S3 storage, enables AES-256-CBC repository encryption, and uses time-based retention. With a 14-day retention setting and weekly full backups, the steady-state recovery window is roughly 14–21 days. Treat both ranges as policy estimates: actual coverage starts at the oldest usable backup and ends at the latest WAL that reached the repository.

Recovery is declarative too: specify a target, then let the playbook stop the cluster, restore files, replay WAL, and rebuild HA. An operator must still verify the recovered business state.

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "time": "2026-07-11 10:00:00+08", "action": "promote" }}'
```

This follows Pigsty's [**declarative configuration**](/docs/concept/iac/) model: backup policy is part of the cluster definition, and a recovery target is another declared [**parameter**](/docs/concept/iac/parameter/).


----------------

## Benefits and Costs

PITR materially improves data integrity and availability:

* **RPO** (maximum data loss) is usually reduced to minutes, bounded by WAL that had not reached a surviving repository.
* **RTO** (time to restore service) becomes tens of minutes to hours rather than permanent loss, depending on backup size, WAL replay distance, and disk or network throughput.

| Standalone strategy | Event | RTO | RPO |
|:--------------------|:------|:----|:----|
| No backup | Host and local data are lost | **Permanent loss** | **All data** |
| Base backups only | Host and local data are lost | Backup size and bandwidth, often hours | Changes since the latest backup |
| Base backups + WAL archives | Host and local data are lost | Backup size, replay distance, and bandwidth | WAL not yet present in the surviving repository |
{.full-width}

The costs fall mainly into three areas:

* **Confidentiality:** backups are another copy of business data and need encryption and access control. Pigsty's remote preset enables repository encryption, but its default password must be changed.
* **Resources:** backups consume storage and archiving consumes bandwidth. Compression, bundling, and block incremental backup reduce this cost but do not eliminate capacity planning.
* **Operations:** backup status must be monitored and recovery must be rehearsed. A green backup job alone is not proof that the data can be restored within the required RTO.

PITR by itself does not replace HA. A production design normally combines HA for physical failures with PITR for logical errors and site-level recovery.


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
