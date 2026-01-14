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
| [**Expand Cluster**](#scale-out)      | `bin/pgsql-add <cls> <ip...>` | Add replica to existing cluster     |
| [**Shrink Cluster**](#scale-in)       | `bin/pgsql-rm <cls> <ip...>`  | Remove instance from cluster        |
| [**Remove Cluster**](#remove-cluster) | `bin/pgsql-rm <cls>`          | Destroy entire PostgreSQL cluster   |
| [**Reload Service**](#reload-service) | `bin/pgsql-svc <cls> [ip...]` | Reload cluster load balancer config |
| [**Reload HBA**](#reload-hba)         | `bin/pgsql-hba <cls> [ip...]` | Reload cluster HBA access rules     |
| [**Clone Cluster**](#clone-cluster)   | -                             | Clone via standby cluster or PITR   |
{.full-width}

For other management tasks, see: [**HA Management**](/docs/pgsql/admin/patroni), [**Manage Users**](/docs/pgsql/admin/user/), [**Manage Databases**](/docs/pgsql/admin/db/).


----------------

## Create Cluster

To create a new PostgreSQL cluster, first [**define the cluster**](/docs/pgsql/config/cluster) in the [**inventory**](/docs/concept/iac/inventory), then [**add nodes**](/docs/node/admin#add-node) and initialize:

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/node-add  <cls>     # Add nodes in group <cls>
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./node.yml  -l <cls>    # Use Ansible playbook to add nodes in group <cls>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-add pg-test   # Add nodes in pg-test group, runs ./node.yml -l pg-test
```
{{% /tab %}}
{{< /tabpane >}}

On managed nodes, create the cluster with: (Execute [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) playbook on **`<cls>`** group)

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-add <cls>     # Create PostgreSQL cluster <cls>
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <cls>    # Use Ansible playbook to create PostgreSQL cluster <cls>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-add pg-test   # Create pg-test cluster
```
{{% /tab %}}
{{< /tabpane >}}


**Example: Create 3-node PG cluster `pg-test`**

{{< asciinema file="demo/pgsql.cast" markers="4:Execute" speed="1.3" autoplay="true" loop="true" >}}

{{% alert title="Risk: Re-running create on existing cluster" color="warning" %}}
If you re-run create on an existing cluster, Pigsty won't remove existing data files, but service configs will be overwritten and the cluster will **restart**!
Additionally, if you specified a `baseline` SQL in [**database definition**](/docs/pgsql/config/db#baseline), it will re-execute - if it contains delete/overwrite logic, **data loss** may occur.
{{% /alert %}}







----------------

## Expand Cluster

To add a new replica to an **existing PostgreSQL cluster**, add the [**instance definition**](/docs/pgsql/config/cluster) to [**inventory**](/docs/concept/iac/inventory): `all.children.<cls>.hosts`.

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary } # existing member
    10.10.10.12: { pg_seq: 2, pg_role: replica } # existing member
    10.10.10.13: { pg_seq: 3, pg_role: replica } # <--- new member
  vars: { pg_cluster: pg-test }
```

Scaling out is similar to [**creating a cluster**](#create-cluster). First add the new node to Pigsty: [**Add Node**](/docs/node/admin#add-node):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/node-add <ip>       # Add node with IP <ip>
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./node.yml -l <ip>      # Use Ansible playbook to add node <ip>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/node-add 10.10.10.13    # Add node 10.10.10.13, runs ./node.yml -l 10.10.10.13
```
{{% /tab %}}
{{< /tabpane >}}

Then run the following on the new node to scale out (Install [**PGSQL module**](/docs/pgsql) on new node with same [**`pg_cluster`**](/docs/pgsql/param#pg_cluster)):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-add <cls> <ip>  # Add node <ip> to cluster
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <ip>       # Core: Use Ansible playbook to install PGSQL module on <ip>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-add pg-test 10.10.10.13   # Scale out pg-test with node 10.10.10.13
```
{{% /tab %}}
{{< /tabpane >}}

After scaling, you should [**Reload Service**](/docs/pgsql/admin/service#reload-service) to add the new member to load balancer.

**Example: Add replica `10.10.10.13` to 2-node cluster `pg-test`**

{{< asciinema file="demo/pgsql-append.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}






----------------

## Shrink Cluster

To remove a replica from an **existing PostgreSQL cluster**, remove the [**instance definition**](/docs/pgsql/config/cluster) from [**inventory**](/docs/concept/iac/inventory) `all.children.<cls>.hosts`.

First uninstall PGSQL module from target node (Execute [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml) on **`<ip>`**):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-rm <cls> <ip>   # Remove PostgreSQL instance on <ip> from cluster <cls>
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-rm.yml -l <ip>    # Use Ansible playbook to remove PostgreSQL instance on <ip>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-rm pg-test 10.10.10.13  # Remove 10.10.10.13 from pg-test cluster
```
{{% /tab %}}
{{< /tabpane >}}

After removing PGSQL module, optionally remove the node from Pigsty: [**Remove Node**](/docs/node/admin#remove-node):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/node-rm <ip>          # Remove node <ip> from Pigsty management
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./node-rm.yml -l <ip>     # Use Ansible playbook to remove node <ip>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/node-rm 10.10.10.13   # Remove node 10.10.10.13 from Pigsty
```
{{% /tab %}}
{{< /tabpane >}}

After scaling in, remove the instance from [**inventory**](/docs/concept/iac/inventory), then [**Reload Service**](/docs/pgsql/admin/service#reload-service) to remove it from load balancer.

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

To destroy a cluster, uninstall PGSQL module from all nodes (Execute [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml) on **`<cls>`**):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-rm <cls>        # Destroy entire PostgreSQL cluster <cls>
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql-rm.yml -l <cls>   # Use Ansible playbook to destroy cluster <cls>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-rm pg-test      # Destroy pg-test cluster
```
{{% /tab %}}
{{< /tabpane >}}

After destroying PGSQL, optionally remove all nodes from Pigsty: [**Remove Node**](/docs/node/admin#remove-node) (optional if other services exist):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/node-rm <cls>         # Remove all nodes in group <cls> from Pigsty
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./node-rm.yml -l <cls>    # Use Ansible playbook to remove nodes in group <cls>
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/node-rm pg-test       # Remove all pg-test nodes from Pigsty
```
{{% /tab %}}
{{< /tabpane >}}

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

Note: If [**`pg_safeguard`**](/docs/pgsql/param#pg_safeguard) is configured (or globally `true`), `pgsql-rm.yml` will abort to prevent accidental removal.
Override with playbook command line to force removal.
By default, cluster backup repo is deleted with the cluster. To preserve backups (e.g., with centralized repo), set [**`pg_rm_backup=false`**](/docs/pgsql/param#pg_rm_backup):


```bash
./pgsql-rm.yml -l pg-meta -e pg_safeguard=false    # force remove protected cluster pg-meta
./pgsql-rm.yml -l pg-meta -e pg_rm_backup=false    # preserve backup repo during removal
```








----------------

## Reload Service

PostgreSQL clusters expose [**services**](/docs/pgsql/service/) via [**HAProxy**](/docs/concept/arch/pgsql#haproxy) on host nodes.
When service definitions change, instance weights change, or cluster membership changes (e.g., [**scale out**](#scale-out)/[**scale in**](#scale-in), switchover/failover), reload services to update load balancer config.

To reload service config on entire cluster or specific instances (Execute `pg_service` subtask of [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) on **`<cls>`** or **`<ip>`**):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-svc <cls>           # Reload service config for entire cluster <cls>
bin/pgsql-svc <cls> <ip...>   # Reload service config for specific instances
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <cls> -t pg_service -e pg_reload=true        # Reload entire cluster
./pgsql.yml -l <ip>  -t pg_service -e pg_reload=true        # Reload specific instance
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-svc pg-test                 # Reload pg-test cluster service config
bin/pgsql-svc pg-test 10.10.10.13     # Reload pg-test 10.10.10.13 instance service config
```
{{% /tab %}}
{{< /tabpane >}}

> Note: If using dedicated load balancer cluster ([**`pg_service_provider`**](/docs/pgsql/param#pg_service_provider)), only reloading cluster primary updates the LB config.


**Example: Reload `pg-test` cluster service config**

{{< asciinema file="demo/pgsql-svc.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}

<details><summary>Example: Reload PG Service to Remove Instance</summary>

[![asciicast](https://asciinema.org/a/568815.svg)](https://asciinema.org/a/568815)

</details>




----------------

## Reload HBA

When HBA configs change, reload HBA rules to apply. ([**`pg_hba_rules`**](/docs/pgsql/param#pg_hba_rules) / [**`pgb_hba_rules`**](/docs/pgsql/param#pgb_hba_rules))
If you have role-specific HBA rules or IP ranges referencing cluster member aliases, reload HBA after switchover/scaling.

To reload PG and Pgbouncer HBA rules on entire cluster or specific instances (Execute HBA subtasks of [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) on **`<cls>`** or **`<ip>`**):

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-hba <cls>           # Reload HBA rules for entire cluster <cls>
bin/pgsql-hba <cls> <ip...>   # Reload HBA rules for specific instances
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload -e pg_reload=true   # Reload entire cluster
./pgsql.yml -l <ip>  -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload -e pg_reload=true   # Reload specific instance
```
{{% /tab %}}
{{% tab header="Example" %}}
```bash
bin/pgsql-hba pg-test                 # Reload pg-test cluster HBA rules
bin/pgsql-hba pg-test 10.10.10.13     # Reload pg-test 10.10.10.13 instance HBA rules
```
{{% /tab %}}
{{< /tabpane >}}


**Example: Reload `pg-test` cluster HBA rules**

{{< asciinema file="demo/pgsql-hba.cast" markers="" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Config Cluster

PostgreSQL config params are managed by Patroni. Initial params are specified by [**Patroni config template**](/docs/pgsql/template/).
After cluster init, config is stored in Etcd, dynamically managed and synced by Patroni.
Most Patroni [**config params**](/docs/pgsql/admin/patroni#edit-config) can be modified via `patronictl`.
Other params (e.g., etcd DCS config, log/RestAPI config) can be updated via subtasks. For example, when [**etcd**](/docs/etcd) cluster membership changes, refresh Patroni config:

```bash
./pgsql.yml -l pg-test -t pg_conf                   # Update Patroni config file
ansible pg-test -b -a 'systemctl reload patroni'    # Reload Patroni service
```

You can override Patroni-managed defaults at different levels: [**specify params per instance**](/docs/pgsql/param#pg_parameters),
[**specify params per user**](/docs/pgsql/admin/user), or [**specify params per database**](/docs/pgsql/admin/db).



----------------

## Clone Cluster

Two ways to clone a cluster: use [**Standby Cluster**](/docs/pgsql/config/cluster#standby-cluster), or use [**Point-in-Time Recovery**](/docs/pgsql/backup/restore#quick-start).
The former is simple with no dependencies but only clones latest state; the latter requires centralized [**backup repository**](/docs/pgsql/backup/repository) (e.g., MinIO) but can clone to any point within retention period.

| Method          | Pros                        | Cons                         | Use Cases                           |
|:----------------|:----------------------------|:-----------------------------|:------------------------------------|
| Standby Cluster | Simple, no dependencies     | Only clones latest state     | DR, read-write separation, migration|
| PITR            | Recover to any point        | Requires centralized backup  | Undo mistakes, data audit           |


### Clone via Standby Cluster

Standby Cluster continuously syncs from upstream cluster via streaming replication - the simplest cloning method.
Specify [**`pg_upstream`**](/docs/pgsql/param#pg_upstream) on the new cluster primary to auto-pull data from upstream.

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

{{< tabpane text=true persist=header >}}
{{% tab header="Script" %}}
```bash
bin/pgsql-add pg-test2    # Create standby cluster, auto-clone from upstream pg-test
```
{{% /tab %}}
{{% tab header="Playbook" %}}
```bash
./pgsql.yml -l pg-test2   # Use Ansible playbook to create standby cluster
```
{{% /tab %}}
{{< /tabpane >}}

Standby cluster follows upstream, keeping data in sync. **Promote** to independent cluster anytime:

<details><summary>Example: Promote Standby to Independent Cluster</summary>

Via [**Config Cluster**](#config-cluster), remove `standby_cluster` config to promote:

```bash
$ pg edit-config pg-test2
-standby_cluster:
-  create_replica_methods:
-  - basebackup
-  host: 10.10.10.11
-  port: 5432

Apply these changes? [y/N]: y
```

After promotion, `pg-test2` becomes independent cluster accepting writes, forked from `pg-test`.

</details>

<details><summary>Example: Change Replication Upstream</summary>

If upstream cluster switchover occurs, change standby cluster upstream via [**Config Cluster**](#config-cluster):

```bash
$ pg edit-config pg-test2

 standby_cluster:
   create_replica_methods:
   - basebackup
-  host: 10.10.10.11     # <--- old upstream
+  host: 10.10.10.14     # <--- new upstream
   port: 5432

Apply these changes? [y/N]: y
```

</details>


### Clone via PITR

[**Point-in-Time Recovery**](/docs/pgsql/backup/restore) (PITR) allows recovery to any point within backup retention.
Requires centralized [**backup repository**](/docs/pgsql/backup/repository) (MinIO/S3), but more powerful.

To clone via PITR, add [**`pg_pitr`**](/docs/pgsql/param#pg_pitr) param specifying recovery target:

```yaml
# Clone new cluster pg-meta2 from pg-meta backup
pg-meta2:
  hosts: { 10.10.10.12: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta2
    pg_pitr:
      cluster: pg-meta                    # Recover from pg-meta backup
      time: '2025-01-10 10:00:00+00'      # Recover to specific time
```

Execute clone with `pgsql-pitr.yml` playbook:

{{< tabpane text=true persist=header >}}
{{% tab header="Playbook" %}}
```bash
./pgsql-pitr.yml -l pg-meta2    # Clone pg-meta2 from pg-meta backup
```
{{% /tab %}}
{{% tab header="CLI" %}}
```bash
# Specify PITR options via command line
./pgsql-pitr.yml -l pg-meta2 -e '{"pg_pitr": {"cluster": "pg-meta", "time": "2025-01-10 10:00:00+00"}}'
```
{{% /tab %}}
{{< /tabpane >}}

PITR supports multiple recovery target types:

| Target Type | Example                              | Description                    |
|:------------|:-------------------------------------|:-------------------------------|
| Time        | `time: "2025-01-10 10:00:00+00"`     | Recover to specific timestamp  |
| XID         | `xid: "250000"`                      | Recover to before/after txn    |
| Name        | `name: "before_migration"`           | Recover to named restore point |
| LSN         | `lsn: "0/4001C80"`                   | Recover to specific WAL pos    |
| Latest      | `type: "latest"`                     | Recover to end of WAL archive  |

{{% alert title="Post-PITR Processing" color="info" %}}
Recovered cluster has `archive_mode` **disabled** to prevent accidental WAL overwrites.
If recovered data is correct, enable archiving and perform new full backup:

```bash
psql -c 'ALTER SYSTEM RESET archive_mode; SELECT pg_reload_conf();'
pg-backup full    # Execute new full backup
```
{{% /alert %}}

For detailed PITR usage, see [**Restore Operations**](/docs/pgsql/backup/restore) documentation.
