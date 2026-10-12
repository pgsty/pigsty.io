---
title: Bind a L2 VIP to PostgreSQL Primary with VIP-Manager
linkTitle: 'Bind a L2 PG VIP'
weight: 2102
icon: fa-solid fa-arrows-split-up-and-left
module: [PGSQL]
categories: [Task, Reference]
---

If all cluster nodes share one L2 network, you can optionally define an **L2 VIP** for the PostgreSQL cluster.

The VIP uses Master-Backup mode.
It always points to the node that runs the cluster primary instance.

[VIP-Manager](https://github.com/cybertec-postgresql/vip-manager) manages the VIP.
It reads the Leader Key that Patroni writes to DCS (etcd) to determine whether the local node is primary.


------

## Enable VIP

To enable VIP for a cluster, set [`pg_vip_enabled`](/docs/pgsql/param#pg_vip_enabled) to `true` at cluster level.
You can also enable it globally.

```bash
# pgsql 3 node ha cluster: pg-test
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }   # primary instance, leader of cluster
    10.10.10.12: { pg_seq: 2, pg_role: replica }   # replica instance, follower of leader
    10.10.10.13: { pg_seq: 3, pg_role: replica, pg_offline_query: true } # replica with offline access
  vars:
    pg_cluster: pg-test           # define pgsql cluster name
    pg_users:  [{ name: test , password: test , pgbouncer: true , roles: [ dbrole_admin ] }]
    pg_databases: [{ name: test }]

    # Enable L2 VIP
    pg_vip_enabled: true
    pg_vip_address: 10.10.10.3/24
    #pg_vip_interface: auto
```

[`pg_vip_address`](/docs/pgsql/param#pg_vip_address) must be an available, valid IP address with a subnet in the current L2 network.

[`pg_vip_interface`](/docs/pgsql/param#pg_vip_interface) defaults to `auto`.
With this setting, Pigsty detects each instance interface from its inventory IPv4 address.

If automatic detection is unsuitable for a non-standard or policy-routing environment, specify a valid interface name for each instance.
For example:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary , pg_vip_interface: eth0  }
    10.10.10.12: { pg_seq: 2, pg_role: replica , pg_vip_interface: eth1  }
    10.10.10.13: { pg_seq: 3, pg_role: replica , pg_vip_interface: ens33 }
  vars:
    pg_cluster: pg-test           # define pgsql cluster name
    pg_users:  [{ name: test , password: test , pgbouncer: true , roles: [ dbrole_admin ] }]
    pg_databases: [{ name: test }]

    # Enable L2 VIP
    pg_vip_enabled: true
    pg_vip_address: 10.10.10.3/24
```

To refresh the VIP configuration and restart the VIP-Manager, use the following command:

```bash
./pgsql.yml -t pg_vip
```
