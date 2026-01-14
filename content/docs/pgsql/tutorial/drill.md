---
title: 'HA Drill: Handling 2-of-3 Node Failure'
linkTitle: 'HA Drill: 2/3 Failure'
date: 2025-01-11
weight: 2101
description: 'HA scenario response plan: When two of three nodes fail and auto-failover
  doesn''t work, how to recover from the emergency state?'
icon: fa-solid fa-arrow-right-from-bracket
module: [PGSQL]
categories: [Task, Concept]
---


If a classic 3-node HA deployment experiences simultaneous failure of two nodes (majority), the system typically cannot complete automatic failover and requires manual intervention.

First, assess the status of the other two servers. If they can be brought up quickly, prioritize recovering those two servers. Otherwise, enter the **Emergency Recovery Procedure**.

**The Emergency Recovery Procedure assumes your admin node has failed** and only a single regular database node survives. In this case, the fastest recovery process is:

- Adjust HAProxy configuration to direct traffic to the primary.
- Stop Patroni and manually promote the PostgreSQL replica to primary.


--------

## Adjust HAProxy Configuration

If you access the cluster bypassing HAProxy, you can skip this step. If you access the database cluster through HAProxy, you need to adjust the load balancer configuration to manually direct read/write traffic to the primary.

- Edit the `/etc/haproxy/<pg_cluster>-primary.cfg` configuration file, where `<pg_cluster>` is your PostgreSQL cluster name, e.g., `pg-meta`.
- Comment out the health check configuration options to stop health checks.
- Comment out the other two failed machines in the server list, keeping only the current primary server.

```ini
listen pg-meta-primary
    bind *:5433
    mode tcp
    maxconn 5000
    balance roundrobin

    # Comment out the following four health check lines
    #option httpchk                               # <---- remove this
    #option http-keep-alive                       # <---- remove this
    #http-check send meth OPTIONS uri /primary    # <---- remove this
    #http-check expect status 200                 # <---- remove this

    default-server inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100
    server pg-meta-1 10.10.10.10:6432 check port 8008 weight 100

    # Comment out the other two failed machines
    #server pg-meta-2 10.10.10.11:6432 check port 8008 weight 100 <---- comment this
    #server pg-meta-3 10.10.10.12:6432 check port 8008 weight 100 <---- comment this
```

After adjusting the configuration, don't rush to execute `systemctl reload haproxy` to reload. Wait until after promoting the primary, then execute together. The effect of this configuration is that HAProxy will no longer perform primary health checks (which by default use Patroni), but will directly direct write traffic to the current primary.


--------

## Manually Promote Replica

Log in to the target server, switch to the dbsu user, execute `CHECKPOINT` to flush to disk, stop Patroni, restart PostgreSQL, and execute Promote.

```bash
sudo su - postgres                     # Switch to database dbsu user
psql -c 'checkpoint; checkpoint;'      # Two Checkpoints to flush dirty pages, avoid long PG restart
sudo systemctl stop patroni            # Stop Patroni
pg-restart                             # Restart PostgreSQL
pg-promote                             # Promote PostgreSQL replica to primary
psql -c 'SELECT pg_is_in_recovery();'  # If result is f, it has been promoted to primary
```

If you adjusted the HAProxy configuration above, you can now execute `systemctl reload haproxy` to reload the HAProxy configuration and direct traffic to the new primary.

```bash
systemctl reload haproxy                # Reload HAProxy configuration to direct write traffic to current instance
```



--------

## Avoid Split Brain

After emergency recovery, the second priority is: **Avoid Split Brain**. Users should prevent the other two servers from coming back online and forming a split brain with the current primary, causing data inconsistency.

Simple approaches:

- **Power off/disconnect network** the other two servers to ensure they don't come online uncontrollably.
- Adjust the database connection string used by applications to point directly to the surviving server's primary.

Then decide the next steps based on the specific situation:

