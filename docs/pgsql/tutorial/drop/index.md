# Accidental Deletion

> Handling accidental data deletion, table deletion, and database deletion

---

LLMS index: [llms.txt](/llms.txt)

---

## Accidental Data Deletion

For a small accidental `DELETE`, consider [`pg_surgery`](/ext/e/pg_surgery) or [`pg_dirtyread`](/ext/e/pg_dirtyread) for selective recovery in place.

```sql
-- Immediately disable Auto Vacuum on this table and abort Auto Vacuum worker processes for this table
ALTER TABLE public.some_table SET (autovacuum_enabled = off, toast.autovacuum_enabled = off);

CREATE EXTENSION pg_dirtyread;
SELECT * FROM pg_dirtyread('tablename') AS t(col1 type1, col2 type2, ...);
```

If the deleted data has already been reclaimed by VACUUM, then use the general accidental deletion recovery process.


## Accidental Object Deletion

For accidental `DROP/DELETE` operations, usually select a recovery method in this order:

1. Check whether the application or another data system can supply the data. If so, recover it from that system.
2. Check whether a delayed replica exists. If so, advance it to the time before deletion and query the data for recovery.
3. If deletion is confirmed, check the backups and their recovery window. If the window covers the deletion time, start PITR.
4. Select where to replay: an in-place cluster [PITR rollback](/docs/pgsql/backup/restore), a new server, or a replica. Then perform recovery.


## Accidental Cluster Deletion

Pigsty management commands can delete an entire cluster, for example [`pgsql-rm.yml`](/docs/pgsql/playbook#pgsql-rmyml) or `bin/pgsql-rm`.
Unless [`pg_rm_backup`](/docs/pgsql/param#pg_rm_backup) is `false`, these commands also delete the cluster backups.

> **Warning**: In this situation, you cannot recover the data. Review the target and the deletion consequences carefully before you proceed.

For production, we recommend that you set this parameter to `false` globally in the inventory.
This preserves backups when you remove clusters.
