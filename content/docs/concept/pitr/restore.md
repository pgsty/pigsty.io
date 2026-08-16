---
title: Declarative Recovery
linkTitle: Recovery
weight: 214
description: Declare the desired pg_pitr recovery target and let pgsql-pitr.yml or pig orchestrate the recovery workflow.
icon: fa-solid fa-rotate-left
module: [PGSQL]
categories: [Concept]
---

The value of a backup system is realized at restore time, often during an incident when every minute matters.
A traditional PITR procedure requires a long sequence of coupled manual steps: pause HA, stop PostgreSQL, prepare recovery settings, restore the backup, replay WAL, validate the target, rebuild metadata, and start the cluster again.

Pigsty applies the same approach used by [**declarative configuration**](/docs/concept/iac/) to recovery: **declare the recovery target**, then let the orchestration tools stop the cluster, restore the data, replay WAL, and return control to the operator.


----------------

## Declare a Recovery Target

Describe the target with the [**`pg_pitr`**](/docs/pgsql/backup/restore/) parameter and execute it with `pgsql-pitr.yml`.
The most common form restores a cluster to a specific time:

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "time": "2026-07-11 10:00:00+08", "action": "promote" }}'
```

The [**six recovery target types**](/docs/concept/pitr/mechanism/#targets-where-replay-stops) and the rest of the recovery behavior are expressed through fields in this parameter:

```yaml
pg_pitr:                           # Recovery declaration; every field is optional
  cluster: pg-meta                 # Source backup stanza; defaults to this cluster
  type: time                       # default | time | xid | lsn | name | immediate
  time: '2026-07-11 10:00:00+08'   # Mutually exclusive with xid, lsn, and name
  exclusive: false                 # Stop before the target; inclusive by default
  action: promote                  # Explicit promotion; a targeted restore defaults to pause
  timeline: latest                 # Target timeline; latest by default
  set: latest                      # Starting backup set; selected automatically by default
  repo: { ... }                    # Temporary repository definition when not using local config
  backup: false                    # Move the old data directory to /pg/data-backup first
  archive: true                    # Preserve archiving; exploratory recovery can set false
  db_include: [ ... ]              # Restore only selected databases
  data: /pg/data                   # Destination data directory
