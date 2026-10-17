# Configuration

> Choose etcd cluster size based on requirements, provide reliable access.

---

LLMS index: [llms.txt](/llms.txt)

---

Before deployment, define the etcd cluster in the [configuration inventory](/docs/setup/config). Typical choices are:

- [One Node](#one-node): No HA, suitable for dev, test, demo, or standalone deployments using external S3 backup for PITR
- [Three Nodes](#three-nodes): Basic HA, tolerates 1 node failure, suitable for small-medium prod
- [Five Nodes](#five-nodes): Better HA, tolerates 2 node failures, suitable for large prod

An etcd cluster can have an even number of members. It has the same failure tolerance as a cluster with one fewer member. The extra member increases deployment and quorum costs. Thus, production clusters usually have one, three, or five members. Clusters with more than five members are uncommon.

| Cluster Size | Quorum | Fault Tolerance | Use Case                |
|:-------------|:-------|:----------------|:------------------------|
| 1 node       | 1      | 0               | Dev, test, demo         |
| 3 nodes      | 2      | 1               | Small-medium prod       |
| 5 nodes      | 3      | 2               | Large prod              |
| 7 nodes      | 4      | 3               | Special HA requirements |

--------

## One Node

To define a single etcd instance in Pigsty, use one line of configuration:

```yaml
etcd: { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }
```

All single-node configuration templates include this line. The configuration process replaces placeholder IP `10.10.10.10` with the current admin node IP.

Only [`etcd_seq`](/docs/etcd/param#etcd_seq) and [`etcd_cluster`](/docs/etcd/param#etcd_cluster) are required. Together, these parameters uniquely identify each etcd instance.



--------

## Three Nodes

The most common configuration has 3 etcd nodes. It tolerates 1 node failure and is suitable for small and medium production environments.

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

A 5-node cluster tolerates 2 node failures. It is suitable for large production environments.

Example: Pigsty's production simulation template [`ha/simu`](/docs/conf/simu) uses a 5-node etcd cluster:

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
| **Patroni** | PG HA, stores cluster state and config | `/etc/patroni/patroni.yml` |
| **VIP-Manager** | Binds L2 VIP on PG clusters | `/etc/default/vip-manager.yml` |

After a permanent etcd membership change, [reload the related service configurations](/docs/etcd/admin#reload-config). This updates the endpoints that services use to access etcd.

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

Since v4.0, Pigsty enables etcd RBAC authentication by default. Related parameters:

| Parameter | Description | Default |
|:----|:----|:------|
| [`etcd_root_password`](/docs/etcd/param#etcd_root_password) | etcd root password | `Etcd.Root` |
| [`pg_etcd_password`](/docs/pgsql/param#pg_etcd_password) | Patroni's password for etcd | Empty (uses cluster name) |

**Production recommendations:**

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

The module creates these directories and files on target hosts:

| Path                               | Purpose                      | Permissions     |
|:-----------------------------------|:-----------------------------|:----------------|
| `/etc/etcd/`                       | Config dir                   | 0750, etcd:etcd |
| `/etc/etcd/etcd.conf`              | Main config file             | 0644, etcd:etcd |
| `/etc/etcd/etcd.pass`              | Root password file           | 0640, root:etcd |
| `/etc/etcd/ca.crt`                 | CA cert                      | 0644, etcd:etcd |
| `/etc/etcd/server.crt`             | Server cert                  | 0644, etcd:etcd |
| `/etc/etcd/server.key`             | Server private key           | 0600, etcd:etcd |
| `/var/lib/etcd/`                   | Backup data dir              | 0770, etcd:etcd |
| `/data/etcd/`                      | Main data dir (configurable) | 0700, etcd:etcd |
| `/etc/profile.d/etcdctl.sh`        | Client env vars              | 0644, root:root |
| `/etc/systemd/system/etcd.service` | Systemd service              | 0644, root:root |


<br>

--------
<br>
