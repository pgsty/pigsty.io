---
title: Managing PostgreSQL Clusters
linkTitle: Cluster Admin
weight: 10
description: Create/destroy PostgreSQL clusters, scale existing clusters, and clone clusters.
icon: fa-solid fa-server
module: [PGSQL]
categories: [Task]
---


## Quick Reference

| Action                                | Command                       | Description                         |
|:--------------------------------------|:------------------------------|:------------------------------------|
| [**Create Cluster**](#create-cluster) | `bin/pgsql-add <cls>`         | Create a new PostgreSQL cluster     |
| [**Expand Cluster**](#expand-cluster) | `bin/pgsql-add <cls> <ip...>` | Add replica to existing cluster     |
| [**Shrink Cluster**](#shrink-cluster) | `bin/pgsql-rm <cls> <ip...>`  | Remove instance from cluster        |
| [**Remove Cluster**](#remove-cluster) | `bin/pgsql-rm <cls>`          | Destroy entire PostgreSQL cluster   |
| [**Reload Service**](#reload-service) | `bin/pgsql-svc <cls> [ip...]` | Reload cluster load balancer config |
| [**Reload HBA**](#reload-hba)         | `bin/pgsql-hba <cls> [ip...]` | Reload cluster HBA access rules     |
| [**Clone Cluster**](#clone-cluster)   | -                             | Clone via standby cluster or PITR   |
{.full-width}

For other management tasks, see: [**HA Management**](/docs/pgsql/admin/patroni), [**Manage Users**](/docs/pgsql/admin/user/), [**Manage Databases**](/docs/pgsql/admin/db/).


----------------

## Create Cluster

To create a PostgreSQL cluster, first [**define the cluster**](/docs/pgsql/config/cluster) in the [**inventory**](/docs/concept/iac/inventory).
Then [**add nodes**](/docs/node/admin#add-node) and initialize them:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/node-add  <cls>     # Add nodes in group <cls>
```

```bash {tab="Playbook" value="playbook"}
./node.yml  -l <cls>    # Use Ansible playbook to add nodes in group <cls>
```

```bash {tab="Example" value="example"}
bin/node-add pg-test    # Add nodes in pg-test group, runs ./node.yml -l pg-test
```

Create the cluster on the managed nodes.
Run the [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) playbook on the **`<cls>`** group:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-add <cls>     # Create PostgreSQL cluster <cls>
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <cls>    # Use Ansible playbook to create PostgreSQL cluster <cls>
```

```bash {tab="Example" value="example"}
bin/pgsql-add pg-test   # Create pg-test cluster
```


**Example: Create 3-node PG cluster `pg-test`**

{{< asciinema file="demo/pgsql.cast" markers="4:Execute" speed="1.3" autoplay="true" loop="true" >}}

> [!WARNING] Risk: Re-running create on existing cluster
> If you repeat cluster creation, Pigsty keeps existing data files.
> However, it overwrites service configurations and **restarts** the cluster.
> It also runs any `baseline` SQL from the [**database definition**](/docs/pgsql/config/db#baseline) again.
> If that SQL deletes or overwrites data, **data loss** can occur.







----------------

## Expand Cluster

To add a replica to an **existing PostgreSQL cluster**, add its [**instance definition**](/docs/pgsql/config/cluster) to the [**inventory**](/docs/concept/iac/inventory).
Use `all.children.<cls>.hosts`:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary } # existing member
    10.10.10.12: { pg_seq: 2, pg_role: replica } # existing member
    10.10.10.13: { pg_seq: 3, pg_role: replica } # <--- new member
  vars: { pg_cluster: pg-test }
```

Scale out with a procedure similar to [**cluster creation**](#create-cluster).
First [**add the new node**](/docs/node/admin#add-node) to Pigsty:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/node-add <ip>       # Add node with IP <ip>
```

```bash {tab="Playbook" value="playbook"}
./node.yml -l <ip>      # Use Ansible playbook to add node <ip>
```

```bash {tab="Example" value="example"}
bin/node-add 10.10.10.13    # Add node 10.10.10.13, runs ./node.yml -l 10.10.10.13
```

Then install the [**PGSQL module**](/docs/pgsql) on the new node.
Use the same [**`pg_cluster`**](/docs/pgsql/param#pg_cluster) value as the existing cluster:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-add <cls> <ip>  # Add node <ip> to cluster
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <ip>       # Core: Use Ansible playbook to install PGSQL module on <ip>
```

```bash {tab="Example" value="example"}
bin/pgsql-add pg-test 10.10.10.13   # Scale out pg-test with node 10.10.10.13
```

After you scale out, [**reload the service**](/docs/pgsql/admin/cluster#reload-service) to add the new member to the load balancer.

**Example: Add replica `10.10.10.13` to 2-node cluster `pg-test`**

{{< asciinema file="demo/pgsql-append.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}






----------------

## Shrink Cluster

To remove a replica from an **existing PostgreSQL cluster**, remove its [**instance definition**](/docs/pgsql/config/cluster).
Update `all.children.<cls>.hosts` in the [**inventory**](/docs/concept/iac/inventory).

By default, scaling in stops the instance and deletes its data directory.
First run `pig pg list <cls>` and `pig pb info`.
Verify that the target is not the primary and that a recent restorable backup exists.
Then have the operator enter the exact `<ip>`.
Run the removal only after confirmation.

First uninstall the PGSQL module from the target node.
Run [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml) on **`<ip>`**:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-rm <cls> <ip>   # Remove the PostgreSQL instance on <ip> from cluster <cls>
```

```bash {tab="Playbook" value="playbook"}
./pgsql-rm.yml -l <ip>    # Directly remove the PostgreSQL instance on <ip> with the Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-rm pg-test 10.10.10.13  # Remove node 10.10.10.13 from pg-test
```

After you remove the PGSQL module, you can [**remove the node**](/docs/node/admin#remove-node) from Pigsty:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/node-rm <ip>          # Remove <ip> from Pigsty management
```

```bash {tab="Playbook" value="playbook"}
./node-rm.yml -l <ip>     # Directly remove <ip> from Pigsty management with the Ansible playbook
```

```bash {tab="Example" value="example"}
bin/node-rm 10.10.10.13   # Remove 10.10.10.13 from Pigsty management
```

After you scale in, remove the instance from the [**inventory**](/docs/concept/iac/inventory).
Then [**reload the service**](/docs/pgsql/admin/cluster#reload-service) to remove the instance from the load balancer.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica } # <--- remove after execution
  vars: { pg_cluster: pg-test }
```

**Example: Remove replica `10.10.10.13` from 3-node cluster `pg-test`**

{{< asciinema file="demo/pgsql-shrink.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}







----------------

## Remove Cluster

To destroy a cluster, uninstall the PGSQL module from all its nodes.
Run [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml) on **`<cls>`**:

This operation permanently deletes data.
Inspect `pig pg list <cls>` and `pig pb info`.
Verify a recent backup and any independent copy that you must keep.
Have the operator enter the exact cluster name.
The following commands destroy that cluster directly.

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-rm <cls>        # Destroy the entire PostgreSQL cluster <cls>
```

```bash {tab="Playbook" value="playbook"}
./pgsql-rm.yml -l <cls>   # Directly destroy the entire PostgreSQL cluster <cls> with the Ansible playbook
```

```bash {tab="Example" value="example"}
bin/pgsql-rm pg-test      # Destroy cluster pg-test
```

After you destroy PGSQL, you can [**remove all its nodes**](/docs/node/admin#remove-node) from Pigsty.
You can keep nodes that run other services:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/node-rm <cls>         # Remove every node in group <cls> from Pigsty management
```

```bash {tab="Playbook" value="playbook"}
./node-rm.yml -l <cls>    # Directly remove the nodes in group <cls> from Pigsty management with the Ansible playbook
```

```bash {tab="Example" value="example"}
bin/node-rm pg-test       # Remove every node in group pg-test from Pigsty management
```

After removal, delete the entire [**cluster definition**](/docs/pgsql/config/cluster) from [**inventory**](/docs/concept/iac/inventory).

```yaml
pg-test: # remove this cluster definition group
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica }
  vars: { pg_cluster: pg-test }
```


**Example: Destroy 3-node PG cluster `pg-test`**

{{< asciinema file="demo/pgsql-rm.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}

If [**`pg_safeguard`**](/docs/pgsql/param#pg_safeguard) is `true` for the cluster or globally, `pgsql-rm.yml` stops to prevent accidental removal.
To force removal, override this setting on the playbook command line.
By default, removal also deletes the cluster backup repository.
To keep backups, such as a centralized repository, set [**`pg_rm_backup=false`**](/docs/pgsql/param#pg_rm_backup):


```bash
./pgsql-rm.yml -l pg-meta -e pg_safeguard=false    # Force removal of protected pg-meta
./pgsql-rm.yml -l pg-meta -e pg_rm_backup=false    # Preserve its backup repository while removing the cluster
```








----------------

## Reload Service

PostgreSQL clusters expose [**services**](/docs/pgsql/service/) through [**HAProxy**](/docs/concept/arch/pgsql#haproxy) on host nodes.
Reload services when service definitions, instance weights, or cluster membership change, including [**scale-out**](#expand-cluster) and [**scale-in**](#shrink-cluster).
The reload updates the static HAProxy member configuration.
The default Primary and Replica services detect current roles through Patroni REST API health checks.
Thus, ordinary switchover or failover redirects traffic automatically.
These role changes do not require a new HAProxy configuration.

To reload service configuration, run the `pg_service` subtask of [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml).
Target **`<cls>`** for the whole cluster or **`<ip>`** for specific instances:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-svc <cls>           # Reload service config for entire cluster <cls>
bin/pgsql-svc <cls> <ip...>   # Reload service config for specific instances
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <cls> -t pg_service -e pg_reload=true        # Reload entire cluster
./pgsql.yml -l <ip>  -t pg_service -e pg_reload=true        # Reload specific instance
```

```bash {tab="Example" value="example"}
bin/pgsql-svc pg-test                 # Reload pg-test cluster service config
bin/pgsql-svc pg-test 10.10.10.13     # Reload pg-test 10.10.10.13 instance service config
```

> If you use a dedicated load balancer cluster, set [**`pg_service_provider`**](/docs/pgsql/param#pg_service_provider).
> In this configuration, only a reload on the cluster primary updates the load balancer configuration.


**Example: Reload `pg-test` cluster service config**

{{< asciinema file="demo/pgsql-svc.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}

> [!DETAILS]- Example: Reload PG Service to Remove Instance
> [![asciicast](https://asciinema.org/a/568815.svg)](https://asciinema.org/a/568815)




----------------

## Reload HBA

When HBA configuration changes, reload the [**`pg_hba_rules`**](/docs/pgsql/param#pg_hba_rules) and [**`pgb_hba_rules`**](/docs/pgsql/param#pgb_hba_rules) rules.
Some HBA rules depend on inventory roles or address ranges that refer to cluster member aliases.
For these rules, reload HBA after you change `pg_role` labels or scale the cluster.
Role selectors use static inventory variables.
They do not change automatically after a Patroni switchover.

To reload PostgreSQL and Pgbouncer HBA rules, run the HBA subtasks of [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml).
Target **`<cls>`** for the whole cluster or **`<ip>`** for specific instances:

```bash {tab="Script" group="script-playbook-example" value="script"}
bin/pgsql-hba <cls>           # Reload HBA rules for entire cluster <cls>
bin/pgsql-hba <cls> <ip...>   # Reload HBA rules for specific instances
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload -e pg_reload=true   # Reload entire cluster
./pgsql.yml -l <ip>  -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload -e pg_reload=true   # Reload specific instance
```

```bash {tab="Example" value="example"}
bin/pgsql-hba pg-test                 # Reload pg-test cluster HBA rules
bin/pgsql-hba pg-test 10.10.10.13     # Reload pg-test 10.10.10.13 instance HBA rules
```


**Example: Reload `pg-test` cluster HBA rules**

{{< asciinema file="demo/pgsql-hba.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Config Cluster

Patroni manages PostgreSQL configuration parameters.
The [**Patroni configuration template**](/docs/pgsql/template/) supplies the initial values.
After cluster initialization, Patroni dynamically manages and synchronizes the configuration stored in Etcd.
Use `patronictl` to change most Patroni [**configuration parameters**](/docs/pgsql/admin/patroni#edit-config).
Use subtasks for other parameters, such as etcd DCS, logging, and REST API configuration.
For example, refresh Patroni configuration after [**etcd**](/docs/etcd) cluster membership changes:

```bash
./pgsql.yml -l pg-test -t pg_conf                   # Update Patroni config file
ansible pg-test -b -a 'systemctl reload patroni'    # Reload Patroni service
```

You can override Patroni-managed defaults at different levels: [**specify params per instance**](/docs/pgsql/param#pg_parameters),
[**specify params per user**](/docs/pgsql/admin/user), or [**specify params per database**](/docs/pgsql/admin/db).



----------------

## Clone Cluster

You can clone a cluster with a [**Standby Cluster**](/docs/pgsql/config/cluster#standby-cluster) or [**Point-in-Time Recovery**](/docs/pgsql/backup/restore#quick-start).
A standby cluster is simple and does not require a backup repository.
It requires a reachable replication upstream and can copy only the latest state.
PITR requires a centralized [**backup repository**](/docs/pgsql/backup/repository), such as Silo.
It can clone the cluster to any point within the retention period.

| Method          | Pros                        | Cons                         | Use Cases                           |
|:----------------|:----------------------------|:-----------------------------|:------------------------------------|
| Standby Cluster | No backup repository needed | Requires reachable upstream; latest state only | DR, read-write separation, migration|
| PITR            | Recover to any point        | Requires centralized backup  | Undo mistakes, data audit           |


### Clone via Standby Cluster

A standby cluster continuously synchronizes from the upstream cluster through streaming replication.
This is the simplest cloning method.
Set [**`pg_upstream`**](/docs/pgsql/param#pg_upstream) on the new cluster primary to pull data automatically from the upstream.

```yaml
# pg-test is the original cluster
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
  vars: { pg_cluster: pg-test }

# pg-test2 is standby cluster (clone) of pg-test
pg-test2:
  hosts:
    10.10.10.12: { pg_seq: 1, pg_role: primary, pg_upstream: 10.10.10.11 }  # specify upstream
    10.10.10.13: { pg_seq: 2, pg_role: replica }
  vars: { pg_cluster: pg-test2 }
```

Create standby cluster with:

```bash {tab="Script" group="script-playbook" value="script"}
bin/pgsql-add pg-test2    # Create standby cluster, auto-clone from upstream pg-test
```

```bash {tab="Playbook" value="playbook"}
./pgsql.yml -l pg-test2   # Use Ansible playbook to create standby cluster
```

The standby cluster follows the upstream and keeps its data synchronized.
You can **promote** it to an independent cluster at any time:

> [!DETAILS]- Example: Promote Standby to Independent Cluster
> Via [**Config Cluster**](#config-cluster), remove `standby_cluster` config to promote:
>
> ```bash
> $ pg edit-config pg-test2
> -standby_cluster:
> -  create_replica_methods:
> -  - basebackup
> -  host: 10.10.10.11
> -  port: 5432
>
> Apply these changes? [y/N]: y
> ```
>
> After promotion, `pg-test2` becomes independent cluster accepting writes, forked from `pg-test`.

> [!DETAILS]- Example: Change Replication Upstream
> If upstream cluster switchover occurs, change standby cluster upstream via [**Config Cluster**](#config-cluster):
>
> ```bash
> $ pg edit-config pg-test2
>
>  standby_cluster:
>    create_replica_methods:
>    - basebackup
> -  host: 10.10.10.11     # <--- old upstream
> +  host: 10.10.10.14     # <--- new upstream
>    port: 5432
>
> Apply these changes? [y/N]: y
> ```


### Clone via PITR

[**Point-in-Time Recovery**](/docs/pgsql/backup/restore) (PITR) can recover to any point within the backup retention period.
It requires a centralized [**backup repository**](/docs/pgsql/backup/repository), such as Silo or S3.
It gives more recovery options than a standby cluster.

To clone with PITR, add [**`pg_pitr`**](/docs/pgsql/backup/restore#pitr-parameter-definition) and specify the recovery target:

```yaml
# Clone new cluster pg-meta2 from pg-meta backup
pg-meta2:
  hosts: { 10.10.10.12: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta2
    pg_pitr:
      cluster: pg-meta                    # Recover from pg-meta backup
      time: '2025-01-10 10:00:00+00'      # Recover to specific time
      archive: false                       # Disable archiving during the independent restore
      action: promote                      # Promote after replay in this one-shot example
```

Execute clone with `pgsql-pitr.yml` playbook:

```bash {tab="Playbook" group="playbook-cli" value="playbook"}
./pgsql-pitr.yml -l pg-meta2    # Use the explicitly declared action: promote above
```

```bash {tab="CLI" value="cli"}
# Specify PITR options via command line
./pgsql-pitr.yml -l pg-meta2 -e '{"pg_pitr": {"cluster": "pg-meta", "time": "2025-01-10 10:00:00+00", "archive": false, "action": "promote"}}'
```

PITR supports multiple recovery target types:

| Target Type | Example                              | Description                    |
|:------------|:-------------------------------------|:-------------------------------|
| Time        | `time: "2025-01-10 10:00:00+00"`     | Recover to specific timestamp  |
| XID         | `xid: "250000"`                      | Recover to before/after txn    |
| Name        | `name: "before_migration"`           | Recover to named restore point |
| LSN         | `lsn: "0/4001C80"`                   | Recover to specific WAL pos    |
| Latest      | `pg_pitr: {}`                        | Recover to end of WAL archive  |

> [!NOTE] Post-PITR Processing
> Pigsty {{< param version_short >}} PITR keeps archiving enabled by default (`archive: true`). If you explicitly set `archive: false` for exploratory recovery, reset `archive_mode`, restart the cluster, and perform a new full backup after confirming the recovered data is correct:
>
> ```bash
> psql -c 'ALTER SYSTEM RESET archive_mode;'
> pg restart <cls>
> pg-backup full    # Execute new full backup
> ```

For detailed PITR usage, see [**Restore Operations**](/docs/pgsql/backup/restore) documentation.
