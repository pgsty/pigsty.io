---
title: Operations SOP Index
linkTitle: SOP
weight: 620
description: "Pigsty and PostgreSQL operations documentation index for new users: find the right page by common task."
icon: fa-solid fa-list-check
module: [PIGSTY, PGSQL]
categories: [Tutorial, Reference]
---


## Getting Started Path

| Order | Question | Entry |
|:---|:---|:---|
| 1 | What modules does Pigsty include? | [**Modular Architecture**](/docs/concept/arch/), [**PGSQL Architecture**](/docs/concept/arch/pgsql/), [**PGSQL Cluster Model**](/docs/concept/model/pgsql/) |
| 2 | How do I get it running first? | [**Quick Start**](/docs/setup/install/), [**Web UI**](/docs/setup/webui/), [**PostgreSQL Quick Start**](/docs/setup/pgsql/) |
| 3 | How should I read the config file? | [**Declarative Configuration**](/docs/concept/iac/), [**Configuration Guide**](/docs/setup/config/), [**Configuration Parameters**](/docs/concept/iac/parameter/) |
| 4 | What should I prepare for production? | [**Planning**](/docs/deploy/planning/), [**Preparation**](/docs/deploy/prepare/), [**Administration Model**](/docs/deploy/admin/) |
| 5 | How do I deploy a multi-node cluster? | [**Production Deployment**](/docs/deploy/install/), [**Playbooks**](/docs/setup/playbook/), [**PGSQL Playbooks**](/docs/pgsql/playbook/) |
| 6 | How do I operate databases daily? | [**PGSQL Administration**](/docs/pgsql/admin/), [**Cluster Management**](/docs/pgsql/admin/cluster/), [**User Management**](/docs/pgsql/admin/user/), [**Database Management**](/docs/pgsql/admin/db/) |
| 7 | How do I validate reliability? | [**PostgreSQL HA**](/docs/concept/ha/), [**Patroni Management**](/docs/pgsql/admin/patroni/), [**Backup & Restore**](/docs/pgsql/backup/), [**Restore Operations**](/docs/pgsql/backup/restore/) |


----------------

## Task Index

