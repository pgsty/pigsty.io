---
title: "Replication modes"
weight: 70
icon: fa-solid fa-share-nodes
description: "Asynchronous and synchronous replication modes managed by Patroni."
module: [PATRONI]
categories: [Concept]
---

> Source: https://patroni.readthedocs.io/en/latest/replication_modes.html

<a id="replication_modes"></a>
Patroni uses PostgreSQL streaming replication. See the [Postgres documentation](http://www.postgresql.org/docs/current/static/warm-standby.html#STREAMING-REPLICATION). Patroni configures asynchronous replication by default. Select a replication design for your business requirements. Compare asynchronous replication, synchronous replication, and other HA solutions before you select one.

--------

## Asynchronous mode durability

Asynchronous mode permits some committed transaction loss to maintain availability. If the primary fails or becomes unavailable, Patroni automatically promotes a sufficiently healthy standby. Transactions absent from that standby remain on a forked timeline on the old primary. They are effectively unrecoverable[^1].

The `maximum_lag_on_failover` parameter controls potential transaction loss. Patroni does not sample the primary transaction log position in real time. The worst-case loss includes `maximum_lag_on_failover` bytes plus the log written during the last `ttl` seconds. The average additional interval is `loop_wait`/2 seconds. Typical replication delay in steady state is much less than one second.

By default, Patroni ignores replica timelines during leader elections. To require the same timeline as the former primary, set `check_timeline` to `true`. This prevents a replica on a different timeline from becoming leader.

--------

## PostgreSQL synchronous replication

Patroni supports Postgres [synchronous replication](http://www.postgresql.org/docs/current/static/warm-standby.html#SYNCHRONOUS-REPLICATION). It confirms that a secondary has received writes before it returns success to the client. This maintains consistency across the cluster. It increases write latency and reduces write throughput. Throughput depends entirely on network performance.

On hosted networks, such as AWS or Rackspace, synchronous replication makes write performance much more variable. This also applies to other networks you do not control. If the leader cannot reach its replicas, it effectively becomes read-only.

For a simple synchronous replication test, add these lines to the `parameters` section of each YAML configuration file:

```yaml
synchronous_commit: "on"
synchronous_standby_names: "*"
```

When using PostgreSQL synchronous replication, use at least three Postgres data nodes to ensure write availability if one host fails.

PostgreSQL synchronous replication does not always prevent transaction loss. If the primary and its synchronous replica fail together, Patroni promotes a third node. That node may lack some transactions.

<a id="synchronous_mode"></a>

--------

## Synchronous mode

If you cannot permit committed transaction loss, enable Patroni [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode). Patroni then promotes only a standby known to contain all transactions that may have returned successful commit status to clients[^2]. Writes can become unavailable even while some servers remain available. Administrators can still promote a standby through manual failover, even if this loses transactions.

[Synchronous mode](/docs/patroni/replication_modes#synchronous_mode) does not always guarantee that commits are durable on multiple nodes. If no suitable standby exists, the primary still accepts writes without a replication guarantee. If the primary fails in this state, Patroni promotes no standby. When the former primary returns, Patroni promotes it automatically unless an administrator performed a manual failover. This behavior permits synchronous mode with two-node clusters.

With [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode), a standby crash blocks commits until the next Patroni iteration switches the primary to standalone mode. The worst-case write delay is `ttl` seconds; the average is `loop_wait`/2 seconds. Manual standby shutdowns and restarts do not interrupt commits. Before PostgreSQL shutdown, the standby tells the primary to release it from synchronous standby duties.

If each write must be durable on at least two nodes, also enable `synchronous_mode_strict` with [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode). Patroni then keeps synchronous replication enabled even if no synchronous standby candidate exists. Client writes block until at least one synchronous replica becomes available. A Postgres transaction that explicitly disables `synchronous_commit` is an exception.

When `synchronous_mode_strict` is enabled and no active replication connections satisfy the minimum replication factor, Patroni determines the value of `synchronous_standby_names` as follows:

1.  **Last known sync nodes are available in the `/sync` key in DCS**: Patroni uses the nodes stored there for `synchronous_standby_names`. For example, `/sync` may contain `leader=node1, sync_standby=node2,node3`. If both standbys stop streaming, Patroni continues to use:

    ```ini
    synchronous_standby_names = 'node2,node3'
    ```

    These nodes are the last ones known to have received the latest commit. Commits will block until at least one of them reconnects.

2.  **Manual failover to an asynchronous node**: A node outside `/sync` may be promoted, for example with `patronictl failover --force`. It sets `synchronous_standby_names` to the former primary. Only the former primary is guaranteed to have the latest committed data.

3.  **The `/sync` key is empty**: This can occur immediately after strict mode is enabled or after bootstrap without replicas. Patroni sets:

    ```ini
    synchronous_standby_names = '__patroni_strict_sync_replica_placeholder__'
    ```

    This sentinel value matches no real node name. Writes block until an eligible replica starts streaming from the primary. The placeholder replaces the old `*` wildcard, which could let an unqualified node satisfy the synchronous replication requirement.

> [!WARNING]
> The value `__patroni_strict_sync_replica_placeholder__` is reserved by Patroni and **must not** be used as the `name` of a Patroni node in `patroni.yaml`. Patroni will refuse to start if this name is configured.

When strict mode is active, Patroni logs `"No active replication connections and synchronous_mode_strict is requested. Commits will be delayed."` It logs this warning once per activation, not on each HA loop iteration.

To prevent a standby from becoming synchronous, set its `nosync` tag to true. We recommend this for standbys on slow networks that would reduce synchronous replication performance. Setting `nostream` to true has the same effect.

Enable or disable synchronous mode with `patronictl edit-config` or the Patroni REST interface. See [dynamic configuration](/docs/patroni/config/dynamic#dynamic).

Note: PostgreSQL synchronous replication can lose transactions even with `synchronous_mode_strict`. A backend can be cancelled while it waits for replication acknowledgment, through client timeout cancellation or backend failure. Its transaction changes then become visible to other backends before replication completes. These changes can be lost if a standby is promoted.

--------

## Synchronous Replication Factor

The `synchronous_node_count` parameter specifies the number of synchronous standbys. Its default is `1`. It has no effect when [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) is `off`. Otherwise, Patroni updates DCS state and PostgreSQL `synchronous_standby_names` as members join or leave. If the configured count exceeds the number of eligible nodes, Patroni reduces it automatically.

--------

## Maximum lag on synchronous node

By default, Patroni retains nodes marked `synchronous` in `pg_stat_replication`, even if other nodes are ahead. This minimizes changes to `synchronous_standby_names`. Set `maximum_lag_on_syncnode` to change this behavior. It limits the replication lag permitted for a synchronous node.

With multiple standbys, Patroni uses the maximum replica LSN. With one standby, it uses the leader's current WAL LSN. The default is `-1`. Values of `0` or less prevent Patroni from replacing an unhealthy synchronous standby. Use a sufficiently high value to avoid frequent replacements during high transaction volume.

--------

## Synchronous mode implementation

In synchronous mode, Patroni stores the latest primary and current synchronous standbys in the DCS `/sync` key. Strict update ordering maintains these invariants:

- A node that can accept writes must be marked as the latest leader. Patroni crashes or PostgreSQL shutdown failures can violate this invariant.
- A node listed as synchronous in the DCS `/sync` key must remain a synchronous standby in PostgreSQL.
- Only the leader or a current synchronous standby can promote itself automatically.

Patroni assigns one or more synchronous standbys to `synchronous_standby_names`, according to `synchronous_node_count`.

Each HA loop iteration reevaluates synchronous standby selection. Connected synchronous standbys remain selected unless they request removal of synchronous status. Otherwise, Patroni selects eligible members that are furthest ahead in replication.

### Example:

#### `/config` key in DCS

```yaml
synchronous_mode: on
synchronous_node_count: 2
...
```

#### `/sync` key in DCS

```json
{
    "leader": "node0",
    "sync_standby": "node1,node2"
}
```

#### postgresql.conf

```ini
synchronous_standby_names = 'FIRST 2 (node1,node2)'
```

In these examples, only `node1` and `node2` are known synchronous nodes. Only these nodes can be promoted automatically if the primary, `node0`, fails.

<a id="quorum_mode"></a>

--------

## Quorum commit mode

Starting from PostgreSQL v10 Patroni supports quorum-based synchronous replication.

In this mode, Patroni stores synchronization state in the DCS. This includes the latest known primary, the quorum requirement, and eligible voters. In steady state, the voters are the leader and all synchronous standbys. Strict update ordering coordinates promotions and `synchronous_standby_names`. This guarantees that every subset of voters sufficient for quorum always includes a node with the latest successful commit.

Each HA loop iteration reevaluates synchronous standbys and quorum from node availability and requested cluster configuration. On PostgreSQL versions above 9.6, all eligible nodes become synchronous standbys as soon as they catch up to the leader.

Quorum commit reduces worst-case latency, including during normal operation. Other standbys can compensate for slow replication to one standby.

To enable quorum mode, set [synchronous_mode](/docs/patroni/replication_modes#synchronous_mode) to `quorum` with `patronictl edit-config` or the REST interface. See [dynamic configuration](/docs/patroni/config/dynamic#dynamic).

Other parameters, like `synchronous_node_count`, `maximum_lag_on_syncnode`, and `synchronous_mode_strict` continue to work the same way as with `synchronous_mode=on`.

With quorum commit and `synchronous_mode_strict`, Patroni preserves the last known `/sync` voters when no active replica exists. It sets `synchronous_standby_names` to `ANY N (<last known voters>)`. If `/sync` has no voters, it uses `ANY 1 (__patroni_strict_sync_replica_placeholder__)`.

### Example:

#### `/config` key in DCS

```yaml
synchronous_mode: quorum
synchronous_node_count: 2
...
```

#### `/sync` key in DCS

```json
{
    "leader": "node0",
    "sync_standby": "node1,node2,node3",
    "quorum": 1
}
```

#### postgresql.conf

```ini
synchronous_standby_names = 'ANY 2 (node1,node2,node3)'
```

If `node0` fails in this example, two of `node1`, `node2`, and `node3` have received the latest transaction. We do not know which two. To evaluate `node1`, compare its LSN with **at least** one of `node2` or `node3`. This corresponds to `quorum=1` in `/sync`. If `node1` is not behind at least one of them, its promotion guarantees no user-visible data loss.

[^1]: The data remains, but data recovery specialists must recover it manually. With `use_pg_rewind`, Patroni automatically erases the forked timeline when the failed primary rejoins. For correct operation, `use_pg_rewind` requires `data page checksums` and/or `wal_log_hints` set to `on`. Enable checksums with the `--data-checksums` option for `initdb`.

[^2]: Clients can change each transaction's behavior with `synchronous_commit`. Values of `off` and `local` avoid replication delays but permit transaction loss on failover.
