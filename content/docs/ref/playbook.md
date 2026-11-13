---
title: Playbooks
weight: 480
description: Pigsty v4.x preset Ansible playbook navigation and execution notes
icon: fa-solid fa-scroll
categories: [Reference]
---

This page summarizes Pigsty v4.x playbook entries and usage guidance by module. For detailed task tags, open each module's `playbook` page.

## Module Playbook Navigation

| Module                                    | Count | Playbooks                                                                                                                           |
|:--------------------------------------|:--:|:--------------------------------------------------------------------------------------------------------------------------------|
| [**`INFRA`**](/docs/infra/playbook)   | 3  | `deploy.yml` `infra.yml` `infra-rm.yml`                                                                                         |
| [**`NODE`**](/docs/node/playbook)     | 2  | `node.yml` `node-rm.yml`                                                                                                        |
| [**`ETCD`**](/docs/etcd/playbook)     | 2  | `etcd.yml` `etcd-rm.yml`                                                                                                        |
| [**`VAULT`**](/docs/vault/playbook)   | 2  | `vault.yml` `vault-rm.yml`                                                                                                      |
| [**`PGSQL`**](/docs/pgsql/playbook)   | 7  | `pgsql.yml` `pgsql-rm.yml` <br> `pgsql-user.yml` `pgsql-db.yml` <br> `pgsql-monitor.yml` `pgsql-migration.yml` `pgsql-pitr.yml` |
| [**`REDIS`**](/docs/redis/playbook)   | 2  | `redis.yml` `redis-rm.yml`                                                                                                      |
| [**`MINIO`**](/docs/minio/playbook)   | 2  | `minio.yml` `minio-rm.yml`                                                                                                      |
| [**`DOCKER`**](/docs/docker/playbook) | 1  | `docker.yml`                                                                                                                    |
| [**`JUICE`**](/docs/juice/playbook)   | 1  | `juice.yml`                                                                                                                     |
| [**`VIBE`**](/docs/vibe/playbook)     | 1  | `vibe.yml`                                                                                                                      |
| [**`KAFKA`**](/docs/kafka/playbook)   | 2  | `kafka.yml` `kafka-rm.yml`                                                                                                      |
| [**`MYSQL`**](/docs/mysql/playbook)   | 2  | `mysql.yml` `mysql-rm.yml`                                                                                                      |
{.full-width .wide .expand}

--------

## Playbook Matrix