```

See [**Restore Operations**](/docs/pgsql/backup/restore/) for the complete field reference and examples.


----------------

## What the Playbook Does

`pgsql-pitr.yml` turns the manual recovery workflow into six stages and supports Ansible tags for staged execution:

| Stage | Action |
|:------|:-------|
| **print** | Print the source cluster, target, and restore command; this stage reports the plan and does not prompt for confirmation |
| **pause** | Run `patronictl pause` so Patroni does not intervene during maintenance |
| **stop** | Stop Patroni and PostgreSQL on replicas, then on the primary |
| **pitr** | Render recovery settings, run an incremental pgBackRest restore, start PostgreSQL to replay WAL, wait for consistency, and print control data |
| **etcd** | Remove stale cluster metadata from etcd so old and new timelines are not mixed |
| **start** | Start Patroni again, resume HA management, and rebuild replicas |
{.full-width}

Several details are important:

* **Incremental restore:** pgBackRest uses `delta`, so it rewrites only files that differ from the backup. For large databases, this can reduce RTO substantially.
* **Verification, not assumption:** the playbook prints checkpoint LSN, timeline, and NextXID data from `pg_controldata`; an operator must still verify that the recovered business state is correct.
* **Rollback copy:** with `backup: true`, the original data directory is moved to `/pg/data-backup` before recovery. A later run with `backup: true` removes an existing `/pg/data-backup`, so this is not a versioned snapshot store.
* **Staged execution:** run `-t down`, `-t pitr`, and `-t up` separately when you want an operator checkpoint between phases. Completion of the `pitr` phase means PostgreSQL reached a consistent recovery state; for a time, XID, LSN, or named target, also confirm WAL replay reached that target.

The `action` field controls what happens at the target: `promote` opens a new timeline, `pause` waits at the target for inspection, and `shutdown` stops PostgreSQL there.
A targeted recovery defaults to `pause` when `action` is omitted. To preserve a manual gate for `pause` or `shutdown`, run the stages separately; a one-shot recovery should choose `promote` explicitly.
The playbook performs the mechanical workflow, but it cannot decide whether the recovered data is correct.


----------------

## Command-Line Recovery with `pig`

The [**`pig`**](/docs/pig/) CLI provides single-instance PITR orchestration directly on a database node, without requiring the management node or an Ansible environment:

```bash
pig pitr -t "2026-07-11 10:00:00+08"    # Recover to a point in time
pig pitr --xid 250000 -X                # Stop before transaction 250000
pig pitr -d                             # Replay through the WAL archive
pig pitr -I --no-restart                # Prepare immediate recovery and leave PostgreSQL stopped
```

[**`pig pitr`**](/docs/pig/pitr) validates the target, stanza, and available backups; stops Patroni and PostgreSQL; performs the restore; optionally starts PostgreSQL; and prints post-recovery instructions.
For a Patroni-managed data directory, Patroni remains stopped afterward. Validate the data, then use `pig pt start` to return the instance to HA management.
This single-node workflow does not clear etcd, rebuild replicas, or automatically rejoin the cluster, and it refuses destructive forced shutdown unless `--force-stop` is supplied explicitly.

The lower-level [**`pig pb`**](/docs/pig/pb) commands wrap pgBackRest: `pb info` lists backups, `pb backup` creates a backup, and `pb restore` performs a raw restore.
There is a deliberate safety boundary: **`pig pb restore` refuses to run while Patroni still manages the instance**, because Patroni could restart PostgreSQL during the restore.
Use `pig pitr` or `pgsql-pitr.yml` for Patroni-managed instances.


----------------

## In-Place and Clone Recovery

The same mechanism supports two different workflows:

| Dimension | **In-place recovery** | **Clone recovery** |
|:----------|:----------------------|:-------------------|
| Method | Roll the production cluster back | Restore a source backup into a different cluster |
| Downtime | Required during recovery | The source production cluster remains online |
| Effect | Discards all writes after the target | Does not affect the source; the destination is overwritten and can be retried |
| Best for | Whole-cluster corruption or disaster recovery | Recovering deleted objects, audit work, and recovery drills |
{.full-width}

For a clone recovery, the `cluster` field names the **source backup stanza**.
This example restores the historical state of `pg-meta` into `pg-test` without stopping the source cluster:

```bash
./pgsql-pitr.yml -l pg-test -e '{"pg_pitr": { "cluster": "pg-meta", "time": "2026-07-11 10:00:00+08", "archive": false, "action": "promote" }}'
```

Exporting an accidentally deleted table from the clone and importing it into production is generally safer than rolling the entire production cluster back.
See [**Clone a Database Cluster**](/docs/pgsql/backup/cluster/) for the complete workflow and cleanup steps.


----------------

## After Recovery

Recovery completion is not the end of the incident. Include these steps in the closeout checklist:

1. **New timeline, new backup:** after promotion, create a full backup with `pg-backup full` so a recoverable window exists on the new timeline.
2. **Archiving state:** if an exploratory restore used `archive: false`, restore normal archiving as described in [**Post-Recovery**](/docs/pgsql/backup/restore/#post-recovery).
3. **Clone cleanup:** a clone's cluster identity and source backup stanza do not match. Recreate the destination stanza before enabling its own backups; see [**Clone a Database Cluster**](/docs/pgsql/backup/cluster/).

The tools execute the procedure; operators still decide the target, whether to restore in place or into a clone, and whether the recovered data is correct.
Continue with [**PITR Scenarios**](/docs/concept/pitr/scenarios/) for that decision framework.
