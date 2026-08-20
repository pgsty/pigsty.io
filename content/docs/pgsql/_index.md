---
title: "Module: PGSQL"
weight: 1000
description: Declare, deploy, expose, observe, back up, and manage PostgreSQL clusters with Pigsty v4.5.
icon: fab fa-postgresql
module: [PGSQL]
categories: [Reference]
feedback: false
---

PGSQL is Pigsty's core module. Ansible inventory declares PostgreSQL clusters; Patroni and etcd provide HA orchestration; pgBackRest provides backup and PITR; HAProxy, VIP, DNS, PgBouncer, and the observability stack expose and monitor database services.

This page follows the Pigsty v4.5.0 source layout. Exact defaults live only in the [parameter reference](/docs/pgsql/param/) so the module landing page does not become a second stale parameter snapshot.


----------------

## Modeling and Configuration

- [Cluster model](/docs/concept/model/pgsql/): clusters, instances, identity, and roles.
- [Architecture](/docs/concept/arch/pgsql/): relationships among Patroni, etcd, service access, and observability.
- [Cluster configuration](/docs/pgsql/config/): primary, replica, offline instance, synchronous commit, standby cluster, delayed cluster, and Citus.
- [Kernel](/docs/pgsql/config/kernel/): PostgreSQL major version, distribution, and package selection.
- [Users](/docs/pgsql/config/user/), [databases](/docs/pgsql/config/db/), [HBA](/docs/pgsql/config/hba/), and [ACL](/docs/pgsql/config/acl/): business objects and access control.
- [Service access](/docs/pgsql/service/): read-write/read-only services, HAProxy, VIP, DNS, and pooling.
- [Extension catalog](/ext/list/): the {{< param pgext_count >}} currently packaged extensions and their platform coverage.


----------------

## Deployment and Administration

| Task | Entry point |
|:-----|:------------|
| Initialize a cluster or add an instance | [Cluster administration](/docs/pgsql/admin/cluster/) · [`pgsql.yml`](/docs/pgsql/playbook/#pgsqlyml) |
| Create or change users | [User administration](/docs/pgsql/admin/user/) · [`pgsql-user.yml`](/docs/pgsql/playbook/#pgsql-useryml) |
| Create or change databases | [Database administration](/docs/pgsql/admin/db/) · [`pgsql-db.yml`](/docs/pgsql/playbook/#pgsql-dbyml) |
| Change HBA or parameters | [HBA administration](/docs/pgsql/admin/hba/) · [Component administration](/docs/pgsql/admin/component/) |
| Patroni switchovers, maintenance, and incidents | [Patroni administration](/docs/pgsql/admin/patroni/) |
| Install, create, update, or remove extensions | [Extension administration](/docs/pgsql/admin/ext/) |
| Monitor an external instance | [`pgsql-monitor.yml`](/docs/pgsql/playbook/#pgsql-monitoryml) |
| Prepare a migration | [Migration](/docs/pgsql/migration/) · [`pgsql-migration.yml`](/docs/pgsql/playbook/#pgsql-migrationyml) |
| Remove an instance or cluster | [Safe removal workflow](/docs/pgsql/admin/cluster/#remove-cluster) · [`pgsql-rm.yml`](/docs/pgsql/playbook/#pgsql-rmyml) |
{.full-width}

Real runs of `pgsql.yml`, `pgsql-user.yml`, `pgsql-db.yml`, and related playbooks change the target environment; `pgsql-rm.yml` can delete data and backups by default. Resolve the exact cluster/node and recent backup first. Removal also requires the operator to type and confirm the exact target.


----------------

## Backup and Recovery

- [Backup and recovery overview](/docs/pgsql/backup/): capabilities, boundaries, and entry points.
- [Mechanism](/docs/pgsql/backup/mechanism/) and [policy](/docs/pgsql/backup/policy/): base backups, WAL, recovery window, and retention.
- [Repository](/docs/pgsql/backup/repository/): local, S3/Silo, and other pgBackRest repositories.
- [Administration](/docs/pgsql/backup/admin/): status, checks, scheduling, and expiration.
- [Restore operations](/docs/pgsql/backup/restore/): cluster-level `pgsql-pitr.yml`, node-local `pig pitr`, and low-level `pig pb restore`.
- [Manual drill](/docs/pgsql/tutorial/pitr/): validate PITR in explicit stages inside a disposable sandbox.

Restore is destructive. Production recovery requires an independent recent tested backup and separate gates for shutdown, restore, data validation, timeline promotion, DCS rebuild, replica rebuild, and a fresh full backup.


----------------

## Monitoring

The current source contains 29 PostgreSQL/PGCAT dashboards under `files/grafana/pgsql`, covering fleet, cluster, instance, database, table, query, session, transaction, replication, service, PgBouncer, PITR, and alerts.

- [Monitoring and dashboards](/docs/pgsql/monitor/)
- [Metric reference](/docs/pgsql/metric/)
- [Troubleshooting](/docs/pgsql/faq/)


----------------

## Parameter Groups

The [PGSQL parameter reference](/docs/pgsql/param/) is the single documentation source for v4.5.0 defaults and semantics:

- `PG_ID`: cluster and instance identity.
- `PG_BUSINESS`: users, databases, services, and other business objects.
- `PG_INSTALL`: kernel, packages, and extensions.
- `PG_BOOTSTRAP`: Patroni bootstrap, replication, and database initialization.
- `PG_PROVISION`: in-database objects and privileges.
- `PG_BACKUP`: pgBackRest and backup repositories.
- `PG_ACCESS`: PgBouncer, services, VIP, and DNS.
- `PG_MONITOR`: exporters, monitoring registration, and metrics.
- `PG_REMOVE`: removal safeguards and cleanup scope.


----------------

## Further Reading

- [Performance templates](/docs/pgsql/template/)
- [PostgreSQL kernel variants](/docs/pgsql/kernel/)
- [Extension usage](/docs/pgsql/ext/)
- [Operations tutorials](/docs/pgsql/tutorial/)
- [Playbook reference](/docs/pgsql/playbook/)
