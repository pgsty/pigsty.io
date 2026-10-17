# Declarative Recovery

> Declare the desired pg_pitr recovery target and let pgsql-pitr.yml or pig orchestrate the recovery workflow.

---

LLMS index: [llms.txt](/llms.txt)

---

A backup must support recovery when an incident occurs. Traditional PITR requires connected manual steps: pause HA, stop PostgreSQL, prepare recovery settings, restore the backup, and replay WAL. Then validate the target, rebuild metadata, and start the cluster again.

Pigsty uses [**declarative configuration**](/docs/concept/iac/) for recovery. **Declare the recovery target**. The tools stop the cluster, restore data, replay WAL, and return control to the operator.


----------------

## Declare a Recovery Target

Set [**`pg_pitr`**](/docs/pgsql/backup/restore/) to describe the target. Run `pgsql-pitr.yml` to restore it. The most common form selects a specific time:

```bash
./pgsql-pitr.yml -l pg-meta -e '{"pg_pitr": { "time": "2026-07-11 10:00:00+08", "action": "promote" }}'
```

Fields in this parameter define the [**six recovery target types**](/docs/concept/pitr/mechanism/#targets-where-replay-stops) and other recovery behavior:

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

`pgsql-pitr.yml` divides recovery into six stages. Ansible tags let you run these stages separately:

| Stage | Action |
|:------|:-------|
| **print** | Print the source cluster, target, and restore command; this stage reports the plan and does not prompt for confirmation |
| **pause** | Run `patronictl pause` so Patroni does not intervene during maintenance |
| **stop** | Stop Patroni and PostgreSQL on replicas, then on the primary |
| **pitr** | Render recovery settings, run an incremental pgBackRest restore, start PostgreSQL to replay WAL, wait for consistency, and print control data |
| **etcd** | Remove stale cluster metadata from etcd so old and new timelines are not mixed |
| **start** | Start Patroni again, resume HA management, and rebuild replicas |
{.full-width}

Keep these details in mind:

* **Incremental restore:** pgBackRest uses `delta` to rewrite only files that differ from the backup. This can substantially reduce RTO for large databases.
* **Verification:** The playbook prints checkpoint LSN, timeline, and NextXID from `pg_controldata`. An operator must still verify the recovered business state.
* **Rollback copy:** `backup: true` moves the original data directory to `/pg/data-backup` before recovery. A later run with this option removes any existing `/pg/data-backup`. It does not retain multiple snapshot versions.
* **Staged execution:** Run `-t down`, `-t pitr`, and `-t up` separately for an operator checkpoint between phases. The `pitr` phase completes when PostgreSQL reaches a consistent recovery state. For time, XID, LSN, or named targets, also confirm that WAL replay reached the target.

`action` controls behavior at the target. `promote` opens a new timeline, `pause` waits for inspection, and `shutdown` stops PostgreSQL. Targeted recovery defaults to `pause` if you omit `action`. Run stages separately to retain a manual checkpoint for `pause` or `shutdown`. For a single-run recovery, explicitly select `promote`. The playbook performs recovery steps but cannot determine whether the business data is correct.


----------------

## Command-Line Recovery with `pig`

The [**`pig`**](/docs/pig/) CLI can perform single-instance PITR directly on a database node. It needs neither an administration node nor Ansible:

```bash
pig pitr -t "2026-07-11 10:00:00+08"    # Recover to a point in time
pig pitr --xid 250000 -X                # Stop before transaction 250000
pig pitr -d                             # Replay through the WAL archive
pig pitr -I --no-restart                # Prepare immediate recovery and leave PostgreSQL stopped
```

[**`pig pitr`**](/docs/pig/pitr) validates the target, stanza, and available backups. It stops Patroni and PostgreSQL, restores data, optionally starts PostgreSQL, and prints further instructions. For a Patroni-managed directory, Patroni stays stopped afterward. Validate the data, then run `pig pt start` to resume HA management. This workflow does not clear etcd, rebuild replicas, or automatically rejoin the cluster. Destructive forced shutdown requires explicit `--force-stop`.

[**`pig pb`**](/docs/pig/pb) wraps lower-level pgBackRest commands. `pb info` lists backups, `pb backup` creates them, and `pb restore` runs a raw restore. **`pig pb restore` refuses to run while Patroni manages the instance**. Patroni could otherwise restart PostgreSQL during restoration. For Patroni-managed instances, use `pig pitr` or `pgsql-pitr.yml`.


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

For clone recovery, `cluster` names the **source backup stanza**. This example restores historical `pg-meta` data into `pg-test` while the source remains online:

```bash
./pgsql-pitr.yml -l pg-test -e '{"pg_pitr": { "cluster": "pg-meta", "time": "2026-07-11 10:00:00+08", "archive": false, "action": "promote" }}'
```

To recover a deleted table, exporting it from a clone and importing it into production is generally safer than restoring the whole cluster. See [**Clone a Database Cluster**](/docs/pgsql/backup/cluster/) for the complete workflow and cleanup.


----------------

## After Recovery

After recovery, complete these incident closeout steps:

1. **New timeline, new backup:** After promotion, run `pg-backup full` to create a recovery window on the new timeline.
2. **Archiving state:** If you used `archive: false` for investigation, restore normal archiving. See [**Post-Recovery**](/docs/pgsql/backup/restore/#post-recovery).
3. **Clone cleanup:** A clone's cluster identity differs from its source stanza. Recreate the destination stanza before enabling its backups. See [**Clone a Database Cluster**](/docs/pgsql/backup/cluster/).

Operators must select the target and choose in-place or clone recovery. They must also verify that the recovered data is correct. The tools execute the selected procedure. See [**PITR Scenarios**](/docs/concept/pitr/scenarios/) for guidance on these decisions.
