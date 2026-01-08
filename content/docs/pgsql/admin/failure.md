---
title: Troubleshooting
weight: 1607
description: Common failures and analysis troubleshooting approaches
icon: fa-solid fa-fire
module: [PGSQL]
categories: [Task]
---


This document lists potential failures in PostgreSQL and Pigsty, as well as SOPs for locating, handling, and analyzing issues.


--------

## Disk Space Exhausted

Disk space exhaustion is the most common type of failure.

### Symptoms

When the disk space where the database resides is exhausted, PostgreSQL will not work normally and may exhibit the following symptoms: database logs repeatedly report "no space left on device" errors, new data cannot be written, and PostgreSQL may even trigger a PANIC and force shutdown.

Pigsty includes a NodeFsSpaceFull alert rule that triggers when filesystem available space is less than 10%.
Use the monitoring system's NODE Instance panel to review the FS metrics panel to locate the issue.

### Diagnosis

You can also log into the database node and use `df -h` to view the usage of each mounted partition to determine which partition is full.
For database nodes, focus on checking the following directories and their sizes to determine which category of files has filled up the space:

- **Data directory** (`/pg/data/base`): Stores data files for tables and indexes; pay attention to heavy writes and temporary files
- **WAL directory** (e.g., `pg/data/pg_wal`): Stores PG WAL; WAL accumulation/replication slot retention is a common cause of disk exhaustion.
- **Database log directory** (e.g., `pg/log`): If PG logs are not rotated in time and large amounts of errors are written, they may also consume significant space.
- **Local backup directory** (e.g., `data/backups`): When using pgBackRest or similar tools to save backups locally, this may also fill up the disk.

If the issue occurs on the Pigsty admin node or monitoring node, also consider:

- **Monitoring data**: VictoriaMetrics time-series metrics and VictoriaLogs log storage both consume disk space; check retention policies.
- **Object storage data**: Pigsty's integrated MinIO object storage may be used for PG backup storage.

After identifying the directory consuming the most space, you can further use `du -sh <directory>` to drill down and find specific large files or subdirectories.

### Resolution

Disk exhaustion is an emergency issue requiring immediate action to free up space and ensure the database continues to operate.
When the data disk is not separated from the system disk, a full disk may prevent shell commands from executing. In this case, you can delete the `/pg/dummy` placeholder file to free up a small amount of emergency space so shell commands can work again.
If the database has crashed due to pg_wal filling up, you need to restart the database service after clearing space and carefully check data integrity.




--------

## Transaction ID Wraparound

PostgreSQL cyclically uses 32-bit transaction IDs (XIDs), and when exhausted, a "transaction ID wraparound" failure occurs (XID Wraparound).

### Symptoms

The typical sign in the first phase is when the age saturation in the [PGSQL Persist - Age Usage](https://demo.pigsty.io/d/pgsql-persist) panel enters the warning zone.
Database logs begin to show messages like: `WARNING: database "postgres" must be vacuumed within xxxxxxxx transactions`.

If the problem continues to worsen, PostgreSQL enters protection mode: when remaining transaction IDs drop to about 1 million, the database switches to read-only mode; when reaching the limit of about 2.1 billion (2^31), it refuses any new transactions and forces the server to shut down to avoid data corruption.

### Diagnosis

PostgreSQL and Pigsty enable automatic garbage collection (AutoVacuum) by default, so the occurrence of this type of failure usually has deeper root causes.
Common causes include: very long transactions (SAGE), misconfigured Autovacuum, replication slot blockage, insufficient resources, storage engine/extension bugs, disk bad blocks.

First identify the database with the highest age, then use the Pigsty PGCAT Database - Tables panel to confirm the age distribution of tables.
Also review the database error logs, which usually contain clues to locate the root cause.

### Resolution

1. **Immediately freeze old transactions**: If the database has not yet entered read-only protection mode, immediately execute a manual VACUUM FREEZE on the affected database. You can start by freezing the most severely aged tables one by one rather than doing the entire database at once to accelerate the effect. Connect to the database as a superuser and run `VACUUM FREEZE table_name;` on tables identified with the largest `relfrozenxid`, prioritizing tables with the highest XID age. This can quickly reclaim large amounts of transaction ID space.
2. **Single-user mode rescue**: If the database is already refusing writes or has crashed for protection, you need to start the database in single-user mode to perform freeze operations. In single-user mode, run `VACUUM FREEZE database_name;` to freeze and clean the entire database. After completion, restart the database in multi-user mode. This can lift the wraparound lock and make the database writable again. Be very careful when operating in single-user mode and ensure sufficient transaction ID margin to complete the freeze.
3. **Standby node takeover**: In some complex scenarios (e.g., when hardware issues prevent vacuum from completing), consider promoting a read-only standby node in the cluster to primary to obtain a relatively clean environment for handling the freeze. For example, if the primary cannot vacuum due to bad blocks, you can manually failover to promote the standby to the new primary, then perform emergency vacuum freeze on it. After ensuring the new primary has frozen old transactions, switch the load back.




--------

## Connection Exhaustion

PostgreSQL has a maximum connections configuration (`max_connections`). When client connections exceed this limit, new connection requests will be rejected. The typical symptom is that applications cannot connect to the database and report errors like
**FATAL: remaining connection slots are reserved for non-replication superuser connections** or **too many clients already**.
This indicates that regular connections are exhausted, leaving only slots reserved for superusers or replication.

### Diagnosis

Connection exhaustion is usually caused by a large number of concurrent client requests. You can directly review the database's current active sessions through PGCAT Instance / PGCAT Database / PGCAT Locks.
Determine what types of queries are filling the system and proceed with further handling. Pay special attention to whether there are many connections in the "Idle in Transaction" state and long-running transactions (as well as slow queries).

### Resolution

**Kill queries**: For situations where exhaustion has already blocked business operations, typically use `pg_terminate_backend(pid)` immediately for emergency pressure relief.
For cases using connection pooling, you can adjust the connection pool size parameters and execute a reload to reduce the number of connections at the database level.

You can also modify the `max_connections` parameter to a larger value, but this parameter requires a database restart to take effect.


--------

## etcd Quota Exhausted

An exhausted etcd quota will cause the PG high availability control plane to fail and prevent configuration changes.


### Diagnosis

Pigsty uses etcd as the distributed configuration store (DCS) when implementing high availability. etcd itself has a storage quota (default is about 2GB).
When etcd storage usage reaches the quota limit, etcd will refuse write operations and report "**etcdserver: mvcc: database space exceeded**". In this case, Patroni cannot write heartbeats or update configuration to etcd, causing cluster management functions to fail.

### Resolution

Versions between Pigsty v2.0.0 and v2.5.1 are affected by this issue by default. Pigsty v2.6.0 added auto-compaction configuration for deployed etcd. If you only use it for PG high availability leases, this issue will no longer occur in regular use cases.



--------

## Defective Storage Engine

Currently, TimescaleDB's experimental storage engine Hypercore has been proven to have defects, with cases of VACUUM being unable to reclaim leading to XID wraparound failures.
Users using this feature should migrate to PostgreSQL native tables or TimescaleDB's default engine promptly.

Detailed introduction: [PG New Storage Engine Failure Case](https://mp.weixin.qq.com/s/LdZVVyOj4BA9C892I25lQw) (Chinese)

