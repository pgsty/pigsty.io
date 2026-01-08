---
title: SOP
weight: 2003
description: Common PostgreSQL administration procedures in Pigsty for maintaining
  production database clusters.
icon: fa-solid fa-list-check
module: [PGSQL]
categories: [Task]
tags: [SOP]
---

> This document organizes common PostgreSQL administration procedures in Pigsty for maintaining production database clusters.

Here are the standard operating procedures for common PostgreSQL administration tasks:

- Case 1:  [Create Cluster](#create-cluster)
- Case 2:  [Create User](#create-user)
- Case 3:  [Delete User](#delete-user)
- Case 4:  [Create Database](#create-database)
- Case 5:  [Reload Service](#reload-service)
- Case 6:  [Reload HBA](#reload-hba)
- Case 7:  [Config Cluster](#config-cluster)
- Case 8:  [Append Replica](#append-replica)
- Case 9:  [Remove Replica](#remove-replica)
- Case 10: [Remove Cluster](#remove-cluster)
- Case 11: [Switchover](#switchover)
- Case 12: [Backup Cluster](#backup-cluster)
- Case 13: [Restore Cluster](#restore-cluster)
- Case 14: [Adding Packages](#adding-packages)
- Case 15: [Install Extension](#install-extension)
- Case 16: [Minor Upgrade](#minor-upgrade)
- Case 17: [Major Upgrade](#major-upgrade)


----------------

## Cheatsheet

PGSQL playbooks and shortcuts:

```bash
bin/pgsql-add   <cls>                   # create pgsql cluster <cls>
bin/pgsql-user  <cls> <username>        # create pg user <username> on <cls>
bin/pgsql-db    <cls> <dbname>          # create pg database <dbname> on <cls>
bin/pgsql-svc   <cls> [...ip]           # reload pg service of cluster <cls>
bin/pgsql-hba   <cls> [...ip]           # reload postgres/pgbouncer HBA rules of cluster <cls>
bin/pgsql-add   <cls> [...ip]           # append replicas for cluster <cls>
bin/pgsql-rm    <cls> [...ip]           # remove replicas from cluster <cls>
bin/pgsql-rm    <cls>                   # remove pgsql cluster <cls>
```

Patroni admin command and shortcuts:

```bash
pg list        <cls>                    # print cluster info
pg edit-config <cls>                    # edit cluster config
pg reload      <cls> [ins]              # reload cluster config
pg restart     <cls> [ins]              # restart pgsql cluster
pg reinit      <cls> [ins]              # reinit cluster members
pg pause       <cls>                    # entering maintenance mode (no auto failover)
pg resume      <cls>                    # exiting maintenance mode
pg switchover  <cls>                    # switchover on cluster <cls> (primary is healthy)
pg failover    <cls>                    # failover on cluster <cls> (primary failed)
```

pgBackRest backup/restore command and shortcuts:

```bash
pb info                                 # print pgbackrest repo info
pg-backup                               # make a backup, incr, or full backup if necessary
pg-backup full                          # make a full backup
pg-backup diff                          # make a differential backup
pg-backup incr                          # make a incremental backup
pg-pitr -i                              # restore to most recent backup completion time (not common)
pg-pitr --time="2022-12-30 14:44:44+08" # restore to specific time point (e.g., in case of table/database drop)
pg-pitr --name="my-restore-point"       # restore to named restore point created by pg_create_restore_point
pg-pitr --lsn="0/7C82CB8" -X            # restore immediately before LSN
pg-pitr --xid="1234567" -X -P           # restore immediately before specific transaction ID, then promote to primary
pg-pitr --backup=latest                 # restore to latest backup set
pg-pitr --backup=20221108-105325        # restore to specific backup set, can be checked with pgbackrest info
```

Systemd components quick reference:

```bash
systemctl stop patroni                  # start stop restart reload
systemctl stop pgbouncer                # start stop restart reload
systemctl stop pg_exporter              # start stop restart reload
systemctl stop pgbouncer_exporter       # start stop restart reload
systemctl stop node_exporter            # start stop restart
systemctl stop haproxy                  # start stop restart reload
systemctl stop vip-manager              # start stop restart reload
systemctl stop postgres                 # only when patroni_mode == 'remove'
```



----------------

## Create Cluster

To create a new Postgres cluster, first define it in the inventory, then initialize:

```bash
bin/node-add <cls>                # init nodes for cluster <cls>           # ./node.yml  -l <cls>
bin/pgsql-add <cls>               # init pgsql instances of cluster <cls>  # ./pgsql.yml -l <cls>
```

> Note: PGSQL module requires managed nodes. Use `bin/node-add` to manage nodes first.

<details><summary>Example: Create Cluster</summary>

[![asciicast](https://asciinema.org/a/568810.svg)](https://asciinema.org/a/568810)

</details>



----------------

## Create User

To create a new business user on an existing Postgres cluster, add the user definition to `all.children.<cls>.pg_users`, then create it using:

```bash
bin/pgsql-user <cls> <username>   # ./pgsql-user.yml -l <cls> -e username=<username>
```

<details><summary>Example: Create Business User</summary>

[![asciicast](https://asciinema.org/a/568789.svg)](https://asciinema.org/a/568789)

</details>



----------------

## Delete User

To delete a user from an existing Postgres cluster, set the user's `state` to `absent` in the definition, then execute:

```bash
bin/pgsql-user <cls> <username>   # ./pgsql-user.yml -l <cls> -e username=<username>
```

For example, to delete `dbuser_test` user:

```yaml
pg_users:
  - name: dbuser_test
    state: absent
```

**The deletion process will:**

1. Use the `pg-drop-role` script to safely delete the user
2. Automatically disable user login and terminate active connections
3. Automatically transfer database/tablespace ownership to `postgres`
4. Automatically handle object ownership and permissions in all databases
5. Revoke all role memberships
6. Create an audit log for traceability
7. Remove the user from the Pgbouncer user list (if previously added)
8. Reload Pgbouncer configuration

**Protected System Users:**

The following system users cannot be deleted via `state: absent` and will be automatically skipped:

- `postgres` (superuser)
- `replicator` (or the user configured in `pg_replication_username`)
- `dbuser_dba` (or the user configured in `pg_admin_username`)
- `dbuser_monitor` (or the user configured in `pg_monitor_username`)

<details><summary>Example: pg-drop-role Script Usage</summary>

```bash
# Check user dependencies (read-only operation)
pg-drop-role dbuser_old --check

# Preview deletion operation (don't actually execute)
pg-drop-role dbuser_old --dry-run -v

# Delete user, transfer objects to postgres
pg-drop-role dbuser_old

# Delete user, transfer objects to specified user
pg-drop-role dbuser_old dbuser_new

# Force delete (terminate active connections)
pg-drop-role dbuser_old --force
```

</details>



----------------

## Create Database

To create a new database on an existing Postgres cluster, add the database definition to `all.children.<cls>.pg_databases`, then create the database as follows:

```bash
bin/pgsql-db <cls> <dbname>       # ./pgsql-db.yml -l <cls> -e dbname=<dbname>
```

Note: If the database specifies a non-default owner, the owner user must already exist, otherwise you must [Create User](#create-user) first.

<details><summary>Example: Create Business Database</summary>

[![asciicast](https://asciinema.org/a/568790.svg)](https://asciinema.org/a/568790)

</details>



----------------

## Reload Service

[Services](/docs/pgsql/service/) are access points exposed by PostgreSQL (reachable via PGURL), served by HAProxy on host nodes.

Use this task when cluster membership changes, for example: [append](#append-replica)/[remove](#remove-replica) replicas, [switchover](#switchover)/failover / exposing new services, or updating existing service configurations (e.g., LB weights)

To create new services or reload existing services on entire proxy cluster or specific instances:

```bash
bin/pgsql-svc <cls>               # pgsql.yml -l <cls> -t pg_service -e pg_reload=true
bin/pgsql-svc <cls> [ip...]       # pgsql.yml -l ip... -t pg_service -e pg_reload=true
```

<details><summary>Example: Reload PG Service to Remove an Instance</summary>

[![asciicast](https://asciinema.org/a/568815.svg)](https://asciinema.org/a/568815)

</details>




----------------

## Reload HBA

When your Postgres/Pgbouncer HBA rules change, you *may* need to reload HBA to apply the changes.

If you have any role-specific HBA rules, or IP address ranges referencing cluster member aliases, you may also need to reload HBA after switchover/cluster scaling.

To reload postgres and pgbouncer HBA rules on entire cluster or specific instances:

```bash
bin/pgsql-hba <cls>               # pgsql.yml -l <cls> -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload -e pg_reload=true
bin/pgsql-hba <cls> [ip...]       # pgsql.yml -l ip... -t pg_hba,pg_reload,pgbouncer_hba,pgbouncer_reload -e pg_reload=true
```

<details><summary>Example: Reload Cluster HBA Rules</summary>

[![asciicast](https://asciinema.org/a/568794.svg)](https://asciinema.org/a/568794)

</details>



----------------

## Config Cluster

To change configuration of an existing Postgres cluster, you need to issue control commands on the **admin node** using the **admin user** (the user who installed Pigsty, with nopass ssh/sudo):

Alternatively, on any node in the database cluster, using `dbsu` (default `postgres`), you can execute admin commands, but only for this cluster.

```bash
pg edit-config <cls>              # interactive config a cluster with patronictl
```

Change patroni parameters and `postgresql.parameters`, save and apply changes according to prompts.


<details><summary>Example: Non-Interactive Cluster Configuration</summary>

You can skip interactive mode and override postgres parameters using the `-p` option, for example:

```bash
pg edit-config -p log_min_duration_statement=1000 pg-test
pg edit-config --force -p shared_preload_libraries='timescaledb, pg_cron, pg_stat_statements, auto_explain'
```

</details>


<details><summary>Example: Change Cluster Config Using Patroni REST API</summary>

You can also use the [Patroni REST API](https://patroni.readthedocs.io/en/latest/rest_api.html) to change configuration non-interactively, for example:

```bash
$ curl -s 10.10.10.11:8008/config | jq .  # get current config
$ curl -u 'postgres:Patroni.API' \
        -d '{"postgresql":{"parameters": {"log_min_duration_statement":200}}}' \
        -s -X PATCH http://10.10.10.11:8008/config | jq .
```

Note: Patroni sensitive API access (e.g., restart) is restricted to requests from infra/admin nodes, with HTTP basic authentication (username/password) and optional HTTPS protection.

</details>


<details><summary>Example: Configure Cluster with patronictl</summary>

[![asciicast](https://asciinema.org/a/568799.svg)](https://asciinema.org/a/568799)

</details>



----------------

## Append Replica

To add a new replica to an existing PostgreSQL cluster, add its definition to the inventory `all.children.<cls>.hosts`, then:

```bash
bin/node-add <ip>                 # add node <ip> to Pigsty management
bin/pgsql-add <cls> <ip>          # init <ip> as new replica of cluster <cls>
```

This will add node `<ip>` to pigsty and initialize it as a replica of cluster `<cls>`.

Cluster services will be [reloaded](#reload-service) to accept the new member.

<details><summary>Example: Add Replica to pg-test</summary>

[![asciicast](https://asciinema.org/a/566421.svg)](https://asciinema.org/a/566421)

For example, if you want to add `pg-test-3 / 10.10.10.13` to existing cluster `pg-test`, first update the inventory:

```bash
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary } # existing member
    10.10.10.12: { pg_seq: 2, pg_role: replica } # existing member
    10.10.10.13: { pg_seq: 3, pg_role: replica } # <--- new member
  vars: { pg_cluster: pg-test }
```

Then apply the changes as follows:

```bash
bin/node-add          10.10.10.13   # add node to pigsty
bin/pgsql-add pg-test 10.10.10.13   # init new replica for cluster pg-test on 10.10.10.13
```

This is similar to cluster initialization but works on a single instance:

```bash
[ OK ] Initialize instance 10.10.10.11 in pgsql cluster 'pg-test':
[WARN]   Reminder: add nodes to pigsty first, then install module 'pgsql'
[HINT]     $ bin/node-add  10.10.10.11  # run this first except for infra nodes
[WARN]   Init instance from cluster:
[ OK ]     $ ./pgsql.yml -l '10.10.10.11,&pg-test'
[WARN]   Reload pg_service on existing instances:
[ OK ]     $ ./pgsql.yml -l 'pg-test,!10.10.10.11' -t pg_service
```

</details>




----------------

## Remove Replica

To remove a replica from an existing PostgreSQL cluster:

```bash
bin/pgsql-rm <cls> <ip...>        # ./pgsql-rm.yml -l <ip>
```

This will remove instance `<ip>` from cluster `<cls>`. Cluster services will be [reloaded](#reload-service) to remove the instance from load balancers.

<details><summary>Example: Remove Replica from pg-test</summary>

[![asciicast](https://asciinema.org/a/566419.svg)](https://asciinema.org/a/566419)

For example, if you want to remove `pg-test-3 / 10.10.10.13` from existing cluster `pg-test`:

```bash
bin/pgsql-rm pg-test 10.10.10.13  # remove pgsql instance 10.10.10.13 from pg-test
bin/node-rm  10.10.10.13          # remove node from pigsty (optional)
vi pigsty.yml                     # remove instance definition from inventory
bin/pgsql-svc pg-test             # refresh pg_service on existing instances to remove from load balancer
```

```bash
[ OK ] Remove pgsql instance 10.10.10.13 from 'pg-test':
[WARN]   Remove instance from cluster:
[ OK ]     $ ./pgsql-rm.yml -l '10.10.10.13,&pg-test'
```

And remove the instance definition from inventory:

```yaml
pg-test:
  hosts:
    10.10.10.11: { pg_seq: 1, pg_role: primary }
    10.10.10.12: { pg_seq: 2, pg_role: replica }
    10.10.10.13: { pg_seq: 3, pg_role: replica } # <--- remove this line after execution
  vars: { pg_cluster: pg-test }
```

Finally, you can [reload PG service](#reload-service) to remove the instance from load balancers:

```bash
bin/pgsql-svc pg-test             # reload service on pg-test
```

</details>



----------------

## Remove Cluster

To remove an entire Postgres cluster, simply run:

```bash
bin/pgsql-rm <cls>                # ./pgsql-rm.yml -l <cls>
```

<details><summary>Example: Remove Cluster</summary>

[![asciicast](https://asciinema.org/a/566418.svg)](https://asciinema.org/a/566418)

</details>

<details><summary>Example: Force Remove Cluster</summary>

Note: If [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) is configured for this cluster (or globally set to `true`), `pgsql-rm.yml` will abort to avoid accidental cluster removal.

You can explicitly override it with playbook command line parameters to force removal:

```bash
./pgsql-rm.yml -l pg-meta -e pg_safeguard=false    # force remove pg cluster pg-meta
```

</details>




----------------

## Switchover

You can use the patroni command line tool to perform PostgreSQL cluster switchover.

```bash
pg switchover <cls>   # interactive mode, you can skip the wizard with the following parameter combination
pg switchover --leader pg-test-1 --candidate=pg-test-2 --scheduled=now --force pg-test
```

<details><summary>Example: pg-test Switchover</summary>

[![asciicast](https://asciinema.org/a/566248.svg)](https://asciinema.org/a/566248)

```bash
$ pg switchover pg-test
Master [pg-test-1]:
Candidate ['pg-test-2', 'pg-test-3'] []: pg-test-2
When should the switchover take place (e.g. 2022-12-26T07:39 )  [now]: now
Current cluster topology
+ Cluster: pg-test (7181325041648035869) -----+----+-----------+-----------------+
| Member    | Host        | Role    | State   | TL | Lag in MB | Tags            |
+-----------+-------------+---------+---------+----+-----------+-----------------+
| pg-test-1 | 10.10.10.11 | Leader  | running |  1 |           | clonefrom: true |
|           |             |         |         |    |           | conf: tiny.yml  |
|           |             |         |         |    |           | spec: 1C.2G.50G |
|           |             |         |         |    |           | version: '15'   |
+-----------+-------------+---------+---------+----+-----------+-----------------+
| pg-test-2 | 10.10.10.12 | Replica | running |  1 |         0 | clonefrom: true |
|           |             |         |         |    |           | conf: tiny.yml  |
|           |             |         |         |    |           | spec: 1C.2G.50G |
|           |             |         |         |    |           | version: '15'   |
+-----------+-------------+---------+---------+----+-----------+-----------------+
| pg-test-3 | 10.10.10.13 | Replica | running |  1 |         0 | clonefrom: true |
|           |             |         |         |    |           | conf: tiny.yml  |
|           |             |         |         |    |           | spec: 1C.2G.50G |
|           |             |         |         |    |           | version: '15'   |
+-----------+-------------+---------+---------+----+-----------+-----------------+
Are you sure you want to switchover cluster pg-test, demoting current master pg-test-1? [y/N]: y
2022-12-26 06:39:58.02468 Successfully switched over to "pg-test-2"
+ Cluster: pg-test (7181325041648035869) -----+----+-----------+-----------------+
| Member    | Host        | Role    | State   | TL | Lag in MB | Tags            |
+-----------+-------------+---------+---------+----+-----------+-----------------+
| pg-test-1 | 10.10.10.11 | Replica | stopped |    |   unknown | clonefrom: true |
|           |             |         |         |    |           | conf: tiny.yml  |
|           |             |         |         |    |           | spec: 1C.2G.50G |
|           |             |         |         |    |           | version: '15'   |
+-----------+-------------+---------+---------+----+-----------+-----------------+
| pg-test-2 | 10.10.10.12 | Leader  | running |  1 |           | clonefrom: true |
|           |             |         |         |    |           | conf: tiny.yml  |
|           |             |         |         |    |           | spec: 1C.2G.50G |
|           |             |         |         |    |           | version: '15'   |
+-----------+-------------+---------+---------+----+-----------+-----------------+
| pg-test-3 | 10.10.10.13 | Replica | running |  1 |         0 | clonefrom: true |
|           |             |         |         |    |           | conf: tiny.yml  |
|           |             |         |         |    |           | spec: 1C.2G.50G |
|           |             |         |         |    |           | version: '15'   |
+-----------+-------------+---------+---------+----+-----------+-----------------+
```

To perform this via Patroni API (e.g., switch primary from instance 2 to instance 1 at a specified time):

```bash
curl -u 'postgres:Patroni.API' \
  -d '{"leader":"pg-test-2", "candidate": "pg-test-1","scheduled_at":"2022-12-26T14:47+08"}' \
  -s -X POST http://10.10.10.11:8008/switchover
```

</details>

After either switchover or failover, you need to refresh services and HBA rules after cluster membership changes. You should complete this promptly (e.g., within a few hours or a day) after the change:

```bash
bin/pgsql-svc <cls>
bin/pgsql-hba <cls>
```



----------------

## Backup Cluster

To create backups using pgBackRest, run the following commands as local dbsu (default `postgres`):

```bash
pg-backup       # make a backup, incremental or full if necessary
pg-backup full  # make a full backup
pg-backup diff  # make a differential backup
pg-backup incr  # make an incremental backup
pb info         # print backup info (pgbackrest info)
```

See [Backup & Restore](/docs/pgsql/arch/pitr#backup) for more information.


<details><summary>Example: Create Backup</summary>

[![asciicast](https://asciinema.org/a/568813.svg)](https://asciinema.org/a/568813)

</details>


<details><summary>Example: Create Scheduled Backup Task</summary>

You can add crontab to [`node_crontab`](/docs/node/param#node_crontab) to specify your backup strategy.

```yaml
# Full backup daily at 1 AM
- '00 01 * * * postgres /pg/bin/pg-backup full'

# Full backup on Monday at 1 AM, incremental backups on other weekdays
- '00 01 * * 1 postgres /pg/bin/pg-backup full'
- '00 01 * * 2,3,4,5,6,7 postgres /pg/bin/pg-backup'
```

</details>



----------------

## Restore Cluster

To restore a cluster to a previous point in time (PITR), run the Pigsty helper script `pg-pitr` as local dbsu user (default `postgres`):

```bash
pg-pitr -i                              # restore to most recent backup completion time (not common)
pg-pitr --time="2022-12-30 14:44:44+08" # restore to specific time point (e.g., in case of table/database drop)
pg-pitr --name="my-restore-point"       # restore to named restore point created by pg_create_restore_point
pg-pitr --lsn="0/7C82CB8" -X            # restore immediately before LSN
pg-pitr --xid="1234567" -X -P           # restore immediately before specific transaction ID, then promote cluster to primary
pg-pitr --backup=latest                 # restore to latest backup set
pg-pitr --backup=20221108-105325        # restore to specific backup set, can be listed with pgbackrest info
```

The command will output an operations manual, follow the instructions. See [Backup & Restore - PITR](/docs/pgsql/arch/pitr#restore) for details.

<details><summary>Example: PITR Using Raw pgBackRest Commands</summary>

```bash
# Restore to latest available point (e.g., hardware failure)
pgbackrest --stanza=pg-meta restore

# PITR to specific time point (e.g., accidental table drop)
pgbackrest --stanza=pg-meta --type=time --target="2022-11-08 10:58:48" \
   --target-action=promote restore

# Restore specific backup point, then promote (or pause|shutdown)
pgbackrest --stanza=pg-meta --type=immediate --target-action=promote \
  --set=20221108-105325F_20221108-105938I restore
```

</details>



----------------

## Adding Packages

To add new RPM packages, add them to [`repo_packages`](/docs/infra/param#repo_packages) and [`repo_url_packages`](/docs/infra/param#repo_url_packages).

Use `./infra.yml -t repo_build` subtask to rebuild local repo on Infra node. Then you can install these packages using ansible's `package` module:

```bash
ansible pg-test -b -m package -a "name=pg_cron_15,topn_15,pg_stat_monitor_15*"  # install some packages with ansible
```

<details><summary>Example: Manually Update Packages in Local Repo</summary>

```bash
# Add upstream repo on infra/admin node, then manually download required packages
cd ~/pigsty; ./infra.yml -t repo_upstream,repo_cache # add upstream repo (internet)
cd /www/pigsty;  repotrack "some_new_package_name"   # download latest RPM packages

# Update local repo metadata
cd ~/pigsty; ./infra.yml -t repo_create              # recreate local repo
./node.yml -t node_repo                              # refresh YUM/APT cache on all nodes

# You can also manually refresh YUM/APT cache on nodes using Ansible
ansible all -b -a 'yum clean all'                    # clean node repo cache
ansible all -b -a 'yum makecache'                    # rebuild yum/apt cache from new repo
ansible all -b -a 'apt clean'                        # clean APT cache (Ubuntu/Debian)
ansible all -b -a 'apt update'                       # rebuild APT cache (Ubuntu/Debian)
```

For example, you can install or upgrade packages as follows:

```bash
ansible pg-test -b -m package -a "name=postgresql15* state=latest"
```

</details>



----------------

## Install Extension

If you want to install extensions on a PostgreSQL cluster, add them to [`pg_extensions`](/docs/pgsql/param#pg_extensions), then execute:

```bash
./pgsql.yml -t pg_extension     # install extensions
```

Some extensions need to be loaded in `shared_preload_libraries` to take effect. You can add them to [`pg_libs`](/docs/pgsql/param#pg_libs), or [configure](#config-cluster) an existing cluster.

Finally, execute `CREATE EXTENSION <extname>;` on the cluster's primary to complete extension installation.

<details><summary>Example: Install pg_cron Extension on pg-test Cluster</summary>

```bash
ansible pg-test -b -m package -a "name=pg_cron_15"          # install pg_cron package on all nodes
# Add pg_cron to shared_preload_libraries
pg edit-config --force -p shared_preload_libraries='timescaledb, pg_cron, pg_stat_statements, auto_explain'
pg restart --force pg-test                                  # restart cluster
psql -h pg-test -d postgres -c 'CREATE EXTENSION pg_cron;'  # install pg_cron on primary
```

</details>

For more details, see [PGSQL Extension Installation](/docs/ref/extension#install-extension).



----------------

## Minor Upgrade

To perform minor version upgrade/downgrade, first [add packages](#adding-packages) to the local repo: latest PG minor version RPM/DEB.

First perform rolling upgrade/downgrade on all replicas, then perform cluster [switchover](#switchover) to upgrade/downgrade the primary.

```bash
ansible <cls> -b -a "yum upgrade/downgrade -y <pkg>"    # upgrade/downgrade packages
pg restart --force <cls>                                # restart cluster
```

<details><summary>Example: Downgrade PostgreSQL 15.2 to 15.1</summary>

Add 15.1 packages to repo and refresh nodes' yum/apt cache:

```bash
cd ~/pigsty; ./infra.yml -t repo_upstream               # add upstream repo
cd /www/pigsty; repotrack postgresql15-*-15.1           # add 15.1 packages to yum repo
cd ~/pigsty; ./infra.yml -t repo_create                 # rebuild repo metadata
ansible pg-test -b -a 'yum clean all'                   # clean node repo cache
ansible pg-test -b -a 'yum makecache'                   # rebuild yum cache from new repo

# For Ubuntu/Debian users, use apt instead of yum
ansible pg-test -b -a 'apt clean'                       # clean node repo cache
ansible pg-test -b -a 'apt update'                      # rebuild apt cache from new repo
```

Execute downgrade and restart cluster:

```bash
ansible pg-test -b -a "yum downgrade -y postgresql15*"  # downgrade packages
pg restart --force pg-test                              # restart entire cluster to complete upgrade
```

</details>


<details><summary>Example: Upgrade PostgreSQL 15.1 Back to 15.2</summary>

This time we'll do a rolling upgrade:

```bash
ansible pg-test -b -a "yum upgrade -y postgresql15*"    # upgrade packages (or apt upgrade)
ansible pg-test -b -a '/usr/pgsql/bin/pg_ctl --version' # check binary version is 15.2
pg restart --role replica --force pg-test               # restart replicas
pg switchover --leader pg-test-1 --candidate=pg-test-2 --scheduled=now --force pg-test    # switchover
pg restart --role primary --force pg-test               # restart primary
```

</details>




----------------

## Major Upgrade

The easiest way to perform a major upgrade is to create a new cluster using the new version, then perform [online migration](/docs/pgsql/migration) through logical replication and blue-green deployment.

You can also perform in-place major upgrades. When using only the database kernel itself, this is not complicated - use PostgreSQL's built-in `pg_upgrade`:

Suppose you want to upgrade PostgreSQL major version from 14 to 15. First [add packages](#adding-packages) to the repo and ensure core extension plugins are installed with the same version numbers on both major versions.

```bash
./pgsql.yml -t pg_pkg -e pg_version=15                         # install pg 15 packages
sudo su - postgres; mkdir -p /data/postgres/pg-meta-15/data/   # prepare directory for 15
pg_upgrade -b /usr/pgsql-14/bin/ -B /usr/pgsql-15/bin/ -d /data/postgres/pg-meta-14/data/ -D /data/postgres/pg-meta-15/data/ -v -c # precheck
pg_upgrade -b /usr/pgsql-14/bin/ -B /usr/pgsql-15/bin/ -d /data/postgres/pg-meta-14/data/ -D /data/postgres/pg-meta-15/data/ --link -j8 -v -c
rm -rf /usr/pgsql; ln -s /usr/pgsql-15 /usr/pgsql;             # fix binary link
mv /data/postgres/pg-meta-14 /data/postgres/pg-meta-15         # rename data directory
rm -rf /pg; ln -s /data/postgres/pg-meta-15 /pg                # fix data directory link
```
