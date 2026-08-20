# FAQ

> Frequently asked questions and troubleshooting for the Pigsty MySQL pilot module.

---

LLMS index: [llms.txt](/llms.txt)

---

## How mature is the MYSQL module?

It is a pilot module aiming for a simple, inexpensive, good-enough MySQL cluster. The four core capabilities — deployment and convergence, HA failover, daily backups, monitoring and alerting — have been tested systematically, including fault injection and complete-outage drills. Destructive recovery flows are deliberately manual, with [runbooks](/docs/mysql/admin) provided. It does not aim for PGSQL-module completeness: no PITR, no VIP/DNS access layer, no automatic scaling. Validate and rehearse recovery against your own requirements before serious production use.


## Why is MySQL fixed at 8.4? Can I pick a version?

MYSQL is a "fixed platform", not a general installer: server, client, Shell, Router, and XtraBackup are all pinned to the 8.4 LTS line, which keeps component compatibility and behavior predictable and eliminates a version-matrix testing burden. That is the core trade-off keeping this pilot simple. If you need other versions or deep customization, this module is not the right tool.


## Why only 1 or 3 nodes? How do I scale?

Topology is fixed: standalone or three-node single-primary InnoDB Cluster. Preflight rejects other member counts, and the datadir identity marker blocks in-place 1→3 conversion. Dynamic membership would drag in quorum management, Router re-bootstrap, and convergence-path complexity beyond what a pilot should carry.

Scaling paths:

