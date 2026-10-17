# Configuration

> Configure node identity, cluster, and identity borrowing from PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty uses the **IP address** as the unique **node** identifier. **Use the internal IP address on which the database instance listens and provides services.**

```yaml
node-test:
  hosts:
    10.10.10.11: { nodename: node-test-1 }
    10.10.10.12: { nodename: node-test-2 }
    10.10.10.13: { nodename: node-test-3 }
  vars:
    node_cluster: node-test
```

This address must be a database listening address. It should not be a public IP address. Clients do not have to connect through this address. You can also manage target nodes through SSH tunnels or jump hosts.

The primary IPv4 address remains the node identifier. **Check this address carefully during configuration.**

In the inventory, the address is `inventory_hostname`. It is the `key` in the `<cluster>.hosts` object. Each node also has two optional identity parameters:

|           Name            |   Type   | Level | Necessity    | Comment               |
|:-------------------------:|:--------:|:-----:|--------------|----------------------|
|   `inventory_hostname`    |   `ip`   | **-** | **Required** | **Node IP**          |
| [`nodename`](/docs/node/param/#nodename) | `string` | **I** | Optional     | **Node Name**        |
| [`node_cluster`](/docs/node/param/#node_cluster) | `string` | **C** | Optional     | **Node cluster name** |

If [`nodename`](/docs/node/param/#nodename) is unset, Pigsty uses the existing hostname. If [`node_cluster`](/docs/node/param/#node_cluster) is unset, it uses `nodes`. In monitoring, the node name provides the **instance identifier** (`ins`). The cluster name provides the **cluster identifier** (`cls`).

For [**PGSQL nodes**](/docs/concept/arch/node#pgsql-node), Pigsty defaults to one exclusive PostgreSQL instance per node. Enable [**`node_id_from_pg`**](/docs/node/param/#node_id_from_pg) to derive node identity from [`pg_cluster`](/docs/pgsql/param/#pg_cluster) and [`pg_seq`](/docs/pgsql/param/#pg_seq). The database and node then share `ins` and `cls` labels. This lets you analyze their monitoring metrics together.

```yaml
#nodename:                # [instance] # node instance identity, uses existing hostname if missing, optional
node_cluster: nodes       # [cluster] # node cluster identity, uses 'nodes' if missing, optional
nodename_overwrite: true          # overwrite node's hostname with nodename?
nodename_exchange: false          # exchange nodename among play hosts?
node_id_from_pg: true             # borrow postgres identity as node identity if applicable?
```

Host clusters also support other functions. For example, use HAProxy for load balancing and service exposure. You can also bind an L2 VIP to the cluster.
