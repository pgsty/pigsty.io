---
title: Playbook
weight: 5014
description: Deploy, converge, tune, and retire MySQL clusters with mysql.yml and mysql-rm.yml.
icon: fa-solid fa-scroll
module: [MYSQL]
categories: [Reference]
aliases: [/docs/pilot/mysql/playbook]
---

[`mysql.yml`](https://github.com/pgsty/pigsty/blob/main/mysql.yml) deploys and adjusts clusters to declared state. Separate [`mysql-rm.yml`](https://github.com/pgsty/pigsty/blob/main/mysql-rm.yml) retires members or clusters with safeguards. Before every removal, recheck the target, backups, and exact confirmation value.


--------

## `mysql.yml`

Selected clusters follow check → install → bootstrap → access → provision → backup → monitor:

```bash
./mysql.yml -l my-test --check     # preflight: validate declarations against the live state
./mysql.yml -l my-test             # converge one cluster (must select all members)
./mysql.yml                        # converge every MySQL cluster in the inventory
```

Usage rules:

- **Full-cluster selection by default, with partial limits for independent phases**: full runs and bootstrap, configuration, or topology coordination require all cluster members in `-l`. Independent `-t mysql_provision` (including `mysql_db` and `mysql_user`, with the runtime PRIMARY included), `-t mysql_backup`, and `-t mysql_monitor` can target surviving subsets;
- **Built-in recovery**: a full three-node `mysql.yml` run with all hosts reachable and all members `OFFLINE` selects the highest GTID and runs `rebootClusterFromCompleteOutage` with `force: false`. A fresh replacement at a failed host's IP triggers `rescan` to clear stale registration and Clone to rejoin;
- **Idempotent:** Converged clusters return `changed=0` within seconds. After AdminAPI rejoin/clone, one expected `changed` can restore declared replication seeds.
- **Check mode:** Fresh nodes preview through package installation only; later stages need installed components. Deployed clusters support full previews.
- First deployment of three nodes takes about 2 minutes: certificates → configuration/init → AdminAPI cluster creation → Clone two replicas → Router bootstrap on each member → application objects → initial backup and monitoring registration.

--------

## Stages and Tags

```text
id (node-id)          # derive node identity and hardware facts
mysql
├── mysql_check       # identity, platform, credentials, parameters, datadir ownership (always)
├── mysql_install     # install the fixed MySQL 8.4 packages and /etc/profile.d/mysql.sh
├── mysql_bootstrap
│   ├── mysql_cert    # issue and install TLS leaf certificates, including optional NODE VIP SANs
│   ├── mysql_config  # render mysql_config_file and initialize empty data directories with mysql_init
│   ├── mysql_launch  # start / rolling-restart mysqld; converge root and AdminAPI identities
│   └── mysql_cluster # create, recover, or converge InnoDB Cluster: mysql_cluster_manage / mysql_cluster_verify
├── mysql_access
│   └── mysql_router  # bootstrap and verify Router on HA members
├── mysql_provision   # converge mysql_platform_user, application databases (mysql_db), and users (mysql_user)
├── mysql_backup      # install scripts, render units, enable timer, and create initial backup: mysql_backup_install/config/timer/init
├── mysql_monitor     # configure mysql_exporter and register targets: mysql_register / register / add_metrics; alias monitor
└── mysql_done        # print instance and endpoint summary
```

Common tagged runs, all supporting `-l` on surviving subsets of a degraded cluster:

```bash
./mysql.yml -l my-test -t mysql_provision    # databases/users only; partial -l must include the current PRIMARY
./mysql.yml -l my-test -t mysql_db           # application databases only
./mysql.yml -l my-test -t mysql_user         # application users and grants only
./mysql.yml -l my-test -t mysql_backup       # backup scripts, timer, and initial backup only
./mysql.yml -l my-test -t mysql_monitor      # exporter and target registration only
```

Run the full playbook for parameter and configuration changes. They require the rolling-restart workflow below.


--------

## Config Changes and Rolling Restarts

`mysql_launch` orchestrates restarts after configuration, certificate, or Systemd unit changes:

1. **Health:** All three HA members must be `ONLINE`. Degraded clusters reject restarts; repair first.
2. **Secondaries:** Use live roles, not `mysql_seq`. Restart one secondary at a time and wait for `ONLINE`.
3. **Primary:** Restart last. One automatic failover pauses writes for a few seconds.

Standalone restarts in place. Render-time `mysqld --validate-config` rejects invalid options before service changes.


--------

## Guardrails

`mysql.yml` **rejects** these conditions and reports the cause and next steps:

| Refused scenario | Rationale |
|:---|:---|
| Partial member selection | Bootstrap, configuration, and cluster phases require every member; exceptions: `mysql_provision`, `mysql_db`, `mysql_user`, `mysql_backup`, `mysql_monitor` |
| Invalid topology | Member count must be 1 or 3, with consecutive `mysql_seq` |
| Unsupported platform | Arch/OS outside the support matrix (e.g. Ubuntu ARM64) |
| Placeholder or invalid passwords | Unreplaced `CHANGE_ME` prefix, or `%(...)s` INI interpolation in `mysql_monitor_password` |
| Unowned data or legacy database coexistence | Missing/mismatched `.pigsty-mysql-initialized`, or an existing `/var/lib/mysql` database while `mysql_data` points elsewhere |
| Deprecated backup parameter | Inventory still defines `mysql_backup_repo`; use `mysql_backup_dir` and `mysql_backup_retention` |
| Implicit password changes | Declared HA `mysql_cluster_password` or root password differs from live credentials |
| Illegal parameter overrides | Reserved keys, malformed names, or multi-line values in `mysql_parameters` |
| Rolling restart while degraded | Configuration-driven rolling restarts require all 3 members ONLINE |
| Non-fresh clone target | Replacement members must be brand-new machines with empty datadirs |
| Incomplete outage with unreachable hosts | Refuse automatic rebuilding when quorum is down and some members are unreachable; all three reachable permits highest-GTID recovery |
{.full-width .wide .expand}

These safeguards reduce operational mistakes but do not guarantee zero data loss. Bypassing them, such as removing leftover data directories, requires an explicit operator decision backed by verified backups and an exact target scope.

--------

## `mysql-rm.yml`

Removal requires explicit `-l` targets (one HA member, a full cluster, or a standalone instance; selecting two of three is rejected) and `-e mysql_safeguard=false`:

```bash
# Remove and destroy one HA member; switch primary first if needed; mysql_rm_data=true is mandatory
./mysql-rm.yml -l 10.10.10.13 --check -e mysql_safeguard=false
./mysql-rm.yml -l 10.10.10.13         -e mysql_safeguard=false

# Destroy the whole cluster: default mysql_rm_data=true removes data/configuration but retains backups
./mysql-rm.yml -l my-test -e mysql_safeguard=false

# Stop the whole cluster with data/configuration retained; rerun mysql.yml to recover
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_data=false

# Destroy the cluster and uninstall packages
./mysql-rm.yml -l my-meta -e mysql_safeguard=false -e mysql_rm_pkg=true
```

`mysql-rm.yml` task tags:

| Tag | Description |
|:---|:---|
| `mysql_remove` | Root role tag for the complete removal workflow |
| `mysql_safeguard` | Validate -l scope, mysql_safeguard=false, parameters, and data ownership marker |
| `mysql_leave` | Single-member removal: delegate cluster-leave.js to a survivor, switch primary if needed, then remove with force: false |
| `mysql_deregister` | Remove /infra/targets/mysql/<ins>.yml on Infra nodes; aliases: deregister, rm_metrics |
| `mysql` | Stop and disable mysql-backup.timer/service, mysqlrouter, mysqld_exporter, and mysqld |
| `mysql_data` | With mysql_rm_data=true, remove data and managed configuration/certificates/state; -t mysql_data still checks ownership, leaves the cluster, and stops services first |
| `mysql_pkg` | With mysql_rm_pkg=true, uninstall MySQL / Router / XtraBackup / Exporter packages |
{.full-width .wide .expand}

Execution semantics and safeguards:

- **Destroy data/configuration by default, always retain backups**: `mysql_rm_data: true` removes `mysql_data`, `/etc/mysql/pigsty`, `/etc/mysql/pki`, `pigsty.cnf`, Router state/keyring, exporter configuration, backup units/scripts/state, `/var/lib/node_exporter/textfile/mysql.prom`, and `/etc/profile.d/mysql.sh`, but **never touches `mysql_backup_dir` (`/data/backups/mysql`)**;
- **Graceful member removal with automatic switchover**: AdminAPI runs through a survivor and requires an `ONLINE` target and `mysql_rm_data=true`. For a `PRIMARY` target, it first calls `setPrimaryInstance()` to transfer leadership, then `removeInstance(..., {force: false, timeout: 60})`, and cleans the target's local data/services;
- **Stop the whole cluster with data retained**: `-e mysql_rm_data=false` requires selecting the entire cluster. It stops services and deregisters monitoring without writing retirement locks. Rerun `./mysql.yml -l <cluster>` at any time to start services and recover quorum automatically.

Check mode (`--check`) validates all safeguards and previews actions without changing live state.

--------

## Playbook Boundaries

The following operations remain **manual**; see [Administration](/docs/mysql/admin):

- Planned switchover to a chosen primary (`mysh 'dba.getCluster().setPrimaryInstance(...)'`);
- Quorum recovery with fewer than three reachable hosts, or forced removal of a permanently lost member without replacement (`removeInstance(..., {force: true})`). A fresh replacement at the same IP instead allows a full `mysql.yml` run to clean registration and Clone automatically;
- Physical backup copy-back through the XtraBackup `--copy-back` runbook;
- Cleanup of historical backups under `mysql_backup_dir`;
- Topology changes (1→3, 3→5) and member re-addressing.
