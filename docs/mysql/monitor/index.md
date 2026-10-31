# Monitoring

> MySQL metric collection, Grafana dashboards, alert rules, and log queries.

---

LLMS index: [llms.txt](/llms.txt)

---

MYSQL sends mysqld_exporter metrics to VictoriaMetrics and Journald/Vector error logs to VictoriaLogs. Grafana supplies five dashboards. vmalert loads 68 recording rules and 27 alerts.


--------

## Collection Architecture

Each node runs `mysqld_exporter` on `9104` with least-privilege `dbuser_monitor@'127.0.0.1'`. Deployment creates a discovery file on the INFRA node:

```text
/infra/targets/mysql/<instance>.yml     # e.g. my-test-1.yml
```

The VictoriaMetrics `mysql` job reads this directory. `mysql_exporter_enabled: false` empties the target list. Only `mysql-rm.yml` removes the file.

Collectors cover global status/variables, binlog size, InnoDB, process lists, top-50 statement digests, table/index I/O waits, MGR membership, and replication statistics.


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

Derived names use `mysql:ins:*` for instances and `mysql:cls:*` for clusters. See [Metrics](/docs/mysql/metric).


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

`mysql:cls:health` reports **2 healthy, 1 degraded but writable, or 0 critical or unwritable**. Overview's Healthy Clusters stat and Cluster Health timeline use it.

Group Replication panels apply only to `innodb_cluster`. No data is expected for standalone clusters.


--------

## Alert Rules

The 27 rules use `severity` CRIT, WARN, or INFO. Use these alerts for paging:

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

Other alerts cover:

- Connections: `MySQLConnectionsHigh` WARN at 80%, `MySQLConnectionsCritical` CRIT at 95%.
- Replication queues: `MySQLGRQueueHigh` WARN and `MySQLGRQueueCritical` CRIT.
- Flow control: `MySQLGRFlowControlHigh`.
- InnoDB: `MySQLBufferPoolWaits`, `MySQLInnoDBLogWaits`, `MySQLRedoCapacityHigh`, `MySQLDeadlocksHigh`, and `MySQLHistoryListLarge`.
- INFO hints: slow queries, disk temporary tables, full joins, buffer-pool hit ratio, and recent restarts.

Tests showed approximately 20-second primary crash failovers produced pending alerts without false pages. Complete outages fired `ClusterNoPrimary` and `QuorumLost` within two minutes.


--------

## Log Queries

MySQL writes errors to `/var/log/mysql/error.log` and through syslog → Journald → Vector → VictoriaLogs. `app=mysqld-<instance>` labels support dashboard panels and LogsQL queries:

```bash
# Recent errors from one instance
curl -s http://<infra>:9428/select/logsql/query \
  -d 'query=app:mysqld-my-test-1 level:err _time:1h'

# All MySQL-related logs for a cluster, including backup runs
curl -s http://<infra>:9428/select/logsql/query \
  -d 'query=job:syslog cls:my-test (app:~"mysqld-" OR unit:mysql-backup) _time:1h | limit 100'
```

Log `cls` uses the **node** cluster, `node_cluster`. Match it to `mysql_cluster`, as examples do, to align metric and log labels.

Known boundaries:

- **Slow queries:** `slow.log`, with a 1s threshold, remains local. Inspect it on the instance or use statement digests such as `mysql:ins:statement_latency`.
- **Router runtime logs:** `/var/log/mysqlrouter/` also remains local.


--------

## Verify the Pipeline

Verify every pipeline stage after deployment:

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
