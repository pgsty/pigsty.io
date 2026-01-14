---
title: Patroni HA Management
linkTitle: Patroni HA Admin
weight: 60
description: Manage PostgreSQL cluster HA with Patroni, including config changes, status check, switchover, restart, and reinit replica.
icon: fa-solid fa-infinity
module: [PGSQL]
categories: [Task]
---

## Overview

Pigsty uses Patroni to manage PostgreSQL clusters. It handles config changes, status checks, switchover, restart, reinit replicas, and more.

To use Patroni for management, you need one of the following identities:

- From [**INFRA node**](/docs/concept/node#admin-node) as [**admin user**](/docs/deploy/admin), managing all clusters in the environment.
- From [**PGSQL node**](/docs/concept/node#pgsql-node) as [**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu) (default `postgres`), managing the current cluster only.

Patroni provides [**`patronictl`**](https://patroni.readthedocs.io/en/latest/patronictl.html) CLI for management. Pigsty provides a wrapper alias `pg` to simplify operations.

<details><summary>Using patronictl via pg alias</summary>

```bash
pg ()
{
    local patroni_conf="/infra/conf/patronictl.yml";
    if [ ! -r ${patroni_conf} ]; then
        patroni_conf="/etc/patroni/patroni.yml";
        if [ ! -r ${patroni_conf} ]; then
            echo "error: patronictl config not found";
            return 1;
        fi;
    fi;
    patronictl -c ${patroni_conf} "$@"
}
```

</details>


----------------

## Available Commands

| Command                           | Function      | Description                                                 |
|-----------------------------------|---------------|-------------------------------------------------------------|
| [**`edit-config`**](#edit-config) | Edit Config   | Interactively edit cluster Patroni/PostgreSQL config        |
| [**`list`**](#list-status)        | List Status   | List cluster members and their status                       |
| [**`switchover`**](#switchover)   | Switchover    | Switch primary role to specified replica (planned)          |
| [**`failover`**](#failover)       | Failover      | Force failover to specified replica (emergency)             |
| [**`restart`**](#restart)         | Restart       | Restart PostgreSQL instance to apply restart-required params|
| [**`reload`**](#reload)           | Reload        | Reload Patroni config (no restart needed)                   |
| [**`reinit`**](#reinit-replica)   | Reinit Replica| Reinitialize replica (wipe data and re-clone)               |
| [**`pause`**](#pause)             | Pause Auto-Failover | Pause Patroni automatic failover                      |
| [**`resume`**](#resume)           | Resume Auto-Failover| Resume Patroni automatic failover                     |
| [**`history`**](#history)         | View History  | Show cluster failover history                               |
| [**`show-config`**](#show-config) | Show Config   | Display current cluster config (read-only)                  |
| [**`query`**](#query)             | Execute Query | Execute SQL query on cluster members                        |
| [**`topology`**](#topology)       | View Topology | Display cluster replication topology                        |
| [**`version`**](#version)         | View Version  | Display Patroni version info                                |
| [**`remove`**](#remove)           | Remove Member | Remove cluster member from DCS (dangerous)                  |
{.full-width}


----------------

## Edit Config

Use [**`edit-config`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-edit-config) to interactively edit cluster Patroni and PostgreSQL config. This opens an editor to modify config stored in DCS, automatically applying changes to all members. You can change Patroni params (`ttl`, `loop_wait`, `synchronous_mode`, etc.) and PostgreSQL params in `postgresql.parameters`.

```bash
pg edit-config <cls>                  # Interactive edit cluster config
pg edit-config <cls> --force          # Skip confirmation and apply directly
pg edit-config <cls> -p <k>=<v>       # Modify PostgreSQL param (--pg shorthand)
pg edit-config <cls> -s <k>=<v>       # Modify Patroni param (--set shorthand)
```

{{< asciinema file="demo/pgsql-config.cast" markers="7:Edit Config,9:Apply,11:Verify,13:API Edit,14:API Verify" speed="1.2" autoplay="true" loop="true" >}}

Common config modification examples:

```bash
# Modify PostgreSQL param: slow query threshold (prompts for confirmation)
pg edit-config pg-test -p log_min_duration_statement=1000

# Modify PostgreSQL param, skip confirmation
pg edit-config pg-test -p log_min_duration_statement=1000 --force

# Modify multiple PostgreSQL params
pg edit-config pg-test -p work_mem=256MB -p maintenance_work_mem=1GB --force

# Modify Patroni params: increase failure detection window (increase RTO)
pg edit-config pg-test -s loop_wait=15 -s ttl=60 --force

# Modify Patroni param: enable synchronous replication mode
pg edit-config pg-test -s synchronous_mode=true --force

# Modify Patroni param: enable strict synchronous mode (require at least one sync replica for writes)
pg edit-config pg-test -s synchronous_mode_strict=true --force

# Modify restart-required params (need pg restart after)
pg edit-config pg-test -p shared_buffers=4GB --force
pg edit-config pg-test -p shared_preload_libraries='timescaledb, pg_stat_statements' --force
pg edit-config pg-test -p max_connections=200 --force
```

Some params require PostgreSQL restart to take effect. Use `pg list` to check - instances marked with `*` need restart. Then use `pg restart` to apply.
You can also use `curl` or programs to call Patroni [**REST API**](https://patroni.readthedocs.io/en/latest/rest_api.html):

```bash
# View current config
curl -s 10.10.10.11:8008/config | jq .

# Modify params via API (requires auth)
curl -u 'postgres:Patroni.API' \
     -d '{"postgresql":{"parameters": {"log_min_duration_statement":200}}}' \
     -s -X PATCH http://10.10.10.11:8008/config | jq .
```



----------------

## List Status

Use [**`list`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-list) to view cluster members and status. Output shows each instance's name, host, role, state, timeline, and replication lag. This is the most commonly used command for checking cluster health.

```bash
pg list <cls>                         # List specified cluster status
pg list                               # List all clusters (on admin node)
pg list <cls> -e                      # Show extended info (--extended)
pg list <cls> -t                      # Show timestamp (--timestamp)
pg list <cls> -f json                 # Output as JSON (--format)
pg list <cls> -W 5                    # Refresh every 5 seconds (--watch)
```

Example output:

```
+ Cluster: pg-test (7322261897169354773) -----+----+--------------+
| Member    | Host        | Role    | State   | TL | Lag in MB    |
+-----------+-------------+---------+---------+----+--------------+
| pg-test-1 | 10.10.10.11 | Leader  | running |  1 |              |
| pg-test-2 | 10.10.10.12 | Replica | running |  1 |            0 |
| pg-test-3 | 10.10.10.13 | Replica | running |  1 |            0 |
+-----------+-------------+---------+---------+----+--------------+
```

Column descriptions: **Member** is instance name, composed of `pg_cluster`-`pg_seq`; **Host** is instance IP; **Role** is role type - Leader (primary), Replica, Sync Standby, Standby Leader (cascade primary); **State** is running state - `running`, `streaming`, `in archive recovery`, `starting`, `stopped`, etc.; **TL** is timeline number, incremented after each switchover; **Lag in MB** is replication lag in MB (not shown for primary).

Instances requiring restart show `*` after the name:

```
+ Cluster: pg-test (7322261897169354773) -------+----+--------------+
| Member      | Host        | Role    | State   | TL | Lag in MB    |
+-------------+-------------+---------+---------+----+--------------+
| pg-test-1 * | 10.10.10.11 | Leader  | running |  1 |              |
| pg-test-2 * | 10.10.10.12 | Replica | running |  1 |            0 |
+-------------+-------------+---------+---------+----+--------------+
```



----------------

## Switchover

Use [**`switchover`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-switchover) for planned primary-replica switchover. Switchover is graceful: Patroni ensures replica is fully synced, demotes primary, then promotes target replica. Takes seconds with brief write unavailability. Use for primary host maintenance, upgrades, or migrating primary to better nodes.

```bash
pg switchover <cls>                   # Interactive switchover, prompts for target replica
pg switchover <cls> --leader <old>    # Specify current primary name
pg switchover <cls> --candidate <new> # Specify target replica name
pg switchover <cls> --scheduled <time> # Scheduled switchover, format: 2024-12-01T03:00
pg switchover <cls> --force           # Skip confirmation
```

Before switchover, ensure all replicas are healthy (`running` or `streaming`), replication lag is acceptable, and stakeholders are notified.

```bash
# Interactive switchover (recommended, shows topology and prompts for selection)
$ pg switchover pg-test
Current cluster topology
+ Cluster: pg-test (7322261897169354773) -----+----+--------------+
| Member    | Host        | Role    | State   | TL | Lag in MB    |
+-----------+-------------+---------+---------+----+--------------+
| pg-test-1 | 10.10.10.11 | Leader  | running |  1 |              |
| pg-test-2 | 10.10.10.12 | Replica | running |  1 |            0 |
| pg-test-3 | 10.10.10.13 | Replica | running |  1 |            0 |
+-----------+-------------+---------+---------+----+--------------+
Primary [pg-test-1]:
Candidate ['pg-test-2', 'pg-test-3'] []: pg-test-2
When should the switchover take place (e.g. 2024-01-01T12:00) [now]:
Are you sure you want to switchover cluster pg-test, demoting current leader pg-test-1? [y/N]: y

# Non-interactive switchover (specify primary and candidate)
pg switchover pg-test --leader pg-test-1 --candidate pg-test-2 --force

# Scheduled switchover (at 3 AM, for maintenance window)
pg switchover pg-test --leader pg-test-1 --candidate pg-test-2 --scheduled "2024-12-01T03:00"
```

After switchover, use `pg list` to confirm new cluster topology.



----------------

## Failover

Use [**`failover`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-failover) for emergency failover. Unlike `switchover`, `failover` is for when primary is unavailable. It directly promotes a replica without waiting for original primary confirmation. Since replicas may not be fully synced, `failover` may cause minor data loss. Use `switchover` for non-emergency situations.

```bash
pg failover <cls>                     # Interactive failover
pg failover <cls> --leader <old>      # Specify original primary (for verification, optional)
pg failover <cls> --candidate <new>   # Specify replica to promote
pg failover <cls> --force             # Skip confirmation
```

Failover examples:

```bash
# Interactive failover
$ pg failover pg-test
Candidate ['pg-test-2', 'pg-test-3'] []: pg-test-2
Are you sure you want to failover cluster pg-test? [y/N]: y
Successfully failed over to "pg-test-2"

# Non-interactive failover (for emergencies)
pg failover pg-test --candidate pg-test-2 --force

# Specify original primary for verification (errors if name mismatch)
pg failover pg-test --leader pg-test-1 --candidate pg-test-2 --force
```

**Switchover vs Failover**: Switchover is for planned maintenance, requires original primary online, ensures full sync before switching, no data loss; Failover is for emergency recovery, original primary can be offline, directly promotes replica, may lose unsynced data. Use Switchover for daily maintenance/upgrades; use Failover only when primary is completely down and unrecoverable.



----------------

## Restart

Use [**`restart`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-restart) to restart PostgreSQL instances, typically to apply restart-required param changes. Patroni coordinates restarts - for full cluster restart, it uses rolling restart: replicas first, then primary, minimizing downtime.

```bash
pg restart <cls>                      # Restart all instances in cluster
pg restart <cls> <member>             # Restart specific instance
pg restart <cls> --role leader        # Restart primary only
pg restart <cls> --role replica       # Restart all replicas
pg restart <cls> --pending            # Restart only instances marked for restart
pg restart <cls> --scheduled <time>   # Scheduled restart
pg restart <cls> --timeout <sec>      # Set restart timeout (seconds)
pg restart <cls> --force              # Skip confirmation
```

After modifying restart-required params (`shared_buffers`, `shared_preload_libraries`, `max_connections`, `max_worker_processes`, etc.), use this command.

```bash
# Check which instances need restart (marked with *)
$ pg list pg-test
+ Cluster: pg-test (7322261897169354773) -------+----+--------------+
| Member      | Host        | Role    | State   | TL | Lag in MB    |
+-------------+-------------+---------+---------+----+--------------+
| pg-test-1 * | 10.10.10.11 | Leader  | running |  1 |              |
| pg-test-2 * | 10.10.10.12 | Replica | running |  1 |            0 |
+-------------+-------------+---------+---------+----+--------------+

# Restart single replica
pg restart pg-test pg-test-2

# Restart entire cluster (rolling restart, replicas then primary)
pg restart pg-test --force

# Restart only pending instances
pg restart pg-test --pending --force

# Restart all replicas only
pg restart pg-test --role replica --force

# Scheduled restart (for maintenance window)
pg restart pg-test --scheduled "2024-12-01T03:00"

# Set restart timeout to 300 seconds
pg restart pg-test --timeout 300 --force
```



----------------

## Reload

Use [**`reload`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-reload) to reload Patroni config without restarting PostgreSQL. This re-reads config files and applies non-restart params via `pg_reload_conf()`. Lighter than `restart` - doesn't interrupt connections or running queries.

```bash
pg reload <cls>                       # Reload entire cluster config
pg reload <cls> <member>              # Reload specific instance config
pg reload <cls> --role leader         # Reload primary only
pg reload <cls> --role replica        # Reload all replicas
pg reload <cls> --force               # Skip confirmation
```

Most PostgreSQL params work via `reload`. Only postmaster-context params (`shared_buffers`, `max_connections`, `shared_preload_libraries`, `archive_mode`, etc.) require restart.

```bash
# Reload entire cluster
pg reload pg-test

# Reload single instance
pg reload pg-test pg-test-1

# Force reload, skip confirmation
pg reload pg-test --force
```



----------------

## Reinit Replica

Use [**`reinit`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-reinit) to reinitialize a replica. This deletes all data on the replica and performs fresh `pg_basebackup` from primary. Use when replica data is corrupted, replica is too far behind (WAL already purged), or replica config needs reset.

```bash
pg reinit <cls> <member>              # Reinitialize specified replica
pg reinit <cls> <member> --force      # Skip confirmation
pg reinit <cls> <member> --wait       # Wait for rebuild to complete
```

> Warning: This operation **deletes all data** on target instance! Can only be run on replicas, not primary.

```bash
# Reinitialize replica (prompts for confirmation)
$ pg reinit pg-test pg-test-2
Are you sure you want to reinitialize members pg-test-2? [y/N]: y
Success: reinitialize for member pg-test-2

# Force reinitialize, skip confirmation
pg reinit pg-test pg-test-2 --force

# Reinitialize and wait for completion
pg reinit pg-test pg-test-2 --force --wait
```

During rebuild, use `pg list` to check progress. Replica state shows `creating replica`:

```
+ Cluster: pg-test (7322261897169354773) --------------+----+------+
| Member    | Host        | Role    | State            | TL | Lag  |
+-----------+-------------+---------+------------------+----+------+
| pg-test-1 | 10.10.10.11 | Leader  | running          |  2 |      |
| pg-test-2 | 10.10.10.12 | Replica | creating replica |    |    ? |
+-----------+-------------+---------+------------------+----+------+
```



----------------

## Pause

Use [**`pause`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-pause) to pause Patroni automatic failover. When paused, Patroni won't auto-promote replicas even if primary fails. Use for planned maintenance windows (prevent accidental triggers), debugging (prevent cluster state changes), or manual switchover timing control.

```bash
pg pause <cls>                        # Pause automatic failover
pg pause <cls> --wait                 # Pause and wait for all members to confirm
```

> Warning: During pause, cluster **won't auto-recover** if primary fails! Remember to `resume` after maintenance.

```bash
# Pause automatic failover
$ pg pause pg-test
Success: cluster management is paused

# Check cluster status (shows Maintenance mode: on)
$ pg list pg-test
+ Cluster: pg-test (7322261897169354773) -----+----+--------------+
| Member    | Host        | Role    | State   | TL | Lag in MB    |
+-----------+-------------+---------+---------+----+--------------+
| pg-test-1 | 10.10.10.11 | Leader  | running |  1 |              |
| pg-test-2 | 10.10.10.12 | Replica | running |  1 |            0 |
+-----------+-------------+---------+---------+----+--------------+
 Maintenance mode: on
```



----------------

## Resume

Use [**`resume`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-resume) to resume Patroni automatic failover. Execute immediately after maintenance to ensure cluster auto-recovers on primary failure.

```bash
pg resume <cls>                       # Resume automatic failover
pg resume <cls> --wait                # Resume and wait for all members to confirm
```

```bash
# Resume automatic failover
$ pg resume pg-test
Success: cluster management is resumed

# Confirm resumed (Maintenance mode prompt disappears)
$ pg list pg-test
```



----------------

## History

Use [**`history`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-history) to view cluster failover history. Each switchover (auto or manual) creates a new timeline record.

```bash
pg history <cls>                      # Show failover history
pg history <cls> -f json              # Output as JSON
pg history <cls> -f yaml              # Output as YAML
```

```bash
$ pg history pg-test
+----+-----------+------------------------------+---------------------------+
| TL |       LSN | Reason                       | Timestamp                 |
+----+-----------+------------------------------+---------------------------+
|  1 | 0/5000060 | no recovery target specified | 2024-01-15T10:30:00+08:00 |
|  2 | 0/6000000 | switchover to pg-test-2      | 2024-01-20T14:00:00+08:00 |
|  3 | 0/7000028 | failover to pg-test-1        | 2024-01-25T09:15:00+08:00 |
+----+-----------+------------------------------+---------------------------+
```

Column descriptions: **TL** is timeline number, incremented after each switchover, distinguishes primary histories; **LSN** is Log Sequence Number at switchover, marks WAL position; **Reason** is switchover reason - `switchover to xxx` (manual), `failover to xxx` (failure), or `no recovery target specified` (init); **Timestamp** is when switchover occurred.



----------------

## Show Config

Use [**`show-config`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-show-config) to view current cluster config stored in DCS. This is read-only; use `edit-config` to modify.

```bash
pg show-config <cls>                  # Show cluster config
```

```bash
$ pg show-config pg-test
loop_wait: 10
maximum_lag_on_failover: 1048576
postgresql:
  parameters:
    archive_command: pgbackrest --stanza=pg-test archive-push %p
    max_connections: 100
    shared_buffers: 256MB
    log_min_duration_statement: 1000
  use_pg_rewind: true
  use_slots: true
retry_timeout: 10
ttl: 30
synchronous_mode: false
```



----------------

## Query

Use [**`query`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-query) to quickly execute SQL on cluster members. Convenient for debugging - for complex production queries, use `psql` or applications.

```bash
pg query <cls> -c "<sql>"             # Execute on primary
pg query <cls> -c "<sql>" -m <member> # Execute on specific instance (--member)
pg query <cls> -c "<sql>" -r leader   # Execute on primary (--role)
pg query <cls> -c "<sql>" -r replica  # Execute on all replicas
pg query <cls> -f <file>              # Execute SQL from file
pg query <cls> -c "<sql>" -U <user>   # Specify username (--username)
pg query <cls> -c "<sql>" -d <db>     # Specify database (--dbname)
pg query <cls> -c "<sql>" --format json  # Output as JSON
```

```bash
# Check primary connection count
pg query pg-test -c "SELECT count(*) FROM pg_stat_activity"

# Check PostgreSQL version
pg query pg-test -c "SELECT version()"

# Check replication status on all replicas
pg query pg-test -c "SELECT pg_is_in_recovery(), pg_last_wal_replay_lsn()" -r replica

# Execute on specific instance
pg query pg-test -c "SELECT pg_is_in_recovery()" -m pg-test-2

# Use specific user and database
pg query pg-test -c "SELECT current_user, current_database()" -U postgres -d postgres

# Output as JSON
pg query pg-test -c "SELECT * FROM pg_stat_replication" --format json
```



----------------

## Topology

Use [**`topology`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-topology) to view cluster replication topology as a tree. More intuitive than `list` for showing primary-replica relationships, especially for cascading replication.

```bash
pg topology <cls>                     # Show replication topology
```

```bash
$ pg topology pg-test
+ Cluster: pg-test (7322261897169354773) -------+----+--------------+
| Member      | Host        | Role    | State   | TL | Lag in MB    |
+-------------+-------------+---------+---------+----+--------------+
| pg-test-1   | 10.10.10.11 | Leader  | running |  1 |              |
| + pg-test-2 | 10.10.10.12 | Replica | running |  1 |            0 |
| + pg-test-3 | 10.10.10.13 | Replica | running |  1 |            0 |
+-------------+-------------+---------+---------+----+--------------+
```

In cascading replication, topology clearly shows replication hierarchy - e.g., `pg-test-3` replicates from `pg-test-2`, which replicates from primary `pg-test-1`.



----------------

## Version

Use [**`version`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-version) to view patronictl version.

```bash
pg version                            # Show patronictl version
```

```bash
$ pg version
patronictl version 4.1.0
```



----------------

## Remove

Use [**`remove`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-remove) to remove cluster or member metadata from DCS. This is dangerous - only removes DCS metadata, doesn't stop PostgreSQL or delete data files. Misuse may cause cluster state inconsistency.

```bash
pg remove <cls>                       # Remove entire cluster metadata from DCS
```

Normally you don't need this command. To properly remove clusters/instances, use Pigsty's [**`bin/pgsql-rm`**](/docs/pgsql/admin/cluster#remove-cluster) script or [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml) playbook.
Only consider `remove` for: orphaned DCS metadata (node physically removed but metadata remains), or cluster destroyed via other means requiring metadata cleanup.

```bash
# Remove entire cluster metadata (requires multiple confirmations)
$ pg remove pg-test
Please confirm the cluster name to remove: pg-test
You are about to remove all information in DCS for pg-test, please type: "Yes I am aware": Yes I am aware
```
