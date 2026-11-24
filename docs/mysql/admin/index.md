# Administration

> MySQL status checks, shortcuts, client access, configuration changes, automatic recovery, member replacement, physical restore, and outage recovery.

---

LLMS index: [llms.txt](/llms.txt)

---

This page covers daily MYSQL operations. **Declare state in the inventory and converge it with playbooks.** Rerunning `./mysql.yml -l <cluster>` recovers an offline member, a complete outage with all three hosts reachable, or a dead member replaced at the same IP. Physical backup copy-back and incomplete outages with fewer than three reachable hosts require the manual procedures below.

--------

## Quick Reference

| Operation | Command |
|:---|:---|
| Deploy / converge / recover a cluster | `./mysql.yml -l <cluster>` |
| Preflight without changes | `./mysql.yml -l <cluster> --check` |
| Local root client shortcut | `my` (equivalent to `sudo mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf`) |
| AdminAPI cluster status (HA) | `mysh` (prints `dba.getCluster().status()` by default) |
| Inspect MGR topology | `my -e "SELECT MEMBER_HOST,MEMBER_STATE,MEMBER_ROLE FROM performance_schema.replication_group_members;"` |
| Trigger a backup | `sudo systemctl start mysql-backup` (only the writable primary executes it in HA) |
| Remove and destroy one member | `./mysql-rm.yml -l <IP> -e mysql_safeguard=false` (automatically switches primary first if needed) |
| Stop a cluster while retaining data | `./mysql-rm.yml -l <cluster> -e mysql_safeguard=false -e mysql_rm_data=false` |
| Destroy the entire cluster | `./mysql-rm.yml -l <cluster> -e mysql_safeguard=false` (always retains the backup directory) |
{.full-width}

--------

## Status Checks and Shortcuts

Installation deploys `/etc/profile.d/mysql.sh`, which provides `my` for all topologies and `mysh` on HA nodes. Credentials are stored under `/etc/mysql/pigsty/` and readable only by root. Examples use EL; on Debian/Ubuntu the MySQL service unit is `mysql`, not `mysqld`.

On any member, confirm services and topology:

```bash
systemctl status mysqld mysqlrouter mysqld_exporter mysql-backup.timer

my -e "
  SELECT MEMBER_HOST, MEMBER_STATE, MEMBER_ROLE, MEMBER_VERSION
  FROM performance_schema.replication_group_members ORDER BY MEMBER_HOST;"
```

A healthy three-node cluster shows three `ONLINE` rows and exactly one `PRIMARY`. Use `mysh` for the AdminAPI view, or call `mysqlsh --no-defaults` manually:

```bash
mysh

# Equivalent manual command: always pass --no-defaults when invoking mysqlsh directly
sudo mysqlsh --no-defaults --js -e '
shell.options.useWizards=false;
var pw = os.loadTextFile("/etc/mysql/pigsty/cluster-password").replace(/[\r\n]+$/, "");
shell.connect({user:"dbuser_cluster", password:pw, host:"127.0.0.1", port:3306,
  "ssl-mode":"VERIFY_CA", "ssl-ca":"/etc/pki/ca.crt"});
print(dba.getCluster().status());'
```

