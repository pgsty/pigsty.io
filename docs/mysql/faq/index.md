# FAQ

> Frequently asked questions and troubleshooting for the Pigsty MySQL pilot module.

---

LLMS index: [llms.txt](/llms.txt)

---

## How mature is the MYSQL module?

This pilot targets simple, low-cost MySQL clusters. Deployment/convergence, HA failover, daily backups, and monitoring/alerts have systematic tests, including fault injection and complete-outage exercises. Destructive recovery remains manual, with [procedures](/docs/mysql/admin). It has no PITR, VIP/DNS access layer, or automatic scaling; its scope is smaller than PGSQL. Before production, validate your requirements and rehearse recovery.


## Why is MySQL fixed at 8.4? Can I pick a version?

The fixed platform pins server, client, Shell, Router, and XtraBackup to 8.4 LTS. This keeps compatibility predictable and avoids a broad version test matrix. That tradeoff keeps the pilot simple. Use another tool for other versions or extensive customization.


## Why only 1 or 3 nodes? How do I scale?

Topology is standalone or three-node single-primary InnoDB Cluster. Preflight rejects other counts, and datadir identity blocks in-place 1→3 conversion. Dynamic membership would add quorum management, Router re-bootstrap, and convergence complexity beyond this pilot's scope.

Scaling paths:

- **Vertical**: move to bigger machines one at a time via [same-address replacement](/docs/mysql/admin#replace-a-failed-member) (rolling hardware refresh);
- **Standalone → HA**: build a new three-node cluster and migrate logically (`mysqldump` or `mysqlsh util.dumpInstance`);
- **Read scaling**: send read-only traffic to `6447`, shared by the two secondaries.


## Why does CREATE TABLE fail with ERROR 3750 (primary key required)?

`sql_require_primary_key=ON` is the default. Tables without primary keys are **read-only under Group Replication** and block AdminAPI disaster recovery. Rejecting them at creation avoids recovery failures. Give every table a primary key. Override only for a legacy system that cannot change:

```yaml
mysql_parameters: { sql_require_primary_key: false }
```

Standalone instances keep the same default so they stay HA-portable.


## Why is Ubuntu/Debian ARM64 rejected?

Oracle APT provides no MySQL 8.4 `arm64` packages. On ARM, including Apple Silicon VMs, use EL 9/10 (Rocky/Alma). Oracle YUM supports `aarch64` fully.


## Which port should clients use? Is TLS mandatory?

For HA, use any member's Router on `6446` for read/write or `6447` for read-only. Routers follow failover. Standalone clients use `3306`. The server requires TLS through `require_secure_transport=ON`; plaintext fails with `ERROR 3159`. Default `PREFERRED` negotiates TLS, while explicit `DISABLED` fails. Prefer `VERIFY_CA` with `/etc/pki/ca.crt`.

Each node has its own Router, without a shared VIP. List every member's `6446` in a multi-host DSN to tolerate node failure.


## The primary moved. Will it move back automatically?

No. `mysql_seq=1` sets bootstrap order only. MGR can elect any runtime primary after failover or rolling restart. Reruns preserve this placement. Use [`setPrimaryInstance`](/docs/mysql/admin#switchover) for deliberate placement.


## A member went down. What do I do?

Usually no action is needed. Systemd restarts `mysqld`, which rejoins automatically. Primary failover and recovery take approximately 20 seconds. If a member remains `OFFLINE` after network recovery or `STOP GROUP_REPLICATION`, rerun `./mysql.yml -l <cluster>`. If rejoin fails, follow the reported cause and next step.


## All three nodes are down. How do I recover?

Complete outage requires manual recovery to prevent split-brain. Run `dba.rebootClusterFromCompleteOutage()` on the most advanced member, then rerun the playbook for the others. See [complete-outage recovery](/docs/mysql/admin#recover-from-a-complete-outage). The `mysql.yml` failure message prints the same instructions.


## Where are backups stored? Can I restore to a point in time?

**Daily full physical backups** reside at `/data/backups/mysql/<cluster>/` on the **current primary**. After failover, new backups use the new primary; compare all members for the latest. There are no incremental chains, binlog archives, or **PITR**. Standalone can recover only to its latest backup, losing up to one day of writes. HA mainly depends on three synchronized replicas, with backups for final recovery and full rebuilds. See [Physical Restore](/docs/mysql/admin#restore-from-physical-backup), and synchronize backup directories yourself for off-site protection.


## Will I be alerted if backups fail?

Not yet. Backup-freshness metrics and alerts are a known gap. VictoriaLogs receives `unit:mysql-backup` logs, also visible in the Instance dashboard Router / Backup Logs panel. Add external log checks for important environments and rehearse restoration regularly.


## Why are some `mysql_parameters` keys rejected?

The platform owns identity (`server_id`, `datadir`, ports, …), replication (`gtid_mode`, `log_bin`, `group_replication_*`), and TLS settings. Overrides could break identity or security guarantees. Preflight rejects both `-` and `_` spellings. Other options are permitted and checked by `mysqld --validate-config`. See the [reserved list](/docs/mysql/param#mysql_parameters).


## Does changing parameters cause downtime?

Configuration changes roll secondaries first, without client interruption, then restart the primary. One automatic failover pauses writes for approximately 3–4 seconds in tests. Degraded clusters reject rolling restarts to avoid adding changes during an outage. Schedule a window for failover-sensitive workloads.


## How do I change root or platform passwords?

- `mysql_monitor_password`: Update inventory and rerun. Exporter configuration updates too.
- `mysql_root_password`: Implicit resets fail to prevent silent misconfiguration. Run `ALTER USER 'root'@'localhost' ...` manually, then update inventory and rerun.
- `mysql_cluster_password`: HA metadata and Router keyrings bind it. Ordinary reruns reject rotation, and no automated HA procedure exists. Standalone rotation works normally. If necessary in HA, use AdminAPI, synchronize member credential files, then update inventory.


## How do I resurrect a retired cluster? What if the marker is deleted by mistake?

`mysql-rm.yml` retains all data and writes a retirement marker. Remove `/var/lib/mysql/.pigsty-mysql-retired` on each member and rerun `mysql.yml` to revive it ([details](/docs/mysql/admin#retire-and-resurrect-a-cluster)). This suffices for standalone. HA also needs [quorum rebuilding](/docs/mysql/admin#recover-from-a-complete-outage). The retirement marker prevents accidental revival. Separate `.pigsty-mysql-initialized` ownership checks still prevent assigning data to another cluster.


## Why doesn't `conf/mysql.yml` match this module?

That template is **OpenHalo**, a PostgreSQL kernel with MySQL wire compatibility (`pg_mode: mysql`). It is unrelated to native MYSQL, whose template is [`conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml). Use this module for native MySQL ecosystem compatibility. Consider OpenHalo for MySQL-protocol applications on PostgreSQL infrastructure.


## The playbook fails with `no ONLINE member holds the cluster`?

This means no reachable ONLINE member carries the cluster. Follow the printed [complete-outage instructions](/docs/mysql/admin#recover-from-a-complete-outage). If members are ONLINE, check coordinator seq-1 connectivity to every member's port 3306. Reconciliation runs there. Also verify TLS trust and `/etc/pki/ca.crt`.


## Monitoring shows no data / blank dashboards?

First run `curl http://<member>:9104/metrics | grep mysql_up`. Then check INFRA files in `/infra/targets/mysql/` and query `up{job="mysql"}` in VictoriaMetrics. Standalone Group Replication panels correctly show No data. See [Monitoring](/docs/mysql/monitor#verify-the-pipeline) for full checks.
