---
title: Maintenance
weight: 2010
description: Common system maintenance tasks
icon: fa-solid fa-broom
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
- Restore the cluster's original primary-replica topology as appropriate, or modify the configuration manifest to match the new primary-replica status.
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

Or set up a scheduled task through crontab, for example, execute every Sunday morning:

```bash
# Execute VACUUM FREEZE on all databases every Sunday at 3 AM
0 3 * * 0 postgres psql -c 'VACUUM FREEZE;' dbname
```