Use [MySQL Overview](https://demo.pigsty.io/ui/d/mysql-overview) or `mysql:cls:health` for fleet status: 2 healthy, 1 degraded, 0 critical.


--------

## Client Access

Connect to an HA cluster through any member's Router or the node Layer 2 VIP. Router follows primary changes automatically:

```bash
# Read/write endpoint: any member IP or NODE VIP routes to the current primary
mysql -h <member-or-VIP> -P 6446 -u app -pDBUser.App --ssl-mode=VERIFY_CA --ssl-ca=/etc/pki/ca.crt app

# Read-only endpoint (round-robin over secondaries)
mysql -h <member-or-VIP> -P 6447 -u app -pDBUser.App --ssl-mode=VERIFY_CA --ssl-ca=/etc/pki/ca.crt app
```

Guidance:

- The server requires TLS and rejects plaintext. Client `PREFERRED` negotiates encryption automatically. Prefer explicit `VERIFY_CA` with the Pigsty CA; JDBC uses `sslMode=VERIFY_CA`.
- **Layer 2 VIP or multi-address DSN**: if the group's [`NODE`](/docs/node) module enables a VIP (`vip_enabled: true`, `vip_address`, `vip_vrid`), it floats among surviving nodes and is automatically added to TLS leaf certificate SANs. Clients can use `<vip>:6446` (RW) and `<vip>:6447` (RO). Without a VIP, configure a **multi-address DSN**, such as JDBC `jdbc:mysql://10.10.10.11:6446,10.10.10.12:6446,10.10.10.13:6446/app`;
- Standalone instances have no Router. Connect directly to `3306`.
- A partitioned or quorum-lost member makes its Router reject read/write and read-only connections. This prevents stale Router reads.

Measured write interruptions are approximately 3–4 seconds for graceful primary shutdown and 20 seconds for `kill -9` with default eviction. Secondary rolling restarts do not interrupt clients.


--------

## Manage Databases and Users

Edit `mysql_databases` / `mysql_users` in the inventory, then converge:

```bash
./mysql.yml -l my-test                      # full convergence; all members must be reachable
./mysql.yml -l my-test -t mysql_provision   # converge databases/users only; mysql_db or mysql_user can also run separately
```

HA object changes run only on the current primary and propagate through replication. During a single-node failure, `-t mysql_provision` / `-t mysql_db` / `-t mysql_user` can target surviving members with `-l`, provided the current `PRIMARY` is included. Declarations are additive: they do not drop databases/users or revoke grants. Perform those operations manually and update the inventory afterward.

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

Perform a planned switchover from any HA member with `mysh`:

```bash
mysh 'dba.getCluster().setPrimaryInstance("10.10.10.12:3306")'
```

Router follows the switch automatically. Rerun `./mysql.yml -l <cluster>` afterward to confirm convergence. Runtime primary placement is not declared state, so the playbook will not switch back to member 1.

--------

## Member Failures and Self-Healing

**Routine failover needs no manual intervention**: MGR elects a new primary within roughly 20 seconds after a primary crash, and Router reroutes traffic. systemd restarts the failed member, which rejoins automatically. For persistent failures:

| Symptom | Action |
|:---|:---|
| A member remains `OFFLINE` while its process runs but GR is stopped | Rerun `./mysql.yml -l <cluster>` for an incremental rejoin |
| A member repeatedly fails to join, logging `peers not configured` | Same: the converge pins `group_replication_group_seeds` back to the declared list |
| A member does not return after a network partition | Wait about 1 minute for reconnection, then rerun `./mysql.yml -l <cluster>` if needed |
| All three members are `OFFLINE` but hosts are reachable | Rerun `./mysql.yml -l <cluster>`; the highest-GTID member runs `rebootClusterFromCompleteOutage` automatically |
| All members are `OFFLINE` and some hosts are lost | Follow [Complete Outage Recovery](#recover-from-a-complete-outage) to restore quorum manually |
| A damaged host is replaced | Prepare a fresh machine at the same IP, run `./node.yml`, then `./mysql.yml -l <cluster>`; see [Replace a Failed Member](#replace-a-failed-member) |
{.full-width}

Matching alerts: `MySQLClusterDegraded` (WARN), `MySQLClusterDown`（CRIT）、`MySQLDown` (CRIT).

--------

## Replace a Failed Member

Replacement requires **reusing the failed machine's service address**, with the inventory unchanged. Assume `my-test-3` (`10.10.10.13`) needs replacement:

```bash
# Case A: the old host is permanently unreachable; prepare a fresh machine at the same IP
./node.yml  -l 10.10.10.13          # 1. manage the new node: repositories, shared CA, and monitoring agents
./mysql.yml -l my-test --check      # 2. preflight the entire cluster
./mysql.yml -l my-test              # 3. rescan stale registration, then Clone and rejoin automatically

# Case B: the old host is reachable and scheduled for rebuild; a PRIMARY target switches primary first
./mysql-rm.yml -l 10.10.10.13 -e mysql_safeguard=false   # 1. leave gracefully and clear local data/configuration
./mysql.yml    -l my-test                                # 2. initialize and Clone back into the cluster
```

Notes:

- **No manual `removeInstance` is needed for replacement**: if the new host reuses the same IP and has an empty data directory, a full-cluster `mysql.yml` run detects the fresh instance, calls `cluster.rescan({removeInstances})` to remove the old UUID registration, and rebuilds it through MySQL Clone;
- If the old host is permanently lost and will not yet be replaced, remove only its metadata from a survivor with `mysh 'dba.getCluster().removeInstance("10.10.10.13:3306", {force: true})'`;
- The new host must be **fresh**, with empty `mysql_data` and no leftover Router state. Clone time scales with data size; the cluster remains available with one primary and one replica;
- Changing the member IP during replacement and long-term two-node operation are unsupported.

--------

## Stop with Data Retained or Destroy a Cluster

`mysql-rm.yml` destroys data and managed configuration by default (`mysql_rm_data: true`). It also supports stopping an entire cluster while retaining data (`-e mysql_rm_data=false`):

```bash
# 1. Stop the entire cluster and deregister monitoring; retain /data/mysql and managed configuration
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_data=false

# Restart and automatically recover all three nodes; no manual lock-file removal or rebootCluster required
./mysql.yml -l my-test

# 2. Destroy the entire cluster: remove /data/mysql and managed configuration, retain /data/backups/mysql
./mysql-rm.yml -l my-test -e mysql_safeguard=false

# To uninstall packages as well:
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_pkg=true
```

Notes:

- This version no longer writes `.pigsty-mysql-retired` or requires `mysql_rm_confirm`;
- `-e mysql_rm_data=false` is supported only when stopping the entire cluster, including a standalone cluster; single-member removal requires `mysql_rm_data=true`;
- `mysql-rm.yml` **never deletes `mysql_backup_dir` (`/data/backups/mysql`)**. Administrators must remove old physical backups manually after confirming they are no longer needed.

--------

## Manage Backups

```bash
systemctl list-timers mysql-backup.timer          # next scheduled run
sudo systemctl start mysql-backup                 # trigger manually; only the writable HA primary runs it, replicas skip
journalctl -u mysql-backup --since today          # backup logs
```

Backup directory layout on the **current primary's** local disk, retaining the latest `mysql_backup_retention: 3` copies by default:

```text
/data/backups/mysql/<cluster>/
├── 20260729T053900Z/          # one prepared full backup (directly restorable)
│   ├── backup.ok              # commit marker: present only for fully successful backups
│   ├── backup.log             # XtraBackup output
│   └── ...                    # InnoDB data files
├── ...                        # retain the latest N backups according to mysql_backup_retention (default 3)
└── latest -> 20260729T053900Z # atomic pointer to the newest backup
```

Check backup freshness on **all HA members** because backups follow the primary:

```bash
ansible my-test -b -a 'ls -l /data/backups/mysql/my-test/latest'
```

Backup monitoring and troubleshooting:

- After a successful backup, the script atomically updates `/var/lib/node_exporter/textfile/mysql.prom` with `mysql_backup_last_success_timestamp_seconds` and `mysql_backup_size_bytes`. VictoriaMetrics derives `mysql:ins:backup_time` and `mysql:cls:backup_time`; no successful cluster backup for 30 hours triggers `MySQLBackupStale` (`WARN`);
- On failure, previously committed backups and the `latest` symlink remain intact. Detailed XtraBackup logs for the failed run are retained in `/var/lib/pigsty/mysql-backup/<UTC-timestamp>.log`.

--------

## Restore from Physical Backup

The following runbook restores a standalone instance to its latest backup. **This is destructive**: writes after the backup are lost. Confirm that the `latest` timestamp is acceptable. If `mysql_data` is customized, replace `/data/mysql` below with the actual path. For a full HA rebuild, restore one member first and Clone the remaining empty nodes from it.

```bash
# 0. Verify the backup is committed: backup.ok must exist
BK=/data/backups/mysql/my-meta/latest
sudo test -f "$BK/backup.ok" && sudo cat "$BK/backup.ok"

# 1. Stop the backup timer, any running backup, and MySQL; preserve existing data (use mysql on Debian/Ubuntu)
sudo systemctl stop mysql-backup.timer mysql-backup.service mysqld
sudo mv /data/mysql /data/mysql.destroyed

# 2. Copy back the prepared backup; no --prepare is needed, but always pass --no-defaults and --datadir
sudo install -d -m 0750 -o mysql -g mysql /data/mysql
sudo xtrabackup --no-defaults --copy-back --target-dir="$BK" --datadir=/data/mysql
sudo rm -f /data/mysql/backup.ok /data/mysql/backup.log   # bookkeeping files carried over by copy-back

# 3. Recreate runtime subdirectories not included in the backup
sudo install -d -m 0750 -o mysql -g mysql /data/mysql/binlog /data/mysql/tmp

# 4. Recreate the Pigsty ownership marker (set cluster/instance/topology for your instance)
echo '{"version": 1, "cluster": "my-meta", "instance": "my-meta-1", "topology": "standalone"}' | \
  sudo tee /data/mysql/.pigsty-mysql-initialized > /dev/null
sudo chmod 0600 /data/mysql/.pigsty-mysql-initialized
sudo chown -R mysql:mysql /data/mysql

# 5. Restore SELinux contexts on EL, then start MySQL and the backup timer
sudo restorecon -RF /data/mysql 2>/dev/null || true
sudo systemctl start mysqld mysql-backup.timer

# 6. Verify data and GTID position; confirm the playbook still converges
my -e 'SELECT @@gtid_executed; SHOW DATABASES;'
./mysql.yml -l my-meta        # expect a green run (changed=0 or routine items only)
```

The step-4 marker proves datadir ownership. Missing or mismatched contents cause `mysql.yml` to reject the restored directory. For HA, use `"topology": "innodb_cluster"` and the member's own instance name.


--------

## Recover from a Complete Outage

When all three members are `OFFLINE`, for example after a power outage or stopping with data retained, use the appropriate path:

### All Three Hosts Reachable: Automatic Recovery

When SSH and `mysqld` are reachable on all three members, run the playbook against the complete cluster:

```bash
./mysql.yml -l my-test
```

The playbook compares `@@gtid_executed` sets, selects the most advanced member, runs `dba.rebootClusterFromCompleteOutage("my-test")` with `force: false`, and incrementally rejoins remaining `OFFLINE` members.

### Some Hosts Lost: Manual Forced Recovery

If some hosts cannot start because of hardware failure, the playbook refuses automatic rebuilding to prevent split brain: an unreachable host may contain newer transactions. After accepting possible loss of unsynchronized transactions, select the most advanced surviving GTID set and rebuild manually:

```bash
# 1. Compare executed GTID sets on all survivors and select the most advanced, assumed here to be 10.10.10.12
ansible 10.10.10.11,10.10.10.12 -b -a "mysql --defaults-extra-file=/etc/mysql/pigsty/root.cnf -NBe 'SELECT @@gtid_executed'"

# 2. Rebuild quorum on that member with mysqlsh --no-defaults
sudo mysqlsh --no-defaults --js -e '
shell.options.useWizards=false;
var pw = os.loadTextFile("/etc/mysql/pigsty/cluster-password").replace(/[\r\n]+$/, "");
shell.connect({user:"dbuser_cluster", password:pw, host:"10.10.10.12", port:3306,
  "ssl-mode":"VERIFY_CA", "ssl-ca":"/etc/pki/ca.crt"});
var c = dba.rebootClusterFromCompleteOutage("my-test", {force: true});
print(c.status().defaultReplicaSet.status);'

# 3. Replace lost hosts at their original IPs, then run the full-cluster playbook to Clone back to three replicas
./node.yml  -l 10.10.10.13
./mysql.yml -l my-test
```

Notes:

- The cluster remains `super_read_only` and cannot accept writes until rebuilding completes;
- Default `sql_require_primary_key=ON` prevents tables without primary keys from blocking recovery.

--------

## Platform Password Boundaries

Operational boundaries for the three platform passwords (details: [Parameters](/docs/mysql/param#credentials)):

- `mysql_monitor_password`: Change inventory and rerun to rotate.
- `mysql_root_password`: Implicit resets are rejected. On the primary, manually run `ALTER USER 'root'@'localhost' IDENTIFIED BY '...';`. Then update inventory and rerun to refresh credential files.
- `mysql_cluster_password`: HA metadata and Router keyrings bind this password. Ordinary reruns reject rotation, and no automated HA rotation exists. If necessary, rotate manually through AdminAPI, synchronize all member credential files, then update inventory. Standalone instances rotate through inventory and rerun.
