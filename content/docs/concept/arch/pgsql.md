---
title: PGSQL Arch
weight: 203
description: PostgreSQL module component interactions and data flow.
icon: fas fa-database
module: [PGSQL]
categories: [Concept]
---

The PGSQL module organizes PostgreSQL in production as **clusters**—**logical entities** composed of a group of database **instances** associated by **primary-replica** relationships.


--------

## Overview

The [**PGSQL module**](/docs/pgsql) includes the following components, working together to provide production-grade PostgreSQL HA cluster services:

| Component                                                 | Type      | Description                                                             |
|:----------------------------------------------------------|-----------|:------------------------------------------------------------------------|
| [**`postgres`**](#postgresql)                             | Database  | The world's most advanced open-source relational database, PGSQL core   |
| [**`patroni`**](#patroni)                                 | HA        | Manages PostgreSQL, coordinates failover, leader election, config changes |
| [**`pgbouncer`**](#pgbouncer)                             | Pool      | Lightweight connection pooling middleware, reduces overhead, adds flexibility |
| [**`pgbackrest`**](#pgbackrest)                           | Backup    | Full/incremental backup and WAL archiving, supports local and object storage |
| [**`pg_exporter`**](#pg_exporter)                         | Metrics   | Exports PostgreSQL monitoring metrics for Prometheus scraping          |
| [**`pgbouncer_exporter`**](#pgbouncer_exporter)           | Metrics   | Exports Pgbouncer connection pool metrics                               |
| [**`pgbackrest_exporter`**](#pgbackrest_exporter)         | Metrics   | Exports backup status metrics                                           |
| [**`vip-manager`**](#vip-manager)                         | VIP       | Binds L2 VIP to current primary node for transparent failover [Optional] |
{.full-width}

The [**`vip-manager`**](#vip-manager) is an on-demand component. Additionally, PGSQL uses components from other modules:

| Component                   | Module                       | Type     | Description                                                        |
|-----------------------------|:-----------------------------|----------|:-------------------------------------------------------------------|
| [**`haproxy`**](#haproxy)   | [**NODE**](/docs/node)       | LB       | Exposes service ports, routes traffic to primary or replicas       |
| [**`vector`**](#vector)     | [**NODE**](/docs/node)       | Logging  | Collects PostgreSQL, [Patroni](#patroni), [Pgbouncer](#pgbouncer) logs and ships to center  |
| [**`etcd`**](#etcd)         | [**ETCD**](/docs/etcd)       | DCS      | Distributed consistent store for cluster metadata and leader info  |
{.full-width}

By analogy, the [PostgreSQL](#postgresql) database kernel is the CPU, while the PGSQL module packages it as a complete computer.
[Patroni](#patroni) and [Etcd](#etcd) form the [HA subsystem](#ha-subsystem), [pgBackRest](#pgbackrest) and MinIO form the [backup subsystem](#backup-subsystem).
[HAProxy](#haproxy), [Pgbouncer](#pgbouncer), and [vip-manager](#vip-manager) form the [access subsystem](#access-subsystem).
Various Exporters and [Vector](#vector) build the [observability subsystem](#observability-subsystem);
finally, you can swap different [**kernel CPUs**](/docs/pgsql/kernel) and [**extension cards**](/docs/pgsql/ext).

![](/img/pigsty/motherboard.gif)


| Subsystem                             | Components                               | Function                              |
|:--------------------------------------|:-----------------------------------------|:--------------------------------------|
| [**HA Subsystem**](#ha-subsystem)     | [Patroni](#patroni) + [etcd](#etcd)      | Failure detection, auto-failover, config management |
| [**Access Subsystem**](#access-subsystem) | [HAProxy](#haproxy) + [Pgbouncer](#pgbouncer) + [vip-manager](#vip-manager)    | Service exposure, load balancing, pooling, VIP |
| [**Backup Subsystem**](#backup-subsystem) | [pgBackRest](#pgbackrest) (+ MinIO)  | Full/incremental backup, WAL archiving, PITR |
| [**Observability Subsystem**](#observability-subsystem) | [pg_exporter](#pg_exporter) / [pgbouncer_exporter](#pgbouncer_exporter) / [pgbackrest_exporter](#pgbackrest_exporter) + [Vector](#vector) | Metrics collection, log aggregation |
{.full-width}


--------

## Component Interaction

[![pigsty-arch](/img/pigsty/arch.png)](/docs/infra/)

- Cluster DNS is resolved by [**DNSMASQ**](/docs/concept/arch/infra#dnsmasq) on infra nodes
- Cluster VIP is managed by [**vip-manager**](#vip-manager), which binds [`pg_vip_address`](/docs/pgsql/param#pg_vip_address) to the cluster primary node.
    - [vip-manager](#vip-manager) gets cluster leader info written by [patroni](#patroni) from the [etcd](#etcd) cluster
- Cluster services are exposed by [**HAProxy**](#haproxy) on nodes, different services distinguished by node ports (543x).
    - HAProxy port 9101: Monitoring metrics & statistics & admin page
    - HAProxy port 5433: Routes to primary [pgbouncer](#pgbouncer): [read-write service](/docs/pgsql/service/#primary-service)
    - HAProxy port 5434: Routes to replica [pgbouncer](#pgbouncer): [read-only service](/docs/pgsql/service/#replica-service)
    - HAProxy port 5436: Routes to primary [postgres](#postgresql): [default service](/docs/pgsql/service/#default-service)
    - HAProxy port 5438: Routes to offline [postgres](#postgresql): [offline service](/docs/pgsql/service/#offline-service)
    - [HAProxy](#haproxy) routes traffic based on health check info from [patroni](#patroni).
- [**Pgbouncer**](#pgbouncer) is connection pooling middleware, listening on port 6432 by default, buffering connections, exposing additional metrics, and providing extra flexibility.
    - [Pgbouncer](#pgbouncer) is stateless and deployed 1:1 with [Postgres](#postgresql) via local Unix socket.
    - Production traffic (primary/replica) goes through [pgbouncer](#pgbouncer) by default (can specify bypass via [`pg_default_service_dest`](/docs/pgsql/param#pg_default_service_dest))
    - Default/offline services always bypass [pgbouncer](#pgbouncer) and connect directly to target [Postgres](#postgresql).
- [**PostgreSQL**](#postgresql) listens on port 5432, providing relational database services
    - Installing PGSQL module on multiple nodes with the same cluster name automatically forms an HA cluster via streaming replication
    - [PostgreSQL](#postgresql) process is managed by [patroni](#patroni) by default.
- [**Patroni**](#patroni) listens on port 8008 by default, supervising [PostgreSQL](#postgresql) server processes
    - [Patroni](#patroni) starts [Postgres](#postgresql) server as child process
    - [Patroni](#patroni) uses [etcd](#etcd) as DCS: stores config, failure detection, and leader election.
    - [Patroni](#patroni) provides Postgres info (e.g., primary/replica) via health checks, [HAProxy](#haproxy) uses this to distribute traffic
- [**pg_exporter**](#pg_exporter) exposes [postgres](#postgresql) monitoring metrics on port 9630
- [**pgbouncer_exporter**](#pgbouncer_exporter) exposes [pgbouncer](#pgbouncer) metrics on port 9631
- [**pgBackRest**](#pgbackrest) uses local backup repository by default (`pgbackrest_method` = `local`)
    - If using `local` (default), [pgBackRest](#pgbackrest) creates local repository under [`pg_fs_bkup`](/docs/pgsql/param#pg_fs_bkup) on primary node
    - If using `minio`, [pgBackRest](#pgbackrest) creates backup repository on dedicated MinIO cluster
- [**Vector**](#vector) collects Postgres-related logs (postgres, pgbouncer, patroni, pgbackrest)
    - [vector](#vector) listens on port 9598, also exposes its own metrics to VictoriaMetrics on infra nodes
    - [vector](#vector) sends logs to VictoriaLogs on infra nodes


--------

## HA Subsystem

The [**HA**](/docs/concept/ha) subsystem consists of [**Patroni**](#patroni) and [**etcd**](#etcd), responsible for PostgreSQL cluster failure detection, automatic failover, and configuration management.

**How it works**: [Patroni](#patroni) runs on each node, managing the local [PostgreSQL](#postgresql) process and writing cluster state (leader, members, config) to [etcd](#etcd).
When the primary fails, [Patroni](#patroni) coordinates election via [etcd](#etcd), promoting the healthiest replica to new primary. The entire process is automatic, with RTO typically under 30 seconds.

**Key Interactions**:
- **[PostgreSQL](#postgresql)**: Starts, stops, reloads PG as parent process, controls its lifecycle
- **[etcd](#etcd)**: External dependency, writes/watches leader key for distributed consensus and failure detection
- **[HAProxy](#haproxy)**: Provides health checks via REST API (`:8008`), reporting instance role
- **[vip-manager](#vip-manager)**: Watches leader key in [etcd](#etcd), auto-migrates VIP

For more information, see: [**High Availability**](/docs/concept/ha/) and [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#pg_bootstrap)


--------

## Access Subsystem

The access subsystem consists of [**HAProxy**](#haproxy), [**Pgbouncer**](#pgbouncer), and [**vip-manager**](#vip-manager), responsible for service exposure, traffic routing, and connection pooling.

There are multiple access methods. A typical traffic path is: `Client → DNS/VIP → HAProxy (543x) → Pgbouncer (6432) → PostgreSQL (5432)`

| Layer        | Component                     | Port   | Role                              |
|:-------------|:------------------------------|:-------|:----------------------------------|
| L2 VIP       | [vip-manager](#vip-manager)   | -      | Binds L2 VIP to primary (optional) |
| L4 Load Bal  | [HAProxy](#haproxy)           | 543x   | Service exposure, load balancing, health checks |
| L7 Pool      | [Pgbouncer](#pgbouncer)       | 6432   | Connection reuse, session management, transaction pooling |
{.full-width}

**Service Ports**:
- `5433` primary: Read-write service, routes to primary [Pgbouncer](#pgbouncer)
- `5434` replica: Read-only service, routes to replica [Pgbouncer](#pgbouncer)
- `5436` default: Default service, direct to primary (bypasses pool)
- `5438` offline: Offline service, direct to offline replica (ETL/analytics)

**Key Features**:
- [HAProxy](#haproxy) uses [Patroni](#patroni) REST API to determine instance role, auto-routes traffic
- [Pgbouncer](#pgbouncer) uses transaction-level pooling, absorbs connection spikes, reduces PG connection overhead
- [vip-manager](#vip-manager) watches [etcd](#etcd) leader key, auto-migrates VIP during failover

For more information, see: [**Service Access**](/docs/pgsql/service/) and [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


--------

## Backup Subsystem

The backup subsystem consists of [**pgBackRest**](#pgbackrest) (optionally with **MinIO** as remote repository), responsible for data backup and point-in-time recovery ([**PITR**](/docs/concept/pitr)).

**Backup Types**:
- **Full backup**: Complete database copy
- **Incremental/differential backup**: Only backs up changed data blocks
- **WAL archiving**: Continuous transaction log archiving, enables any point-in-time recovery

**Storage Backends**:
- `local` (default): Local disk, backups stored at [`pg_fs_bkup`](/docs/pgsql/param#pg_fs_bkup) mount point
- `minio`: S3-compatible object storage, supports centralized backup management and off-site DR

**Key Interactions**:
- **[pgBackRest](#pgbackrest) → [PostgreSQL](#postgresql)**: Executes backup commands, manages WAL archiving
- **[pgBackRest](#pgbackrest) → [Patroni](#patroni)**: Recovery can bootstrap replicas as new primary or standby
- **[pgbackrest_exporter](#pgbackrest_exporter) → Prometheus**: Exports backup status metrics, monitors backup health

For more information, see: [**PITR**](/docs/concept/pitr/), [**Backup & Recovery**](/docs/pgsql/backup/), and [**Config: PGSQL - PG_BACKUP**](/docs/pgsql/param/#pg_backup)


--------

## Observability Subsystem

The observability subsystem consists of three **Exporters** and [**Vector**](#vector), responsible for metrics collection and log aggregation.

| Component                                         | Port   | Target                                                                        | Key Metrics                        |
|:--------------------------------------------------|:-------|:------------------------------------------------------------------------------|:-----------------------------------|
| [pg_exporter](#pg_exporter)                       | `9630` | [PostgreSQL](#postgresql)                                                     | Sessions, transactions, replication lag, buffer hits |
| [pgbouncer_exporter](#pgbouncer_exporter)         | `9631` | [Pgbouncer](#pgbouncer)                                                       | Pool utilization, wait queue, hit rate |
| [pgbackrest_exporter](#pgbackrest_exporter)       | `9854` | [pgBackRest](#pgbackrest)                                                     | Latest backup time, size, type     |
| [vector](#vector)                                 | `9598` | [postgres](#postgresql)/[patroni](#patroni)/[pgbouncer](#pgbouncer) logs      | Structured log stream              |

**Data Flow**:
- **Metrics**: Exporter → VictoriaMetrics (INFRA) → Grafana dashboards
- **Logs**: [Vector](#vector) → VictoriaLogs (INFRA) → Grafana log queries

[pg_exporter](#pg_exporter) / [pgbouncer_exporter](#pgbouncer_exporter) connect to target services via local Unix socket, decoupled from HA topology. In [**slim install**](/docs/setup/slim) mode, these components can be disabled.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## PostgreSQL

[**PostgreSQL**](https://www.postgresql.org/) is the PGSQL module core, listening on port `5432` by default for relational database services, deployed 1:1 with [**nodes**](/docs/node).

Pigsty currently supports PostgreSQL 14-18 (lifecycle major versions), installed via binary packages from the [**PGDG official repo**](/docs/repo/pgdg/).
Pigsty also allows you to use other [**PG kernel forks**](/docs/pgsql/kernel) to replace the default PostgreSQL kernel,
and install up to [**440**](/docs/pgsql/ext) extension plugins on top of the PG kernel.

**PostgreSQL** processes are managed by default by the [**HA**](/docs/concept/ha) agent—[**Patroni**](#patroni).
When a cluster has only one node, that instance is the primary; when the cluster has multiple nodes, other instances automatically join as replicas:
through physical replication, syncing data changes from the primary in real-time. Replicas can handle read-only requests and automatically take over when the primary fails.

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha)

You can access PostgreSQL directly, or through [HAProxy](#haproxy) and [Pgbouncer](#pgbouncer) connection pool.

For more information, see: [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#pg_bootstrap)


--------

## Patroni

[**Patroni**](https://patroni.readthedocs.io/) is the PostgreSQL HA control component, listening on port `8008` by default.

**Patroni** takes over [**PostgreSQL**](#postgresql) startup, shutdown, configuration, and health status, writing leader and member information to [**etcd**](#etcd).
It handles automatic failover, maintains replication factor, coordinates parameter changes, and provides a REST API for [**HAProxy**](#haproxy), monitoring, and administrators.

[**HAProxy**](#haproxy) uses **Patroni** health check endpoints to determine instance roles and route traffic to the correct primary or replica.
[**vip-manager**](#vip-manager) monitors the leader key in [**etcd**](#etcd) and automatically migrates the VIP when the primary changes.

[![patroni](/img/dashboard/pgsql-patroni.webp)](/docs/concept/ha)

For more information, see: [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#patroni_mode)


--------

## Pgbouncer

[**Pgbouncer**](https://www.pgbouncer.org/) is a lightweight connection pooling middleware, listening on port `6432` by default, deployed 1:1 with [PostgreSQL](#postgresql) database and node.

**Pgbouncer** runs statelessly on each instance, connecting to [**PostgreSQL**](#postgresql) via local Unix socket, using Transaction Pooling by default
for pool management, absorbing burst client connections, stabilizing database sessions, reducing lock contention, and significantly improving performance under high concurrency.

Pigsty routes production traffic (read-write service `5433` / read-only service `5434`) through **Pgbouncer** by default,
while only the default service (`5436`) and offline service (`5438`) bypass the pool for direct [**PostgreSQL**](#postgresql) connections.

Pool mode is controlled by [`pgbouncer_poolmode`](/docs/pgsql/param#pgbouncer_poolmode), defaulting to `transaction` (transaction-level pooling).
Connection pooling can be disabled via [`pgbouncer_enabled`](/docs/pgsql/param#pgbouncer_enabled).

[![pgbouncer.png](/img/dashboard/pgsql-pgbouncer.webp)](https://demo.pigsty.io/ui/d/pgsql-pgbouncer)

For more information, see: [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


--------

## pgBackRest

[**pgBackRest**](https://pgbackrest.org/) is a professional PostgreSQL backup/recovery tool, one of the strongest in the PG ecosystem, supporting full/incremental/differential backup and WAL archiving.

Pigsty uses pgBackRest for PostgreSQL [**PITR**](/docs/concept/pitr) capability,
allowing you to roll back clusters to any point within the backup retention window.

**pgBackRest** works with [**PostgreSQL**](#postgresql) to create backup repositories on the primary, executing backup and archive tasks.
By default, it uses local backup repository ([**`pgbackrest_method`**](/docs/pgsql/param#pgbackrest_method) = `local`),
but can be configured for MinIO or other object storage for centralized backup management.

After initialization, [**`pgbackrest_init_backup`**](/docs/pgsql/param#pgbackrest_init_backup) can automatically trigger the first full backup.
Recovery integrates with [**Patroni**](#patroni), supporting bootstrapping replicas as new primaries or standbys.

[![pgbackrest](/img/dashboard/pgsql-pitr.webp)](/docs/concept/pitr)

For more information, see: [**Backup & Recovery**](/docs/pgsql/backup/) and [**Config: PGSQL - PG_BACKUP**](/docs/pgsql/param/#pg_backup)


--------

## HAProxy

[**HAProxy**](http://www.haproxy.org/) is the service entry point and load balancer, exposing multiple database service ports.

| Port   | Service     | Target                         | Description                                   |
|:-------|:------------|:-------------------------------|:----------------------------------------------|
| `9101` | Admin       | -                              | HAProxy statistics and admin page             |
| `5433` | primary     | Primary [Pgbouncer](#pgbouncer)| Read-write service, routes to primary pool    |
| `5434` | replica     | Replica [Pgbouncer](#pgbouncer)| Read-only service, routes to replica pool     |
| `5436` | default     | Primary [Postgres](#postgresql)| Default service, direct to primary (bypasses pool)|
| `5438` | offline     | Offline [Postgres](#postgresql)| Offline service, direct to offline replica (ETL/analytics)|

**HAProxy** uses [**Patroni**](#patroni) REST API health checks to determine instance roles and route traffic to the appropriate primary or replica.
Service definitions are composed from [**`pg_default_services`**](/docs/pgsql/param#pg_default_services) and [**`pg_services`**](/docs/pgsql/param#pg_services).

A dedicated HAProxy node group can be specified via [**`pg_service_provider`**](/docs/pgsql/param#pg_service_provider) to handle higher traffic;
by default, **HAProxy** on local nodes publishes services.

[![haproxy](/img/dashboard/node-haproxy.webp)](/docs/concept/ha/svc)

For more information, see: [**Service Access**](/docs/pgsql/service/) and [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


--------

## vip-manager

[**vip-manager**](https://github.com/cybertec-postgresql/vip-manager) binds L2 VIP to the current primary node. This is an optional component; enable it if your network supports L2 VIP.

**vip-manager** runs on each PG node, monitoring the leader key written by [**Patroni**](#patroni) in [**etcd**](#etcd),
and binds [**`pg_vip_address`**](/docs/pgsql/param#pg_vip_address) to the current primary node's network interface.
When cluster failover occurs, **vip-manager** immediately releases the VIP from the old primary and rebinds it on the new primary, switching traffic to the new primary.

This component is optional, enabled via [**`pg_vip_enabled`**](/docs/pgsql/param#pg_vip_enabled).
When enabled, ensure all nodes are in the same VLAN; otherwise, VIP migration will fail.
Public cloud networks typically don't support L2 VIP; it's recommended only for on-premises and private cloud environments.

[![node-vip](/img/dashboard/node-vip.webp)](/docs/concept/ha/svc)

For more information, see: [**Tutorial: VIP Configuration**](/docs/pgsql/tutorial/pg-vip/) and [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


--------

## pg_exporter

[**pg_exporter**](https://github.com/pgsty/pg_exporter) exports [PostgreSQL](#postgresql) monitoring metrics, listening on port `9630` by default.

**pg_exporter** runs on each PG node, connecting to [**PostgreSQL**](#postgresql) via local Unix socket,
exporting rich metrics covering sessions, buffer hits, replication lag, transaction rates, etc., scraped by **VictoriaMetrics** on INFRA nodes.

Collection configuration is specified by [**`pg_exporter_config`**](/docs/pgsql/param#pg_exporter_config),
with support for automatic database discovery ([**`pg_exporter_auto_discovery`**](/docs/pgsql/param#pg_exporter_auto_discovery)),
and tiered cache strategies via [**`pg_exporter_cache_ttls`**](/docs/pgsql/param#pg_exporter_cache_ttls).

You can disable this component via parameters; in [**slim install**](/docs/setup/slim), this component is not enabled.

[![pg-exporter](/img/dashboard/pgsql-exporter.webp)](https://demo.pigsty.io/ui/d/pgsql-exporter)

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## pgbouncer_exporter

**pgbouncer_exporter** exports [Pgbouncer](#pgbouncer) connection pool metrics, listening on port `9631` by default.

`pgbouncer_exporter` uses the same [**pg_exporter**](#pg_exporter) binary but with a dedicated metrics config file, supporting pgbouncer 1.8-1.25+.
**pgbouncer_exporter** reads [**Pgbouncer**](#pgbouncer) statistics views, providing pool utilization, wait queue, and hit rate metrics.

If [**Pgbouncer**](#pgbouncer) is disabled, this component is also disabled. In [**slim install**](/docs/setup/slim), this component is not enabled.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## pgbackrest_exporter

**pgbackrest_exporter** exports backup status metrics, listening on port `9854` by default.

**pgbackrest_exporter** parses [**pgBackRest**](#pgbackrest) status, generating metrics for most recent backup time, size, type, etc. Combined with alerting policies, it quickly detects expired or failed backups, ensuring data safety.
Note that when there are many backups or using large network repositories, collection overhead can be significant, so **pgbackrest_exporter** has a default 2-minute collection interval.
In the worst case, you may see the latest backup status in the monitoring system 2 minutes after a backup completes.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## etcd

[**etcd**](/docs/etcd) is a distributed consistent store (DCS), providing cluster metadata storage and leader election capability for [**Patroni**](#patroni).

etcd is deployed and managed by the independent [**ETCD module**](/docs/etcd), not part of the PGSQL module itself, but critical for PostgreSQL HA.
[Patroni](#patroni) writes cluster state, leader info, and config parameters to etcd; all nodes reach consensus through etcd.
[vip-manager](#vip-manager) also reads the leader key from etcd to enable automatic VIP migration.

For more information, see: [**ETCD Module**](/docs/etcd/)


--------

## vector

[**Vector**](https://vector.dev/) is a high-performance log collection component, deployed by the [**NODE module**](/docs/node), responsible for collecting PostgreSQL-related logs.

Vector runs on nodes, tracking [PostgreSQL](#postgresql), [Pgbouncer](#pgbouncer), [Patroni](#patroni), and [pgBackRest](#pgbackrest) log directories,
sending structured logs to VictoriaLogs on INFRA nodes for centralized storage and querying.

For more information, see: [**NODE Module**](/docs/node/)


