# Customize Pigsty with Configuration

> Define nodes, modules, databases, and users in the Pigsty inventory.

---

LLMS index: [llms.txt](/llms.txt)

---

You can generate a configuration file with the [configuration wizard](/docs/concept/iac/configure/).
You can also write the file yourself.
This guide builds an [inventory](/docs/concept/iac/inventory/) in stages.

The `deploy.yml` playbook deploys NODE, INFRA, ETCD, MINIO, and PGSQL when the inventory defines them.
Docker, Redis, Kafka, native MySQL, JUICE, and VIBE require their own playbooks.
The procedures below show the configuration and playbooks for each stage.

## Minimal Configuration

The smallest valid configuration defines [`admin_ip`](/docs/infra/param#admin_ip).
This is the IP address of the administration node where you installed Pigsty:

```yaml {tab="Minimal" group="minimal-mirror" value="minimal"}
all: { vars: { admin_ip: 10.10.10.10 } }
```

```yaml {tab="Mirror" value="mirror"}
# Set region: china to use mirrors
all: { vars: { admin_ip: 10.10.10.10, region: china } }
```

This inventory defines no deployment targets.
With this configuration, `./deploy.yml` generates a self-signed certificate authority (CA) in `files/pki/ca`.
The CA issues certificates for the deployment.

Set [`region`](/docs/infra/param/#region) to select a software repository region.
The available values are `default`, `china`, and `europe`.

## Add Nodes

The [NODE module](/docs/node/) manages the nodes in the inventory.
Add a node IP address to include that node in NODE module deployment:

```yaml {tab="Minimal" group="minimal-mirror" value="minimal"}
all:  # Remember to replace 10.10.10.10 with your actual IP
  children: { nodes: { hosts: { 10.10.10.10: {} } } }
  vars:
    admin_ip: 10.10.10.10                   # Current node IP
    region: default                         # Default repos
    node_repo_modules: node,pgsql,infra     # Add node, pgsql, infra repos
```

```yaml {tab="Mirror" value="mirror"}
all:  # Remember to replace 10.10.10.10 with your actual IP
  children: { nodes: { hosts: { 10.10.10.10: {} } } }
  vars:
    admin_ip: 10.10.10.10                 # Current node IP
    region: china                         # Use mirrors
    node_repo_modules: node,pgsql,infra   # Add node, pgsql, infra repos
```

These examples add two [global parameters](/docs/concept/iac/parameter/):

- [`node_repo_modules`](/docs/node/param/#node_repo_modules) selects the software repositories to add.
- [`region`](/docs/infra/param/#region) selects the repository region.

The NODE module uses these repositories to install the required packages.
Other [NODE parameters](/docs/node/param/) control node names, DNS, NTP, kernel parameters, tuning, monitoring, and log collection.
You can use the default values for the initial deployment.

Run `node.yml` to apply the NODE configuration.
The `deploy.yml` playbook also includes this stage.

| ID | [NODE](/docs/node/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [PGSQL](/docs/pgsql/) | Description |
|:--:|:-------------------:|:---------------------:|:-----------------------:|:---------------------:|:------------|
| 1  |    `10.10.10.10`    |           -           |            -            |           -           | Add node    |
{.full-width}

## Add Infrastructure

The infrastructure supplies monitoring, alerting, dashboards, NTP, and DNS.
To deploy the [INFRA module](/docs/infra/), define the `infra` group:

```yaml {tab="Minimal" group="minimal-mirror" value="minimal"}
all:  # Simply changed group name from nodes -> infra and added infra_seq
  children: { infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } } }
  vars:
    admin_ip: 10.10.10.10
    region: default
    node_repo_modules: node,pgsql,infra
```

```yaml {tab="Mirror" value="mirror"}
all:  # Simply changed group name from nodes -> infra and added infra_seq
  children: { infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } } }
  vars:
    admin_ip: 10.10.10.10
    region: china
    node_repo_modules: node,pgsql,infra
```

Set [`infra_seq`](/docs/infra/param/#infra_seq) to identify each INFRA node.
This [identity parameter](/docs/concept/iac/parameter#identity-parameters) distinguishes nodes in deployments with multiple INFRA nodes.

Run `infra.yml` to install INFRA and NODE on `10.10.10.10`:

```bash title="~/pigsty"
./infra.yml   # Install INFRA module on infra group (includes NODE module)
```

[demo\/infra\.cast](/demo/infra.cast)

The inventory IP address also defines the NODE deployment target.
NODE tasks are idempotent: they apply the changes necessary to reach the specified configuration.

After this stage, the node has monitoring services and node monitoring.
It does not yet have a PostgreSQL database service.

If you only need Grafana and Victoria monitoring, you can stop here.
The [`infra` template](/docs/conf/infra/) supports this use.
Pigsty also supports PostgreSQL without the infrastructure through [Slim Installation](/docs/setup/slim/).

| ID | [NODE](/docs/node/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [PGSQL](/docs/pgsql/) | Description            |
|:--:|:-------------------:|:---------------------:|:-----------------------:|:---------------------:|:-----------------------|
| 1  |    `10.10.10.10`    |       `infra-1`       |            -            |           -           | Add infrastructure     |
{.full-width}

## Deploy Database Cluster

To add PostgreSQL, define the [PGSQL module](/docs/pgsql/) and its [ETCD dependency](/docs/etcd/):

```yaml {tab="Minimal" group="minimal-mirror" value="minimal"}
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq:  1 } } } # Add etcd cluster
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } } # Add pg cluster
  vars: { admin_ip: 10.10.10.10, region: default, node_repo_modules: 'node,pgsql,infra' }
```

```yaml {tab="Mirror" value="mirror"}
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq:  1 } } } # Add etcd cluster
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } } # Add pg cluster
  vars: { admin_ip: 10.10.10.10, region: china, node_repo_modules: 'node,pgsql,infra' }
```

The `etcd` group defines a single-node etcd cluster.
The `pg-meta` group defines a single-node PostgreSQL cluster.

Install ETCD first.
PGSQL uses ETCD for high-availability consensus.
Run the module playbooks in this order:

```bash title="~/pigsty"
./etcd.yml  -l etcd      # Install ETCD module on etcd group
./pgsql.yml -l pg-meta   # Install PGSQL module on pg-meta group
```

You can also apply the core modules together with `./deploy.yml`.
Before another deployment run, review the [effects on existing services](/docs/setup/install/#deploy).
After these playbooks complete successfully, PostgreSQL is available.

| ID | [NODE](/docs/node/) | [INFRA](/docs/infra/) | [**ETCD**](/docs/etcd/) | [PGSQL](/docs/pgsql/) | Description                     |
|:--:|:-------------------:|:---------------------:|:-----------------------:|:---------------------:|:--------------------------------|
| 1  |    `10.10.10.10`    |       `infra-1`       |        `etcd-1`         |     `pg-meta-1`       | Add etcd and PostgreSQL cluster |
{.full-width}

The procedures use four playbooks to deploy four modules on one node:

- [`node.yml`](/docs/node/playbook#nodeyml) deploys NODE.
- [`infra.yml`](/docs/infra/playbook#infrayml) deploys INFRA.
- [`etcd.yml`](/docs/etcd/playbook#etcdyml) deploys ETCD.
- [`pgsql.yml`](/docs/pgsql/playbook#pgsqlyml) deploys PGSQL.

## Define Databases and Users

Define PostgreSQL [databases](/docs/pgsql/config/db/) and [users](/docs/pgsql/config/user/) in the inventory:

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

[`pg_users`](/docs/pgsql/param/#pg_users) defines the `dbuser_meta` account with the example password `DBUser.Meta`.
[`pg_databases`](/docs/pgsql/param/#pg_databases) defines the `meta` database with the `vector` extension.
It also loads the optional [Pigsty CMDB schema](/docs/concept/iac/cmdb/).
Replace the example password before deployment.

Database and user parameters control their properties.
If you define these parameters before deployment, [`pgsql.yml`](/docs/pgsql/playbook#pgsqlyml) creates the databases and users.

For an existing cluster, use these commands to create or change [users](/docs/pgsql/admin/user/) and [databases](/docs/pgsql/admin/db/):

```bash title="~/pigsty"
bin/pgsql-user pg-meta dbuser_meta      # Ensure user dbuser_meta exists in pg-meta
bin/pgsql-db   pg-meta meta             # Ensure database meta exists in pg-meta
```

## Configure PG Version and Extensions

Pigsty supports [multiple PostgreSQL major versions](/docs/pgsql/config/kernel/) and [600 extensions](/docs/pgsql/ext/).
The example below replaces PostgreSQL 18 with PostgreSQL 16.
This procedure recreates `pg-meta`; it is not an in-place version change.

Before removal, back up the cluster and confirm the target.
Use check mode to examine the removal tasks:

```bash
./pgsql-rm.yml -l pg-meta --check # Preflight old pg-meta removal; execute only after backup and target confirmation
```

The `--check` command does not perform the removal.
Complete the required removal before you recreate the cluster.

Set these parameters in the new configuration:

- [`pg_extensions`](/docs/pgsql/param/#pg_extensions) [installs](/docs/pgsql/ext/install/) `timescaledb`, `postgis`, and `pgvector` packages.
- [`pg_libs`](/docs/pgsql/param/#pg_libs) [loads](/docs/pgsql/ext/config/) the `timescaledb`, `pg_stat_statements`, and `auto_explain` libraries.
- [`pg_databases`](/docs/pgsql/param/#pg_databases) [enables](/docs/pgsql/ext/create/) `vector`, `postgis`, and `timescaledb` in the `meta` database.

```yaml
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq:  1 } } } # Add etcd cluster
    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_version: 16   # Specify PG version as 16
        pg_extensions: [ timescaledb, postgis, pgvector ]      # Install these extensions
        pg_libs: 'timescaledb,pg_stat_statements,auto_explain'  # Preload these extension libraries
        pg_databases: [ { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty] ,extensions: [vector, postgis, timescaledb ] } ]
        pg_users: [ { name: dbuser_meta ,password: DBUser.Meta ,pgbouncer: true ,roles: [dbrole_admin] ,comment: admin user } ]

  vars:
    admin_ip: 10.10.10.10
    region: default
    node_repo_modules: node,pgsql,infra

```

Then run the PostgreSQL deployment playbook:

```bash
./pgsql.yml -l pg-meta   # Install PG16 and extensions, recreate pg-meta cluster
```

## Add More Nodes

Add the new node definitions to the inventory.
Run `bin/node-add` to configure monitoring and repositories and install the node packages.
Select the complete group or individual IP addresses:

```bash
# Add entire cluster at once, or add nodes individually
bin/node-add pg-test

bin/node-add 10.10.10.11
bin/node-add 10.10.10.12
bin/node-add 10.10.10.13
```

[demo\/node\.cast](/demo/node.cast)

## Deploy HA PostgreSQL Cluster

Define the `pg-test` cluster on the three new nodes.
Set one node as the primary and two nodes as replicas:

```yaml
all:
  children:
    infra:   { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:    { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }
    pg-meta: { hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }, vars: { pg_cluster: pg-meta } }
    pg-test:
      hosts:
        10.10.10.11: { pg_seq: 1, pg_role: primary }
        10.10.10.12: { pg_seq: 2, pg_role: replica  }
        10.10.10.13: { pg_seq: 3, pg_role: replica  }
      vars: { pg_cluster: pg-test }
```

Deploy the cluster with the PGSQL playbook or its `bin/pgsql-add` wrapper.
See the [high-availability requirements](/docs/concept/ha/) for the ETCD topology.

[demo\/pgsql\.cast](/demo/pgsql.cast)

## Deploy Redis Cluster

Pigsty supports Redis as an optional cache for PostgreSQL applications.
After you define a Redis cluster in the inventory, run the applicable command:

```bash
bin/redis-add redis-ms
bin/redis-add redis-meta
bin/redis-add redis-test
```

For Redis high availability, use cluster mode or sentinel mode.
See [Redis Configuration](/docs/redis/config/).

## Deploy Silo Object Storage

The [MINIO module](/docs/minio/) deploys Silo object storage.
Silo implements the S3 interface and can store [PostgreSQL backups](/docs/pgsql/backup/repository/).
The module, inventory group, and playbooks keep the `minio` name for compatibility.

Run the module playbook:

```bash
./minio.yml -l minio
```

A production Silo deployment typically requires at least four nodes with four disks per node (`4N/16D`).

## Deploy Docker Module

To run [PostgreSQL tools and applications](/docs/app/) in containers, install the [DOCKER module](/docs/docker/):

```bash
./docker.yml -l infra
```

Use an application template to deploy the required software.
For example, run this command to deploy [pgAdmin](/docs/app/pgadmin/):

```bash
./app.yml    -l infra -e app=pgadmin
```

You can also deploy [Supabase](/docs/app/supabase/) with Pigsty.
Supabase uses an external HA PostgreSQL cluster for its database and containers for its stateless components.
