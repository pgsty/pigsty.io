# Standby cluster

> Standby cluster setup, behavior, and replication from remote primary.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/standby_cluster.html

<a id="standby_cluster"></a>
Patroni supports cascading replication to a remote datacenter or region through the standby cluster feature. A standby cluster has:

- A standby leader, which behaves like a regular cluster leader but replicates from a remote node.
- Cascade replicas, which replicate from the standby leader.

The standby leader holds and updates a leader lock in the DCS. If the lock expires, the cascade replicas elect another leader from the standbys.

The standby and primary clusters share only replication information. If they use the same DCS, they must use different DCS scopes. The primary cluster does not show the standby cluster in [patronictl_list](/docs/patroni/patronictl#patronictl_list) or [patronictl_topology](/docs/patroni/patronictl#patronictl_topology) output.

Use [create_replica_methods](/docs/patroni/replica_bootstrap#custom_replica_creation) in the [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) section to specify replica creation and WAL recovery methods in standby mode. After the cluster detaches and operates normally, replica creation uses `create_replica_methods` in the `postgresql` section. Both standby and normal `create_replica_methods` refer to keys in the `postgresql` section.

To configure a standby cluster, add a [standby_cluster](/docs/patroni/standby_cluster#standby_cluster) section to the Patroni configuration:

```yaml
bootstrap:
    dcs:
        standby_cluster:
            host: 1.2.3.4
            port: 5432
            primary_slot_name: patroni
            create_replica_methods:
            - basebackup
```

These options apply only during cluster bootstrap. After bootstrap, change them through the DCS.

Patroni expects `postgresql.conf` or `postgresql.conf.backup` in PGDATA on the remote primary. It will not start if this file is missing after a basebackup. If the primary stores `postgresql.conf` elsewhere, copy it to PGDATA.

If the standby cluster uses replication slots, create the corresponding slot on the primary cluster. The standby cluster does not create it automatically. You can use permanent replication slots on the primary cluster to maintain it. Use the name from `primary_slot_name`, or its default if you did not set `primary_slot_name`.

If the remote site has no single primary endpoint, list all source cluster hosts in `standby_cluster.host`. For multiple comma-separated hosts, Patroni will:

- Add `target_session_attrs=read-write` to `primary_conninfo` on the standby leader.
- Use `target_session_attrs=read-write` when it checks whether `pg_rewind` is necessary or runs `pg_rewind` on any standby cluster node.
- Require `data page checksums` and/or `wal_log_hints` set to `on` for successful `pg_rewind` operation. Enable checksums with the `--data-checksums` option for `initdb`. Otherwise, `pg_rewind` cannot operate correctly.

To replicate from another standby cluster or a standby member of the primary cluster, specify one host in `standby_cluster.host`. However, `pg_rewind` will fail on the standby cluster in this configuration.

> [!WARNING]
> Member names must be unique across the primary cluster and all connected standby clusters. Set each member name in the `name` field of its Patroni configuration.
>
> Patroni sets `synchronous_standby_names` on the primary with member names. These names also become the `application_name` of each replication connection in `pg_stat_replication`. Duplicate names create two connections with identical `application_name` values. PostgreSQL can then use a standby cluster connection to satisfy synchronous replication instead of the intended primary cluster member. It can acknowledge synchronous commits before transactions are durable on the correct standby.
>
> This failure is silent: replication continues and logs contain no errors. The cluster effectively has no valid synchronous standby. Data loss can occur if the primary fails.
