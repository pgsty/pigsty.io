# FAQ

> Frequently asked questions and troubleshooting for the Pigsty MySQL pilot module.

---

LLMS index: [llms.txt](/llms.txt)

---

## How mature is the MYSQL module?

This pilot module targets simple, affordable MySQL clusters. Deployment convergence, HA failover, complete three-node outage recovery, replacement at the same address, daily physical backups, and monitoring/alerts have been systematically tested. Physical backup copy-back remains manual, with a [runbook](/docs/mysql/admin#restore-from-physical-backup). It does not aim for PGSQL-level completeness: there is no PITR, DNS/HAProxy access layer, or online topology scaling. Local Router and the `NODE` Layer 2 VIP are supported. Validate the module against your requirements and rehearse recovery before production use.

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

Router runs locally on every node. For a single floating endpoint, enable the group's [`NODE`](/docs/node) Layer 2 VIP (`vip_enabled: true`, `vip_address`, `vip_vrid`). The VIP is included in TLS leaf certificate SANs and exposes `<vip>:6446/6447`. Without a VIP, configure a multi-address DSN with all three members' `6446` endpoints to tolerate a node failure.

## The primary moved. Will it move back automatically?

No. `mysql_seq=1` sets bootstrap order only. MGR can elect any runtime primary after failover or rolling restart. Reruns preserve this placement. Use [`setPrimaryInstance`](/docs/mysql/admin#switchover) for deliberate placement.


## A member went down. What do I do?

Usually no action is needed. Systemd restarts `mysqld`, which rejoins automatically. Primary failover and recovery take approximately 20 seconds. If a member remains `OFFLINE` after network recovery or `STOP GROUP_REPLICATION`, rerun `./mysql.yml -l <cluster>`. If rejoin fails, follow the reported cause and next step.


## All three nodes are down. How do I recover?

Once networking and `mysqld` are reachable on all three hosts, run `./mysql.yml -l <cluster>`. The playbook compares GTID sets, runs `dba.rebootClusterFromCompleteOutage()` with `force: false` on the most advanced member, and rejoins the others. If a complete outage also involves lost hosts, leaving fewer than three reachable members, automatic recovery is refused to prevent split brain. Follow [Complete Outage Recovery](/docs/mysql/admin#recover-from-a-complete-outage) on the most advanced survivor.

## Where are backups stored? Can I restore to a point in time?

Backups are **daily full physical backups** on the **current primary**, under `mysql_backup_dir/<cluster>/` (default `/data/backups/mysql/<cluster>/`), retaining the latest `mysql_backup_retention: 3` copies. After failover, new backups follow the new primary, so inspect all members. There are no incrementals or binlog archives, hence **no PITR**. A standalone instance restores to its latest backup, potentially losing a day's writes. HA relies primarily on three-copy synchronous replication; backups provide fallback and full-cluster rebuilds. See [Restore Physical Backup](/docs/mysql/admin#restore-from-physical-backup). Replicate backup directories offsite separately.

## Will I be alerted if backups fail?

Yes. `mysql-backup` writes the latest successful backup timestamp and size to `/var/lib/node_exporter/textfile/mysql.prom`, using `0` if the first backup fails. VictoriaMetrics derives `mysql:cls:backup_time`; no successful backup across the cluster for 30 hours triggers `MySQLBackupStale` (`WARN`). Detailed failed-run XtraBackup logs are under `/var/lib/pigsty/mysql-backup/`, and service logs are available in VictoriaLogs as `unit:mysql-backup`.

## Why are some `mysql_parameters` keys rejected?

The platform owns identity (`server_id`, `datadir`, ports, …), replication (`gtid_mode`, `log_bin`, `group_replication_*`), and TLS settings. Overrides could break identity or security guarantees. Preflight rejects both `-` and `_` spellings. Other options are permitted and checked by `mysqld --validate-config`. See the [reserved list](/docs/mysql/param#mysql_parameters).


## Does changing parameters cause downtime?

Configuration changes roll secondaries first, without client interruption, then restart the primary. One automatic failover pauses writes for approximately 3–4 seconds in tests. Degraded clusters reject rolling restarts to avoid adding changes during an outage. Schedule a window for failover-sensitive workloads.


## How do I change root or platform passwords?

- `mysql_monitor_password`: Update inventory and rerun. Exporter configuration updates too.
- `mysql_root_password`: Implicit resets fail to prevent silent misconfiguration. Run `ALTER USER 'root'@'localhost' ...` manually, then update inventory and rerun.
- `mysql_cluster_password`: HA metadata and Router keyrings bind it. Ordinary reruns reject rotation, and no automated HA procedure exists. Standalone rotation works normally. If necessary in HA, use AdminAPI, synchronize member credential files, then update inventory.

## Does `mysql-rm.yml` Delete Data? How Can I Stop and Restart with Data Retained?

`mysql-rm.yml` defaults to `mysql_rm_data: true`. With `-e mysql_safeguard=false`, it deletes `mysql_data` (default `/data/mysql`) and managed configuration, but **always retains `mysql_backup_dir` (`/data/backups/mysql`)**. To stop temporarily with data intact, select the entire cluster and add `-e mysql_rm_data=false`; see [Stop with Data Retained or Destroy a Cluster](/docs/mysql/admin#stop-with-data-retained-or-destroy-a-cluster). This version no longer writes `.pigsty-mysql-retired`. Rerun `./mysql.yml -l <cluster>` to restart in place and recover quorum automatically.

## How Does the OpenHalo Template Relate to This Module?

[`conf/fork/halo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/fork/halo.yml) is the **OpenHalo** template: MySQL wire protocol compatibility on PostgreSQL (`pg_mode: mysql`), unrelated to native MYSQL. This module uses [`conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml). Use native MYSQL for the MySQL 8.4 ecosystem and InnoDB Cluster; evaluate OpenHalo when selected MySQL protocol applications need to run on PGSQL infrastructure.

## Why Does the Playbook Refuse Complete-Outage Recovery?

If there are no `ONLINE` members and **some declared hosts are unreachable**, the playbook cannot determine whether they contain newer GTID transactions, so it refuses automatic `rebootClusterFromCompleteOutage`. Restore connectivity and rerun `./mysql.yml -l <cluster>` when possible; with all three reachable, it selects the highest GTID automatically. If a host is permanently lost, follow [Complete Outage Recovery](/docs/mysql/admin#recover-from-a-complete-outage) to force rebuilding manually on the most advanced survivor.

## Monitoring shows no data / blank dashboards?

First run `curl http://<member>:9104/metrics | grep mysql_up`. Then check INFRA files in `/infra/targets/mysql/` and query `up{job="mysql"}` in VictoriaMetrics. Standalone Group Replication panels correctly show No data. See [Monitoring](/docs/mysql/monitor#verify-the-pipeline) for full checks.
