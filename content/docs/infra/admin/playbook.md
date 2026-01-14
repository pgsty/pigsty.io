---
title: Playbooks
description: Built-in Ansible playbooks in Pigsty
weight: 3102
icon: fa-solid fa-scroll
categories: [Task]
---

Pigsty uses **idempotent** Ansible playbooks for management and control. Running playbooks requires `ansible-playbook` to be in the system PATH; users must first [install Ansible](./ansible/#installation) before executing playbooks.


## Available Playbooks

| Module | Playbook              | Purpose                                                |
|--------|-----------------------|--------------------------------------------------------|
| INFRA  | `deploy.yml`          | One-click Pigsty installation                          |
| INFRA  | `infra.yml`           | Initialize Pigsty infrastructure on infra nodes        |
| INFRA  | `infra-rm.yml`        | Remove infrastructure components from infra nodes      |
| INFRA  | `cache.yml`           | Create offline installation packages from target nodes |
| INFRA  | `cert.yml`            | Issue certificates using Pigsty self-signed CA         |
| NODE   | `node.yml`            | Initialize nodes, configure to desired state           |
| NODE   | `node-rm.yml`         | Remove nodes from Pigsty                               |
| PGSQL  | `pgsql.yml`           | Initialize HA PostgreSQL cluster, or add new replica   |
| PGSQL  | `pgsql-rm.yml`        | Remove PostgreSQL cluster, or remove replica           |
| PGSQL  | `pgsql-db.yml`        | Add new business database to existing cluster          |
| PGSQL  | `pgsql-user.yml`      | Add new business user to existing cluster              |
| PGSQL  | `pgsql-pitr.yml`      | Perform point-in-time recovery (PITR) on cluster       |
| PGSQL  | `pgsql-monitor.yml`   | Monitor remote PostgreSQL using local exporters        |
| PGSQL  | `pgsql-migration.yml` | Generate migration manual and scripts for PostgreSQL   |
| PGSQL  | `slim.yml`            | Install Pigsty with minimal components                 |
| REDIS  | `redis.yml`           | Initialize Redis cluster/node/instance                 |
| REDIS  | `redis-rm.yml`        | Remove Redis cluster/node/instance                     |
| ETCD   | `etcd.yml`            | Initialize ETCD cluster, or add new member             |
| ETCD   | `etcd-rm.yml`         | Remove ETCD cluster, or remove existing member         |
| MINIO  | `minio.yml`           | Initialize MinIO cluster                               |
| MINIO  | `minio-rm.yml`        | Remove MinIO cluster                                   |
| DOCKER | `docker.yml`          | Install Docker on nodes                                |
| DOCKER | `app.yml`             | Install applications using Docker Compose              |
| FERRET | `mongo.yml`           | Install Mongo/FerretDB on nodes                        |


----------------

## Deployment Strategy

The `deploy.yml` playbook orchestrates specialized playbooks in the following group order for complete deployment:

- **infra**: `infra.yml` (-l infra)
- **nodes**: `node.yml`
- **etcd**: `etcd.yml` (-l etcd)
- **minio**: `minio.yml` (-l minio)
- **pgsql**: `pgsql.yml`

> **Circular Dependency Note**: There is a weak circular dependency between NODE and INFRA: to register NODE to INFRA, INFRA must already exist; while INFRA module depends on NODE to work.
> The solution is to initialize `infra` nodes first, then add other nodes. To complete all deployment at once, use `deploy.yml`.


----------------

## Safety Notes

> Most playbooks are **idempotent**, which means some deployment playbooks **may wipe existing databases and create new ones** when protection options are not enabled.
> Use extra caution with `pgsql`, `minio`, and `infra` playbooks. Read the documentation carefully and proceed with caution.

### Best Practices

1. **Read playbook documentation carefully** before execution
2. **Press Ctrl-C immediately to stop** when anomalies occur
3. **Test in non-production environments** first
4. Use `-l` parameter to **limit target hosts**, avoiding unintended hosts
5. Use `-t` parameter to **specify tags**, executing only specific tasks


----------------

## Dry-Run Mode

Use `--check --diff` options to preview changes without actually executing:

```bash
# Preview changes without execution
./pgsql.yml -l pg-test --check --diff

# Check specific tasks with tags
./pgsql.yml -l pg-test -t pg_config --check --diff
```