- **Vertical**: move to bigger machines one at a time via [same-address replacement](/docs/mysql/admin#replace-a-failed-member) (rolling hardware refresh);
- **Standalone → HA**: build a new three-node cluster and migrate logically (`mysqldump` or `mysqlsh util.dumpInstance`);
- **Read scaling**: send read-only traffic to `6447`, shared by the two secondaries.


## Why does CREATE TABLE fail with ERROR 3750 (primary key required)?

The platform defaults to `sql_require_primary_key=ON`. PK-less tables are **read-only under Group Replication** and, worse, block AdminAPI cluster rebuilds during disaster recovery — better to fail at CREATE than to explode mid-recovery. Give every table a primary key; if you are onboarding a legacy system that truly cannot change, override:

```yaml
mysql_parameters: { sql_require_primary_key: false }
```

Standalone instances keep the same default so they stay HA-portable.


## Why is Ubuntu/Debian ARM64 rejected?

Oracle's APT repository ships no `arm64` packages for MySQL 8.4 — nothing Pigsty can work around. On ARM (including VMs on Apple Silicon), use EL 9/10 (Rocky/Alma): Oracle's YUM repository has full `aarch64` support.


## Which port should clients use? Is TLS mandatory?

For HA, connect to `6446` (read-write) or `6447` (read-only) on any member; the Router follows failovers. Standalone connects to `3306` directly. TLS is mandatory: the server sets `require_secure_transport=ON` and rejects plaintext connections (`ERROR 3159`). The client default `PREFERRED` mode negotiates TLS automatically (only an explicit `DISABLED` is refused); prefer `VERIFY_CA` trusting `/etc/pki/ca.crt`.

Routers are per-node with no shared VIP — use a multi-host DSN listing all members' `6446` to survive the loss of any single node.


## The primary moved. Will it move back automatically?

No — and it does not need to. `mysql_seq=1` is only the bootstrap order; the runtime primary is wherever MGR elected it, which is a fully legitimate state after failovers or rolling restarts. Reruns never relocate the primary. To place it deliberately, use [`setPrimaryInstance`](/docs/mysql/admin#switchover).


## A member went down. What do I do?

Usually nothing: systemd restarts a crashed `mysqld` and the member rejoins on its own (a primary crash completes failover and self-healing in ~20 seconds). If a member stays `OFFLINE` — after a healed network partition, or a `STOP GROUP_REPLICATION` — rerun `./mysql.yml -l <cluster>` and it will be rejoined. If that fails, read the error: it states the cause and the next step.


## All three nodes are down. How do I recover?

This is the one availability scenario requiring manual action (deliberate split-brain protection): run `dba.rebootClusterFromCompleteOutage()` on the most advanced member, then rerun the playbook to converge the rest. Full steps: [Recover from a Complete Outage](/docs/mysql/admin#recover-from-a-complete-outage). The `mysql.yml` failure message in this state prints exactly these instructions.


## Where are backups stored? Can I restore to a point in time?

Backups are **daily full physical backups** stored under `/data/backups/mysql/<cluster>/` on the **current primary** (after a failover, new backups follow the new primary — check every member when looking for the latest). There is no incremental chain and no binlog archiving, hence **no PITR**: a standalone's recovery point is its most recent backup (worst case, one day of writes); an HA cluster's data safety rests primarily on its three synchronized replicas, with backups as the last line and for full rebuilds. Restore procedure: [Restore from Physical Backup](/docs/mysql/admin#restore-from-physical-backup). For off-site protection, sync the backup directory yourself.


## Will I be alerted if backups fail?

Not yet — a known gap. There is no backup-freshness metric or alert; backup logs are shipped to VictoriaLogs (`unit:mysql-backup`) and visible on the Instance dashboard's Router / Backup Logs panel. For important environments, add external log checks and rehearse restores periodically.


## Why are some `mysql_parameters` keys rejected?

Identity (`server_id`, `datadir`, ports, …), replication (`gtid_mode`, `log_bin`, `group_replication_*`), and the TLS family are part of the platform's guarantees. Overriding them would corrupt cluster identity or security floors, so preflight rejects them (`-` and `_` spellings alike). Everything else is allowed and still validated by `mysqld --validate-config`. Full reserved list: [Parameters](/docs/mysql/param#mysql_parameters).


## Does changing parameters cause downtime?

One controlled blip: parameter changes trigger an orchestrated rolling restart — secondaries first (invisible to clients), primary last with one automatic failover (measured at ~3–4 seconds of write pause). Degraded clusters refuse rolling restarts so a change can never pile onto an outage. Schedule a window if your workload is failover-sensitive.


## How do I change root or platform passwords?

- `mysql_monitor_password`: update the inventory and rerun — done (the exporter config is refreshed along the way);
- `mysql_root_password`: implicit resets are refused (protection against silent misconfiguration). Run `ALTER USER 'root'@'localhost' ...` manually, then update the inventory and rerun;
- `mysql_cluster_password`: on HA clusters, bound to cluster metadata and Router keyrings — ordinary reruns reject rotation and no automated HA flow ships yet (standalones rotate normally). If unavoidable, rotate manually via AdminAPI and sync each member's credential files before updating the inventory.


## How do I resurrect a retired cluster? What if the marker is deleted by mistake?

`mysql-rm.yml` keeps all data and writes a retirement marker. To resurrect: delete `/var/lib/mysql/.pigsty-mysql-retired` on each member and rerun `mysql.yml` ([details](/docs/mysql/admin#retire-and-resurrect-a-cluster)) — that suffices for a standalone; an HA cluster additionally needs its quorum rebuilt per [Recover from a Complete Outage](/docs/mysql/admin#recover-from-a-complete-outage). The marker only prevents *accidental* revival; datadir ownership is checked independently through `.pigsty-mysql-initialized`, so removing the retirement marker can never hand the data to a different cluster.


## Why doesn't `conf/mysql.yml` match this module?

That template is **OpenHalo** — a MySQL wire-compatible solution on a PostgreSQL kernel (`pg_mode: mysql`) — unrelated to this module. The native MySQL template is [`conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml). Rule of thumb: need real MySQL ecosystem compatibility → this module; running MySQL-protocol apps on PostgreSQL infrastructure → consider OpenHalo.


## The playbook fails with `no ONLINE member holds the cluster`?

That is the complete-outage verdict: no ONLINE member is carrying the cluster (or the members that are online cannot be reached). Follow the printed instructions — see [Recover from a Complete Outage](/docs/mysql/admin#recover-from-a-complete-outage). If members *are* online and you still see this, check connectivity from the seq-1 (coordinator) member — where the reconciliation script runs — to every member's port 3306, and the TLS trust chain (`/etc/pki/ca.crt` in place).


## Monitoring shows no data / blank dashboards?

Walk the pipeline: `curl http://<member>:9104/metrics | grep mysql_up` (exporter) → confirm instance files under `/infra/targets/mysql/` on the Infra node → query `up{job="mysql"}` in VictoriaMetrics. Note the Group Replication dashboard legitimately shows No data for standalone clusters. Full self-check commands: [Monitoring](/docs/mysql/monitor#verify-the-pipeline).
