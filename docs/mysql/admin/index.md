# Administration

> Status checks, client access, configuration changes, failure handling, and the three recovery runbooks for MySQL clusters.

---

LLMS index: [llms.txt](/llms.txt)

---

This page covers day-to-day operations for the MYSQL module. The governing principle: **declare state in the inventory, converge with the playbook.** Most anomalies — a dropped member, drifted AdminAPI state — heal with a single `./mysql.yml -l <cluster>` rerun. Only three destructive scenarios (member replacement, physical restore, complete-outage recovery) require the manual runbooks below.


--------

## Quick Reference

| Operation | Command |
|:---|:---|
| Deploy / converge a cluster | `./mysql.yml -l <cluster>` |
| Preflight without changes | `./mysql.yml -l <cluster> --check` |
| Local root session | `mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf` |
| Inspect MGR topology | `SELECT MEMBER_HOST,MEMBER_STATE,MEMBER_ROLE FROM performance_schema.replication_group_members;` |
| AdminAPI status | `dba.getCluster().status()` in `mysqlsh` |
| Trigger a backup | `systemctl start mysql-backup` (in HA, only the primary runs it) |
| Retire a secondary | `./mysql-rm.yml -l <IP> -e mysql_safeguard=false -e mysql_rm_confirm=<instance>` |
| Retire a whole cluster | `./mysql-rm.yml -l <cluster> -e mysql_safeguard=false -e mysql_rm_confirm=<cluster>` |
{.full-width}


--------

## Status Checks

Run the commands in this page on a cluster member as root: the client configs and secrets under `/etc/mysql/pigsty/` are readable by root only. Examples use EL unit names — on Debian/Ubuntu the MySQL service unit is `mysql`, not `mysqld`.

On any member, confirm services and topology:

```bash
systemctl status mysqld mysqlrouter mysqld_exporter mysql-backup.timer

mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf -e "
  SELECT MEMBER_HOST, MEMBER_STATE, MEMBER_ROLE, MEMBER_VERSION
  FROM performance_schema.replication_group_members ORDER BY MEMBER_HOST;"
```

A healthy three-node cluster shows three `ONLINE` rows with exactly one `PRIMARY`. For the AdminAPI view:

```bash
mysqlsh --js -e '
shell.options.useWizards=false;
var pw = os.loadTextFile("/etc/mysql/pigsty/cluster-password").replace(/[\r\n]+$/, "");
shell.connect({user:"dbuser_cluster", password:pw, host:"127.0.0.1", port:3306,
  "ssl-mode":"VERIFY_CA", "ssl-ca":"/etc/pki/ca.crt"});
print(dba.getCluster().status());'
```

