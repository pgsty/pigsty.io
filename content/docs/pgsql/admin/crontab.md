---
title: Manage PostgreSQL Cron Jobs
linktitle: Crontab Admin
weight: 80
description: Configure crontab to schedule PostgreSQL backups, vacuum freeze, and bloat maintenance tasks
icon: fa-solid fa-clock-rotate-left
module: [PGSQL]
categories: [Admin]
---

Pigsty uses crontab to manage scheduled tasks for routine backups, freezing aging transactions, and reorganizing bloated tables and indexes.


## Quick Reference

| Operation                                       | Quick Command                        | Description                                       |
|:------------------------------------------------|:-------------------------------------|:--------------------------------------------------|
| [**Configure Cron Jobs**](#configure-cron-jobs) | `./pgsql.yml -t pg_crontab -l <cls>` | Apply pg_crontab config                           |
| [**View Cron Jobs**](#view-cron-jobs)           | `crontab -l`                         | View as postgres user                             |
| [**Physical Backup**](#pg-backup)               | `pg-backup [full\|diff\|incr]`       | Execute backup with pgBackRest                    |
| [**Transaction Freeze**](#pg-vacuum)            | `pg-vacuum [database...]`            | Freeze aging transactions, prevent XID wraparound |
| [**Bloat Maintenance**](#pg-repack)             | `pg-repack [database...]`            | Online reorganize bloated tables and indexes      |
{.full-width}

For other management tasks, see: [**Backup Management**](/docs/pgsql/backup/), [**Monitoring System**](/docs/pgsql/monitor/), [**HA Management**](/docs/pgsql/admin/patroni).


----------------

## Configure Cron Jobs

Use the [**`pg_crontab`**](/docs/pgsql/param/#pg_crontab) parameter to configure cron jobs for the PostgreSQL database superuser ([**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu), default `postgres`).

**Example Configuration**

The following `pg-meta` cluster configures a daily full backup at 1:00 AM, while `pg-test` configures weekly full backup on Monday with incremental backups on other days.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_crontab:
      - '00 01 * * * /pg/bin/pg-backup'
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
  vars:
    pg_cluster: pg-test
    pg_crontab:
      - '00 01 * * 1            /pg/bin/pg-backup full'
      - '00 01 * * 2,3,4,5,6,7  /pg/bin/pg-backup'
```

**Recommended Maintenance Schedule**

```yaml
pg_crontab:
  - '00 01 * * * /pg/bin/pg-backup full'    # Daily full backup at 1:00 AM
  - '00 03 * * 0 /pg/bin/pg-vacuum'         # Weekly vacuum freeze on Sunday at 3:00 AM
  - '00 04 * * 1 /pg/bin/pg-repack'         # Weekly repack on Monday at 4:00 AM
```

| Task          | Frequency    | Timing    | Description                |
|:------------|:------|:------|:------------------|
| `pg-backup` | Daily    | Early morning    | Full or incremental backup, depending on business needs   |
| `pg-vacuum` | Weekly  | Sunday early morning  | Freeze aging transactions, prevent XID wraparound  |
| `pg-repack` | Weekly/Monthly | Off-peak hours | Reorganize bloated tables/indexes, reclaim space      |
{.full-width}

{{% alert title="Primary Only Execution" color="secondary" %}}
The `pg-backup`, `pg-vacuum`, and `pg-repack` scripts automatically detect the current node role. Only the primary will actually execute; replicas will exit directly. Therefore, you can safely configure the same cron jobs on all nodes, and after failover, the new primary will automatically continue executing maintenance tasks.
{{% /alert %}}


----------------

## Apply Cron Jobs

Cron jobs are automatically written to the default location for the corresponding OS distribution when the [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) playbook executes (the `pg_crontab` task):

- EL (RHEL/Rocky/Alma): `/var/spool/cron/postgres`
- Debian/Ubuntu: `/var/spool/cron/crontabs/postgres`

{{< tabpane text=true persist=header >}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l pg-meta -t pg_crontab     # Apply pg_crontab config to specified cluster
./pgsql.yml -l 10.10.10.10 -t pg_crontab # Target specific host only
```
{{% /tab %}}
{{% tab header="Manual" %}}
```bash
# Edit cron jobs as postgres user
sudo -u postgres crontab -e

# Or edit crontab file directly
sudo vi /var/spool/cron/postgres           # EL series
sudo vi /var/spool/cron/crontabs/postgres  # Debian/Ubuntu
```
{{% /tab %}}
{{< /tabpane >}}

Each playbook execution will **fully overwrite** the cron job configuration.


----------------

## View Cron Jobs

Execute the following command as the [**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu) OS user to view cron jobs:

```bash
crontab -l

# Pigsty Managed Crontab for postgres
SHELL=/bin/bash
PATH=/usr/pgsql/bin:/pg/bin:/usr/local/bin:/usr/bin:/usr/sbin:/bin:/sbin
MAILTO=""
00 01 * * * /pg/bin/pg-backup
```

If you're not familiar with crontab syntax, refer to [Crontab Guru](https://crontab.guru/) for explanations.


----------------

## pg-backup

`pg-backup` is Pigsty's physical backup script based on [**pgBackRest**](https://pgbackrest.org/), supporting full, differential, and incremental backup modes.

**Basic Usage**

```bash
pg-backup                # Execute incremental backup (default), auto full if no existing full backup
pg-backup full           # Execute full backup
pg-backup diff           # Execute differential backup (based on most recent full backup)
pg-backup incr           # Execute incremental backup (based on most recent any backup)
```

**Backup Types**

| Type   | Parameter     | Description                        |
|:-----|:-------|:--------------------------|
| Full Backup | `full` | Complete backup of all data, only this backup needed for recovery        |
| Differential | `diff` | Backup changes since last full backup, recovery needs full + diff |
| Incremental | `incr` | Backup changes since last any backup, recovery needs complete chain  |
{.full-width}

**Execution Requirements**

- Script must run on **primary** as **postgres** user
- Script auto-detects current node role, exits (exit 1) when run on replica
- Auto-retrieves stanza name from `/etc/pgbackrest/pgbackrest.conf`

**Common Cron Configurations**

{{< tabpane text=true persist=header >}}
{{% tab header="Daily Full" %}}
```yaml
pg_crontab:
  - '00 01 * * * /pg/bin/pg-backup full'    # Daily full backup at 1:00 AM
```
{{% /tab %}}
{{% tab header="Weekly Full + Daily Incr" %}}
```yaml
pg_crontab:
  - '00 01 * * 1            /pg/bin/pg-backup full'  # Monday full backup
  - '00 01 * * 2,3,4,5,6,7  /pg/bin/pg-backup'       # Other days incremental
```
{{% /tab %}}
{{% tab header="Weekly Full + Daily Diff" %}}
```yaml
pg_crontab:
  - '00 01 * * 1            /pg/bin/pg-backup full'  # Monday full backup
  - '00 01 * * 2,3,4,5,6,7  /pg/bin/pg-backup diff'  # Other days differential
```
{{% /tab %}}
{{< /tabpane >}}

For more backup and recovery operations, see the [**Backup Management**](/docs/pgsql/backup/) section.


----------------

## pg-vacuum

`pg-vacuum` is Pigsty's transaction freeze script for executing `VACUUM FREEZE` operations to prevent database shutdown from transaction ID (XID) wraparound.

**Basic Usage**

{{< tabpane text=true persist=header >}}
{{% tab header="Basic" %}}
```bash
pg-vacuum                    # Freeze aging tables in all databases
pg-vacuum mydb               # Process specified database only
pg-vacuum mydb1 mydb2        # Process multiple databases
```
{{% /tab %}}
{{% tab header="Options" %}}
```bash
pg-vacuum -n mydb            # Dry run mode, display only without executing
pg-vacuum -a 80000000 mydb   # Use custom age threshold (default 100M)
pg-vacuum -r 50 mydb         # Use custom aging ratio threshold (default 40%)
```
{{% /tab %}}
{{% tab header="Manual SQL" %}}
```sql
-- Execute VACUUM FREEZE on entire database
VACUUM FREEZE;

-- Execute VACUUM FREEZE on specific table
VACUUM FREEZE schema.table_name;
```
{{% /tab %}}
{{< /tabpane >}}

**Command Options**

| Option              | Description                 | Default         |
|:----------------|:-------------------|:------------|
| `-h, --help`    | Show help message             | -           |
| `-n, --dry-run` | Dry run mode, display only        | false       |
| `-a, --age`     | Age threshold, tables exceeding need freeze    | 100000000   |
| `-r, --ratio`   | Aging ratio threshold, full freeze if exceeded (%) | 40          |
{.full-width}

**Logic**

1. Check database `datfrozenxid` age, skip database if below threshold
2. Calculate aging page ratio (percentage of table pages exceeding age threshold of total pages)
3. If aging ratio > 40%, execute full database `VACUUM FREEZE ANALYZE`
4. Otherwise, only execute `VACUUM FREEZE ANALYZE` on tables exceeding age threshold

Script sets `vacuum_cost_limit = 10000` and `vacuum_cost_delay = 1ms` to control I/O impact.

**Execution Requirements**

- Script must run on **primary** as **postgres** user
- Uses file lock `/tmp/pg-vacuum.lock` to prevent concurrent execution
- Auto-skips `template0`, `template1`, `postgres` system databases

**Common Cron Configuration**

```yaml
pg_crontab:
  - '00 03 * * 0 /pg/bin/pg-vacuum'     # Weekly Sunday at 3:00 AM
```


----------------

## pg-repack

`pg-repack` is Pigsty's bloat maintenance script based on the [**pg_repack**](https://reorg.github.io/pg_repack/) extension for online reorganization of bloated tables and indexes.

**Basic Usage**

{{< tabpane text=true persist=header >}}
{{% tab header="Basic" %}}
```bash
pg-repack                    # Reorganize bloated tables and indexes in all databases
pg-repack mydb               # Reorganize specified database only
pg-repack mydb1 mydb2        # Reorganize multiple databases
```
{{% /tab %}}
{{% tab header="Options" %}}
```bash
pg-repack -n mydb            # Dry run mode, display only without executing
pg-repack -t mydb            # Reorganize tables only
pg-repack -i mydb            # Reorganize indexes only
pg-repack -T 30 -j 4 mydb    # Custom lock timeout (seconds) and parallelism
```
{{% /tab %}}
{{% tab header="Manual" %}}
```bash
# Use pg_repack command directly to reorganize specific table
pg_repack dbname -t schema.table

# Use pg_repack command directly to reorganize specific index
pg_repack dbname -i schema.index
```
{{% /tab %}}
{{< /tabpane >}}

**Command Options**

| Option              | Description               | Default   |
|:----------------|:-----------------|:------|
| `-h, --help`    | Show help message           | -     |
| `-n, --dry-run` | Dry run mode, display only      | false |
| `-t, --table`   | Reorganize tables only             | false |
| `-i, --index`   | Reorganize indexes only            | false |
| `-T, --timeout` | Lock wait timeout (seconds)       | 10    |
| `-j, --jobs`    | Parallel jobs            | 2     |
{.full-width}

**Auto-Selection Thresholds**

Script auto-selects objects to reorganize based on table/index size and bloat ratio:

**Table Bloat Thresholds**

| Size Range        | Bloat Threshold | Max Count |
|:------------|:-----:|:----:|
| < 256MB     | > 40% |  64  |
| 256MB - 2GB | > 30% |  16  |
| 2GB - 8GB   | > 20% |  4   |
| 8GB - 64GB  | > 15% |  1   |
{.full-width}

**Index Bloat Thresholds**

| Size Range        | Bloat Threshold | Max Count |
|:------------|:-----:|:----:|
| < 128MB     | > 40% |  64  |
| 128MB - 1GB | > 35% |  16  |
| 1GB - 8GB   | > 30% |  4   |
| 8GB - 64GB  | > 20% |  1   |
{.full-width}

Tables/indexes over 64GB are skipped with a warning and require manual handling.

**Execution Requirements**

- Script must run on **primary** as **postgres** user
- Requires `pg_repack` extension installed (installed by default in Pigsty)
- Requires `pg_table_bloat` and `pg_index_bloat` views in `monitor` schema
- Uses file lock `/tmp/pg-repack.lock` to prevent concurrent execution
- Auto-skips `template0`, `template1`, `postgres` system databases

{{% alert title="Lock Waiting" color="info" %}}
Normal reads/writes are not affected during reorganization, but the **final switch moment** requires acquiring AccessExclusive lock on the table, blocking all access. For high-throughput workloads, recommend running during off-peak hours or maintenance windows.
{{% /alert %}}

**Common Cron Configuration**

```yaml
pg_crontab:
  - '00 04 * * 1 /pg/bin/pg-repack'     # Weekly Monday at 4:00 AM
```

You can confirm database bloat through Pigsty's [**PGCAT Database - Table Bloat**](https://demo.pigsty.io/d/pgcat-database) panel and select high-bloat tables and indexes for reorganization.

For more details see: [**Managing Relation Bloat**](https://vonng.com/pg/bloat/)


----------------

## Remove Cron Jobs

When using the [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml) playbook to remove a PostgreSQL cluster, it automatically deletes the postgres user's crontab file.

```bash
./pgsql-rm.yml -l <cls> -t pg_crontab    # Remove cron jobs only
./pgsql-rm.yml -l <cls>                  # Remove entire cluster (including cron jobs)
```


----------------

## Related Documentation

- [**Backup Management**](/docs/pgsql/backup/): PostgreSQL backup and recovery
- [**Monitoring System**](/docs/pgsql/monitor/): PostgreSQL monitoring and alerting
- [**Cluster Management**](/docs/pgsql/admin/cluster/): Cluster creation, scaling, and teardown
- [**Patroni Management**](/docs/pgsql/admin/patroni/): HA cluster management
