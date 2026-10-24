# Module: PGSQL

> Declare, deploy, expose, observe, back up, and manage PostgreSQL clusters with Pigsty v4.5.

---

LLMS index: [llms.txt](/llms.txt)

---

PGSQL is the core Pigsty module.
An Ansible inventory declares PostgreSQL clusters.
Patroni and etcd manage high availability.
pgBackRest provides backup and PITR.
HAProxy, VIP, DNS, PgBouncer, and the observability stack expose and monitor database services.

This page follows the Pigsty v4.5.0 source layout.
For exact defaults, use the [parameter reference](/docs/pgsql/param/).
Keeping defaults in one reference prevents conflicting or outdated copies.


----------------

## Modeling and Configuration

- [Cluster model](/docs/concept/model/pgsql/): clusters, instances, identity, and roles.
- [Architecture](/docs/concept/arch/pgsql/): relationships among Patroni, etcd, service access, and observability.
- [Cluster configuration](/docs/pgsql/config/): primary, replica, offline instance, synchronous commit, standby cluster, delayed cluster, and Citus.
- [Kernel](/docs/pgsql/config/kernel/): PostgreSQL major version, distribution, and package selection.
- [Users](/docs/pgsql/config/user/), [databases](/docs/pgsql/config/db/), [HBA](/docs/pgsql/config/hba/), and [ACL](/docs/pgsql/config/acl/): business objects and access control.
- [Service access](/docs/pgsql/service/): read-write/read-only services, HAProxy, VIP, DNS, and pooling.
- [Extension catalog](/ext/list/): the 600 currently packaged extensions and their platform coverage.


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

`pgsql.yml`, `pgsql-user.yml`, `pgsql-db.yml`, and related playbooks change the target environment when run.
By default, `pgsql-rm.yml` can delete data and backups.
First identify the exact cluster or node and verify a recent backup.
For removal, the operator must also type and confirm the exact target.


----------------

## Backup and Recovery

- [Backup and recovery overview](/docs/pgsql/backup/): capabilities, boundaries, and entry points.
- [Mechanism](/docs/pgsql/backup/mechanism/) and [policy](/docs/pgsql/backup/policy/): base backups, WAL, recovery window, and retention.
- [Repository](/docs/pgsql/backup/repository/): local, S3/Silo, and other pgBackRest repositories.
- [Administration](/docs/pgsql/backup/admin/): status, checks, scheduling, and expiration.
- [Restore operations](/docs/pgsql/backup/restore/): cluster-level `pgsql-pitr.yml`, node-local `pig pitr`, and low-level `pig pb restore`.
- [Manual drill](/docs/pgsql/tutorial/pitr/): validate PITR in explicit stages inside a disposable sandbox.

Restore is destructive.
Production recovery requires an independent, recent backup that has passed a restore test.
Confirm each stage separately: shutdown, restore, data validation, timeline promotion, DCS rebuild, replica rebuild, and a new full backup.


----------------

## Monitoring

The current source contains 29 PostgreSQL and PGCAT dashboards in `files/grafana/pgsql`.
They cover fleets, clusters, instances, databases, tables, queries, sessions, transactions, replication, services, PgBouncer, PITR, and alerts.

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

---

Section pages:

- [Core Concepts](/docs/pgsql/_div_concept/)
- [Configuration](/docs/pgsql/config/): Choose the appropriate instance and cluster types based on your requirements to configure PostgreSQL database clusters that meet your needs.
- [Service/Access](/docs/pgsql/service/): Split read and write operations, route traffic correctly, and reliably deliver PostgreSQL cluster capabilities.
- [PostgreSQL Security](/docs/pgsql/security/): Entry points for PostgreSQL authentication, access control, encrypted communication, data protection, and secure operations.
- [Administration](/docs/pgsql/_div_admin/)
- [Administration](/docs/pgsql/admin/): Standard Operating Procedures (SOP) for database administration tasks
- [Backup & Restore](/docs/pgsql/backup/): Configure repositories and policies, manage pgBackRest backups, and perform point-in-time recovery safely.
- [Data Migration](/docs/pgsql/migration/): How to migrate an existing PostgreSQL cluster to a new Pigsty-managed PostgreSQL cluster with minimal downtime?
- [Tutorials](/docs/pgsql/tutorial/): Step-by-step guides for common PostgreSQL tasks and scenarios.
- [Reference](/docs/pgsql/_div_reference/)
- [Monitoring](/docs/pgsql/monitor/): Overview of Pigsty's monitoring system architecture and how to monitor existing PostgreSQL instances
- [Dashboard](/docs/pgsql/dashboard/): Pigsty provides Grafana monitoring dashboards for PostgreSQL
- [Metrics](/docs/pgsql/metric/): Complete monitoring metrics reference for the Pigsty PGSQL module
- [Parameters](/docs/pgsql/param/): Customize PostgreSQL clusters with 120 parameters in the PGSQL module
- [Playbook](/docs/pgsql/playbook/): How to manage PostgreSQL clusters with Ansible playbooks
- [Extensions](/docs/pgsql/ext/): Use PostgreSQL extensions with Pigsty
- [Param Templates](/docs/pgsql/template/): Use Pigsty's built-in Patroni config templates or customize your own
- [PG Kernels](/docs/pgsql/kernel/): How to use PostgreSQL kernel forks in Pigsty, such as Citus, Babelfish, IvorySQL, PolarDB, and more.
- [FAQ](/docs/pgsql/faq/): Frequently asked questions about PostgreSQL
- [Misc](/docs/pgsql/misc/): Miscellaneous Topics
