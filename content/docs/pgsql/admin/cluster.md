---
title: Cluster Management
weight: 2004
description: Standard operation guide for creating/destroying PostgreSQL clusters
  and scaling existing clusters.
icon: fa-solid fa-circle-up
module: [PGSQL]
categories: [Task]
---




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

Use this task when cluster membership changes, for example: [append](#append-replica)/[remove](#remove-replica) replicas, switchover/failover / exposing new services, or updating existing service configurations (e.g., LB weights)

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

