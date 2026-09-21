# Playbooks

> Pigsty v4.x preset Ansible playbook navigation and execution notes

---

LLMS index: [llms.txt](/llms.txt)

---

This page summarizes Pigsty v4.x playbook entries and usage guidance by module. For detailed task tags, open each module's `playbook` page.

## Module Playbook Navigation

| Module                                    | Count | Playbooks                                                                                                                           |
|:--------------------------------------|:--:|:--------------------------------------------------------------------------------------------------------------------------------|
| [**`INFRA`**](/docs/infra/playbook)   | 3  | `deploy.yml` `infra.yml` `infra-rm.yml`                                                                                         |
| [**`NODE`**](/docs/node/playbook)     | 2  | `node.yml` `node-rm.yml`                                                                                                        |
| [**`ETCD`**](/docs/etcd/playbook)     | 2  | `etcd.yml` `etcd-rm.yml`                                                                                                        |
| [**`PGSQL`**](/docs/pgsql/playbook)   | 7  | `pgsql.yml` `pgsql-rm.yml` <br> `pgsql-user.yml` `pgsql-db.yml` <br> `pgsql-monitor.yml` `pgsql-migration.yml` `pgsql-pitr.yml` |
| [**`REDIS`**](/docs/redis/playbook)   | 2  | `redis.yml` `redis-rm.yml`                                                                                                      |
| [**`MINIO`**](/docs/minio/playbook)   | 2  | `minio.yml` `minio-rm.yml`                                                                                                      |
| [**`DOCKER`**](/docs/docker/playbook) | 1  | `docker.yml`                                                                                                                    |
| [**`JUICE`**](/docs/juice/playbook)   | 1  | `juice.yml`                                                                                                                     |
| [**`VIBE`**](/docs/vibe/playbook)     | 1  | `vibe.yml`                                                                                                                      |
| [**`KAFKA`**](/docs/kafka/playbook)   | 2  | `kafka.yml` `kafka-rm.yml`                                                                                                      |
| [**`MYSQL` (pilot)**](/docs/mysql/) | 2 | `mysql.yml` `mysql-rm.yml`                                                                                                   |
{.full-width}

--------

## Playbook Matrix

