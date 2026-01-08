---
title: Playbooks
weight: 480
description: Overview and navigation of Pigsty preset playbooks
icon: fa-solid fa-scroll
categories: [Reference]
---

Pigsty provides a series of Ansible playbooks for automated deployment and management of various modules. This page provides navigation and summary of all playbooks.


----------------

## Module Navigation

| Module                          |   | Description                               |
|---------------------------------|---|-------------------------------------------|
| [INFRA](/docs/infra/playbook)   | 3 | Infrastructure module playbooks           |
| [NODE](/docs/node/playbook)     | 2 | Node management module playbooks          |
| [ETCD](/docs/etcd/playbook)     | 2 | ETCD cluster management playbooks         |
| [PGSQL](/docs/pgsql/playbook)   | 7 | PostgreSQL cluster management playbooks   |
| [REDIS](/docs/redis/playbook)   | 2 | Redis cluster management playbooks        |
| [MINIO](/docs/minio/playbook)   | 2 | MinIO object storage management playbooks |
| [FERRET](/docs/ferret/playbook) | 1 | FerretDB management playbook              |
| [DOCKER](/docs/docker/playbook) | 1 | Docker management playbook                |


----------------

## Playbook Summary

The following table lists all available preset playbooks in Pigsty:

| Playbook                                                         | Module | Function                                                                |
|------------------------------------------------------------------|--------|-------------------------------------------------------------------------|
| [`deploy.yml`](/docs/infra/playbook#deployyml)                   | ADMIN  | Deploy pigsty on current environment                                    |
| [`infra.yml`](/docs/infra/playbook#infrayml)                     | INFRA  | Initialize pigsty infrastructure on infra nodes                         |
| [`infra-rm.yml`](/docs/infra/playbook#infra-rmyml)               | INFRA  | Remove infrastructure components from infra nodes                       |
| [`node.yml`](/docs/node/playbook#nodeyml)                        | NODE   | Manage nodes, adjust nodes to desired state                             |
| [`node-rm.yml`](/docs/node/playbook#node-rmyml)                  | NODE   | Remove managed nodes from Pigsty                                        |
| [`etcd.yml`](/docs/etcd/playbook#etcdyml)                        | ETCD   | Install and configure Etcd cluster                                      |
| [`etcd-rm.yml`](/docs/etcd/playbook#etcd-rmyml)                  | ETCD   | Remove Etcd cluster or members                                          |
| [`pgsql.yml`](/docs/pgsql/playbook#pgsqlyml)                     | PGSQL  | Initialize PostgreSQL cluster or add new replicas                       |
| [`pgsql-rm.yml`](/docs/pgsql/playbook#pgsql-rmyml)               | PGSQL  | Remove PostgreSQL cluster or instance                                   |
| [`pgsql-user.yml`](/docs/pgsql/playbook#pgsql-useryml)           | PGSQL  | Add new business users to existing PostgreSQL cluster                   |
| [`pgsql-db.yml`](/docs/pgsql/playbook#pgsql-dbyml)               | PGSQL  | Add new business databases to existing PostgreSQL cluster               |
| [`pgsql-monitor.yml`](/docs/pgsql/playbook#pgsql-monitoryml)     | PGSQL  | Monitor remote PostgreSQL instances                                     |
| [`pgsql-migration.yml`](/docs/pgsql/playbook#pgsql-migrationyml) | PGSQL  | Generate migration manuals and scripts for existing PostgreSQL clusters |
| [`pgsql-pitr.yml`](/docs/pgsql/playbook#pgsql-pitryml)           | PGSQL  | Execute PostgreSQL Point-in-Time Recovery (PITR)                        |
| [`redis.yml`](/docs/redis/playbook#redisyml)                     | REDIS  | Initialize Redis cluster/node/instance                                  |
| [`redis-rm.yml`](/docs/redis/playbook#redis-rmyml)               | REDIS  | Remove Redis cluster/node/instance                                      |
| [`minio.yml`](/docs/minio/playbook#minioyml)                     | MINIO  | Install MinIO cluster                                                   |
| [`minio-rm.yml`](/docs/minio/playbook#minio-rmyml)               | MINIO  | Remove MinIO cluster                                                    |
| [`mongo.yml`](/docs/ferret/playbook#mongoyml)                    | FERRET | Install FerretDB on nodes                                               |
| [`docker.yml`](/docs/docker/playbook#dockeryml)                  | DOCKER | Install Docker Daemon and Docker Compose                                |


----------------

## Playbook Usage Notes

### Protection Mechanism

Multiple modules provide deletion protection through `*_safeguard` parameters:

- **PGSQL**: [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) prevents accidental deletion of PostgreSQL clusters
- **ETCD**: [`etcd_safeguard`](/docs/etcd/param#etcd_safeguard) prevents accidental deletion of Etcd clusters
- **MINIO**: [`minio_safeguard`](/docs/minio/param#minio_safeguard) prevents accidental deletion of MinIO clusters

By default, these safeguard parameters are not enabled (undefined). It's recommended to explicitly set them to `true` for initialized clusters in production environments.

When the protection switch is set to `true`, the corresponding `*-rm.yml` playbook will abort immediately. You can force override through command-line parameters:

```bash
./pgsql-rm.yml -l pg-test -e pg_safeguard=false
./etcd-rm.yml -e etcd_safeguard=false
./minio-rm.yml -l minio -e minio_safeguard=false
```


### Limiting Execution Scope

When executing playbooks, it's recommended to use the `-l` parameter to limit the execution scope:

```bash
./pgsql.yml -l pg-meta            # Limit execution to pg-meta cluster
./node.yml -l 10.10.10.10         # Limit execution to specific node
./redis.yml -l redis-test         # Limit execution to redis-test cluster
```


### Idempotency

Most playbooks are idempotent and can be executed repeatedly. However, note:

- `infra.yml` does **not** clear data by default and can be safely re-executed. All clean parameters (`vmetrics_clean`, `vlogs_clean`, `vtraces_clean`, `grafana_clean`, `nginx_clean`) default to `false`
- To clear infrastructure data for rebuild, you need to explicitly set the corresponding clean parameter to `true`
- Be extra careful when repeatedly executing `*-rm.yml` deletion playbooks


### Task Tags

You can use the `-t` parameter to execute only specific task subsets:

```bash
./pgsql.yml -l pg-test -t pg_service    # Only refresh pg-test cluster services
./node.yml -t haproxy                   # Only set up haproxy on nodes
./etcd.yml -t etcd_launch               # Only restart etcd service
```


----------------

## Quick Command Reference

```bash
./deploy.yml                     # One-pass deployment
```

### INFRA Module

```bash
./infra.yml                      # Initialize infrastructure
./infra-rm.yml                   # Remove infrastructure
```

### NODE Module

```bash
./node.yml -l <cls|ip>           # Add node
./node-rm.yml -l <cls|ip>        # Remove node
bin/node-add <cls|ip>            # Add node (wrapper script)
bin/node-rm <cls|ip>             # Remove node (wrapper script)
```

### ETCD Module

```bash
./etcd.yml                       # Initialize etcd cluster
./etcd-rm.yml                    # Remove etcd cluster
bin/etcd-add <ip>                # Add etcd member (wrapper script)
bin/etcd-rm <ip>                 # Remove etcd member (wrapper script)
```

### PGSQL Module

```bash
./pgsql.yml -l <cls>                            # Initialize PostgreSQL cluster
./pgsql-rm.yml -l <cls>                         # Remove PostgreSQL cluster
./pgsql-user.yml -l <cls> -e username=<user>    # Create business user
./pgsql-db.yml -l <cls> -e dbname=<db>          # Create business database
./pgsql-monitor.yml -e clsname=<cls>            # Monitor remote cluster
./pgsql-pitr.yml -l <cls> -e '{"pg_pitr": {}}'  # Execute PITR recovery
```

```bash
bin/pgsql-add <cls>              # Initialize cluster (wrapper script)
bin/pgsql-rm <cls>               # Remove cluster (wrapper script)
bin/pgsql-user <cls> <user>      # Create user (wrapper script)
bin/pgsql-db <cls> <db>          # Create database (wrapper script)
```

### REDIS Module

```bash
./redis.yml -l <cls>             # Initialize Redis cluster
./redis-rm.yml -l <cls>          # Remove Redis cluster
```

### MINIO Module

```bash
./minio.yml -l <cls>             # Initialize MinIO cluster
./minio-rm.yml -l <cls>          # Remove MinIO cluster
```

### FERRET Module

```bash
./mongo.yml -l ferret            # Install FerretDB
```

### DOCKER Module

```bash
./docker.yml -l <host>           # Install Docker
```
