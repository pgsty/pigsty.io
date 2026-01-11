---
title: Cluster Maintenance
linkTitle: Maintenance
weight: 80
description: Common system maintenance tasks, handling table bloat, periodic VACUUM
icon: fa-solid fa-spray-can-sparkles
module: [PGSQL]
categories: [Task]
tags: [SOP, Maintenance]
---

To ensure Pigsty and PostgreSQL clusters run healthily and stably, some routine maintenance work is required.


--------

## Regular Monitoring Review

Pigsty provides an out-of-the-box monitoring platform. We recommend you browse the monitoring dashboards once a day to keep track of system status.
At a minimum, we recommend you review the monitoring at least once a week, paying attention to alert events that occur, which can help you avoid most failures and issues in advance.

Here is a list of pre-defined [alert rules](https://demo.pigsty.io/alerting/list) in Pigsty.


--------

## Failover Follow-up

Pigsty's high availability architecture allows PostgreSQL clusters to automatically perform primary-replica switchovers, meaning operations and DBAs don't need to intervene or respond immediately.
However, users still need to perform the following follow-up work at an appropriate time (e.g., the next business day), including:

- Investigate and confirm the cause of the failure to prevent recurrence
- Restore the cluster's original primary-replica topology as appropriate, or modify the configuration manifest to match the new primary-replica status
- Refresh load balancer configuration through `bin/pgsql-svc` to update service routing status
- Refresh the cluster's HBA rules through `bin/pgsql-hba` to avoid primary-replica-specific rule drift
- If necessary, use `bin/pgsql-rm` to remove the failed server and expand with a new replica through `bin/pgsql-add`


--------

## Table Bloat Management

Long-running PostgreSQL will experience "table bloat" / "index bloat" phenomena, leading to system performance degradation.

Regularly using [`pg_repack`](https://reorg.github.io/pg_repack/) to perform online rebuilding of tables and indexes helps maintain PostgreSQL's good performance.
Pigsty has already installed and enabled this extension by default in all databases, so you can use it directly.

You can use Pigsty's [PGCAT Database - Table Bloat](https://demo.pigsty.io/d/pgcat-database) panel to
confirm table bloat and index bloat in the database. Select tables and indexes with high bloat rates (larger tables with bloat rates above 50%) and use `pg_repack` for online reorganization:

```bash
pg_repack dbname -t schema.table
```

Reorganization does not affect normal read and write operations, but the **switching moment** after reorganization completes requires an AccessExclusive lock on the table, blocking all access.
Therefore, for high-throughput businesses, it's recommended to perform this during off-peak periods or maintenance windows. For more details, please refer to: [Managing Relation Bloat](https://vonng.com/pg/bloat/)


### Using the pg-repack Script

Pigsty provides an out-of-the-box `/pg/bin/pg-repack` script that can automatically detect and reorganize bloated tables and indexes.
This script must run on the primary as the `postgres` user, and will automatically identify bloated tables and indexes for online reorganization.

```bash
pg-repack [options] [database...]

# Options:
#   -h, --help          Show help message
#   -n, --dry-run       Show what would be done without executing
#   -t, --table         Repack tables only
#   -i, --index         Repack indexes only
#   -T, --timeout SEC   Lock wait timeout in seconds (default: 10)
#   -j, --jobs NUM      Number of parallel jobs (default: 2)

# Examples:
pg-repack                    # Repack bloated tables and indexes in all databases
pg-repack mydb               # Repack specific database only
pg-repack -n mydb            # Dry-run mode, show without executing
pg-repack -t mydb            # Repack tables only
pg-repack -i mydb            # Repack indexes only
pg-repack -T 30 -j 4 mydb    # Custom lock timeout and parallelism
```

The script automatically selects objects to reorganize based on table and index size and bloat ratio:

| Type | Size Range | Bloat Threshold | Max Count |
|:--:|:--:|:--:|:--:|
| Small | < 256MB | > 40% | 64 |
| Medium | 256MB - 2GB | > 30% | 16 |
| Large | 2GB - 8GB | > 20% | 4 |
| XLarge | 8GB - 64GB | > 15% | 1 |

Tables larger than 64GB are skipped with a hint, requiring manual handling. The script uses file locks to prevent duplicate runs and cancels vacuum/analyze queries that might cause lock contention before execution.


--------

## VACUUM FREEZE

Freezing expired transaction IDs (VACUUM FREEZE) is an important PostgreSQL maintenance task used to prevent transaction ID (XID) exhaustion leading to downtime.
Although PostgreSQL already provides an automatic vacuum (AutoVacuum) mechanism, for high-standard production environments,
we still recommend combining both automatic and manual approaches, regularly executing database-wide VACUUM FREEZE to ensure XID safety.

You can manually execute VACUUM FREEZE on a database using the following commands:

```sql
-- Execute VACUUM FREEZE on the entire database
VACUUM FREEZE;

-- Execute VACUUM FREEZE on a specific table
VACUUM FREEZE schema.table_name;
```


### Using the pg-vacuum Script

Pigsty provides an out-of-the-box `/pg/bin/pg-vacuum` script that can intelligently execute VACUUM FREEZE operations.
This script must run on the primary as the `postgres` user, and will automatically decide the freezing strategy based on table age.

```bash
pg-vacuum [options] [database...]

# Options:
#   -h, --help          Show help message
#   -n, --dry-run       Show what would be done without executing
#   -a, --age THRESH    Age threshold (default: 100000000, i.e., 100 million)
#   -r, --ratio PCT     Aging ratio threshold (default: 40)

# Examples:
pg-vacuum                    # Freeze aging tables in all databases
pg-vacuum mydb               # Process specific database only
pg-vacuum -n mydb            # Dry-run mode, show without executing
pg-vacuum -a 80000000 mydb   # Use custom age threshold
```

The script's logic:

1. Check the database's `datfrozenxid` age, skip if below threshold
2. Calculate aging page ratio (percentage of table pages exceeding age threshold)
3. If aging ratio > 40%, execute full database `VACUUM FREEZE ANALYZE`
4. Otherwise, execute `VACUUM FREEZE ANALYZE` only on tables exceeding age threshold

The script sets `vacuum_cost_limit = 10000` and `vacuum_cost_delay = 1ms` to control I/O impact,
records table age changes before and after execution, and uses file locks to prevent duplicate runs.


--------

## Automated Maintenance

For production environments, we recommend configuring scheduled tasks to automatically execute maintenance scripts. Pigsty provides the [`node_crontab`](/docs/node/param/#node_crontab) parameter,
which allows declaring scheduled tasks in cluster configuration, automatically deployed to node's `/etc/crontab` by Ansible playbooks.


### Recommended Maintenance Schedule

Here is a typical automated maintenance configuration example for PostgreSQL clusters:

```yaml
# Add to cluster configuration vars
node_crontab:
  - '00 03 * * 0 postgres /pg/bin/pg-vacuum'     # Execute vacuum freeze every Sunday at 3 AM
  - '00 04 * * 1 postgres /pg/bin/pg-repack'     # Execute repack every Monday at 4 AM
```

Maintenance strategy recommendations:

| Task | Frequency | Timing | Description |
|:--|:--|:--|:--|
| `pg-vacuum` | Weekly | Sunday early morning | Freeze aging transactions, prevent XID wraparound |
| `pg-repack` | Weekly/Monthly | Off-peak hours | Reorganize bloated tables/indexes, reclaim space |
| `pg-backup full` | Daily/Weekly | Early morning | Full backup, depending on business needs |


### Complete Configuration Example

Here is a PostgreSQL cluster configuration example with comprehensive maintenance plan:

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
    10.10.10.11: { pg_seq: 2, pg_role: replica }
    10.10.10.12: { pg_seq: 3, pg_role: replica }
  vars:
    pg_cluster: pg-meta
    # ... other configurations ...

    # Scheduled maintenance tasks (primary-only tasks auto-detect role)
    node_crontab:
      - '00 01 * * * postgres /pg/bin/pg-backup full'  # Full backup daily at 1 AM
      - '00 03 * * 0 postgres /pg/bin/pg-vacuum'       # Vacuum every Sunday at 3 AM
      - '00 04 * * 1 postgres /pg/bin/pg-repack'       # Repack every Monday at 4 AM
```


### Manual Crontab Configuration

If you want to manually add scheduled tasks on deployed clusters, you can directly edit the crontab on the primary:

```bash
# Edit crontab as postgres user
sudo -u postgres crontab -e

# Or append directly to system crontab
sudo tee -a /etc/crontab <<-'EOF'
00 03 * * 0 postgres /pg/bin/pg-vacuum
00 04 * * 1 postgres /pg/bin/pg-repack
EOF
```


### Important Notes

- **Primary-only execution**: The `pg-repack` and `pg-vacuum` scripts auto-detect the current node role, only executing maintenance operations on the primary while exiting immediately on replicas. This makes it safe to configure the same scheduled tasks on all nodes.
- **Stagger execution times**: Different maintenance tasks should be staggered to avoid simultaneous I/O pressure.
- **Off-peak hours**: Schedule maintenance tasks during off-peak hours (e.g., early morning), especially `pg-repack` operations.
- **Monitor logs**: Scheduled task output is recorded in system logs, viewable via `journalctl` or `/var/log/cron`.
- **File lock protection**: Both scripts use file locks (`/tmp/pg-repack.lock` and `/tmp/pg-vacuum.lock`) to prevent duplicate runs.


### Applying Configuration Changes

After configuring scheduled tasks, use the following commands to apply the configuration to nodes:

```bash
# Apply node_crontab configuration to specified cluster
./node.yml -l pg-meta -t node_crontab

# Or target specific hosts only
./node.yml -l 10.10.10.10 -t node_crontab
```

If you want to append rather than overwrite existing scheduled tasks, set [`node_crontab_overwrite`](/docs/node/param/#node_crontab_overwrite) to `false`.
