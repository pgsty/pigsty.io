# HA Drill: Handling 2-of-3 Node Failure

> HA scenario response plan: When two of three nodes fail and auto-failover doesn't work, how to recover from the emergency state?

---

LLMS index: [llms.txt](/llms.txt)

---

In a typical 3-node HA deployment, simultaneous failure of two nodes removes the majority.
The system usually cannot complete automatic failover and needs manual intervention.

First, assess the two failed servers.
If they can restart quickly, prioritize their recovery.
Otherwise, use the **Emergency Recovery Procedure**.

**The Emergency Recovery Procedure assumes that the administration node has failed** and only one regular database node survives.
In this case, the fastest recovery procedure is:

- Adjust HAProxy configuration to direct traffic to the primary.
- Stop Patroni and manually promote the PostgreSQL replica to primary.


--------

## Adjust HAProxy Configuration

If connections bypass HAProxy, skip this step.
If connections use HAProxy, change its configuration to direct read/write traffic to the primary manually.

- Edit `/etc/haproxy/conf.d/<pg_cluster>-primary.cfg`, where `<pg_cluster>` is your PostgreSQL cluster name, e.g., `pg-meta`.
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

After you change the configuration, wait until primary promotion before you run `systemctl reload haproxy`.
The new configuration disables HAProxy primary health checks, which use Patroni by default.
HAProxy then directs write traffic to the current primary.


--------

## Manually Promote Replica

Log in to the target server and switch to the dbsu user.
Run `CHECKPOINT` to flush data to disk.
Stop Patroni, restart PostgreSQL, then promote the replica:

```bash
sudo su - postgres                     # Switch to database dbsu user
psql -c 'checkpoint; checkpoint;'      # Two Checkpoints to flush dirty pages, avoid long PG restart
sudo systemctl stop patroni            # Stop Patroni
pg-restart                             # Restart PostgreSQL
pg-promote                             # Promote PostgreSQL replica to primary
psql -c 'SELECT pg_is_in_recovery();'  # If result is f, it has been promoted to primary
```

If you changed the HAProxy configuration, now run `systemctl reload haproxy`.
This applies the configuration and directs traffic to the new primary.

```bash
systemctl reload haproxy                # Reload HAProxy configuration to direct write traffic to current instance
```



--------

## Avoid Split Brain

After emergency recovery, the next priority is to **Avoid Split Brain**.
Prevent the other two servers from returning online and becoming competing primaries.
Such a split brain can cause data inconsistency.

Simple approaches:

- **Power off/disconnect network** the other two servers to ensure they don't come online uncontrollably.
- Adjust the database connection string used by applications to point directly to the surviving server's primary.

Then decide the next steps based on the specific situation:

- A: The two servers have temporary failures (e.g., network/power outage) and can be repaired in place to continue service.
- B: The two failed servers have permanent failures (e.g., hardware damage) and will be removed and decommissioned.



--------

## Recovery After Temporary Failure

If the other two servers have temporary failures and can return to service, use these repair and rebuild steps:

- Handle one failed server at a time, prioritize the admin node / INFRA node.
- Start the failed server and stop Patroni after startup.

When ETCD regains quorum, it resumes operation.
Start Patroni on the surviving server, which is the current primary.
Patroni takes control of the existing PostgreSQL instance and regains cluster leadership.
Then enter maintenance mode:

```bash
sudo systemctl restart patroni
pg pause <pg_cluster>
```

On each of the other two instances, use the `postgres` account to run `touch /pg/data/standby.signal`.
The marker identifies the instance as a replica.
Then start Patroni:

```bash
sudo -iu postgres touch /pg/data/standby.signal
sudo systemctl restart patroni
```

After confirming Patroni cluster identity/roles are correct, exit maintenance mode:

```bash
pg resume <pg_cluster>
```



--------

## Recovery After Permanent Failure

After permanent failure, first recover `~/pigsty` on the administration node.
The essential files are `pigsty.yml` and `files/pki/ca/ca.key`.

> If you cannot retrieve these two files or their backups, deploy a new Pigsty installation.
> Migrate the existing cluster through [Backup Cluster](/docs/pgsql/config/cluster/#standby-cluster).
>
> Back up the `pigsty` directory regularly, for example with Git version control.



### Configuration Repair

You can use the surviving node as the new administration node.
Copy `~/pigsty` to it, then adjust the configuration.
For example, replace the original administration node `10.10.10.10` with the surviving node `10.10.10.12`:

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

If the surviving node does not have the INFRA module, configure and install it on that node.
Run this command:

```bash
./infra.yml -l 10.10.10.12
```

Repair monitoring on the current node:

```bash
./node.yml -t monitor
```


#### PGSQL Repair

```bash
./pgsql.yml -t pg_conf                            # Regenerate PG configuration files
systemctl reload patroni                          # Reload Patroni configuration on surviving node
```

After you repair each module, use the standard expansion procedure to add nodes and restore cluster high availability.