For a fleet-level view, use the Grafana [MySQL Overview](https://demo.pigsty.io/ui/d/mysql-overview) dashboard or the derived metric `mysql:cls:health` (2 healthy / 1 degraded / 0 critical).


--------

## Client Access

HA clients connect through any member's Router, which follows failovers automatically:

```bash
# Read-write endpoint (current primary)
mysql -h <any-member> -P 6446 -u app -pDBUser.App --ssl-mode=VERIFY_CA --ssl-ca=/etc/pki/ca.crt app

# Read-only endpoint (round-robin over secondaries)
mysql -h <any-member> -P 6447 -u app -pDBUser.App --ssl-mode=VERIFY_CA --ssl-ca=/etc/pki/ca.crt app
```

Guidance:

- TLS is enforced server-side and plaintext connections are rejected; the client default `PREFERRED` mode negotiates encryption automatically, but prefer an explicit `VERIFY_CA` (JDBC: `sslMode=VERIFY_CA`) trusting the Pigsty CA;
- There is no VIP/DNS layer. To avoid a single Router node becoming a point of failure, configure a **multi-host DSN**, e.g. `jdbc:mysql://10.10.10.11:6446,10.10.10.12:6446,10.10.10.13:6446/app`, or list all members in your application-side load balancer;
- Standalone clusters have no Router — connect to `3306` directly;
- A member that is partitioned or has lost quorum makes its local Router refuse both RW and RO connections (fail-safe): no stale reads through the Router.

Measured expectations: a graceful primary stop interrupts writes for ~3–4 seconds; a primary crash (`kill -9`) for ~20 seconds with default eviction settings; rolling restarts of secondaries are invisible to clients.


--------

## Manage Databases and Users

Edit `mysql_databases` / `mysql_users` in the inventory, then converge:

```bash
./mysql.yml -l my-test                      # full converge
./mysql.yml -l my-test -t mysql_provision   # business objects only (faster)
```

In HA, object changes execute on the current primary and replicate out. Declarations are additive: nothing is dropped or revoked implicitly — do those by hand, then update the inventory to match.


--------

## Change Cluster Parameters

All tuning goes through [`mysql_parameters`](/docs/mysql/param#mysql_parameters):

```yaml
mysql_parameters:
  max_connections: 500
  long_query_time: 2
```

```bash
./mysql.yml -l my-test --check    # preview the pending change
./mysql.yml -l my-test            # apply with an orchestrated rolling restart
```

Rolling-restart semantics (verified by testing):

1. The rendered config passes `mysqld --validate-config` first — a bad option fails the run without touching the service;
2. Cluster health is checked up front: **a degraded cluster (fewer than 3 ONLINE) refuses a rolling restart** — repair first, then change;
3. Secondaries restart one at a time, each waiting to return `ONLINE`; the primary restarts last;
4. The primary restart triggers one automatic failover with a write pause of a few seconds — schedule a change window if that matters.

Standalone instances restart in place.


--------

## Switchover

The module does not orchestrate planned switchovers; use AdminAPI when you need one:

```bash
mysqlsh --js -e '
shell.options.useWizards=false;
var pw = os.loadTextFile("/etc/mysql/pigsty/cluster-password").replace(/[\r\n]+$/, "");
shell.connect({user:"dbuser_cluster", password:pw, host:"127.0.0.1", port:3306,
  "ssl-mode":"VERIFY_CA", "ssl-ca":"/etc/pki/ca.crt"});
dba.getCluster().setPrimaryInstance("10.10.10.12:3306");   // the new primary
'
```

Routers follow automatically. Rerun `./mysql.yml -l <cluster>` afterwards to confirm convergence — primary placement is runtime state, not declared state, so the playbook will not move it back.


--------

## Member Failures and Self-Healing

**No action is needed during a failure**: after a primary crash, MGR elects a new primary within ~20 seconds and Routers re-route; the crashed member is restarted by systemd and rejoins on its own. Intervene only in these cases:

| Symptom | Action |
|:---|:---|
| A member stays `OFFLINE` (process up, GR stopped) | Rerun `./mysql.yml -l <cluster>` — it rejoins the member |
| A member repeatedly fails to join, logging `peers not configured` | Same: the converge pins `group_replication_group_seeds` back to the declared list |
| A member has not returned after a network partition heals | Wait ~1 minute for auto-rejoin; rerun the playbook if it still has not rejoined |
| All members `OFFLINE` | Complete outage — see [Recover from a Complete Outage](#recover-from-a-complete-outage) |
| Hardware is unrecoverable | See [Replace a Failed Member](#replace-a-failed-member) |
{.full-width}

Matching alerts: `MySQLClusterMemberOffline` (WARN), `MySQLClusterNoPrimary` / `MySQLClusterQuorumLost` (CRIT).


--------

## Replace a Failed Member

The replacement contract: **the new machine reuses the failed member's service address** (the inventory does not change). Three steps, assuming `my-test-3` (`10.10.10.13`) died:

```bash
# 1. Remove the failed member. If the machine is still reachable, use the retirement playbook:
./mysql-rm.yml -l 10.10.10.13 -e mysql_safeguard=false -e mysql_rm_confirm=my-test-3

# 1b. If the machine is truly dead (unreachable over SSH), the playbook cannot run on it;
#     force-remove it from any healthy member via AdminAPI instead:
mysqlsh --js -e '
shell.options.useWizards=false;
var pw = os.loadTextFile("/etc/mysql/pigsty/cluster-password").replace(/[\r\n]+$/, "");
shell.connect({user:"dbuser_cluster", password:pw, host:"127.0.0.1", port:3306,
  "ssl-mode":"VERIFY_CA", "ssl-ca":"/etc/pki/ca.crt"});
dba.getCluster("my-test").removeInstance("10.10.10.13:3306", {force: true});'

# 2. Provision a fresh machine at the same address (reinstall the OS), then manage it
./node.yml -l 10.10.10.13

# 3. Reconverge the complete cluster: the new member is cloned and joined automatically
./mysql.yml -l my-test --check
./mysql.yml -l my-test
```

Notes:

- Step 1's real job is evicting the address from cluster metadata — only an address absent from metadata takes the fresh-clone path. The retirement playbook requires a **reachable target** (an ONLINE SECONDARY or an already-detached member); for a dead machine, use the force removal in 1b instead;
- The replacement must be a **truly fresh machine** (empty datadir, no leftover Router keyring) — an OS reinstall guarantees that. Half-clean machines are rejected by preflight or the Router bootstrap;
- Clone copies the full dataset; duration scales with data size. The cluster stays available throughout (one primary, one secondary online);
- Changing a member's address during replacement is not supported, nor is running two nodes long-term.


--------

## Retire and Resurrect a Cluster

Retire a whole cluster (stop services, deregister monitoring, keep all data):

```bash
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_confirm=my-test
```

Retirement writes `/var/lib/mysql/.pigsty-mysql-retired` on every member, which **blocks ordinary `mysql.yml` reruns** so a retired instance cannot be revived by accident. To deliberately resurrect:

```bash
ansible my-test -b -a 'rm -f /var/lib/mysql/.pigsty-mysql-retired'
./mysql.yml -l my-test
```

Two commands suffice for a standalone. **HA clusters need one more step**: the rerun brings services up, but all three members return with Group Replication OFFLINE (split-brain protection — nobody self-bootstraps) and the playbook exits with the complete-outage error. Continue with steps 3–4 of [Recover from a Complete Outage](#recover-from-a-complete-outage) to rebuild quorum.

Actual destruction (removing datadirs, backups, packages) is never done by playbooks — that is a manual decision made after verifying backups.


--------

## Manage Backups

```bash
systemctl list-timers mysql-backup.timer          # next scheduled run
systemctl start mysql-backup                      # run now (in HA the primary executes, secondaries skip)
journalctl -u mysql-backup --since today          # backup logs
```

Backup layout, on the **current primary's** local disk:

```text
/data/backups/mysql/<cluster>/
├── 20260729T053900Z/          # one prepared full backup (directly restorable)
│   ├── backup.ok              # commit marker: present only for fully successful backups
│   ├── backup.log             # XtraBackup output
│   └── ...                    # InnoDB data files
├── ...                        # last N kept per retention
└── latest -> 20260729T053900Z # atomic pointer to the newest backup
```

Check backup freshness — on **all members** for HA, since backups follow the primary:

```bash
ansible my-test -b -a 'ls -l /data/backups/mysql/my-test/latest'
```

> [!WARNING] Backup alerting gap
> This version exports no backup-freshness metric and ships no backup alerts: a failed backup is only visible in the `mysql-backup` logs (queryable in VictoriaLogs and on the Instance dashboard's Router / Backup Logs panel). For important environments, add external log checks and rehearse the restore runbook below periodically.


--------

## Restore from Physical Backup

This runbook restores a standalone instance to its most recent backup. **It is destructive**: writes after the backup are lost — check the `latest` timestamp first. Rebuilding an HA cluster works the same way: restore one node as the primary, then let the others rejoin via clone.

```bash
# 0. Verify the backup is committed: backup.ok must exist
BK=/data/backups/mysql/my-meta/latest
sudo test -f $BK/backup.ok && sudo cat $BK/backup.ok

# 1. Stop the server; keep the wreckage for forensics until verified
sudo systemctl stop mysqld
sudo mv /var/lib/mysql /var/lib/mysql.destroyed

# 2. Copy the backup back (already prepared — no --prepare step needed)
sudo mkdir -p /var/lib/mysql && sudo chown mysql:mysql /var/lib/mysql && sudo chmod 750 /var/lib/mysql
sudo xtrabackup --copy-back --target-dir=$BK
sudo rm -f /var/lib/mysql/backup.ok /var/lib/mysql/backup.log   # bookkeeping files carried over by copy-back

# 3. Recreate runtime directories the backup does not contain
sudo mkdir -p /var/lib/mysql/binlog /var/lib/mysql/tmp
sudo chown -R mysql:mysql /var/lib/mysql
sudo chmod 750 /var/lib/mysql/binlog /var/lib/mysql/tmp

# 4. Recreate the Pigsty ownership marker (set cluster/instance/topology for your instance)
echo '{"version": 1, "cluster": "my-meta", "instance": "my-meta-1", "topology": "standalone"}' | \
  sudo tee /var/lib/mysql/.pigsty-mysql-initialized > /dev/null
sudo chown mysql:mysql /var/lib/mysql/.pigsty-mysql-initialized
sudo chmod 600 /var/lib/mysql/.pigsty-mysql-initialized

# 5. Restore SELinux context on EL, then start
sudo restorecon -RF /var/lib/mysql 2>/dev/null || true
sudo systemctl start mysqld

# 6. Verify data and GTID position; confirm the playbook still converges
sudo mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf -e 'SELECT @@gtid_executed; SHOW DATABASES;'
./mysql.yml -l my-meta        # expect a green run (changed=0 or routine items only)
```

The step-4 marker is Pigsty's proof of datadir ownership: without it (or with mismatched content), `mysql.yml` refuses to manage the restored datadir. For HA members, use `"topology": "innodb_cluster"` and the member's own instance name.


--------

## Recover from a Complete Outage

When all three members are `OFFLINE` (power loss, cascading failure), MGR deliberately **does not rebuild quorum on its own** — that is split-brain protection — and `mysql.yml` refuses with instructions. The procedure:

```bash
# 1. Confirm mysqld is running everywhere (systemd usually restarted it) and GR is OFFLINE
ansible my-test -b -a "mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf -NBe \
  \"SELECT COALESCE((SELECT MEMBER_STATE FROM performance_schema.replication_group_members \
  WHERE MEMBER_ID=@@server_uuid),'OFFLINE')\""

# 2. Find the most advanced member: compare GTID sets, pick the superset (ties: any)
ansible my-test -b -a "mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf -NBe 'SELECT @@gtid_executed'"

# 3. Reboot the cluster from that member via AdminAPI (replace 10.10.10.12 accordingly)
mysqlsh --js -e '
shell.options.useWizards=false;
var pw = os.loadTextFile("/etc/mysql/pigsty/cluster-password").replace(/[\r\n]+$/, "");
shell.connect({user:"dbuser_cluster", password:pw, host:"10.10.10.12", port:3306,
  "ssl-mode":"VERIFY_CA", "ssl-ca":"/etc/pki/ca.crt"});
var c = dba.rebootClusterFromCompleteOutage("my-test");
print(c.status().defaultReplicaSet.status);'

# 4. Rerun the playbook: members still OFFLINE are rejoined automatically
./mysql.yml -l my-test
```

Notes:

- Step 3 usually brings every reachable member back at once; stragglers are rejoined by step 4 — no per-node manual work;
- If only a minority of machines survived, complete the reboot first to restore writes, then follow [Replace a Failed Member](#replace-a-failed-member) for the rest;
- No writes are possible until step 3 completes (`super_read_only`); members usually remain readable, though a member that was expelled earlier may sit in `offline_mode` and refuse ordinary connections;
- The default `sql_require_primary_key=ON` prevents the PK-less tables that would otherwise block this procedure.


--------

## Platform Password Boundaries

Operational boundaries for the three platform passwords (details: [Parameters](/docs/mysql/param#credentials)):

- `mysql_monitor_password`: update the inventory and rerun — rotates cleanly;
- `mysql_root_password`: implicit resets are refused. Rotate manually — `ALTER USER 'root'@'localhost' IDENTIFIED BY '...';` on the primary — then update the inventory and rerun to refresh credential files;
- `mysql_cluster_password`: on HA clusters, bound to cluster metadata and Router keyrings — ordinary reruns reject rotation, and no automated HA procedure ships yet (standalone instances rotate normally via inventory + rerun). If HA rotation is unavoidable, do it manually via AdminAPI, sync every member's credential files, then update the inventory.
