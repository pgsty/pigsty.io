# Patroni HA Management

> Manage PostgreSQL cluster HA with Patroni, including config changes, status check, switchover, restart, and reinit replica.

---

LLMS index: [llms.txt](/llms.txt)

---

## Overview

Pigsty uses Patroni to manage PostgreSQL clusters.
It handles configuration changes, status checks, switchovers, restarts, replica reinitialization, and other operations.

To manage clusters with Patroni, use one of these identities:

- On an [**INFRA node**](/docs/concept/arch/node#admin-node), use an [**administration user**](/docs/deploy/admin) to manage all clusters in the environment.
- On a [**PGSQL node**](/docs/concept/arch/node#pgsql-node), use [**`pg_dbsu`**](/docs/pgsql/param#pg_dbsu), which defaults to `postgres`, to manage only the current cluster.

Patroni provides the [**`patronictl`**](https://patroni.readthedocs.io/en/latest/patronictl.html) administration CLI.
Pigsty provides the `pg` wrapper alias to simplify its use.

> [!DETAILS]- Using patronictl via pg alias
> ```bash
> pg ()
> {
>     local patroni_conf="/infra/conf/patronictl.yml";
>     if [ ! -r ${patroni_conf} ]; then
>         patroni_conf="/etc/patroni/patroni.yml";
>         if [ ! -r ${patroni_conf} ]; then
>             echo "error: patronictl config not found";
>             return 1;
>         fi;
>     fi;
>     patronictl -c ${patroni_conf} "$@"
> }
> ```


----------------

## Available Commands

| Command                           | Function             | Description                                                  |
|-----------------------------------|----------------------|--------------------------------------------------------------|
| [**`edit-config`**](#edit-config) | Edit Config          | Interactively edit cluster Patroni/PostgreSQL config         |
| [**`list`**](#list-status)        | List Status          | List cluster members and their status                        |
| [**`switchover`**](#switchover)   | Switchover           | Switch primary role to specified replica (planned)           |
| [**`failover`**](#failover)       | Failover             | Force failover to specified replica (emergency)              |
| [**`restart`**](#restart)         | Restart              | Restart PostgreSQL instance to apply restart-required params |
| [**`reload`**](#reload)           | Reload               | Reload Patroni config (no restart needed)                    |
| [**`reinit`**](#reinit-replica)   | Reinit Replica       | Reinitialize replica (wipe data and re-clone)                |
| [**`pause`**](#pause)             | Pause Auto-Failover  | Pause Patroni automatic failover                             |
| [**`resume`**](#resume)           | Resume Auto-Failover | Resume Patroni automatic failover                            |
| [**`history`**](#history)         | View History         | Show cluster failover history                                |
| [**`show-config`**](#show-config) | Show Config          | Display current cluster config (read-only)                   |
| [**`query`**](#query)             | Execute Query        | Execute SQL query on cluster members                         |
| [**`topology`**](#topology)       | View Topology        | Display cluster replication topology                         |
| [**`version`**](#version)         | View Version         | Display Patroni version info                                 |
| [**`remove`**](#remove)           | Remove Member        | Remove cluster member from DCS (dangerous)                   |
{.full-width}


----------------

## Edit Config

Use [**`edit-config`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-edit-config) to edit cluster Patroni and PostgreSQL configuration interactively.
The command opens an editor for configuration stored in DCS.
It applies changes automatically to all members.
You can change Patroni parameters, such as `ttl`, `loop_wait`, and `synchronous_mode`.
You can also change PostgreSQL parameters in `postgresql.parameters`.

```bash
pg edit-config <cls>                  # Interactive edit cluster config
pg edit-config <cls> --force          # Skip confirmation and apply directly
pg edit-config <cls> -p <k>=<v>       # Modify PostgreSQL param (--pg shorthand)
pg edit-config <cls> -s <k>=<v>       # Modify Patroni param (--set shorthand)
```

[demo\/pgsql\-config\.cast](/demo/pgsql-config.cast)

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

Some parameter changes require a PostgreSQL restart.
Run `pg list` to find instances marked with `*`.
These instances need a restart.
Run `pg restart` to apply the changes.
You can also call the Patroni [**REST API**](https://patroni.readthedocs.io/en/latest/rest_api.html) with `curl` or a program:

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

Use [**`list`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-list) to view cluster members and their status.
The output shows each instance name, host, role, state, timeline, and replication lag.
This is the most common command for cluster health checks.

```bash
pg list <cls>                         # List specified cluster status
pg list                               # List all clusters (on admin node)
pg list <cls> -e                      # Show extended info (--extended)
pg list <cls> -t                      # Show timestamp (--timestamp)
pg list <cls> -f json                 # Output as JSON (--format)
pg list <cls> -W 5                    # Refresh every 5 seconds (--watch)
```

Example output:

```text
+ Cluster: pg-test (7322261897169354773) -----+----+--------------+
| Member    | Host        | Role    | State   | TL | Lag in MB    |
+-----------+-------------+---------+---------+----+--------------+
| pg-test-1 | 10.10.10.11 | Leader  | running |  1 |              |
| pg-test-2 | 10.10.10.12 | Replica | running |  1 |            0 |
| pg-test-3 | 10.10.10.13 | Replica | running |  1 |            0 |
+-----------+-------------+---------+---------+----+--------------+
```

The output columns have these meanings:
- **Member**: The instance name, formed from `pg_cluster`-`pg_seq`.
- **Host**: The instance IP address.
- **Role**: Leader (primary), Replica, Sync Standby, or Standby Leader (cascade primary).
- **State**: The running state, such as `running`, `streaming`, `in archive recovery`, `starting`, or `stopped`.
- **TL**: The timeline number, which increases after each switchover.
- **Lag in MB**: Replication lag in MB. This value is not shown for the primary.

Instances requiring restart show `*` after the name:

```text
+ Cluster: pg-test (7322261897169354773) -------+----+--------------+
| Member      | Host        | Role    | State   | TL | Lag in MB    |
+-------------+-------------+---------+---------+----+--------------+
| pg-test-1 * | 10.10.10.11 | Leader  | running |  1 |              |
| pg-test-2 * | 10.10.10.12 | Replica | running |  1 |            0 |
+-------------+-------------+---------+---------+----+--------------+
```



----------------

## Switchover

Use [**`switchover`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-switchover) for a planned primary-replica role change.
Patroni first verifies that the replica is fully synchronized.
It then demotes the primary and promotes the target replica.
The operation takes seconds, with a short interruption to writes.
Use it for primary host maintenance, upgrades, or migration of the primary to a better node.

```bash
pg switchover <cls>                   # Interactive switchover, prompts for target replica
pg switchover <cls> --leader <old>    # Specify current primary name
pg switchover <cls> --candidate <new> # Specify target replica name
pg switchover <cls> --scheduled <time> # Scheduled switchover, format: 2024-12-01T03:00
pg switchover <cls> --force           # Skip confirmation
```

Before a switchover, verify that all replicas are healthy (`running` or `streaming`).
Verify that replication lag is acceptable, and notify stakeholders.

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

Use [**`failover`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-failover) for emergency recovery when the primary is unavailable.
It promotes a replica directly, without confirmation from the original primary.
Replicas may not be fully synchronized, so `failover` may cause minor data loss.
For operations that are not emergencies, use `switchover`.

```bash
pg failover <cls>                     # Interactive failover
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

```

**Switchover vs Failover**: Switchover supports planned maintenance and requires the original primary to be online.
It waits for full synchronization and prevents data loss.
Failover supports emergency recovery when the original primary can be offline.
It promotes a replica directly and may lose data that has not replicated.
Use Switchover for routine maintenance and upgrades.
Use Failover only when the primary is completely down and cannot recover.

> The built-in Patroni `failover` subcommand currently has no `--leader` option.
> Use `switchover --leader ...` to validate or name the old primary during a planned switchover.
> Failover accepts only the candidate replica.



----------------

## Restart

Use [**`restart`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-restart) to restart PostgreSQL instances, usually after changes to parameters that require a restart.
For a whole cluster, `patronictl` submits each selected member in turn.
It does not guarantee that replicas restart before the leader.
If this order matters, restart replicas by role first.
Then restart the leader separately.

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

# Restart all cluster members (leader-last order is not guaranteed)
pg restart pg-test --force

# Restart only pending instances
pg restart pg-test --pending --force

# Explicitly restart replicas first, then the leader
pg restart pg-test --role replica --force
pg restart pg-test --role leader --force

# Scheduled restart (for maintenance window)
pg restart pg-test --scheduled "2024-12-01T03:00"

# Set restart timeout to 300 seconds
pg restart pg-test --timeout 300 --force
```



----------------

## Reload

Use [**`reload`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-reload) to reload Patroni configuration without a PostgreSQL restart.
It reads configuration files again and applies parameters through `pg_reload_conf()`.
It causes less disruption than `restart`: connections and running queries continue.

```bash
pg reload <cls>                       # Reload entire cluster config
pg reload <cls> <member>              # Reload specific instance config
pg reload <cls> --role leader         # Reload primary only
pg reload <cls> --role replica        # Reload all replicas
pg reload <cls> --force               # Skip confirmation
```

Most PostgreSQL parameter changes apply through `reload`.
Only parameters with postmaster context require a restart, such as `shared_buffers`, `max_connections`, `shared_preload_libraries`, and `archive_mode`.

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

Use [**`reinit`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-reinit) to reinitialize a replica.
This deletes all replica data and rebuilds it in the order specified by Patroni `create_replica_methods`.
By default, Pigsty tries `basebackup` (`pg_basebackup`) first.
If a remote pgBackRest repository is enabled, Pigsty also configures `pgbackrest` as a fallback.
Use reinitialization for corrupted replica data, missing WAL after excessive lag, or a required replica configuration reset.

```bash
pg reinit <cls> <member>              # Reinitialize specified replica
pg reinit <cls> <member> --force      # Skip confirmation
pg reinit <cls> <member> --wait       # Wait for rebuild to complete
```

> Warning: This operation **deletes all data** on the target instance.
> You can run it only on replicas, not on the primary.

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

```text
+ Cluster: pg-test (7322261897169354773) --------------+----+------+
| Member    | Host        | Role    | State            | TL | Lag  |
+-----------+-------------+---------+------------------+----+------+
| pg-test-1 | 10.10.10.11 | Leader  | running          |  2 |      |
| pg-test-2 | 10.10.10.12 | Replica | creating replica |    |    ? |
+-----------+-------------+---------+------------------+----+------+
```



----------------

## Pause

Use [**`pause`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-pause) to pause Patroni automatic failover.
While paused, Patroni does not promote replicas automatically, even if the primary fails.
Pause during planned maintenance to prevent accidental failover.
You can also pause for debugging to prevent cluster state changes, or to control manual switchover timing.

```bash
pg pause <cls>                        # Pause automatic failover
pg pause <cls> --wait                 # Pause and wait for all members to confirm
```

> Warning: While paused, the cluster **will not recover automatically** if the primary fails.
> Run `resume` after maintenance.

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

Use [**`resume`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-resume) to resume Patroni automatic failover.
Run it immediately after maintenance so the cluster can recover automatically from a primary failure.

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

Use [**`history`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-history) to view cluster failover history.
Each automatic or manual switchover creates a timeline record.

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

The history columns have these meanings:
- **TL**: The timeline number. It increases after each switchover to distinguish primary histories.
- **LSN**: The Log Sequence Number at switchover, which identifies the WAL position.
- **Reason**: `switchover to xxx` for a manual operation, `failover to xxx` for a failure, or `no recovery target specified` for initialization.
- **Timestamp**: The time of the switchover.



----------------

## Show Config

Use [**`show-config`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-show-config) to view the current cluster configuration in DCS.
This command only reads configuration.
To change it, use `edit-config`.

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

Use [**`query`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-query) to run SQL quickly on cluster members during debugging.
For complex production queries, use `psql` or an application.

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

Use [**`topology`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-topology) to view cluster replication topology as a tree.
It shows primary-replica relationships more clearly than `list`, especially for cascading replication.

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

For cascading replication, the topology shows the replication hierarchy.
For example, `pg-test-3` replicates from `pg-test-2`, which replicates from the primary `pg-test-1`.



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

Use [**`remove`**](https://patroni.readthedocs.io/en/latest/patronictl.html#patronictl-remove) to remove cluster or member metadata from DCS.
This operation is dangerous.
It removes only DCS metadata; it does not stop PostgreSQL or delete data files.
Incorrect use can make cluster state inconsistent.

```bash
pg remove <cls>                       # Remove entire cluster metadata from DCS
```

Normally, you do not need this command.
To remove a cluster or instance, use [**`bin/pgsql-rm`**](/docs/pgsql/admin/cluster#remove-cluster) or [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml).
Consider `remove` only for orphaned DCS metadata after physical node removal, or metadata left after cluster destruction by other means.

```bash
# Remove entire cluster metadata (requires multiple confirmations)
$ pg remove pg-test
Please confirm the cluster name to remove: pg-test
You are about to remove all information in DCS for pg-test, please type: "Yes I am aware": Yes I am aware
```