| Playbook                                                                   |  Module  | Purpose |
|:---------------------------------------------------------------------|:--------:|:---------------------------------------------|
| [**`deploy.yml`**](/docs/infra/playbook#deployyml)                   | `INFRA`  | One-pass deployment for the core chain (Infra/Node/Etcd/PGSQL, enabling MINIO by config) |
| [**`infra.yml`**](/docs/infra/playbook#infrayml)                     | `INFRA`  | Initialize infrastructure nodes |
| [**`infra-rm.yml`**](/docs/infra/playbook#infra-rmyml)               | `INFRA`  | Remove infrastructure components |
| [**`node.yml`**](/docs/node/playbook#nodeyml)                        |  `NODE`  | Node onboarding and baseline convergence |
| [**`node-rm.yml`**](/docs/node/playbook#node-rmyml)                  |  `NODE`  | Node offboarding |
| [**`etcd.yml`**](/docs/etcd/playbook#etcdyml)                        |  `ETCD`  | ETCD install/scale-out |
| [**`etcd-rm.yml`**](/docs/etcd/playbook#etcd-rmyml)                  |  `ETCD`  | ETCD remove/scale-in |
| [**`pgsql.yml`**](/docs/pgsql/playbook#pgsqlyml)                     | `PGSQL`  | Initialize PostgreSQL cluster or add instance |
| [**`pgsql-rm.yml`**](/docs/pgsql/playbook#pgsql-rmyml)               | `PGSQL`  | Remove PostgreSQL cluster/instance |
| [**`pgsql-user.yml`**](/docs/pgsql/playbook#pgsql-useryml)           | `PGSQL`  | Add business users |
| [**`pgsql-db.yml`**](/docs/pgsql/playbook#pgsql-dbyml)               | `PGSQL`  | Add business databases |
| [**`pgsql-monitor.yml`**](/docs/pgsql/playbook#pgsql-monitoryml)     | `PGSQL`  | Register remote PostgreSQL for monitoring |
| [**`pgsql-migration.yml`**](/docs/pgsql/playbook#pgsql-migrationyml) | `PGSQL`  | Generate migration runbook and scripts |
| [**`pgsql-pitr.yml`**](/docs/pgsql/playbook#pgsql-pitryml)           | `PGSQL`  | Point-in-time recovery (PITR) |
| [**`redis.yml`**](/docs/redis/playbook#redisyml)                     | `REDIS`  | Deploy Redis |
| [**`redis-rm.yml`**](/docs/redis/playbook#redis-rmyml)               | `REDIS`  | Remove Redis |
| [**`minio.yml`**](/docs/minio/playbook#minioyml)                     | `MINIO`  | Deploy Silo |
| [**`minio-rm.yml`**](/docs/minio/playbook#minio-rmyml)               | `MINIO`  | Remove Silo, its configuration, and optional data |
| [**`docker.yml`**](/docs/docker/playbook#dockeryml)                  | `DOCKER` | Deploy Docker engine |
| [**`juice.yml`**](/docs/juice/playbook#juiceyml)                     | `JUICE`  | Deploy/remove JuiceFS instances |
| [**`vibe.yml`**](/docs/vibe/playbook#vibeyml)                        |  `VIBE`  | Deploy VIBE dev environment |
| [**`kafka.yml`**](/docs/kafka/playbook#kafkayml)                     | `KAFKA`  | Create or converge a complete dynamic KRaft cluster |
| [**`kafka-rm.yml`**](/docs/kafka/playbook#kafka-rmyml)               | `KAFKA`  | Remove a Kafka cluster, or safely retire a single member |
| [**`mysql.yml`**](/docs/mysql/)                                | `MYSQL`  | Converge a native MySQL 8.4 single node or three-node InnoDB Cluster (pilot) |
| [**`mysql-rm.yml`**](/docs/mysql/)                             | `MYSQL`  | Stop or retire a native MySQL instance or cluster while preserving local state (pilot) |
{.full-width}

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

- **PGSQL**: [**`pg_safeguard`**](/docs/pgsql/param#pg_safeguard)
- **ETCD**: [**`etcd_safeguard`**](/docs/etcd/param#etcd_safeguard)
- **MINIO**: [**`minio_safeguard`**](/docs/minio/param#minio_safeguard)
- **REDIS**: [**`redis_safeguard`**](/docs/redis/param#redis_safeguard)
- **KAFKA**: [**`kafka_safeguard`**](/docs/kafka/param#kafka_safeguard)
- **MYSQL (pilot)**: [`mysql_safeguard`](/docs/mysql/) and an exact-match `mysql_rm_confirm` jointly protect native MySQL retirement

The PGSQL, ETCD, MINIO, REDIS, and KAFKA role defaults are explicitly `false`; set them to `true` for initialized production clusters. Native MySQL is the exception: `mysql_safeguard` defaults to `true`, and even after disabling it you must provide a `mysql_rm_confirm` value that exactly matches the target instance or cluster.

When safeguard is `true`, corresponding `*-rm.yml` playbooks abort immediately. You can force override via CLI:

```bash
./pgsql-rm.yml -l pg-test -e pg_safeguard=false
./etcd-rm.yml  -l etcd -e etcd_safeguard=false
./minio-rm.yml -l minio -e minio_type=silo -e minio_safeguard=false
./redis-rm.yml -l redis-test -e redis_safeguard=false
./kafka-rm.yml -l kf-main -e kafka_safeguard=false
./mysql-rm.yml -l my-test -e mysql_safeguard=false -e mysql_rm_confirm=my-test
```


### Limiting Execution Scope

Use `-l` to limit execution targets:

```bash
./pgsql.yml -l pg-meta            # run only on pg-meta cluster
./node.yml -l 10.10.10.10         # run only on one node
./redis.yml -l redis-test         # run only on redis-test cluster
```

For large-scale rollout, validate on one cluster first, then deploy in batches.


### Idempotency

Most playbooks are idempotent and safe to rerun, with caveats:

- `infra.yml` does **not** clean data by default; all clean parameters (`vmetrics_clean`, `vlogs_clean`, `vtraces_clean`, `grafana_clean`, `nginx_clean`) default to `false`
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

For ordinary convergence, `-l` must cover every declared member of the selected Kafka cluster; only `kafka-rm.yml` accepts a single member, for retirement.

### MYSQL Pilot Module

```bash
./mysql.yml -l <cls> --check
./mysql.yml -l <cls>             # accepts only a complete 1- or 3-member cluster scope
./mysql-rm.yml -l <instance> --check \
  -e mysql_safeguard=false -e mysql_rm_confirm=<instance>
./mysql-rm.yml -l <cls> \
  -e mysql_safeguard=false -e mysql_rm_confirm=<cls>
```

`mysql-rm.yml` stops the service, writes a retirement marker, and deregisters monitoring, but does not delete data directories, backups, configuration, certificates, packages, or InnoDB Cluster metadata.
