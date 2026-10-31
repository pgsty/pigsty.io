# Administration

> Status checks, client access, configuration changes, failure handling, and the three recovery runbooks for MySQL clusters.

---

LLMS index: [llms.txt](/llms.txt)

---

**Declare state in the inventory and apply it with the playbook.** Most dropped members or AdminAPI drift recover after `./mysql.yml -l <cluster>`. Member replacement, physical restore, and complete-outage recovery require the manual procedures below.


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

Run these commands as root on a cluster member. Only root can read `/etc/mysql/pigsty/` credentials. Examples use EL service names. Debian/Ubuntu uses `mysql`, not `mysqld`.

On any member, confirm services and topology:

```bash
systemctl status mysqld mysqlrouter mysqld_exporter mysql-backup.timer

mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf -e "
  SELECT MEMBER_HOST, MEMBER_STATE, MEMBER_ROLE, MEMBER_VERSION
  FROM performance_schema.replication_group_members ORDER BY MEMBER_HOST;"
```

A healthy three-node cluster has three `ONLINE` rows and exactly one `PRIMARY`. For AdminAPI status:

```bash
mysqlsh --js -e '
shell.options.useWizards=false;
var pw = os.loadTextFile("/etc/mysql/pigsty/cluster-password").replace(/[\r\n]+$/, "");
shell.connect({user:"dbuser_cluster", password:pw, host:"127.0.0.1", port:3306,
  "ssl-mode":"VERIFY_CA", "ssl-ca":"/etc/pki/ca.crt"});
print(dba.getCluster().status());'
```

Use [MySQL Overview](https://demo.pigsty.io/ui/d/mysql-overview) or `mysql:cls:health` for fleet status: 2 healthy, 1 degraded, 0 critical.


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

- The server requires TLS and rejects plaintext. Client `PREFERRED` negotiates encryption automatically. Prefer explicit `VERIFY_CA` with the Pigsty CA; JDBC uses `sslMode=VERIFY_CA`.
- There is no VIP/DNS layer. Use a **multi-host DSN**, such as `jdbc:mysql://10.10.10.11:6446,10.10.10.12:6446,10.10.10.13:6446/app`, to avoid one Router failure point. Alternatively, list all members in the application load balancer.
- Standalone instances have no Router. Connect directly to `3306`.
- A partitioned or quorum-lost member makes its Router reject read/write and read-only connections. This prevents stale Router reads.

Measured write interruptions are approximately 3–4 seconds for graceful primary shutdown and 20 seconds for `kill -9` with default eviction. Secondary rolling restarts do not interrupt clients.


--------

## Manage Databases and Users

Edit `mysql_databases` / `mysql_users` in the inventory, then converge:

```bash
./mysql.yml -l my-test                      # full converge
./mysql.yml -l my-test -t mysql_provision   # business objects only (faster)
```

In HA, changes run on the current primary and replicate to other members. Declarations are additive. Nothing is dropped or revoked implicitly. Perform removals manually, then update inventory.


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

1. Validate rendered settings with `mysqld --validate-config`. Invalid options stop execution without changing the service.
2. Check health. **Fewer than three ONLINE members blocks rolling restarts.** Repair before changing configuration.
3. Restart secondaries one at a time, waiting for `ONLINE` after each. Restart the primary last.
4. Primary restart causes one automatic failover and a write pause of a few seconds. Schedule a change window if needed.

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

Routers follow the switchover automatically. Rerun `./mysql.yml -l <cluster>` to verify convergence. Primary placement is runtime state, so the playbook does not move it back.


--------

## Member Failures and Self-Healing

**No action is needed for ordinary failover.** After a primary crash, MGR elects a replacement in approximately 20 seconds. Routers follow it. Systemd restarts the failed member, which rejoins automatically. Intervene for these cases:

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

**Replacement hardware must reuse the failed member's service address.** Keep inventory unchanged. For failed `my-test-3` (`10.10.10.13`), use three steps:

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

- Step 1 removes the address from cluster metadata. Only an absent address qualifies for fresh clone. Retirement requires a **reachable** ONLINE SECONDARY or detached member. For dead hardware, use force removal in 1b.
- Replacement hardware must be **fully clean**, with an empty datadir and no Router keyring. OS reinstallation guarantees this. Preflight or Router bootstrap rejects partial cleanup.
- Clone copies the full dataset; time depends on size. One primary and one secondary keep the cluster available.
- Address changes during replacement and long-term two-node operation are unsupported.


--------

## Retire and Resurrect a Cluster

Retire a whole cluster (stop services, deregister monitoring, keep all data):

```bash
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_confirm=my-test
```

Retirement writes `/var/lib/mysql/.pigsty-mysql-retired` on every member. This **blocks ordinary `mysql.yml` reruns** and accidental revival. To restore service deliberately:

```bash
ansible my-test -b -a 'rm -f /var/lib/mysql/.pigsty-mysql-retired'
./mysql.yml -l my-test
```

Two commands suffice for standalone instances. **HA needs another step.** Reruns start services, but all three Group Replication members remain OFFLINE. No member self-bootstraps, to prevent split-brain. The playbook reports complete outage. Follow steps 3–4 of [complete-outage recovery](#recover-from-a-complete-outage) to restore quorum.

Playbooks never destroy datadirs, backups, or packages. Decide on destruction manually after verifying backups.


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

Check backup freshness on **all HA members** because backups follow the primary:

```bash
ansible my-test -b -a 'ls -l /data/backups/mysql/my-test/latest'
```

> [!WARNING] Backup alerting gap
> This version has no backup-freshness metric or backup alerts. Failures appear only in `mysql-backup` logs.
> Query them through VictoriaLogs or the Instance dashboard's Router / Backup Logs panel. In important environments, add external log checks and regularly rehearse restoration.


--------

## Restore from Physical Backup

This procedure restores standalone data to the latest backup. **It is destructive:** later writes are lost. Check the `latest` timestamp first. For HA, restore one primary node, then clone it to the other members.

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

The step-4 marker proves datadir ownership. Missing or mismatched contents cause `mysql.yml` to reject the restored directory. For HA, use `"topology": "innodb_cluster"` and the member's own instance name.


--------

## Recover from a Complete Outage

If all three members are `OFFLINE`, MGR **does not rebuild quorum automatically**, preventing split-brain. This can follow power loss or cascading failure. `mysql.yml` stops with instructions. Use this procedure:

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

- Step 3 usually restores all reachable members. Step 4 rejoins remaining members without manual per-node work.
- If only a minority survives, complete reboot to restore writes, then [replace failed members](#replace-a-failed-member).
- `super_read_only` prevents writes until step 3 finishes. Members usually allow reads. Previously expelled members can remain in `offline_mode` and reject ordinary connections.
- Default `sql_require_primary_key=ON` prevents tables without primary keys from blocking recovery.


--------

## Platform Password Boundaries

Operational boundaries for the three platform passwords (details: [Parameters](/docs/mysql/param#credentials)):

- `mysql_monitor_password`: Change inventory and rerun to rotate.
- `mysql_root_password`: Implicit resets are rejected. On the primary, manually run `ALTER USER 'root'@'localhost' IDENTIFIED BY '...';`. Then update inventory and rerun to refresh credential files.
- `mysql_cluster_password`: HA metadata and Router keyrings bind this password. Ordinary reruns reject rotation, and no automated HA rotation exists. If necessary, rotate manually through AdminAPI, synchronize all member credential files, then update inventory. Standalone instances rotate through inventory and rerun.
