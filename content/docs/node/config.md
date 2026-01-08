---
title: Configuration
weight: 3220
description: Configure node identity, cluster, and identity borrowing from PostgreSQL
icon: fa-solid fa-code
categories: [Reference]
---

Pigsty uses **IP address** as the unique identifier for **nodes**. **This IP should be the internal IP address on which the database instance listens and provides external services**.

```yaml
node-test:
  hosts:
    10.10.10.11: { nodename: node-test-1 }
    10.10.10.12: { nodename: node-test-2 }
    10.10.10.13: { nodename: node-test-3 }
  vars:
    node_cluster: node-test
```

This IP address must be the address on which the database instance listens and provides external services, but should not be a public IP address. That said, you don't necessarily have to connect to the database via this IP. For example, managing target nodes indirectly through SSH tunnels or jump hosts is also feasible. However, when identifying database nodes, the primary IPv4 address remains the node's core identifier. **This is critical, and you should ensure this during configuration**.

The IP address is the `inventory_hostname` in the inventory, represented as the `key` in the `<cluster>.hosts` object. In addition, each node has two optional identity parameters:

|           Name            |   Type   | Level | Necessity    | Comment               |
|:-------------------------:|:--------:|:-----:|--------------|----------------------|
|   `inventory_hostname`    |   `ip`   | **-** | **Required** | **Node IP**          |
| [`nodename`](/docs/node/param/#nodename) | `string` | **I** | Optional     | **Node Name**        |
| [`node_cluster`](/docs/node/param/#node_cluster) | `string` | **C** | Optional     | **Node cluster name** |

The parameters [`nodename`](/docs/node/param/#nodename) and [`node_cluster`](/docs/node/param/#node_cluster) are optional. If not provided, the node's existing hostname and the fixed value `nodes` will be used as defaults. In Pigsty's monitoring system, these two will be used as the node's **cluster identifier** (`cls`) and **instance identifier** (`ins`).

For [**PGSQL nodes**](/docs/concept/arch/node#pgsql-node), because Pigsty defaults to a 1:1 exclusive deployment of PG to node, you can use the [**`node_id_from_pg`**](/docs/node/param/#node_id_from_pg) parameter to borrow the PostgreSQL instance's identity parameters ([`pg_cluster`](/docs/pgsql/param/#pg_cluster) and [`pg_seq`](/docs/pgsql/param/#pg_seq)) for the node's `ins` and `cls` labels. This allows database and node monitoring metrics to share the same labels for cross-analysis.

```yaml
#nodename:                # [instance] # node instance identity, uses existing hostname if missing, optional
node_cluster: nodes       # [cluster] # node cluster identity, uses 'nodes' if missing, optional
nodename_overwrite: true          # overwrite node's hostname with nodename?
nodename_exchange: false          # exchange nodename among play hosts?
node_id_from_pg: true             # borrow postgres identity as node identity if applicable?
```

You can also configure rich functionality for host clusters. For example, use HAProxy on the node cluster for load balancing and service exposure, or bind an L2 VIP to the cluster.
