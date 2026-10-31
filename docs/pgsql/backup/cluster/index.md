# Clone a PG Cluster

> Restore one cluster's historical state into another for data recovery, restore drills, and forensic inspection.

---

LLMS index: [llms.txt](/llms.txt)

---

Cloning restores production history into another cluster and leaves the production cluster unchanged.
This makes cloning a useful recovery method with less risk to production.
You can recover accidentally deleted data from the clone, validate backups in a drill, or inspect a historical state.
You can also reset a test environment to a production snapshot.

The target must have access to the source backup repository and use a compatible PostgreSQL major version.
Recovery may overwrite the target.
In a shared [Silo/S3 repository](/docs/pgsql/backup/repository/), a [stanza](/docs/pgsql/backup/mechanism/#stanza-the-clusters-backup-identity) isolates each cluster's backups.
Targets with the required credentials can access these backups.

> [!CAUTION] A clone overwrites the target cluster
> Inspect the target topology with `pig pg list <target-cluster>`.
> Verify the source stanza's recent backups and recovery window with `pig pb info`.
> Before the restore, have the operator confirm the exact source cluster, target cluster, and recovery point.
> Recovery overwrites existing data on the target.
> Production work requires a maintenance window and an independently verified backup.


--------

## Clone an Existing Cluster

Assume the four-node sandbox contains `pg-meta` and `pg-test`, sharing a Silo repository.
To reset `pg-test` to the latest state of `pg-meta`, point [`pg_pitr`](/docs/pgsql/backup/restore/#pitr-parameter-definition) to the `pg-meta` stanza:

```bash
pig pg list pg-test
pig pb info
./pgsql-pitr.yml -l pg-test -e '{"pg_pitr": { "cluster": "pg-meta", "archive": false, "action": "promote" }}'
```

Add a recovery target to clone any state inside the recovery window.
For example, reset to 15:30 on December 26, 2025:

```bash
./pgsql-pitr.yml -l pg-test -e '{"pg_pitr": { "cluster": "pg-meta", "time": "2025-12-26 15:30:00+08", "archive": false, "action": "promote" }}'
```

These cross-cluster examples set `archive: false` to keep the exploratory recovery from archiving under the target stanza.
After Patroni takes control, complete the stanza and archive cleanup below.

The target may also be a newly initialized empty cluster, such as `pg-meta2`.
Use the normal [cluster creation](/docs/pgsql/admin/cluster/) procedure to create it.
Then perform cross-cluster PITR.

pgBackRest restore uses delta mode and rewrites only files that differ from the backup.
Repeated drills, or a target already synchronized through a [standby cluster](/docs/pgsql/config/cluster#standby-cluster), can therefore restore much faster than a first full restore.

For accidental deletion, validate the clone and use `pg_dump` to export only the affected tables or database back into production.
An in-place rollback of the entire production cluster should be the last resort, not the first response.


--------

## Post-Clone Cleanup

The clone contains the source cluster's data, while the target stanza may still record the target's old PostgreSQL system identifier.
pgBackRest refuses a backup when the identifiers do not match, preventing the new cluster from contaminating the source history.

After you validate the clone, complete these steps.
A cluster restart changes the running service.
First inspect the primary and replication state, schedule the maintenance window, and obtain explicit approval.

```bash
pb stanza-upgrade                           # accept the new system-id; cross-cluster clone only
psql -c 'ALTER SYSTEM RESET archive_mode;' # undo archive: false
pg restart pg-test                         # archive_mode requires a restart
pg-backup full                             # establish a recovery point on the new timeline
```

Until you complete these steps, scheduled backups can fail the identity check.
A clone restored with `archive: false` produces no new WAL archive:

```bash
postgres@pg-test-1:~$ pb backup
INFO: backup command begin 2.57.0: --annotation=pg_cluster=pg-test ... --stanza=pg-test --start-fast
ERROR: [051]: PostgreSQL version 18, system-id 7588470953413201282 do not match stanza version 18, system-id 7588470974940466058
       HINT: is this the correct stanza?
INFO: backup command end: aborted with exception [051]
```


--------

## Rebuild Backup Identity

`stanza-upgrade` lets the new cluster continue writing under its existing stanza.
If the clone needs a completely independent backup history, rebuild the stanza instead.

Declarative workflow:

```bash
pig pb info -s pg-test
pig pb delete -s pg-test                 # type the exact stanza when prompted
./pgsql.yml -t pg_backup -l pg-test      # create a fresh stanza
pg-backup full
```

Equivalent low-level workflow:

```bash
pig pb stop
pig pb delete -s pg-test                 # confirm the exact stanza
pig pb start
pig pb create -s pg-test
pig pb backup full -s pg-test
```

> [!WARNING] Rebuilding permanently discards old recovery history
> Before deletion, check recent backups and retain any required independent recovery copy.
> Have the operator confirm the exact `pg-test` stanza.
> Object-locked versions can remain and continue to consume storage.
> A successful deletion command does not prove that it physically erased every underlying version.


--------

## Online Copies: Standby Clusters

A PITR clone is a static snapshot.
Use a streaming-replication [standby cluster](/docs/pgsql/config/cluster#standby-cluster) for an online copy that follows the source continuously.
Use a [delayed cluster](/docs/pgsql/config/cluster#delayed-cluster) for a fixed rollback window, such as one hour.

The three methods complement each other.
Standby clusters provide a live copy.
Delayed clusters preserve a fixed delay.
PITR clones provide any historical state inside the recovery window and do not require an existing online replica.


--------

## Restore Drills

A clone provides an end-to-end restore drill without changes to production.
It overwrites the designated drill target.
Run one quarterly and after major backup changes:

1. Select a point inside the production recovery window.
2. Restore it into the drill cluster and record elapsed time as the measured PITR RTO.
3. Validate integrity with authorized row-count checks, critical-table checks, and application connectivity.
4. Complete [post-clone cleanup](#post-clone-cleanup) and verify that the drill cluster can create a new backup.
5. Record timing, failures, and any difference between the runbook and reality.

See [Manual Recovery](/docs/pgsql/tutorial/pitr) for a sandbox exercise using pgBackRest primitives, or [Fork an Instance](/docs/pgsql/tutorial/pg-fork) for an XFS snapshot-based local test copy.
