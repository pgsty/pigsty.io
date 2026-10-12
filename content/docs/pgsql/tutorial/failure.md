---
title: Troubleshooting
weight: 1607
description: Common failures and analysis troubleshooting approaches
icon: fa-solid fa-fire
module: [PGSQL]
categories: [Task]
---


This document lists possible PostgreSQL and Pigsty failures.
It gives standard procedures to locate, resolve, and analyze them.


--------

## Disk Space Exhausted

Disk space exhaustion is the most common type of failure.

### Symptoms

If the database disk is full, PostgreSQL cannot operate normally.
Logs repeatedly report "no space left on device", and new writes fail.
PostgreSQL may also report a PANIC and shut down.

The Pigsty NodeFsSpaceFull alert triggers when filesystem free space is less than 10%.
To locate the problem, open the NODE Instance dashboard and inspect the FS metrics panel.

### Diagnosis

You can also log in to the database node and run `df -h`.
Identify the full partition.
Then check these directories and their sizes to identify which files consume the space:

- **Data directory** (`/pg/data/base`): Stores data files for tables and indexes; pay attention to heavy writes and temporary files
- **WAL directory** (e.g., `pg/data/pg_wal`): Stores PG WAL; WAL accumulation/replication slot retention is a common cause of disk exhaustion.
- **Database log directory** (e.g., `pg/log`): If PG logs are not rotated in time and large amounts of errors are written, they may also consume significant space.
- **Local backup directory** (e.g., `data/backups`): When using pgBackRest or similar tools to save backups locally, this may also fill up the disk.

If the issue occurs on the Pigsty admin node or monitoring node, also consider:

- **Monitoring data**: VictoriaMetrics time-series metrics and VictoriaLogs log storage both consume disk space; check retention policies.
- **Object storage data**: Pigsty's integrated Silo object storage may be used for PG backup storage.

After you identify the largest directory, use `du -sh <directory>` to locate large files or subdirectories.

### Resolution

Disk exhaustion requires immediate action to free space and keep the database operating.
If the data disk and system disk are the same, a full disk may prevent shell commands from running.
In this case, delete the `/pg/dummy` placeholder file to free emergency space for shell commands.
If accumulated pg_wal caused a database crash, free space and restart the database service.
Then check data integrity carefully.




--------

## Transaction ID Wraparound

PostgreSQL reuses 32-bit transaction IDs (XIDs) in a cycle.
Exhaustion causes a transaction ID wraparound failure (XID Wraparound).

### Symptoms

The first typical sign is age saturation entering the warning zone in [PGSQL Persist - Age Usage](https://demo.pigsty.io/ui/d/pgsql-persist).
Database logs begin to show messages such as `WARNING: database "postgres" must be vacuumed within xxxxxxxx transactions`.

If the condition gets worse, PostgreSQL enters protection mode.
With about 1 million transaction IDs remaining, the database becomes read-only.
At the limit of about 2.1 billion (2^31), it rejects new transactions and shuts down to prevent data corruption.

### Diagnosis

PostgreSQL and Pigsty enable automatic garbage collection (AutoVacuum) by default.
Thus, this failure usually indicates another underlying problem.
Common causes include very long transactions (SAGE), incorrect Autovacuum settings, blocked replication slots, and insufficient resources.
Storage engine or extension bugs and bad disk blocks can also cause it.

First, identify the database with the highest age.
Then inspect table ages in the Pigsty PGCAT Database - Tables panel.
Also inspect database error logs for evidence of the cause.

### Resolution

1. **Immediately freeze old transactions**: If the database is not yet in read-only protection mode, immediately run a manual VACUUM FREEZE. For faster results, first freeze the oldest tables individually. Connect as a superuser and run `VACUUM FREEZE table_name;` on tables identified with the largest `relfrozenxid`. Prioritize tables with the highest XID age. This can quickly reclaim transaction ID space.
2. **Single-user mode rescue**: If the database rejects writes or has shut down for protection, start it in single-user mode. Run `VACUUM FREEZE database_name;` to freeze and clean the entire database. Then restart in multi-user mode. This can remove wraparound protection and permit writes again. Operate carefully in single-user mode. Make sure that enough transaction IDs remain to complete the freeze.
3. **Standby node takeover**: If problems such as hardware failure prevent vacuum, consider promoting a read-only standby to primary. This can provide a cleaner environment for the freeze. For example, if bad blocks prevent vacuum on the primary, manually fail over to the standby and run emergency vacuum freeze. Verify that the new primary has frozen old transactions before you switch the load back.




--------

## Connection Exhaustion

`max_connections` limits PostgreSQL connections.
When clients exceed this limit, PostgreSQL rejects new connections.
Applications cannot connect and report **FATAL: remaining connection slots are reserved for non-replication superuser connections** or **too many clients already**.
Regular connection slots are exhausted.
Only slots reserved for superusers or replication remain.

### Diagnosis

Connection exhaustion usually results from many concurrent client requests.
Inspect active sessions in PGCAT Instance, PGCAT Database, or PGCAT Locks.
Identify the query types that occupy the connections.
Look for many "Idle in Transaction" connections, long transactions, and slow queries.

### Resolution

**Kill queries**: If connection exhaustion blocks application operations, usually use `pg_terminate_backend(pid)` for immediate relief.
If connections use a pool, adjust its size settings and reload it to reduce database connections.

You can also increase `max_connections`.
Restart the database to apply the change.


--------

## etcd Quota Exhausted

An exhausted etcd quota will cause the PG high availability control plane to fail and prevent configuration changes.


### Diagnosis

Pigsty uses etcd as the distributed configuration store (DCS) for high availability.
etcd has a storage quota of about 2GB by default.
At the limit, etcd rejects writes and reports "**etcdserver: mvcc: database space exceeded**".
Patroni then cannot write heartbeats or configuration changes to etcd, so cluster management fails.

### Resolution

Pigsty v2.0.0 through v2.5.1 are affected by default.
Pigsty v2.6.0 added automatic compaction for deployed etcd.
If etcd stores only PostgreSQL high-availability leases, the problem no longer occurs in regular use.



--------

## Defective Storage Engine

TimescaleDB's experimental Hypercore storage engine has confirmed defects.
Reported cases include VACUUM failing to reclaim space and causing XID wraparound.
If you use Hypercore, promptly migrate to native PostgreSQL tables or the default TimescaleDB engine.

Detailed introduction: [PG New Storage Engine Failure Case](https://mp.weixin.qq.com/s/LdZVVyOj4BA9C892I25lQw) (Chinese)