| Playbook | Module | Purpose |
|:---------------------------------------------------------------------|:--------:|:------------------------------------------------------------|
| [**`deploy.yml`**](/docs/infra/playbook#deployyml) | `INFRA` | Deploy the core chain: infra → node → etcd → vault → minio → pgsql |
| [**`infra.yml`**](/docs/infra/playbook#infrayml) | `INFRA` | Initialize infrastructure nodes |
| [**`infra-rm.yml`**](/docs/infra/playbook#infra-rmyml) | `INFRA` | Remove infrastructure components |
| [**`node.yml`**](/docs/node/playbook#nodeyml) | `NODE` | Manage nodes and baseline configuration |
| [**`node-rm.yml`**](/docs/node/playbook#node-rmyml) | `NODE` | Decommission nodes |
| [**`etcd.yml`**](/docs/etcd/playbook#etcdyml) | `ETCD` | Install or expand ETCD |
| [**`etcd-rm.yml`**](/docs/etcd/playbook#etcd-rmyml) | `ETCD` | Remove or shrink ETCD |
| [**`vault.yml`**](/docs/vault/playbook#vaultyml) | `VAULT` | Initialize or converge OpenBao secrets clusters |
| [**`vault-rm.yml`**](/docs/vault/playbook#vault-rmyml) | `VAULT` | Remove OpenBao clusters or retire members |
| [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml) | `PGSQL` | Initialize PostgreSQL clusters or add instances |
| [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml) | `PGSQL` | Remove PostgreSQL clusters/instances |
| [**`pgsql-user.yml`**](/docs/pgsql/playbook#pgsql-useryml) | `PGSQL` | Add application users |
| [**`pgsql-db.yml`**](/docs/pgsql/playbook#pgsql-dbyml) | `PGSQL` | Add application databases |
| [**`pgsql-monitor.yml`**](/docs/pgsql/playbook#pgsql-monitoryml) | `PGSQL` | Monitor remote PostgreSQL |
| [**`pgsql-migration.yml`**](/docs/pgsql/playbook#pgsql-migrationyml) | `PGSQL` | Generate migration runbooks/scripts |
| [**`pgsql-pitr.yml`**](/docs/pgsql/playbook#pgsql-pitryml) | `PGSQL` | Point-in-time recovery |
| [**`redis.yml`**](/docs/redis/playbook#redisyml) | `REDIS` | Deploy Redis |
| [**`redis-rm.yml`**](/docs/redis/playbook#redis-rmyml) | `REDIS` | Remove Redis |
| [**`minio.yml`**](/docs/minio/playbook#minioyml) | `MINIO` | Deploy Silo |
| [**`minio-rm.yml`**](/docs/minio/playbook#minio-rmyml) | `MINIO` | Remove Silo, configuration, and optional data |
| [**`docker.yml`**](/docs/docker/playbook#dockeryml) | `DOCKER` | Deploy Docker |
| [**`juice.yml`**](/docs/juice/playbook#juiceyml) | `JUICE` | Deploy/remove JuiceFS instances |
| [**`vibe.yml`**](/docs/vibe/playbook#vibeyml) | `VIBE` | Deploy the VIBE development environment |
| [**`kafka.yml`**](/docs/kafka/playbook#kafkayml) | `KAFKA` | Create/converge complete dynamic KRaft clusters |
| [**`kafka-rm.yml`**](/docs/kafka/playbook#kafka-rmyml) | `KAFKA` | Remove Kafka clusters or safely retire members |
| [**`mysql.yml`**](/docs/mysql/playbook) | `MYSQL` | Converge native MySQL 8.4 standalone or three-node InnoDB Cluster |
| [**`mysql-rm.yml`**](/docs/mysql/playbook) | `MYSQL` | Remove clusters/members; delete data/configuration by default, retain backups |
{.full-width .wide .expand}

--------

## Auxiliary Playbooks

The following playbooks are cross-module helpers.

| Playbook                                                                     | Description |
|:-----------------------------------------------------------------------|:-------------------------|
| [**`cache.yml`**](https://github.com/pgsty/pigsty/blob/main/cache.yml) | Build offline installation package cache |
| [**`cert.yml`**](https://github.com/pgsty/pigsty/blob/main/cert.yml)   | Issue certificates using Pigsty CA |
| [**`app.yml`**](https://github.com/pgsty/pigsty/blob/main/app.yml)     | Install Docker Compose app templates |
| [**`slim.yml`**](https://github.com/pgsty/pigsty/blob/main/slim.yml)   | Minimal component installation scenario |


----------------

## Playbook Usage Notes

### Protection Mechanism

Several modules provide deletion safeguards through `*_safeguard` parameters:

- **PGSQL**: [**`pg_safeguard`**](/docs/pgsql/param#pg_safeguard) protects PostgreSQL clusters, default `false`
- **ETCD**: [**`etcd_safeguard`**](/docs/etcd/param#etcd_safeguard) protects Etcd clusters, default `false`
- **VAULT**: [**`vault_safeguard`**](/docs/vault/param#vault_safeguard) protects OpenBao secrets clusters, **default `true`**
- **MINIO**: [**`minio_safeguard`**](/docs/minio/param#minio_safeguard) protects Silo clusters, default `false`
- **REDIS**: [**`redis_safeguard`**](/docs/redis/param#redis_safeguard) protects Redis instances, default `false`
- **KAFKA**: [**`kafka_safeguard`**](/docs/kafka/param#kafka_safeguard) blocks Kafka removal, default `false`
- **MYSQL**: [**`mysql_safeguard`**](/docs/mysql/param#mysql_safeguard) protects native MySQL instances/clusters, **default `true`**

PGSQL, ETCD, MINIO, REDIS, and KAFKA default to `false`; explicitly enable their safeguards on initialized production clusters. **VAULT and MYSQL default to `true`** to prevent accidental destruction of encryption keys or MySQL data. `mysql-rm.yml` also defaults to `mysql_rm_data: true`, removing `/data/mysql`, configuration, and Router state while retaining `mysql_backup_dir`. Only full-cluster or standalone removal supports `-e mysql_rm_data=false` to stop with data retained.

When a safeguard is `true`, its `*-rm.yml` aborts immediately. After verifying risk and backups, override it explicitly on the command line:

```bash
./pgsql-rm.yml -l pg-test -e pg_safeguard=false
./etcd-rm.yml  -l etcd -e etcd_safeguard=false
./vault-rm.yml -l vault -e vault_safeguard=false
./minio-rm.yml -l minio -e minio_type=silo -e minio_safeguard=false
./redis-rm.yml -l redis-test -e redis_safeguard=false
./kafka-rm.yml -l kf-main -e kafka_safeguard=false
./mysql-rm.yml -l my-test -e mysql_safeguard=false
```

### Limiting Execution Scope

Use `-l` to limit execution targets:

```bash
./pgsql.yml -l pg-meta            # run only on pg-meta cluster
./node.yml -l 10.10.10.10         # run only on one node
./redis.yml -l redis-test         # run only on redis-test cluster
```

For a large deployment, validate one cluster first. Then deploy in batches.


### Idempotency

Most playbooks are idempotent and safe to rerun, with caveats:

- `infra.yml` does **not** clean data by default. All cleanup parameters default to `false`: `vmetrics_clean`, `vlogs_clean`, `vtraces_clean`, `grafana_clean`, and `nginx_clean`.
- To rebuild from a clean state, explicitly set relevant clean parameters to `true`
- Re-running `*-rm.yml` deletion playbooks requires extra caution


### Task Tags

Use `-t` to run only selected task subsets:

```bash
./pgsql.yml -l pg-test -t pg_service    # refresh services only on pg-test
./node.yml -t haproxy                   # configure haproxy only
./etcd.yml -t etcd_launch               # restart etcd only
```


----------------

## Quick Command Reference

### INFRA Module

```bash
./deploy.yml                     # deploy the core chain in one pass
./infra.yml                      # initialize infrastructure
./infra-rm.yml                   # remove infrastructure components
./cache.yml -l <infra-host>      # build an offline package from an existing repo on an Infra node
./cert.yml -e cn=<name>          # issue client certificate
```

### NODE Module

```bash
./node.yml -l <cls|ip>           # add node
./node-rm.yml -l <cls|ip>        # remove node
bin/node-add <cls|ip>            # add node (wrapper)
bin/node-rm <cls|ip>             # remove node (wrapper)
```

### ETCD Module

```bash
./etcd.yml                       # initialize etcd cluster
./etcd-rm.yml -l etcd            # remove etcd cluster; deletes local data and configuration by default
bin/etcd-add <ip>                # add etcd member (wrapper)
bin/etcd-rm <ip>                 # remove etcd member (wrapper)
```

### VAULT Module

```bash
./vault.yml -l vault                           # initialize or converge an OpenBao secrets cluster
./vault-rm.yml -l vault -e vault_safeguard=false   # remove cluster after collecting a final snapshot on the control node
./vault-rm.yml -l <ip> -e vault_safeguard=false    # safely remove one member
bin/vault-add                                  # initialize or converge cluster (wrapper)
bin/vault-add <ip>                             # add member and refresh cluster configuration (wrapper)
bin/vault-rm                                   # remove entire cluster (wrapper)
bin/vault-rm <ip>                              # retire one member (wrapper)
```

### PGSQL Module

```bash
./pgsql.yml -l <cls>                             # initialize PostgreSQL cluster
./pgsql-rm.yml -l <cls>                          # remove PostgreSQL cluster
./pgsql-user.yml -l <cls> -e username=<user>     # create business user
./pgsql-db.yml -l <cls> -e dbname=<db>           # create business database
./pgsql-monitor.yml -e clsname=<cls>             # monitor remote cluster
./pgsql-migration.yml -e@files/migration/<cls>.yml  # generate migration runbook
./pgsql-pitr.yml -l <cls> -e '{"pg_pitr": {}}'  # perform PITR recovery

bin/pgsql-add <cls>              # initialize cluster (wrapper)
bin/pgsql-rm <cls>               # remove cluster (wrapper)
bin/pgsql-user <cls> <user>      # create user (wrapper)
bin/pgsql-db <cls> <db>          # create database (wrapper)
bin/pgsql-svc <cls>              # refresh services (wrapper)
bin/pgsql-hba <cls>              # reload HBA (wrapper)
bin/pgmon-add <cls>              # monitor remote cluster (wrapper)
```

### REDIS Module

```bash
./redis.yml -l <cls>             # initialize Redis cluster
./redis-rm.yml -l <cls>          # remove Redis cluster
```

### MINIO Module

```bash
./minio.yml -l <cls>                       # initialize the MINIO module's Silo cluster
./minio-rm.yml -l <cls> -e minio_type=silo # remove Silo; this value must be confirmed explicitly
```

### DOCKER Module

```bash
./docker.yml -l <host>           # install Docker
./app.yml -e app=<name>          # deploy Docker Compose app
```

### KAFKA Module

```bash
./kafka.yml -l <cls>             # create / converge a complete Kafka cluster
./kafka.yml -l <cls> --check     # read-only precheck
./kafka-rm.yml -l <cls>          # remove the whole cluster
./kafka-rm.yml -l <ip>           # retire a single member from the cluster
```

For ordinary convergence, `-l` must include every declared member of the selected Kafka cluster. Only `kafka-rm.yml` accepts a single member for retirement.

### MYSQL Module

```bash
./mysql.yml -l <cls> --check     # read-only preflight
./mysql.yml -l <cls>             # create/converge a complete 1- or 3-member cluster
./mysql-rm.yml -l <cls> -e mysql_safeguard=false                      # remove cluster, data, and configuration by default
./mysql-rm.yml -l <cls> -e mysql_safeguard=false -e mysql_rm_data=false  # stop the whole cluster with data retained
./mysql-rm.yml -l <ip> -e mysql_safeguard=false                       # safely remove one HA member through a survivor
```

`mysql-rm.yml` requires explicit `-l` and `-e mysql_safeguard=false`. Default `mysql_rm_data=true` destroys `/data/mysql`, configuration, and Router state, but always retains physical backups under `mysql_backup_dir` (default `/data/backups/mysql`). A single-member target that is primary is switched away first. Single-member removal does not support `-e mysql_rm_data=false`.