- A: The two servers have temporary failures (e.g., network/power outage) and can be repaired in place to continue service.
- B: The two failed servers have permanent failures (e.g., hardware damage) and will be removed and decommissioned.



--------

## Recovery After Temporary Failure

If the other two servers have temporary failures and can be repaired to continue service, follow these steps for repair and rebuild:

- Handle one failed server at a time, prioritize the admin node / INFRA node.
- Start the failed server and stop Patroni after startup.

After the ETCD cluster quorum is restored, it will resume work. Then start Patroni on the surviving server (current primary) to take over the existing PostgreSQL and regain cluster leadership. After Patroni starts, enter maintenance mode.

```bash
systemctl restart patroni
pg pause <pg_cluster>
```

On the other two instances, create the `touch /pg/data/standby.signal` marker file as the `postgres` user to mark them as replicas, then start Patroni:

```bash
systemctl restart patroni
```

After confirming Patroni cluster identity/roles are correct, exit maintenance mode:

```bash
pg resume <pg_cluster>
```



--------

## Recovery After Permanent Failure

After permanent failure, first recover the `~/pigsty` directory on the admin node. The key files needed are `pigsty.yml` and `files/pki/ca/ca.key`.

> If you cannot retrieve or don't have backups of these two files, you can deploy a new Pigsty and migrate the existing cluster to the new deployment via [Backup Cluster](/docs/pgsql/config/#backup-cluster).
>
> Please regularly backup the `pigsty` directory (e.g., using Git for version control). Learn from this and avoid such mistakes in the future.



#### Configuration Repair

You can use the surviving node as the new admin node, copy the `~/pigsty` directory to the new admin node, then start adjusting the configuration. For example, replace the original default admin node `10.10.10.10` with the surviving node `10.10.10.12`:

```yaml
all:
  vars:
    admin_ip: 10.10.10.12               # Use new admin node address
    node_etc_hosts: [10.10.10.12 h.pigsty a.pigsty p.pigsty g.pigsty sss.pigsty]
    infra_portal: {}                    # Also modify other configs referencing old admin IP (10.10.10.10)

  children:

    infra:                              # Adjust Infra cluster
      hosts:
        # 10.10.10.10: { infra_seq: 1 } # Old Infra node
        10.10.10.12: { infra_seq: 3 }   # New Infra node

    etcd:                               # Adjust ETCD cluster
      hosts:
        #10.10.10.10: { etcd_seq: 1 }   # Comment out this failed node
        #10.10.10.11: { etcd_seq: 2 }   # Comment out this failed node
        10.10.10.12: { etcd_seq: 3 }    # Keep surviving node
      vars:
        etcd_cluster: etcd

    pg-meta:                            # Adjust PGSQL cluster configuration
      hosts:
        #10.10.10.10: { pg_seq: 1, pg_role: primary }
        #10.10.10.11: { pg_seq: 2, pg_role: replica }
        #10.10.10.12: { pg_seq: 3, pg_role: replica , pg_offline_query: true }
        10.10.10.12: { pg_seq: 3, pg_role: primary , pg_offline_query: true }
      vars:
        pg_cluster: pg-meta
```


#### ETCD Repair

Then execute the following command to reset ETCD to a single-node cluster:

```bash
./etcd.yml -e etcd_safeguard=false -e etcd_clean=true
```

Follow the instructions in [ETCD Reload Configuration](/docs/etcd/admin#reload-config) to adjust ETCD Endpoint references.


#### INFRA Repair

If the surviving node doesn't have the INFRA module, configure and install a new INFRA module on the current node. Execute the following command to deploy the INFRA module to the surviving node:

```bash
./infra.yml -l 10.10.10.12
```

Repair monitoring on the current node:

```bash
./node.yml -t node_monitor
```


#### PGSQL Repair

```bash
./pgsql.yml -t pg_conf                            # Regenerate PG configuration files
systemctl reload patroni                          # Reload Patroni configuration on surviving node
```

After repairing each module, you can follow the standard expansion process to add new nodes to the cluster and restore cluster high availability.
