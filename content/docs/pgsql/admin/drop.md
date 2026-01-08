---
title: Accidental Deletion
weight: 2008
description: Handling accidental data deletion, table deletion, and database deletion
icon: fa-solid fa-trash
module: [PGSQL]
categories: [Task]
tags: [SOP, Recovery]
---


## Accidental Data Deletion

If it's a small-scale `DELETE` misoperation, you can consider using the [`pg_surgery`](https://pgext.cloud/e/pg_surgery) or [`pg_dirtyread`](https://pgext.cloud/e/pg_dirtyread) extension for in-place surgical recovery.

```sql
-- Immediately disable Auto Vacuum on this table and abort Auto Vacuum worker processes for this table
ALTER TABLE public.some_table SET (autovacuum_enabled = off, toast.autovacuum_enabled = off);

CREATE EXTENSION pg_dirtyread;
SELECT * FROM pg_dirtyread('tablename') AS t(col1 type1, col2 type2, ...);
```

If the deleted data has already been reclaimed by VACUUM, then use the general accidental deletion recovery process.


## Accidental Object Deletion

When `DROP/DELETE` type misoperations occur, typically decide on a recovery plan according to the following process:

1. Confirm whether this data can be recovered from the business system or other data systems. If yes, recover directly from the business side.
2. Confirm whether there is a delayed replica. If yes, advance the delayed replica to the time point before deletion and query the data for recovery.
3. If the data has been confirmed deleted, confirm backup information and whether the backup range covers the deletion time point. If it does, start PITR.
4. Confirm whether to perform in-place cluster [PITR rollback](/docs/pgsql/backup/restore), or start a new server for replay, or use a replica for replay, and execute the recovery strategy.


## Accidental Cluster Deletion

If an entire database cluster is accidentally deleted through Pigsty management commands, for example, incorrectly executing the [`pgsql-rm.yml`](/docs/pgsql/playbook#pgsql-rmyml) playbook or the `bin/pgsql-rm` command.
Unless you have set the [`pg_rm_backup`](/docs/pgsql/param#pg_rm_backup) parameter to `false`, the backup will be deleted along with the database cluster.

> **Warning**: In this situation, your data will be unrecoverable! **Please think three times before proceeding!**

Recommendation: For production environments, you can globally configure this parameter to `false` in the configuration manifest to preserve backups when removing clusters.

