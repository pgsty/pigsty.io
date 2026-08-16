---
title: Monitoring
weight: 5015
description: MySQL metric collection, Grafana dashboards, alert rules, and log queries.
icon: fa-solid fa-chart-line
module: [MYSQL]
categories: [Reference]
aliases: [/docs/pilot/mysql/monitor]
---

The MYSQL module plugs into Pigsty's observability stack: metrics flow through mysqld_exporter into VictoriaMetrics, error logs flow through Journald/Vector into VictoriaLogs, Grafana ships 5 dashboards, and vmalert loads 68 recording rules plus 27 alert rules.


--------

## Collection Architecture

Each MySQL node runs one `mysqld_exporter` (port `9104`) using the least-privilege monitor account (`dbuser_monitor@'127.0.0.1'`). Deployment writes a file-based service-discovery target on the Infra node:

```text
/infra/targets/mysql/<instance>.yml     # e.g. my-test-1.yml
```

The VictoriaMetrics `mysql` scrape job consumes this directory. `mysql_exporter_enabled: false` converges the target to an empty list; only `mysql-rm.yml` deletes target files.

Enabled collectors include global status/variables, binlog size, InnoDB metrics, the process list, performance-schema statement digests (top 50), table/index I/O waits, and MGR membership plus replication statistics.


--------

## Label Model

All MySQL metrics carry a consistent label set:

| Label | Meaning | Example |
|:---|:---|:---|
| `job` | Scrape job | `mysql` |
| `cls` | Cluster name | `my-test` |
| `ins` | Instance name | `my-test-1` |
| `ip` | Member address | `10.10.10.11` |
| `topology` | Topology type | `innodb_cluster` / `standalone` |
{.full-width}

Derived rules are named `mysql:ins:*` (instance level) and `mysql:cls:*` (cluster level); the full dictionary is in [Metrics](/docs/mysql/metric).


--------

## Grafana Dashboards

| Dashboard | Purpose |
|:---|:---|
| [MySQL Overview](https://demo.pigsty.io/ui/d/mysql-overview) | Fleet view: cluster inventory, health, QPS/TPS, active alerts, instance list |
| [MySQL Cluster](https://demo.pigsty.io/ui/d/mysql-cluster) | One cluster: member states, workload, node resources, cluster logs |
| [MySQL Instance](https://demo.pigsty.io/ui/d/mysql-instance) | One instance: connections, statements, InnoDB, temp tables, locks, logs |
| [MySQL Group Replication](https://demo.pigsty.io/ui/d/mysql-replication) | MGR deep dive: roles, certification/applier queues, flow control, read-only safety, GR logs |
| [MySQL Alert](https://demo.pigsty.io/ui/d/mysql-alert) | Alert summary and key platform logs |
{.full-width}

Cluster health at a glance: `mysql:cls:health` is **2 (healthy) / 1 (degraded but writable) / 0 (critical or unwritable)** — the Overview's Healthy Clusters stat and Cluster Health timeline are built on it.

The Group Replication dashboard is only meaningful for `innodb_cluster` topologies; selecting a standalone cluster legitimately shows No data on MGR panels.


--------

## Alert Rules

The 27 alert rules are tiered by `severity` (CRIT / WARN / INFO). The ones to page on:

### Availability and Cluster State

| Alert | Severity | Condition |
|:---|:---:|:---|
| `MySQLInstanceDown` | CRIT | Connection probe failing for 1m |
| `MySQLClusterNoPrimary` | CRIT | No ONLINE primary for 1m |
| `MySQLClusterQuorumLost` | CRIT | ONLINE members below majority for 1m |
| `MySQLClusterMultiplePrimary` | CRIT | More than one primary for 30s (split-brain signal) |
| `MySQLSecondaryWritable` | CRIT | A secondary writable for 2m (divergence risk) |
| `MySQLClusterMemberOffline` | WARN | A declared member out of the group for 5m |
| `MySQLPrimaryReadOnly` | WARN | Primary read-only for 5m |
| `MySQLExporterDown` | WARN | Scrape failing for 2m |
{.full-width}

### Capacity and Performance

Connection pressure (`MySQLConnectionsHigh` WARN at 80% / `MySQLConnectionsCritical` CRIT at 95%), replication queues (`MySQLGRQueueHigh` WARN / `MySQLGRQueueCritical` CRIT), flow control (`MySQLGRFlowControlHigh`), InnoDB signals (`MySQLBufferPoolWaits`, `MySQLInnoDBLogWaits`, `MySQLRedoCapacityHigh`, `MySQLDeadlocksHigh`, `MySQLHistoryListLarge`), and INFO-level hints for slow queries, disk temp tables, full joins, buffer-pool hit ratio, and recent restarts.

Observed behavior from testing: a primary crash-failover (~20s) only produces pending alerts, no false pages; a genuine complete outage drives `ClusterNoPrimary` and `QuorumLost` to firing within 2 minutes.


--------

## Log Queries

MySQL error logs are written twice: to `/var/log/mysql/error.log` and via syslog → Journald → Vector → VictoriaLogs. Entries carry `app=mysqld-<instance>`, so the dashboard log panels work out of the box, and LogsQL queries are straightforward:

```bash
# Recent errors from one instance
curl -s http://<infra>:9428/select/logsql/query \
  -d 'query=app:mysqld-my-test-1 level:err _time:1h'

# All MySQL-related logs for a cluster, including backup runs
curl -s http://<infra>:9428/select/logsql/query \
  -d 'query=job:syslog cls:my-test (app:~"mysqld-" OR unit:mysql-backup) _time:1h | limit 100'
```

Note the log `cls` label is the **node** cluster name (`node_cluster`) — keep `node_cluster` aligned with `mysql_cluster`, as the configuration examples do, so metric and log labels agree.

Known boundaries:

- The **slow query log** (`slow.log`, 1s threshold) stays on local disk and is not shipped to VictoriaLogs — inspect it on the instance, or use the statement-digest metrics (`mysql:ins:statement_latency` and friends);
- **Router runtime logs** live in `/var/log/mysqlrouter/` and are also local-only.


--------

## Verify the Pipeline

Self-check every hop after deployment:

```bash
# Exporter itself
curl -s http://<member>:9104/metrics | grep -E '^mysql_up '

# VictoriaMetrics scrape and recording rules
curl -s 'http://<infra>:8428/api/v1/query?query=mysql_up'
curl -s 'http://<infra>:8428/api/v1/query?query=mysql:cls:health'

# vmalert rule groups (expect mysql-rules and mysql-alerts)
curl -s 'http://<infra>:8880/api/v1/rules' | grep -o '"name":"mysql-[a-z]*"'

# Log ingestion
curl -s 'http://<infra>:9428/select/logsql/query' -d 'query=app:~"mysqld-" _time:1h | stats by (app) count()'
```
