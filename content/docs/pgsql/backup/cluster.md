---
title: Clone Database Cluster
weight: 1507
description: How to use PITR to create a new PostgreSQL cluster and restore to a specified point in time?
icon: fa-solid fa-rotate-left
categories: [Task]
---


## Quick Start

- Create an online replica of an existing cluster using Standby Cluster
- Create a point-in-time snapshot of an existing cluster using PITR
- Perform post-PITR cleanup to ensure the new cluster's backup process works properly

You can use the PG PITR mechanism to clone an entire database cluster.


## Reset a Cluster's State

You can also consider creating a brand new empty cluster, then use PITR to reset it to a specific state of the `pg-meta` cluster.

Using this technique, you can clone any point-in-time (within backup retention period) state of the existing cluster `pg-meta` to a new cluster.

Using the Pigsty 4-node sandbox environment as an example, use the following command to reset the `pg-test` cluster to the latest state of the `pg-meta` cluster:

```bash
./pgsql-pitr.yml -l pg-test -e '{"pg_pitr": { "cluster": "pg-meta" }}'
```


## Post-PITR Cleanup

When you restore a cluster using PITR, the new cluster's PITR functionality is disabled. This is because if it also tries to generate backups and archive WAL, it could dirty the backup repository of the previous cluster.

Therefore, after confirming that the state of this PITR-restored new cluster meets expectations, you need to perform the following cleanup:

- Upgrade the backup repository Stanza to accept new backups from different clusters (only when restoring from another cluster)
- Enable `archive_mode` to allow the new cluster to archive WAL logs (requires cluster restart)
- Perform a new full backup to ensure the new cluster's data is included (optional, can also wait for crontab scheduled execution)

```bash
pb stanza-upgrade
psql -c 'ALTER SYSTEM RESET archive_mode;'
pg-backup full
```

Through these operations, your new cluster will have its own backup history starting from the first full backup. If you skip these steps, the new cluster's backups will not work, and WAL archiving will not take effect, meaning you cannot perform any backup or PITR operations on the new cluster.


## Consequences of Not Cleaning Up

Suppose you performed PITR recovery on the `pg-test` cluster using data from another cluster `pg-meta`, but did not perform cleanup.

Then at the next routine backup, you will see the following error:

```bash
postgres@pg-test-1:~$ pb backup
2025-12-27 10:20:29.336 P00   INFO: backup command begin...
2025-12-27 10:20:29.357 P00  ERROR: [051]: PostgreSQL version 18, system-id 7588470953413201282 do not match stanza version 18, system-id 7588470974940466058
                                    HINT: is this the correct stanza?
```


## Clone a New Cluster

For example, suppose you have a cluster `pg-meta`, and now you want to clone a new cluster `pg-meta2` from `pg-meta`.

You can consider using the [**Standby Cluster**](/docs/pgsql/config/cluster#standby_cluster) method to create a new cluster `pg-meta2`.

pgBackrest supports incremental backup/restore, so if you have already pulled `pg-meta`'s data through physical replication, the incremental PITR restore is usually very fast.

```bash
pb stop --force
pb stanza-delete --force
pb start
pb stanza-create
```

If you want to reset the `pg-test` cluster to the state of `pg-meta` cluster at 15:30 on December 26, 2025, you can use the following command:

```bash
./pgsql-pitr.yml -l pg-test -e '{"pg_pitr": { "cluster": "pg-meta", "time": "2025-12-27 17:50:00+08" ,archive: true }}'
```

Using this technique, you can not only clone the latest state of the `pg-meta` cluster, but also clone to any point in time.
