# Dynamic Configuration Settings

> Dynamic configuration settings stored in DCS and applied cluster-wide.

---

LLMS index: [llms.txt](/llms.txt)

---

> Source: https://patroni.readthedocs.io/en/latest/dynamic_configuration.html

<a id="dynamic"></a>
Dynamic configuration is stored in the DCS (Distributed Configuration Store) and applied on all cluster nodes.

Change dynamic configuration with [patronictl_edit_config](/docs/patroni/patronictl#patronictl_edit_config) or the Patroni [REST API](/docs/patroni/rest_api#rest_api).

- **loop_wait**: the number of seconds the loop will sleep. Default value: 10, minimum possible value: 1
- **ttl**: leader lock TTL, in seconds. This is the interval before automatic failover can start. Default: 30. Minimum: 20.
- **retry_timeout**: timeout for DCS and PostgreSQL operation retries (in seconds). DCS or network issues shorter than this will not cause Patroni to demote the leader. Default value: 10, minimum possible value: 3

> [!WARNING]
> when changing values of **loop_wait**, **retry_timeout**, or **ttl** you have to follow the rule:
>
> ```python
> loop_wait + 2 * retry_timeout <= ttl
> ```

- **maximum_lag_on_failover**: the maximum bytes a follower may lag to be able to participate in leader election.
- **primary_race_backoff**: delays standby leader races by `primary_race_backoff` seconds while WAL replication from the primary advances. This reduces unnecessary failovers when Patroni is briefly unresponsive. Default: 0 (disabled).
- **maximum_lag_on_syncnode**: maximum synchronous replica lag in bytes before replacement by a healthy asynchronous replica. With multiple replicas, Patroni uses the maximum replica LSN. Otherwise, it uses the leader's current WAL LSN. Default: -1. Values of 0 or less disable replacement. Use a sufficiently high value to avoid frequent replacements during high transaction volume.
- **max_timelines_history**: maximum number of timeline history items kept in DCS. Default value: 0. When set to 0, it keeps the full history in DCS.
- **primary_start_timeout**: seconds allowed for primary recovery before failover. Default: 300. A value of 0 permits immediate failover after crash detection. Asynchronous failover can lose transactions. Worst-case failover time is loop_wait + primary_start_timeout + loop_wait, or only loop_wait when primary_start_timeout is zero. Select the value for your durability and availability requirements.
- **primary_stop_timeout**: seconds Patroni can wait for Postgres shutdown when synchronous_mode is enabled. With synchronous_mode enabled and a value \> 0, Patroni sends SIGKILL to postmaster if shutdown exceeds this interval. Select the value for your durability and availability requirements. Unset values or values \<= 0 disable this timeout.
- **synchronous_mode**: synchronous replication mode: `off`, `on`, or `quorum`. The leader manages `synchronous_standby_names`. Only the last known leader or synchronous replicas can enter a leader race. This protects successful commits during failover but can block writes when Patroni cannot guarantee durability. See [replication modes documentation](/docs/patroni/replication_modes#replication_modes).
- **synchronous_mode_strict**: keeps synchronous replication enabled when no synchronous replica is available, blocking client writes. Without an eligible streaming replica, Patroni uses the last synchronous nodes from `/sync` for `synchronous_standby_names`. If no prior state exists, it uses `__patroni_strict_sync_replica_placeholder__`. Do not use that reserved value for the node `name` in `patroni.yaml`. See [replication modes documentation](/docs/patroni/replication_modes#replication_modes).
- **synchronous_node_count**: required synchronous standby count when [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) is enabled. Patroni updates the DCS and PostgreSQL `synchronous_standby_names` as members join or leave. It reduces the count if it exceeds the number of eligible nodes. Default: `1`.
- **failsafe_mode**: Enables [DCS Failsafe Mode](/docs/patroni/dcs_failsafe_mode#dcs_failsafe_mode). Defaults to `false`.
- **postgresql**:
  - **use_pg_rewind**: enables pg_rewind. Default: `false`. For correct operation, `pg_rewind` requires `data page checksums` and/or `wal_log_hints` set to `on`. Enable checksums with the `--data-checksums` option for `initdb`.
  - **use_slots**: whether or not to use replication slots. Defaults to `true` on PostgreSQL 9.4+.
  - **recovery_conf**: extra recovery.conf settings for replicas. PostgreSQL 12 no longer uses recovery.conf. You can still use this section because Patroni handles the version difference.
  - **parameters**: configuration parameters (GUCs) for Postgres in format `{max_connections: 100, wal_level: "replica", max_wal_senders: 10, wal_log_hints: "on"}`. Many of these are required for replication to work.
  - **parameters_primary**: (optional) role-specific parameter overrides for primary. These values are merged with and override the base **parameters**.
  - **parameters_replica**: (optional) role-specific parameter overrides for replica. These values are merged with and override the base **parameters**.
  - **parameters_standby_leader**: (optional) role-specific parameter overrides for standby_leader. These values are merged with and override the base **parameters**.
  - **pg_hba**: list of lines that Patroni will use to generate `pg_hba.conf`. Patroni ignores this parameter if `hba_file` PostgreSQL parameter is set to a non-default value.
    - **- host all all 0.0.0.0/0 md5**
    - **- host replication replicator 127.0.0.1/32 md5**: A line like this is required for replication.
  - **pg_hba_primary**: (optional) role-specific pg_hba entries for primary. These completely replace **pg_hba** (no merging). If not defined, **pg_hba** is used.
  - **pg_hba_replica**: (optional) role-specific pg_hba entries for replica. These completely replace **pg_hba** (no merging). If not defined, **pg_hba** is used.
  - **pg_hba_standby_leader**: (optional) role-specific pg_hba entries for standby_leader. These completely replace **pg_hba** (no merging). If not defined, **pg_hba** is used.
  - **pg_ident**: list of lines that Patroni will use to generate `pg_ident.conf`. Patroni ignores this parameter if `ident_file` PostgreSQL parameter is set to a non-default value.
    - **- mapname1 systemname1 pguser1**
    - **- mapname1 systemname2 pguser2**
  - **pg_ident_primary**: (optional) role-specific pg_ident entries for primary. These completely replace **pg_ident** (no merging). If not defined, **pg_ident** is used.
  - **pg_ident_replica**: (optional) role-specific pg_ident entries for replica. These completely replace **pg_ident** (no merging). If not defined, **pg_ident** is used.
  - **pg_ident_standby_leader**: (optional) role-specific pg_ident entries for standby_leader. These completely replace **pg_ident** (no merging). If not defined, **pg_ident** is used.
- **standby_cluster**: if this section is defined, we want to bootstrap a standby cluster.
  - **host**: an address of remote node
  - **port**: a port of remote node
  - **primary_slot_name**: replication slot on the remote node. Optional. The default comes from the instance name; see `slot_name_from_member_name`.
  - **create_replica_methods**: ordered methods to bootstrap the standby leader from the remote primary. This list can differ from [postgresql_settings](/docs/patroni/config/yaml#postgresql_settings).
  - **restore_command**: command to restore remote primary WAL records to standby cluster nodes. It can differ from [postgresql_settings](/docs/patroni/config/yaml#postgresql_settings).
  - **archive_cleanup_command**: cleanup command for standby leader
  - **recovery_min_apply_delay**: how long to wait before actually apply WAL records on a standby leader
- **member_slots_ttl**: physical slot retention after replicas shut down. Default: `30min`. A value of `0` restores immediate removal when the member key expires from the DCS. Requires PostgreSQL 11 or later.
- **slots**: permanent replication slots, retained through switchover and failover. Patroni creates missing slots. On PostgreSQL 11 and later, it creates physical slots on all nodes and advances them every **loop_wait** seconds. Earlier versions maintain permanent physical slots only on the primary. Logical slots are copied from the primary to a standby with restart. Their positions then advance every **loop_wait** seconds if necessary. Patroni copies logical slot files through `libpq` with rewind or superuser credentials; see **postgresql.authentication**. A replica slot can lag behind the old primary. Applications must handle repeated messages after failover, for example by tracking `confirmed_flush_lsn`. Permanent slots require **postgresql.use_slots** set to `true`. Permanent logical slots automatically enable `hot_standby_feedback`. Logical slot failover is unsafe on PostgreSQL 9.6 and older, and PostgreSQL 10 lacks required functions. This feature requires PostgreSQL 11+.
  - **my_slot_name**: permanent slot name. Patroni does not create a slot on the node with the same name. A permanent physical slot named after a member remains even when that member becomes unresponsive. Normally, Patroni would remove it. This preserves member slots during temporary failures or migration to Patroni; see [Convert a Standalone to a Patroni Cluster](/docs/patroni/existing_data#existing_data). Remove these matching names from DCS configuration when the slots are no longer required. Otherwise, they affect normal Patroni operation.
    - **type**: `physical` or `logical`. Logical slots also require `database` and `plugin`. Physical slots optionally accept `cluster_type`.
    - **database**: the database name where logical slots should be created.
    - **plugin**: the plugin name for the logical slot.
    - **cluster_type**: create the slot only on this cluster type: `primary` or `standby`. On other types, Patroni skips creation or drops an existing slot.
- **ignore_slots**: sets of slot properties that Patroni must ignore. Use this for slots managed outside Patroni. Any matching subset of properties causes a slot to be ignored.
  - **name**: the name of the replication slot.
  - **type**: slot type. Can be `physical` or `logical`. If the slot is logical, you may additionally define `database` and/or `plugin`.
  - **database**: the database name (when matching a `logical` slot).
  - **plugin**: the logical decoding plugin (when matching a `logical` slot).

Note: **slots** is a hashmap while **ignore_slots** is an array. For example:

```yaml
slots:
  permanent_logical_slot_name:
    type: logical
    database: my_db
    plugin: test_decoding
  permanent_physical_slot_name:
    type: physical
  ...
ignore_slots:
  - name: ignored_logical_slot_name
    type: logical
    database: my_db
    plugin: test_decoding
  - name: ignored_physical_slot_name
    type: physical
  ...
```

Note: On PostgreSQL v11 or later, Patroni maintains physical slots on all nodes eligible to become leader. Replicas therefore retain WAL segments that other nodes may need. After an absent node's DCS member key expires, Patroni drops its slot after `member_slots_ttl`, which defaults to `30min`. Adjust retention for your requirements.

For a fixed topology with stable node names, you can configure permanent physical slots named after the nodes. This prevents slot removal and WAL recycling while a replica is temporarily down:

```yaml
slots:
  node_name1:
    type: physical
  node_name2:
    type: physical
  node_name3:
    type: physical
  ...
```

> [!WARNING]
> Permanent slots synchronize only from `primary`/`standby_leader` to replicas. Applications must therefore use them only on the leader. Using them on replicas causes indefinite `pg_wal` growth on all other nodes. Physical slots named after Patroni members are an exception. Patroni creates and synchronizes these slots across all nodes for member replication.

> [!WARNING]
> The `nostream` tag disables permanent logical slot copying and synchronization on a standby and all its cascading replicas.
