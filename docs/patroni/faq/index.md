# FAQ

> Frequently asked questions about Patroni operation and troubleshooting.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/faq.html

<a id="faq"></a>
This section answers common Patroni questions. Each subsection covers a different topic.

For more help or unexpected problems, see [chatting](/docs/patroni/contributing_guidelines#chatting) and [reporting_bugs](/docs/patroni/contributing_guidelines#reporting_bugs).

--------

## Comparison with other HA solutions

Why does Patroni require a separate cluster of DCS nodes while other solutions like `repmgr` do not?  
There are different ways of implementing HA solutions, each of them with their pros and cons.

Software like `repmgr` performs communication among the nodes to decide when actions should be taken.

Patroni uses DCS state as the authoritative source for its decisions.

A separate DCS cluster adds architectural complexity but reduces the risk of split-brain in your Postgres cluster.

What is the difference between Patroni and other HA solutions in regards to Postgres management?  
Patroni does not just manage the high availability of the Postgres cluster but also manages Postgres itself.

If Postgres nodes do not exist, Patroni bootstraps the primary and standbys and manages their configuration. For existing nodes, Patroni takes over cluster management.

Patroni also attempts automatic recovery. After primary failure, it fails over to a replica and tries to rejoin the old primary as a replica. After replica failure, it tries to rejoin that replica.

Patroni is a template for HA solutions because it manages Postgres as a whole, including physical replication.

--------

## DCS

Can I use the same `etcd` cluster to store data from two or more Patroni clusters?  
Yes, you can!

Information about a Patroni cluster is stored in the DCS under a path prefixed with the `namespace` and `scope` Patroni settings.

Multiple Patroni clusters can share a DCS cluster if their namespace and scope combinations are distinct.

What occurs if I attempt to use the same combination of `namespace` and `scope` for different Patroni clusters that point to the same DCS cluster?  
The second cluster finds existing DCS information with an incompatible Postgres system identifier. Patroni interprets this as a different cluster and a configuration error. It stops management of the second cluster.

Make sure to use different `namespace` / `scope` when dealing with different Patroni clusters that share the same DCS cluster.

What occurs if I lose my DCS cluster?  
The DCS is used to store basically status and the dynamic configuration of the Patroni cluster.

All Patroni clusters that use the lost DCS enter read-only mode unless [dcs_failsafe_mode](/docs/patroni/dcs_failsafe_mode#dcs_failsafe_mode) is enabled.

What should I do if I lose my DCS cluster?  
There are three possible outcomes upon losing your DCS cluster:

1.  The DCS cluster recovers fully. Patroni needs no action and should recover after DCS recovery.
2.  The DCS cluster is recreated with the same endpoints. Patroni needs no configuration changes.
3.  A new DCS cluster has different endpoints. Update the DCS endpoints in every Patroni node's configuration.

In scenarios `2.` and `3.`, Patroni recreates DCS status information from current cluster state. It restores dynamic configuration from `patroni.dynamic.json`. Each Patroni member stores this backup in its Postgres data directory.

What occurs if I lose majority in my DCS cluster?  
The DCS will become unresponsive, which will cause Patroni to demote the current read/write Postgres node.

Remember: Patroni relies on the state of the DCS to take actions on the cluster.

You can use the [dcs_failsafe_mode](/docs/patroni/dcs_failsafe_mode#dcs_failsafe_mode) to alleviate that situation.

--------

## patronictl

Do I need to run [patronictl](/docs/patroni/patronictl#patronictl) in the Patroni host?  
No, you do not need to do that.

On a Patroni host, [patronictl](/docs/patroni/patronictl#patronictl) can use the same configuration file as the `patroni` agent. This is convenient if you have access to the host.

[patronictl](/docs/patroni/patronictl#patronictl) is a client and can run remotely. Configure it to reach the DCS and the REST APIs of the required Patroni members.

Why did the information from one of my Patroni members disappear from the output of [patronictl_list](/docs/patroni/patronictl#patronictl_list) command?  
Information shown by [patronictl_list](/docs/patroni/patronictl#patronictl_list) is based on the contents of the DCS.

If a member disappears from the DCS, its Patroni agent probably stopped or cannot communicate with the DCS.

Without updates, member information expires from the DCS. The member then disappears from [patronictl_list](/docs/patroni/patronictl#patronictl_list) output.

Why is the information about one of my Patroni members not up-to-date in the output of [patronictl_list](/docs/patroni/patronictl#patronictl_list) command?  
Information shown by [patronictl_list](/docs/patroni/patronictl#patronictl_list) is based on the contents of the DCS.

Patroni normally updates this information approximately every `loop_wait` seconds. Even during normal operation, DCS information can therefore lag by up to `loop_wait` seconds.

This interval is not fixed. Some Patroni operations update DCS information immediately.

--------

## Configuration

What is the difference between dynamic configuration and local configuration?  
Dynamic, or global, configuration is stored in the DCS and applies to all cluster members. Store most configuration there.

Use local configuration for node-specific settings or overrides of global settings. Configure only the required member, through its configuration file or environment variables.

See more in [config](/docs/patroni/config#config).

What are the types of configuration in Patroni, and what is the precedence?  
The types are:

- Dynamic configuration: applied to all members;
- Local configuration: applied to the local member, overrides dynamic configuration;
- Environment configuration: applied to the local member, overrides both dynamic and local configuration.

**Note:** Some Postgres GUCs can only be set globally through dynamic configuration. Patroni also enforces hard-coded values for some GUCs.

See more in [config](/docs/patroni/config#config).

Is there any facility to help me create my Patroni configuration file?  
Yes, there is.

Use `patroni --generate-sample-config` to generate a sample configuration. Use `patroni --generate-config` to generate configuration from an existing Postgres instance.

Please refer to [generate_sample_config](/docs/patroni/config#generate_sample_config) and [generate_config](/docs/patroni/config#generate_config) for more details.

I changed my parameters under `bootstrap.dcs` configuration but Patroni is not applying the changes to the cluster members. What is wrong?  
Patroni uses `bootstrap.dcs` only to bootstrap a new cluster. During bootstrap, it writes these values to the DCS.

After bootstrap, change dynamic configuration through the DCS.

Refer to the next question for more details.

How can I change my dynamic configuration?  
Change DCS configuration with either method:

- [patronictl_edit_config](/docs/patroni/patronictl#patronictl_edit_config); or
- A `PATCH` request to [config_endpoint](/docs/patroni/rest_api#config_endpoint).

How can I change my local configuration?  
Edit the member's configuration file and signal its Patroni agent with `SIHGUP`. Use one of these methods:

- Send a `POST` request to the REST API [reload_endpoint](/docs/patroni/rest_api#reload_endpoint); or

- Run [patronictl_reload](/docs/patroni/patronictl#patronictl_reload); or

- Locally signal the Patroni process with `SIGHUP`:

  > - With systemd, run `systemctl reload PATRONI_UNIT.service`. Replace `PATRONI_UNIT` with the Patroni service name.
  > - Otherwise, find the `patroni` process and run `kill -s HUP PID`. Replace `PID` with its process ID.

**Note:** [patronictl_reload](/docs/patroni/patronictl#patronictl_reload) can fail in these cases:

- Expired REST API certificates: use the `-k` option of [patronictl](/docs/patroni/patronictl#patronictl) to bypass this problem.
- Wrong credentials: for example, you changed `restapi` or `ctl` credentials in a file shared by Patroni and [patronictl](/docs/patroni/patronictl#patronictl).

How can I change my environment configuration?  
The environment configuration is only read by Patroni during startup.

After an environment configuration change, restart the corresponding Patroni agent.

Avoid triggering failover during the restart. See [patronictl_pause](/docs/patroni/patronictl#patronictl_pause).

How can I reduce repetitive heartbeat log lines during normal operation?

To suppress repeated lines such as `Lock owner: ...` and `no action. I am ...`, set `log.deduplicate_heartbeat_logs: true`.

You can set it either in the Patroni YAML file ([log settings](/docs/patroni/config/yaml#log_settings)) or with `PATRONI_LOG_DEDUPLICATE_HEARTBEAT_LOGS=true`.

This reduces log volume. It also removes per-loop heartbeat information that can help diagnose failover.

What occurs if I change a Postgres GUC that requires a reload?  
After a dynamic or local configuration change, Patroni reloads the Postgres configuration.

What occurs if I change a Postgres GUC that requires a restart?  
Patroni will mark the affected members with a flag of `pending restart`.

Choose when and how to restart affected members. Use either method:

- [patronictl_restart](/docs/patroni/patronictl#patronictl_restart); or
- A `POST` request to [restart_endpoint](/docs/patroni/rest_api#restart_endpoint).

**Note:** Some Postgres GUCs require a specific node restart order. See [shared_memory_gucs](/docs/patroni/config#shared_memory_gucs).

What is the difference between `etcd` and `etcd3` in Patroni configuration?  
`etcd` uses the API version 2 of `etcd`, while `etcd3` uses the API version 3 of `etcd`.

API version 3 cannot manage data stored through version 2, and version 2 cannot manage data stored through version 3.

We recommend that you configure `etcd3` instead of `etcd` because:

- API version 2 is disabled by default from Etcd v3.4 onward;
- API version 2 will be completely removed on Etcd v3.6.

I enabled `use_slots` in Patroni. When a member stays offline for some time, the upstream node drops its replication slot. How can I prevent this?
There are two options:

1.  Adjust `member_slots_ttl`, available since Patroni `4.0.0` with PostgreSQL 11 or later. The default is `30min`. Patroni retains an absent member's slot while its downtime is shorter than this threshold.
2.  Configure permanent physical replication slots for the members.

Since Patroni `3.2.0`, member slots can be permanent slots managed by Patroni.

Patroni creates permanent physical slots on all nodes and retains them. It advances each slot's LSN to the LSN consumed by its member.

If you remove a member later, **you must** adjust permanent slot configuration. Otherwise, Patroni retains its slots indefinitely.

**Note:** Before Patroni `3.2.0`, permanent physical member slots were managed only on the current leader. After failover or switchover, Patroni created them on the new leader. This did not guarantee that the new leader had all WAL segments required by an absent node.

**Note:** Patroni `3.2.0` can still have a small race condition. A new replica slot can initially be ahead of the corresponding leader slot. If nobody consumes the slot, some files can still be missing after failover. We recommend continuous archiving so you can restore required WALs or perform PITR.

What is the difference between `loop_wait`, `retry_timeout` and `ttl`?  
Patroni regularly runs an HA cycle to check cluster health. It may then take action, such as failover to a standby.

`loop_wait` is the delay in seconds before Patroni starts the next HA cycle.

`retry_timeout` sets the timeout for DCS and Postgres retries. If the DCS remains unresponsive beyond `retry_timeout` seconds, Patroni may demote the primary as a protective action.

`ttl` is the lease duration for the DCS `leader` lock. The leader renews it during HA cycles. If it cannot renew the lease for longer than `ttl`, the lock expires and starts a `leader race`.

**Note:** Patroni enforces minimum values and a timing rule for these settings. See [dynamic](/docs/patroni/config/dynamic#dynamic).

--------

## Postgres management

Can I change Postgres GUCs directly in Postgres configuration?  
You can, but you should avoid that.

Patroni manages Postgres configuration. It may overwrite changes that you make directly in configuration files.

To manage settings outside Patroni, use one of these methods:

- Change Postgres GUCs through `$PGDATA/postgresql.base.conf`; or
- Define a `postgresql.custom_conf` which will be used instead of `postgresql.base.conf` so you can manage that externally; or
- Change GUCs using `ALTER SYSTEM` / `ALTER DATABASE` / `ALTER USER`.

You can find more information about that in the section [important_configuration_rules](/docs/patroni/config#important_configuration_rules).

We recommend managing all Postgres configuration through Patroni. This centralizes management and makes troubleshooting easier.

Can I restart Postgres nodes directly?  
No, you should **not** attempt to manage Postgres directly!

Restarting Postgres outside Patroni can trigger failover.

Use the management operations that Patroni provides.

Is Patroni able to take over management of an already existing Postgres cluster?  
Yes, it can!

Please refer to [existing_data](/docs/patroni/existing_data#existing_data) for detailed instructions.

How does Patroni manage Postgres?  
Patroni starts and stops Postgres with binaries such as `pg_ctl` and `postgres`.

You **MUST** disable other Postgres management services, such as `postgresql.service`. Only Patroni should start, stop, or promote cluster instances. Other services can cause split-brain. For example, after primary failure, an enabled `postgresql.service` can restart Postgres independently and create a second primary.

--------

## Concepts and requirements

Which are the applications that make part of Patroni?  
Patroni provides these applications:

- `patroni`: The agent that manages a Postgres node.
- [patronictl](/docs/patroni/patronictl#patronictl): The command-line client for switchovers, restarts, configuration changes, and other cluster operations. See [patronictl](/docs/patroni/patronictl#patronictl) for details.

What is a `standby cluster` in Patroni?  
A standby cluster has no running primary Postgres node and no read/write member.

Standby clusters replicate data from another cluster, often across data centers.

The standby leader replicates from a remote Postgres node. Other standbys use cascading replication from that leader.

**Note:** The standby cluster has no other knowledge of its source cluster. It can use `restore_command` instead of WAL streaming and an independent DCS cluster.

Refer to [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) for more details.

What is a `leader` in Patroni?  
A `leader` in Patroni is like a coordinator of the cluster.

In a regular Patroni cluster, the `leader` will be the read/write node.

In a standby cluster, the `leader`, also called `standby leader`, replicates from a remote Postgres node. It cascades those changes to other standby cluster members.

Does Patroni require a minimum number of Postgres nodes in the cluster?  
No, you can run Patroni with any number of Postgres nodes.

Remember: Patroni is decoupled from the DCS.

What does [pause](/docs/patroni/pause#pause) mean in Patroni?  
Pause suspends Patroni management of Postgres.

Use pause during maintenance to prevent automatic HA actions, such as failover when you stop the primary.

You can find more information about that in [pause](/docs/patroni/pause#pause).

--------

## Automatic failover

How does the automatic failover mechanism of Patroni work?  
Patroni automatic failover is based on what we call `leader race`.

Patroni stores cluster status in the DCS. The `leader` lock contains the name of the current `leader`.

The `leader` lock has a time-to-live. If the leader does not renew its lease in time, the DCS key expires.

When the `leader` lock expires, a `leader race` starts. All nodes check whether they are the best candidate for the `leader` role. Some checks call the REST APIs of all other Patroni members.

Each member that considers itself the best candidate tries to acquire the `leader` lock. The first to acquire it becomes the read/write node or `standby leader`. Patroni configures the other members to follow it.

Can I temporarily disable automatic failover in the Patroni cluster?  
Yes, you can!

Temporarily pause the cluster to disable automatic failover, for example during maintenance.

Unpause the cluster to resume automatic failover.

You can find more information about that in [pause](/docs/patroni/pause#pause).

--------

## Bootstrapping and standbys creation

How does Patroni create a primary Postgres node? What about a standby Postgres node?  
By default, Patroni uses `initdb` to bootstrap a new cluster. It uses `pg_basebackup` to copy the `leader` and create standbys.

You can define custom bootstrap and replica creation methods.

Custom methods can restore backups from tools such as pgBackRest or Barman.

For detailed information please refer to [custom_bootstrap](/docs/patroni/replica_bootstrap#custom_bootstrap) and [custom_replica_creation](/docs/patroni/replica_bootstrap#custom_replica_creation).

--------

## Monitoring

How can I monitor my Patroni cluster?  
Patroni provides these [rest_api](/docs/patroni/rest_api#rest_api) endpoints:

- `/metrics`: Monitoring metrics in Prometheus format.
- `/patroni`: Cluster status in JSON. This information is similar to the `/metrics` output.

You can use those endpoints to implement monitoring checks.
