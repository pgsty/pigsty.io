---
title: Configuration
weight: 3410
description: Choose etcd cluster size based on requirements, provide reliable access.
icon: fa-solid fa-code
module: [ETCD]
categories: [Reference]
---


Before deployment, define etcd cluster in [config inventory](/docs/setup/config). Typical choices:

- [One Node](#one-node): No HA, suitable for dev, test, demo, or standalone deployments using external S3 backup for PITR
- [Three Nodes](#three-nodes): Basic HA, tolerates 1 node failure, suitable for small-medium prod
- [Five Nodes](#five-nodes): Better HA, tolerates 2 node failures, suitable for large prod

Even-numbered clusters don't make sense; 5+ node clusters uncommon. Typical configs: single, 3-node, 5-node.

| Cluster Size | Quorum | Fault Tolerance | Use Case |
|:-----|:----|:------|:---------|
| 1 node | 1   | 0     | Dev, test, demo |
| 3 nodes | 2   | 1     | Small-medium prod |
| 5 nodes | 3   | 2     | Large prod |
| 7 nodes | 4   | 3     | Special HA requirements |

--------

## One Node

Define singleton etcd instance in Pigsty—single line of config:

```yaml
etcd: { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }
```

All single-node config templates include this line. Placeholder IP `10.10.10.10` replaced with current admin node's IP.

Only required params: [`etcd_seq`](param#etcd_seq) and [`etcd_cluster`](param#etcd_cluster)—uniquely identify each etcd instance.



--------

## Three Nodes

Most common config: 3-node etcd cluster tolerates 1 node failure, suitable for small-medium prod.

Example: Pigsty's 3-node templates [`trio`](/docs/conf/trio) and [`safe`](/docs/conf/safe) use 3-node etcd:

```yaml
etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }  # etcd_seq (instance number) required
    10.10.10.11: { etcd_seq: 2 }  # positive integers, sequential from 0 or 1
    10.10.10.12: { etcd_seq: 3 }  # immutable for life, never recycled
  vars: # cluster-level params
    etcd_cluster: etcd    # default cluster name: 'etcd', don't change unless deploying multiple etcd clusters
    etcd_safeguard: false # enable safeguard? Enable after prod init to prevent accidental deletion
    etcd_clean: true      # force remove existing during init? Enable for testing for true idempotency
```



----------------

## Five Nodes

5-node cluster tolerates 2 node failures, suitable for large prod.

Example: Pigsty's prod sim template [`prod`](/docs/conf/pro) uses 5-node etcd:

```yaml
etcd:
  hosts:
    10.10.10.21 : { etcd_seq: 1 }
    10.10.10.22 : { etcd_seq: 2 }
    10.10.10.23 : { etcd_seq: 3 }
    10.10.10.24 : { etcd_seq: 4 }
    10.10.10.25 : { etcd_seq: 5 }
  vars: { etcd_cluster: etcd    }
```



----------------

## Services Using etcd

Services using etcd in Pigsty:

| Service | Purpose | Config File |
|:----|:----|:--------|
| **Patroni** | PG HA, stores cluster state and config | `/pg/bin/patroni.yml` |
| **VIP-Manager** | Binds L2 VIP on PG clusters | `/etc/default/vip-manager` |

When etcd cluster membership changes permanently, [reload related service configs](admin#reload-config) to ensure correct access.

**Update Patroni's etcd endpoint ref:**

```bash
./pgsql.yml -t pg_conf                            # regenerate patroni config
ansible all -f 1 -b -a 'systemctl reload patroni' # reload patroni config
```

**Update VIP-Manager's etcd endpoint ref** (only for PGSQL L2 VIP):

```bash
./pgsql.yml -t pg_vip_config                           # regenerate vip-manager config
ansible all -f 1 -b -a 'systemctl restart vip-manager' # restart vip-manager
```



----------------

## RBAC Authentication Config

v4.0 enables etcd RBAC auth by default. Related params:

| Parameter | Description | Default |
|:----|:----|:------|
| [`etcd_root_password`](param#etcd_root_password) | etcd root password | `Etcd.Root` |
| [`pg_etcd_password`](/docs/pgsql/param#pg_etcd_password) | Patroni's password for etcd | Empty (uses cluster name) |

**Prod recommendations:**

```yaml
all:
  vars:
    etcd_root_password: 'YourSecureEtcdPassword'  # change default

etcd:
  hosts:
    10.10.10.10: { etcd_seq: 1 }
    10.10.10.11: { etcd_seq: 2 }
    10.10.10.12: { etcd_seq: 3 }
  vars:
    etcd_cluster: etcd
    etcd_safeguard: true    # enable safeguard for production
```



----------------

## Filesystem Layout

Module creates these directories/files on target hosts:

| Path                                 | Purpose         | Permissions              |
|:-----------------------------------|:-----------|:----------------|
| `/etc/etcd/`                       | Config dir       | 0750, etcd:etcd |
| `/etc/etcd/etcd.conf`              | Main config file | 0644, etcd:etcd |
| `/etc/etcd/etcd.pass`              | Root password file| 0640, root:etcd |
| `/etc/etcd/ca.crt`                 | CA cert         | 0644, etcd:etcd |
| `/etc/etcd/server.crt`             | Server cert      | 0644, etcd:etcd |
| `/etc/etcd/server.key`             | Server private key| 0600, etcd:etcd |
| `/var/lib/etcd/`                   | Backup data dir   | 0770, etcd:etcd |
| `/data/etcd/`                      | Main data dir (configurable) | 0700, etcd:etcd |
| `/etc/profile.d/etcdctl.sh`        | Client env vars  | 0755, root:root |
| `/etc/systemd/system/etcd.service` | Systemd service | 0644, root:root |


<br>

--------
<br>
