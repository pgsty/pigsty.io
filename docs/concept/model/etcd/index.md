# E-R Model of Etcd Cluster

> Entity-Relationship model for ETCD clusters in Pigsty, including E-R diagram, entity definitions, and naming conventions.

---

LLMS index: [llms.txt](/llms.txt)

---

The ETCD module organizes production ETCD into **clusters**. A cluster is a **logical entity** whose ETCD **instances** coordinate through the **Raft** consensus protocol.

Each cluster is an **autonomous** distributed key-value store with at least one **ETCD instance**. It provides services through client ports.

There are three core entities in Pigsty's ETCD module:

- **Cluster**: An autonomous ETCD service unit and the top-level namespace for other entities.
- **Instance**: One ETCD server process on a node, participating in Raft consensus.
- **Node**: An implicitly declared hardware resource that runs Linux and Systemd.

The ETCD model has no Service entities or complex Role distinctions, unlike PostgreSQL. All ETCD instances are functionally equivalent. Raft elects one Leader; the others become Followers. Non-voting Learner members are also permitted during intermediate scale-out states.


----------------

## Examples

This example defines a three-node ETCD cluster:

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    10.10.10.12: { etcd_seq: 3 }
  vars:
    etcd_cluster: etcd
```

The configuration defines these entities:

| <span class="text-secondary">**Cluster**</span> | <span class="text-secondary">**Description**</span> |
|:-----------------------------------------------:|-----------------------------------------------------|
|                   **`etcd`**                    | ETCD 3-node HA cluster                              |
| <span class="text-success">**Instance**</span>  | <span class="text-success">**Description**</span>   |
|                  **`etcd-1`**                   | ETCD instance #1                                    |
|                  **`etcd-2`**                   | ETCD instance #2                                    |
|                  **`etcd-3`**                   | ETCD instance #3                                    |
|  <span class="text-danger">**Node**</span>      | <span class="text-danger">**Description**</span>    |
|               **`10.10.10.10`**                 | Node #1, hosts `etcd-1` instance                    |
|               **`10.10.10.11`**                 | Node #2, hosts `etcd-2` instance                    |
|               **`10.10.10.12`**                 | Node #3, hosts `etcd-3` instance                    |
{.full-width}


----------------

## Identity Parameters

The [**`ETCD`**](/docs/etcd/param#etcd) parameter group assigns deterministic identities to ETCD entities. Two parameters are required:

| Parameter                                           |   Type   | Level | Description                    | Format                                      |
|:----------------------------------------------------|:--------:|:-----:|:-------------------------------|:--------------------------------------------|
| [**`etcd_cluster`**](/docs/etcd/param#etcd_cluster) | `string` | Cluster | ETCD cluster name, required   | Valid DNS name, defaults to fixed `etcd`    |
| [**`etcd_seq`**](/docs/etcd/param#etcd_seq)         |  `int`   | Instance | ETCD instance number, required | Natural number, starting from 1, unique within cluster |
{.full-width}

Set the cluster name at cluster level and the instance number at instance level. Pigsty generates unique identifiers with these rules:

| Entity       | Generation Rule                     | Example                    |
|--------------|:------------------------------------|:---------------------------|
| **Instance** | `{{ etcd_cluster }}-{{ etcd_seq }}` | `etcd-1`, `etcd-2`, `etcd-3` |
{.full-width}

ETCD does not assign a separate identity to host nodes. It uses their existing hostname or IP address.


----------------

## Ports & Protocols

Each ETCD instance listens on the following two ports:

| Port     | Parameter                                               | Purpose                                              |
|:---------|:--------------------------------------------------------|:-----------------------------------------------------|
| **2379** | [**`etcd_port`**](/docs/etcd/param#etcd_port)           | Client port, accessed by Patroni, vip-manager, etc.  |
| **2380** | [**`etcd_peer_port`**](/docs/etcd/param#etcd_peer_port) | Peer communication port, used for Raft consensus     |
{.full-width}

ETCD clusters enable [**TLS encryption**](/docs/concept/sec/ca) and RBAC authentication by default. Clients need the correct certificates and passwords to access ETCD.


----------------

## Cluster Size

ETCD cluster size determines availability. More than half the nodes, called a quorum, must be alive to maintain this distributed coordination service.

| Cluster Size | Quorum | Fault Tolerance | Use Case           |
|:------------:|:------:|:---------------:|:-------------------|
|   1 node     |   1    |        0        | Dev, test, demo    |
|   3 nodes    |   2    |        1        | Small-medium production |
|   5 nodes    |   3    |        2        | Large-scale production |
{.full-width}

ETCD supports even member counts. However, they tolerate no more failures than the next smaller odd count. They also increase deployment and quorum costs. Production clusters therefore usually have one, three, or five members. Clusters with more than five members are uncommon.


----------------

## Monitoring Label System

The built-in monitoring system uses these [**identity parameters**](#identity-parameters) to identify ETCD entities.

```text
etcd_up{cls="etcd", ins="etcd-1", ip="10.10.10.10", job="etcd"}
etcd_up{cls="etcd", ins="etcd-2", ip="10.10.10.11", job="etcd"}
etcd_up{cls="etcd", ins="etcd-3", ip="10.10.10.12", job="etcd"}
```

The labels `cls`, `ins`, and `ip` identify the cluster name, instance name, and node IP. They accompany `job` in **all** ETCD metrics collected by [**VictoriaMetrics**](/docs/concept/arch/infra#victoriametrics). The ETCD metrics `job` is always `etcd`.
