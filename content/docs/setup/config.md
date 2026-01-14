---
title: Customize Pigsty with Configuration
linkTitle: Customize
weight: 270
description: Express your infra and clusters with declarative config files
icon: fa-solid fa-code
module: [PIGSTY]
categories: [Tutorial]
---


Besides using the [**configuration wizard**](/docs/concept/iac/configure) to auto-generate configs, you can write Pigsty config files from scratch.
This tutorial guides you through building a complex [**inventory**](/docs/concept/iac/inventory) step by step.

If you define everything in the [**inventory**](/docs/concept/iac/inventory) upfront, a single `deploy.yml` playbook run completes all deployment—but it hides the details.

This doc breaks down all modules and playbooks, showing how to incrementally build from a simple config to a complete deployment.


--------

## Minimal Configuration

The simplest valid config only defines the [**`admin_ip`**](/docs/infra/param#admin_ip) variable—the IP address of the node where Pigsty is installed (**admin node**):

{{< tabpane text=true persist=header >}}
{{% tab header="Minimal" %}}
```yaml
all: { vars: { admin_ip: 10.10.10.10 } }
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```yaml
# Set region: china to use mirrors
all: { vars: { admin_ip: 10.10.10.10, region: china } }
```
{{% /tab %}}
{{< /tabpane >}}


This config deploys nothing, but running `./deploy.yml` generates a self-signed **CA** in `files/pki/ca` for issuing certificates.

For convenience, you can also set [**`region`**](/docs/infra/param/#region) to specify which region's software mirrors to use (`default`, `china`, `europe`).


--------

## Add Nodes

Pigsty's [**`NODE`**](/docs/node/) module manages cluster nodes. Any IP address in the inventory will be managed by Pigsty with the NODE module installed.

{{< tabpane text=true persist=header >}}
{{% tab header="Minimal" %}}
```yaml
all:  # Remember to replace 10.10.10.10 with your actual IP
  children: { nodes: { hosts: { 10.10.10.10: {} } } }
  vars:
    admin_ip: 10.10.10.10                   # Current node IP
    region: default                         # Default repos
    node_repo_modules: node,pgsql,infra     # Add node, pgsql, infra repos
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```yaml
all:  # Remember to replace 10.10.10.10 with your actual IP
  children: { nodes: { hosts: { 10.10.10.10: {} } } }
  vars:
    admin_ip: 10.10.10.10                 # Current node IP
    region: china                         # Use mirrors
    node_repo_modules: node,pgsql,infra   # Add node, pgsql, infra repos
```
{{% /tab %}}
{{< /tabpane >}}

We added two [**global parameters**](/docs/concept/iac/parameter):
[**`node_repo_modules`**](/docs/node/param/#node_repo_modules) specifies repos to add;
[**`region`**](/docs/infra/param/#region) specifies which region's mirrors to use.

These parameters enable the node to use correct repositories and install required packages.
The NODE module offers many [**customization options**](/docs/node/param): node names, DNS, repos, packages, NTP, kernel params, tuning templates, monitoring, log collection, etc.
Even without changes, the defaults are sufficient.

Run `deploy.yml` or more precisely `node.yml` to bring the defined node under Pigsty management.

| ID | [NODE](/docs/node/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [PGSQL](/docs/pgsql/) | Description |
|:--:|:-------------------:|:---------------------:|:-----------------------:|:---------------------:|:------------|
| 1  |    `10.10.10.10`    |           -           |            -            |           -           | Add node    |
{.full-width}


--------

## Add Infrastructure

A full-featured RDS cloud database service needs infrastructure support: monitoring (metrics/log collection, alerting, visualization), NTP, DNS, and other foundational services.

Define a special group `infra` to deploy the [**`INFRA`**](/docs/infra/) module:

{{< tabpane text=true persist=header >}}
{{% tab header="Minimal" %}}
```yaml
all:  # Simply changed group name from nodes -> infra and added infra_seq
  children: { infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } } }
  vars:
    admin_ip: 10.10.10.10
    region: default
    node_repo_modules: node,pgsql,infra
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```yaml
all:  # Simply changed group name from nodes -> infra and added infra_seq
  children: { infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } } }
  vars:
    admin_ip: 10.10.10.10
    region: china
    node_repo_modules: node,pgsql,infra
```
{{% /tab %}}
{{< /tabpane >}}


We also assigned an [**identity parameter**](/docs/concept/iac/parameter#identity-parameters): [**`infra_seq`**](/docs/infra/param/#infra_seq) to distinguish nodes in multi-node HA **INFRA** deployments.

Run `infra.yml` to install [**INFRA`**](/docs/infra/) and [**NODE`**](/docs/node/) modules on `10.10.10.10`:

```bash title="~/pigsty"
./infra.yml   # Install INFRA module on infra group (includes NODE module)
```

{{< asciinema file="demo/infra.cast" markers="4:Execute" speed="1.3" autoplay="true" loop="true" >}}

> NODE module is implicitly defined as long as an IP exists. NODE is idempotent—re-running has no side effects.

After completion, you'll have complete observability infrastructure and node monitoring, but PostgreSQL database service is not yet deployed.

If your goal is just to set up this monitoring system (Grafana + Victoria), you're done! The [**`infra`**](/docs/conf/infra) template is designed for this.
Everything in Pigsty is **modular**: you can deploy only monitoring infra without databases;
or vice versa—run HA PostgreSQL clusters without infra—[**Slim Install**](/docs/setup/slim).

| ID | [NODE](/docs/node/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [PGSQL](/docs/pgsql/) | Description            |
|:--:|:-------------------:|:---------------------:|:-----------------------:|:---------------------:|:-----------------------|
| 1  |    `10.10.10.10`    |       `infra-1`       |            -            |           -           | Add infrastructure     |
{.full-width}

--------

## Deploy Database Cluster

To provide PostgreSQL service, install the [**PGSQL`**](/docs/pgsql/) module and its dependency [**ETCD**](/docs/etcd/)—just two lines of config:

{{< tabpane text=true persist=header >}}
{{% tab header="Minimal" %}}
```yaml
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq:  1 } } } # Add etcd cluster
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } } # Add pg cluster
  vars: { admin_ip: 10.10.10.10, region: default, node_repo_modules: node,pgsql,infra }
```
{{% /tab %}}
{{% tab header="Mirror" %}}
```yaml
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq:  1 } } } # Add etcd cluster
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } } # Add pg cluster
  vars: { admin_ip: 10.10.10.10, region: china, node_repo_modules: node,pgsql,infra }
```
{{% /tab %}}
{{< /tabpane >}}


We added two new groups: `etcd` and `pg-meta`, defining a single-node etcd cluster and a single-node PostgreSQL cluster.

Use `./deploy.yml` to redeploy everything, or incrementally deploy:

```bash title="~/pigsty"
./etcd.yml  -l etcd      # Install ETCD module on etcd group
./pgsql.yml -l pg-meta   # Install PGSQL module on pg-meta group
```

[**PGSQL**](/docs/pgsql/) depends on [**ETCD**](/docs/etcd/) for HA consensus, so install ETCD first.
After completion, you have a working PostgreSQL service!

| ID | [NODE](/docs/node/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [PGSQL](/docs/pgsql/) | Description                     |
|:--:|:-------------------:|:---------------------:|:-----------------------:|:---------------------:|:--------------------------------|
| 1  |    `10.10.10.10`    |       `infra-1`       |        `etcd-1`         |     `pg-meta-1`       | Add etcd and PostgreSQL cluster |
{.full-width}

We used [**`node.yml`**](/docs/node/playbook#nodeyml), [**`infra.yml`**](/docs/infra/playbook#infrayml), [**`etcd.yml`**](/docs/etcd/playbook#etcdyml), and [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) to deploy all four core modules on a single machine.


--------

## Define Databases and Users

In Pigsty, you can customize PostgreSQL cluster internals like [**databases**](/docs/pgsql/config/db) and [**users**](/docs/pgsql/config/user) through the inventory:

```yaml title="~/pigsty/pigsty.yml"
all:
  children:
    # Other groups and variables hidden for brevity
    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_users:       # Define database users
          - { name: dbuser_meta ,password: DBUser.Meta ,pgbouncer: true ,roles: [dbrole_admin] ,comment: admin user  }
        pg_databases:   # Define business databases
          - { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [vector] }
```

- [**`pg_users`**](/docs/pgsql/param/#pg_users): Defines a new user `dbuser_meta` with password `DBUser.Meta`
- [**`pg_databases`**](/docs/pgsql/param/#pg_databases): Defines a new database `meta` with Pigsty [**CMDB**](/docs/concept/iac/cmdb) schema (optional) and `vector` extension

Pigsty offers rich customization parameters covering all aspects of databases and users.
If you define these parameters upfront, they're automatically created during [**`./pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) execution.
For existing clusters, you can incrementally create or modify [**users**](/docs/pgsql/admin/user) and [**databases**](/docs/pgsql/admin/db):

```bash title="~/pigsty"
bin/pgsql-user pg-meta dbuser_meta      # Ensure user dbuser_meta exists in pg-meta
bin/pgsql-db   pg-meta meta             # Ensure database meta exists in pg-meta
```


--------

## Configure PG Version and Extensions

You can install [**different major versions**](/docs/pgsql/config/kernel) of PostgreSQL, and up to [**440**](https://pgext.cloud/list) [**extensions**](/docs/pgsql/ext). Let's remove the current default PG 18 and install PG 17:

```bash
./pgsql-rm.yml -l pg-meta   # Remove old pg-meta cluster (it's PG 18)
```

We can customize parameters to install and enable common extensions by default: `timescaledb`, `postgis`, and `pgvector`:

- [**`pg_extensions`**](/docs/pgsql/param/#pg_extensions): [**Install**](/docs/pgsql/ext/install) `timescaledb`, `postgis`, `pgvector` extensions.
- [**`pg_libs`**](/docs/pgsql/param/#pg_libs): [**Configure loading**](/docs/pgsql/ext/config) `timescaledb`, `pg_stat_statements`, `auto_explain` dynamic libraries.
- [**`pg_databases`**](/docs/pgsql/param/#pg_databases): [**Create and enable**](/docs/pgsql/ext/create) `vector`, `postgis`, `timescaledb` extensions for the `meta` database.

```yaml
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq:  1 } } } # Add etcd cluster
    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_version: 17   # Specify PG version as 17
        pg_extensions: [ timescaledb, postgis, pgvector ]      # Install these extensions
        pg_libs: 'timescaledb,pg_stat_statements,auto_explain'  # Preload these extension libraries
        pg_databases: { { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [vector, postgis, timescaledb ] } }
        pg_users: { { name: dbuser_meta ,password: DBUser.Meta ,pgbouncer: true ,roles: [dbrole_admin] ,comment: admin user } }

  vars:
    admin_ip: 10.10.10.10
    region: default
    node_repo_modules: node,pgsql,infra

```


```bash
./pgsql.yml -l pg-meta   # Install PG17 and extensions, recreate pg-meta cluster
```



--------

## Add More Nodes

Add more nodes to the deployment, bring them under Pigsty management, deploy monitoring, configure repos, install software...

```bash
# Add entire cluster at once, or add nodes individually
bin/node-add pg-test

bin/node-add 10.10.10.11
bin/node-add 10.10.10.12
bin/node-add 10.10.10.13
```

{{< asciinema file="demo/node.cast" markers="4:Execute" speed="1.3" autoplay="true" loop="true" >}}


--------

## Deploy HA PostgreSQL Cluster

Now deploy a new database cluster `pg-test` on the three newly added nodes, using a three-node HA architecture:

```yaml
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq: 1 } } }, vars: { etcd_cluster: etcd } }
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } }
    pg-test:
      hosts:
        10.10.10.11: { pg_seq: 1, pg_role: primary }
        10.10.10.12: { pg_seq: 2, pg_role: replica  }
        10.10.10.13: { pg_seq: 3, pg_role: replica  }
      vars: { pg_cluster: pg-test }
```

{{< asciinema file="demo/pgsql.cast" markers="4:Execute" speed="1.3" autoplay="true" loop="true" >}}


--------

## Deploy Redis Cluster

Pigsty provides optional Redis support as a caching service in front of PostgreSQL:

```bash
bin/redis-add redis-ms
bin/redis-add redis-meta
bin/redis-add redis-test
```

Redis HA requires cluster mode or sentinel mode. See [**Redis Configuration**](/docs/redis/config/).


--------

## Deploy MinIO Cluster

Pigsty provides optional open-source object storage, S3 alternative—[**MinIO**](/docs/minio) support, as [**backup repository**](/docs/pgsql/backup/repository) for PostgreSQL.

```bash
./minio.yml -l minio
```

Serious prod MinIO deployments typically require at least 4 nodes with 4 disks each (4N/16D).


--------

## Deploy Docker Module

If you want to use containers to run [**tools for managing PG**](/docs/app) or [**software using PostgreSQL**](/docs/app), install the [**`DOCKER`**](/docs/docker/) module:

```bash
./docker.yml -l infra
```

Use pre-made application templates to launch common software tools with one click, such as the GUI tool for PG management: [**Pgadmin**](/docs/app/pgadmin/):

```bash
./app.yml    -l infra -e app=pgadmin
```

You can even self-host **enterprise-grade** [**Supabase**](/docs/app/supabase/) with Pigsty, using external HA PostgreSQL clusters as the foundation and running stateless components in containers.
