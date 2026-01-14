---
title: Bind a L2 VIP to PostgreSQL Primary with VIP-Manager
linkTitle: 'Bind a L2 PG VIP'
weight: 2102
icon: fa-solid fa-arrows-split-up-and-left
module: [PGSQL]
categories: [Task, Reference]
---

You can define an **OPTIONAL** L2 VIP on a PostgreSQL cluster, provided that all nodes in the cluster are in the same L2 network.

This VIP works on Master-Backup mode and always points to the node where the primary instance of the database cluster is located.

This VIP is managed by the [VIP-Manager](https://github.com/cybertec-postgresql/vip-manager), which reads the Leader Key written by Patroni from DCS (etcd) to determine whether it is the master.


------

## Enable VIP

Define [`pg_vip_enabled`](/docs/pgsql/param#pg_vip_enabled) parameter as `true` in the cluster level to enable the VIP component on the cluster. You can also enable this configuration in the global configuration.

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
    pg_vip_interface: eth1
```

Beware that [`pg_vip_address`](/docs/pgsql/param#pg_vip_address) must be a valid IP address with subnet and available in the current L2 network.

Beware that [`pg_vip_interface`](/docs/pgsql/param#pg_vip_interface) must be a valid network interface name and should be the same as the one using IPv4 address in the inventory.

If the network interface name is different among cluster members, users should explicitly specify the `pg_vip_interface` parameter for each instance, for example:

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
    #pg_vip_interface: eth1
```

To refresh the VIP configuration and restart the VIP-Manager, use the following command:

```bash
./pgsql.yml -t pg_vip
```