| Task | Read First | Operation Entry |
|:---|:---|:---|
| Prepare servers, disks, networks, VIPs | [**Preparation**](/docs/deploy/prepare/), [**Planning**](/docs/deploy/planning/), [**Linux Compatibility**](/docs/ref/linux/) | [**Production Deployment**](/docs/deploy/install/) |
| Prepare SSH, sudo, and admin users | [**Administration Model**](/docs/deploy/admin/) | [**Production Deployment**](/docs/deploy/install/) |
| Build a local or cloud sandbox | [**Sandbox**](/docs/deploy/sandbox/) | [**Vagrant**](/docs/deploy/vagrant/), [**Terraform**](/docs/deploy/terraform/) |
| Single-node trial | [**Quick Start**](/docs/setup/install/) | `./configure -g`, `./deploy.yml` |
| Multi-node production deployment | [**Deployment**](/docs/deploy/), [**Production Deployment**](/docs/deploy/install/) | `./deploy.yml`, `./pgsql.yml` |
| Deploy in an offline environment | [**Offline Installation**](/docs/setup/offline/) | [**Repository Management**](/docs/infra/admin/repo/) |
| Choose a config template | [**Config Templates**](/docs/concept/iac/template/), [**Template List**](/docs/conf/) | `./configure -c <template>` |
| Plan cluster, database, and user names | [**PGSQL Cluster Model**](/docs/concept/model/pgsql/) | `pg_cluster`, `pg_databases`, `pg_users` |
| Create a PostgreSQL cluster | [**Cluster Instance Config**](/docs/pgsql/config/cluster/) | [**Cluster Management**](/docs/pgsql/admin/cluster/), `./pgsql.yml -l <cluster>` |
| Add business users | [**User/Role Config**](/docs/pgsql/config/user/) | [**User Management**](/docs/pgsql/admin/user/), `./pgsql-user.yml -l <cluster>` |
| Add business databases | [**Database Config**](/docs/pgsql/config/db/) | [**Database Management**](/docs/pgsql/admin/db/), `./pgsql-db.yml -l <cluster>` |
| Configure access endpoints | [**Service/Access**](/docs/pgsql/service/) | `pg_services`, `pg_default_services` |
| Modify HBA | [**HBA Config**](/docs/pgsql/config/hba/) | [**HBA Management**](/docs/pgsql/admin/hba/) |
| Switchover | [**Patroni Management**](/docs/pgsql/admin/patroni/) | `patronictl switchover` |
| HA drills | [**PostgreSQL HA**](/docs/concept/ha/), [**RPO**](/docs/concept/ha/rpo/), [**RTO**](/docs/concept/ha/rto/) | [**3-of-2 Failure Drill**](/docs/pgsql/tutorial/drill/) |
| Configure VIP | [**HA Service Access**](/docs/concept/ha/svc/) | [**Configure PG VIP**](/docs/pgsql/tutorial/pg-vip/) |
| Configure backup policy | [**Backup Policy**](/docs/pgsql/backup/policy/) | [**Backup Admin Commands**](/docs/pgsql/backup/admin/) |
| Perform PITR | [**Point-in-Time Recovery**](/docs/concept/pitr/) | [**Restore Operations**](/docs/pgsql/backup/restore/) |
| Recover dropped data, tables, or databases | [**Drop Recovery**](/docs/pgsql/tutorial/drop/) | [**Manual Recovery**](/docs/pgsql/tutorial/pitr/) |
| Clone or fork a cluster | [**Clone Database Cluster**](/docs/pgsql/backup/cluster/) | [**Fork Instance**](/docs/pgsql/tutorial/pg-fork/) |
| Use MinIO for backups | [**MINIO Module**](/docs/minio/) | [**MinIO Config**](/docs/minio/config/), [**Backup Repository**](/docs/pgsql/backup/repository/) |
| View monitoring and alerts | [**Monitoring System**](/docs/concept/monitor/) | [**PGSQL Monitoring**](/docs/pgsql/monitor/), [**PGSQL Dashboards**](/docs/pgsql/dashboard/) |
| Troubleshoot database failures | [**PGSQL FAQ**](/docs/pgsql/faq/) | [**Troubleshooting**](/docs/pgsql/tutorial/failure/), [**Component Management**](/docs/pgsql/admin/component/) |
| Scale PostgreSQL clusters | [**Cluster Instance Config**](/docs/pgsql/config/cluster/) | [**Cluster Management**](/docs/pgsql/admin/cluster/) |
| Upgrade PostgreSQL | [**Version Upgrade**](/docs/pgsql/admin/upgrade/) | [**Kernel Versions**](/docs/pgsql/config/kernel/) |
| Install or enable extensions | [**Extensions**](/docs/pgsql/ext/) | [**Extension Management**](/docs/pgsql/admin/ext/) |
| Migrate existing databases | [**Data Migration**](/docs/pgsql/migration/) | [**Migration Playbook**](/docs/pgsql/playbook/#pgsql-migrationyml) |
| Harden security | [**Security Considerations**](/docs/deploy/security/) | [**Access Control**](/docs/pgsql/security/), [**CA & Certificates**](/docs/infra/admin/cert/) |
| Manage domains and web entrypoints | [**Domain Management**](/docs/infra/admin/domain/) | [**Nginx Management**](/docs/infra/admin/portal/) |
| Maintain infrastructure | [**INFRA Administration**](/docs/infra/admin/) | `infra.yml`, `infra-rm.yml` |
| Maintain Etcd | [**ETCD Config**](/docs/etcd/config/) | [**ETCD Management**](/docs/etcd/admin/), [**ETCD FAQ**](/docs/etcd/faq/) |
| Deploy app templates | [**Applications**](/docs/app/) | [**Docker Module**](/docs/docker/usage/), `./app.yml` |


----------------

## Preparation And Deployment

For production deployment, start with [**Planning**](/docs/deploy/planning/) and [**Preparation**](/docs/deploy/prepare/). These two pages cover node count, disks, filesystems, networks, VIPs, domains, and software sources.

After machines are ready, read [**Administration Model**](/docs/deploy/admin/): admin users, passwordless SSH, sudo, reachability, and firewall handling are covered there. Check system versions and architectures in [**Linux Compatibility**](/docs/ref/linux/).

Use [**Quick Start**](/docs/setup/install/) for the first installation. Use [**Production Deployment**](/docs/deploy/install/) for multi-node production environments. If there is no internet access, read [**Offline Installation**](/docs/setup/offline/) and [**Repository Management**](/docs/infra/admin/repo/).

Do not overthink template choice at the beginning: use [**`meta`**](/docs/conf/meta/) for single-node default deployment; [**`ha/trio`**](/docs/conf/trio/) for three-node HA; [**`ha/full`**](/docs/conf/full/) for more complete HA; [**`ha/safe`**](/docs/conf/safe/) when consistency matters; and [**`ha/dual`**](/docs/conf/dual/) or [**`ha/simu`**](/docs/conf/simu/) when resources are tight.


----------------

## Naming And Configuration

First distinguish three names: cluster name, database name, and service name.

`pg_cluster` is the top-level name Pigsty uses to manage a PostgreSQL cluster. It affects instance names, service names, backup stanzas, monitoring labels, and many file paths. It is not a display name that can be casually changed. See [**PGSQL Cluster Model**](/docs/concept/model/pgsql/) for naming rules, [**Cluster Instance Config**](/docs/pgsql/config/cluster/) for instance roles, and [**Service/Access**](/docs/pgsql/service/) for service names and connection entrypoints.

Database names and user names are logical objects inside PostgreSQL. See [**Database Config**](/docs/pgsql/config/db/) and [**Database Management**](/docs/pgsql/admin/db/) for databases; [**User/Role Config**](/docs/pgsql/config/user/) and [**User Management**](/docs/pgsql/admin/user/) for users and roles; and [**Access Control**](/docs/pgsql/security/) plus [**ACL Config**](/docs/pgsql/config/acl/) for the privilege model.

In practice, use lowercase letters, digits, and hyphens for cluster names, such as `pg-meta`, `pg-test`, and `pg-user-prod`. Use `snake_case` for database object names. Avoid non-ASCII names, spaces, mixed case, and SQL keywords. For more background, read [**Database Cluster Management Concepts and Entity Naming Rules**](https://vonng.com/pg/entity-and-naming/) and [**PostgreSQL Convention (2024 Edition)**](https://vonng.com/pg/pg-convention/).

Follow one habit for config changes: edit `pigsty.yml` first, then run the corresponding playbook. See [**Declarative Configuration**](/docs/concept/iac/) and [**Configuration Guide**](/docs/setup/config/) for config structure; [**Configuration Parameters**](/docs/concept/iac/parameter/) and [**Parameter List**](/docs/ref/param/) for parameter meanings; [**Playbooks**](/docs/setup/playbook/) and [**Playbook List**](/docs/ref/playbook/) for playbook entrypoints.


----------------

## Daily Operations

The main entrypoint for database operations is [**PGSQL Administration**](/docs/pgsql/admin/).

| Operation | Documentation |
|:---|:---|
| Create, scale, shrink, retire, and clone clusters | [**Cluster Management**](/docs/pgsql/admin/cluster/) |
| Create, modify, and remove business users | [**User Management**](/docs/pgsql/admin/user/) |
| Create, modify, drop, and rebuild databases | [**Database Management**](/docs/pgsql/admin/db/) |
| Refresh and troubleshoot HBA | [**HBA Management**](/docs/pgsql/admin/hba/) |
| View HA status, switchover, restart, and reinitialize replicas | [**Patroni Management**](/docs/pgsql/admin/patroni/) |
| Manage connection pools | [**Pgbouncer Management**](/docs/pgsql/admin/pgbouncer/) |
| Start and stop PostgreSQL, Patroni, Pgbouncer, and Exporter | [**Component Management**](/docs/pgsql/admin/component/) |
| Manage backups, checks, cleanup, and restore | [**pgBackRest Management**](/docs/pgsql/admin/pgbackrest/) |
| Configure scheduled backup, vacuum, analyze, and other tasks | [**Crontab**](/docs/pgsql/admin/crontab/) |
| Upgrade versions and extensions | [**Version Upgrade**](/docs/pgsql/admin/upgrade/), [**Extension Management**](/docs/pgsql/admin/ext/) |

For background reading, see [**Routine PostgreSQL Maintenance**](https://vonng.com/pg/routine-maintain/).


----------------

## High Availability Drills

To understand HA, start with [**PostgreSQL HA**](/docs/concept/ha/). Do not only ask "can it fail over automatically"; also read [**RPO**](/docs/concept/ha/rpo/) and [**RTO**](/docs/concept/ha/rto/): the former is the maximum acceptable data loss, and the latter is the time to restore service.

For access-layer behavior, see [**HA Service Access**](/docs/concept/ha/svc/) and [**Service/Access**](/docs/pgsql/service/). For component relationships, see [**PGSQL Architecture**](/docs/concept/arch/pgsql/). For Etcd's role, see [**ETCD Config**](/docs/etcd/config/).

Drill entrypoints are concentrated in three places: [**Patroni Management**](/docs/pgsql/admin/patroni/) for planned switchover; [**Component Management**](/docs/pgsql/admin/component/) for service status; and [**3-of-2 Failure Drill**](/docs/pgsql/tutorial/drill/) for extreme failures. If you need VIP, read [**Configure PG VIP**](/docs/pgsql/tutorial/pg-vip/).

Background article: [**How Should PostgreSQL High Availability Be Done?**](https://vonng.com/pg/pg-ha-sota/).


----------------

## Backup And Recovery

For PITR, read [**Point-in-Time Recovery**](/docs/concept/pitr/) first, then [**Mechanism**](/docs/concept/pitr/mechanism/), [**Architecture**](/docs/concept/pitr/arch/), [**Tradeoffs**](/docs/concept/pitr/tradeoff/), and [**Scenarios**](/docs/concept/pitr/scenarios/).

For configuration and maintenance, see [**Backup & Restore**](/docs/pgsql/backup/), [**Backup Policy**](/docs/pgsql/backup/policy/), [**Backup Mechanism**](/docs/pgsql/backup/mechanism/), [**Backup Repository**](/docs/pgsql/backup/repository/), and [**Backup Admin Commands**](/docs/pgsql/backup/admin/).

When actually restoring, use [**Restore Operations**](/docs/pgsql/backup/restore/) for the automatic path and [**Manual Recovery**](/docs/pgsql/tutorial/pitr/) for drills. For dropped data, tables, or databases, see [**Drop Recovery**](/docs/pgsql/tutorial/drop/). If you do not want to touch the original cluster directly, start with [**Clone Database Cluster**](/docs/pgsql/backup/cluster/) or [**Fork Instance**](/docs/pgsql/tutorial/pg-fork/).

Before recovery, confirm at least four things: the target timestamp or restore point is clear; backup and WAL are continuous; business writes have stopped; and you know whether you are restoring in place or first pulling up a new validation cluster.

Background articles: [**Overview of Backup and Recovery Methods**](https://vonng.com/pg/backup-overview/) and [**PgBackRest2 Documentation**](https://vonng.com/pg/pgbackrest/).


----------------

## Monitoring And Troubleshooting

For monitoring overview, see [**Monitoring System**](/docs/concept/monitor/). For entrypoints and domains, see [**Web UI**](/docs/setup/webui/). For database metrics, logs, and alerts, see [**PGSQL Monitoring**](/docs/pgsql/monitor/) and [**PGSQL Dashboards**](/docs/pgsql/dashboard/).

Monitoring for non-database modules is documented separately: [**INFRA Monitoring**](/docs/infra/monitor/), [**NODE Monitoring**](/docs/node/monitor/), [**ETCD Monitoring**](/docs/etcd/monitor/), and [**MINIO Monitoring**](/docs/minio/monitor/).

Start troubleshooting with [**PGSQL FAQ**](/docs/pgsql/faq/), then [**Troubleshooting**](/docs/pgsql/tutorial/failure/). For connection authentication issues, see [**HBA Management**](/docs/pgsql/admin/hba/); for HA status issues, see [**Patroni Management**](/docs/pgsql/admin/patroni/); for process state issues, see [**Component Management**](/docs/pgsql/admin/component/).

General PostgreSQL troubleshooting articles: [**Routine PG Server Logging Configuration**](https://vonng.com/pg/logging/), [**Macro Query Optimization with `pg_stat_statements`**](https://vonng.com/pg/pgss/), [**Incident File: PostgreSQL Transaction ID Wraparound**](https://vonng.com/pg/xid-wrap-around/), [**Finding Fake Indexes**](https://vonng.com/pg/find-dummy-index/), and [**Table Bloat Cleanup**](https://vonng.com/pg/bloat/).


----------------

## Scaling, Upgrades, And Migration

For capacity and topology design, see [**Planning**](/docs/deploy/planning/), [**Preparation**](/docs/deploy/prepare/), and [**PGSQL Cluster Model**](/docs/concept/model/pgsql/).

When scaling by module, see [**Cluster Management**](/docs/pgsql/admin/cluster/) for PGSQL; [**NODE Management**](/docs/node/admin/) for NODE; [**ETCD Management**](/docs/etcd/admin/) for ETCD; [**MINIO Management**](/docs/minio/admin/) for MINIO; [**INFRA Administration**](/docs/infra/admin/) for INFRA; and [**REDIS Management**](/docs/redis/admin/) for REDIS.

For PostgreSQL upgrades, see [**Version Upgrade**](/docs/pgsql/admin/upgrade/) and [**Kernel Versions**](/docs/pgsql/config/kernel/). For extensions, see [**Extensions**](/docs/pgsql/ext/), [**Extension Management**](/docs/pgsql/admin/ext/), [**Extension Repository**](/docs/pgsql/ext/repo/), and [**Package Aliases**](/docs/pgsql/config/alias/).

For migrating existing PostgreSQL databases, see [**Data Migration**](/docs/pgsql/migration/) and [**PGSQL Migration Playbook**](/docs/pgsql/playbook/#pgsql-migrationyml). For low-downtime migration ideas, see [**Migration without Downtime**](https://vonng.com/pg/migration-without-downtime/).

If you need horizontal scaling, then read [**Citus Cluster Deployment**](/docs/pgsql/tutorial/citus/) and [**Citus Kernel Branch**](/docs/pgsql/kernel/citus/).


----------------

## Security And Entrypoints

For deployment security, start with [**Security Considerations**](/docs/deploy/security/). For the security model, see [**Security Compliance**](/docs/concept/sec/). For PostgreSQL privileges, see [**Access Control**](/docs/pgsql/security/) and [**ACL Config**](/docs/pgsql/config/acl/); for authentication rules, see [**HBA Config**](/docs/pgsql/config/hba/) and [**HBA Management**](/docs/pgsql/admin/hba/).

For certificates, see [**CA & Certificates**](/docs/infra/admin/cert/). For domains, Nginx, and web entrypoints, see [**Domain Management**](/docs/infra/admin/domain/) and [**Nginx Management**](/docs/infra/admin/portal/).

For production, at minimum change default passwords, tighten HBA, clearly separate business users from admin users, and confirm backup repository retention, encryption, and access permissions.


----------------

## Application Access

Before applications connect to databases, read [**Service/Access**](/docs/pgsql/service/) and [**PostgreSQL Quick Start**](/docs/setup/pgsql/). For connection pool behavior, see [**Pgbouncer Management**](/docs/pgsql/admin/pgbouncer/).

When using Pigsty-managed databases and deploying stateless applications, see [**Application Templates**](/docs/app/) and [**Docker Module**](/docs/docker/usage/).


----------------

## Common Mistakes

| Mistake | Where To Read |
|:---|:---|
| Treating `pg_cluster` as a casually changeable display name | [**PGSQL Cluster Model**](/docs/concept/model/pgsql/) |
| Confusing database names, cluster names, and service names | [**Naming And Configuration**](#naming-and-configuration), [**Service/Access**](/docs/pgsql/service/) |
| Deploying only the primary without restore drills | [**Manual Recovery**](/docs/pgsql/tutorial/pitr/), [**Restore Operations**](/docs/pgsql/backup/restore/) |
| Assuming HA always means zero data loss | [**RPO**](/docs/concept/ha/rpo/), [**RTO**](/docs/concept/ha/rto/) |
| Doing the first failover drill directly in production | [**Sandbox**](/docs/deploy/sandbox/), [**3-of-2 Failure Drill**](/docs/pgsql/tutorial/drill/) |
| Ignoring Etcd | [**ETCD Module**](/docs/etcd/), [**ETCD FAQ**](/docs/etcd/faq/) |
| Checking backup success without verifying restore | [**Backup & Restore**](/docs/pgsql/backup/), [**Clone Database Cluster**](/docs/pgsql/backup/cluster/) |
| Changing HBA, certificates, or service entrypoints without a rollback path | [**Security Compliance**](/docs/concept/sec/), [**HBA Management**](/docs/pgsql/admin/hba/), [**Nginx Management**](/docs/infra/admin/portal/) |


----------------

## Further Reading

| Topic | Article |
|:---|:---|
| Naming and entity model | [**Database Cluster Management Concepts and Entity Naming Rules**](https://vonng.com/pg/entity-and-naming/) |
| PostgreSQL conventions | [**PostgreSQL Convention (2024 Edition)**](https://vonng.com/pg/pg-convention/) |
| High availability | [**How Should PostgreSQL High Availability Be Done?**](https://vonng.com/pg/pg-ha-sota/) |
| Backup and recovery | [**Overview of Backup and Recovery Methods**](https://vonng.com/pg/backup-overview/), [**PgBackRest2 Documentation**](https://vonng.com/pg/pgbackrest/) |
| Routine maintenance | [**Routine PostgreSQL Maintenance**](https://vonng.com/pg/routine-maintain/) |
| Connection pooling | [**Pgbouncer Quick Start**](https://vonng.com/pg/pgbouncer-usage/) |
| Query and workload | [**Macro Query Optimization with `pg_stat_statements`**](https://vonng.com/pg/pgss/), [**PostgreSQL KPIs**](https://vonng.com/pg/pg-load/) |
| Logging and incidents | [**Routine PG Server Logging Configuration**](https://vonng.com/pg/logging/), [**Incident File: PostgreSQL Transaction ID Wraparound**](https://vonng.com/pg/xid-wrap-around/) |
| Ecosystem and extensions | [**PostgreSQL Is Eating the Database World**](https://vonng.com/pg/pg-eat-db-world/), [**Pig: Package Manager for PostgreSQL Kernels and Extensions**](https://vonng.com/pg/pig/) |
