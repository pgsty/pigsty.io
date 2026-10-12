---
title: PGSQL Arch
weight: 203
description: PostgreSQL module component interactions and data flow.
icon: fas fa-database
module: [PGSQL]
categories: [Concept]
---

PGSQL organizes PostgreSQL as **clusters**. Each cluster is a logical group of database **instances** connected through **primary-replica** relationships.


--------

## Overview

The [**PGSQL module**](/docs/pgsql) combines these components for production HA clusters:

| Component                                                 | Type      | Description                                                             |
|:----------------------------------------------------------|-----------|:------------------------------------------------------------------------|
| [**`postgres`**](#postgresql)                             | Database  | Open-source relational database engine for PGSQL   |
| [**`patroni`**](#patroni)                                 | HA        | Manages PostgreSQL, coordinates failover, leader election, config changes |
| [**`pgbouncer`**](#pgbouncer)                             | Pool      | Lightweight connection pooling middleware, reduces overhead, adds flexibility |
| [**`pgbackrest`**](#pgbackrest)                           | Backup    | Full/incremental backup and WAL archiving, supports local and object storage |
| [**`pg_exporter`**](#pg_exporter)                         | Metrics   | Exports PostgreSQL monitoring metrics in a Prometheus-compatible format |
| [**`pgbouncer_exporter`**](#pgbouncer_exporter)           | Metrics   | Exports Pgbouncer connection pool metrics                               |
| [**`pgbackrest_exporter`**](#pgbackrest_exporter)         | Metrics   | Exports backup status metrics                                           |
| [**`vip-manager`**](#vip-manager)                         | VIP       | Binds L2 VIP to current primary node for transparent failover [Optional] |
{.full-width}

Enable [**`vip-manager`**](#vip-manager) when needed. PGSQL also uses components from other modules:

| Component                   | Module                       | Type     | Description                                                        |
|-----------------------------|:-----------------------------|----------|:-------------------------------------------------------------------|
| [**`haproxy`**](#haproxy)   | [**NODE**](/docs/node)       | LB       | Exposes service ports, routes traffic to primary or replicas       |
| [**`vector`**](#vector)     | [**NODE**](/docs/node)       | Logging  | Collects PostgreSQL, [Patroni](#patroni), [Pgbouncer](#pgbouncer) logs and ships to center  |
| [**`etcd`**](#etcd)         | [**ETCD**](/docs/etcd)       | DCS      | Distributed consistent store for cluster metadata and leader info  |
{.full-width}

The PGSQL module combines the [PostgreSQL](#postgresql) engine with supporting services. [Patroni](#patroni) and [Etcd](#etcd) provide [HA](#ha-subsystem). [pgBackRest](#pgbackrest) and optional Silo provide [backups](#backup-subsystem). [HAProxy](#haproxy), [Pgbouncer](#pgbouncer), and [vip-manager](#vip-manager) provide [access](#access-subsystem). Exporters and [Vector](#vector) provide [monitoring](#observability-subsystem).

You can select other [**database kernels**](/docs/pgsql/kernel) and [**extensions**](/docs/pgsql/ext). The diagram represents the engine as a CPU and the complete service as a computer.

![Pigsty PostgreSQL cluster architecture](/img/pigsty/motherboard.gif)


| Subsystem                             | Components                               | Function                              |
|:--------------------------------------|:-----------------------------------------|:--------------------------------------|
| [**HA Subsystem**](#ha-subsystem)     | [Patroni](#patroni) + [etcd](#etcd)      | Failure detection, auto-failover, config management |
| [**Access Subsystem**](#access-subsystem) | [HAProxy](#haproxy) + [Pgbouncer](#pgbouncer) + [vip-manager](#vip-manager)    | Service exposure, load balancing, pooling, VIP |
| [**Backup Subsystem**](#backup-subsystem) | [pgBackRest](#pgbackrest) (+ Silo)   | Full/incremental backup, WAL archiving, PITR |
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
    - If using `minio`, [pgBackRest](#pgbackrest) creates the backup repository on dedicated Silo or an external S3 service
- [**Vector**](#vector) collects Postgres-related logs (postgres, pgbouncer, patroni, pgbackrest)
    - [vector](#vector) listens on port 9598, also exposes its own metrics to VictoriaMetrics on infra nodes
    - [vector](#vector) sends logs to VictoriaLogs on infra nodes


--------

## HA Subsystem

[**Patroni**](#patroni) and [**etcd**](#etcd) provide the [**HA subsystem**](/docs/concept/ha). They detect failures, coordinate failover, and manage configuration.

**Operation**: [Patroni](#patroni) manages each local [PostgreSQL](#postgresql) process. It writes the leader, members, and configuration to [etcd](#etcd). After primary failure, Patroni coordinates an election and promotes the healthiest replica. Recovery is automatic, with RTO typically below 45 seconds.

**Key Interactions**:
- **[PostgreSQL](#postgresql)**: Starts, stops, reloads PG as parent process, controls its lifecycle
- **[etcd](#etcd)**: External dependency, writes/watches leader key for distributed consensus and failure detection
- **[HAProxy](#haproxy)**: Provides health checks via REST API (`:8008`), reporting instance role
- **[vip-manager](#vip-manager)**: Watches leader key in [etcd](#etcd), auto-migrates VIP

For more information, see: [**High Availability**](/docs/concept/ha/) and [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#pg_bootstrap)


--------

## Access Subsystem

[**HAProxy**](#haproxy), [**Pgbouncer**](#pgbouncer), and [**vip-manager**](#vip-manager) expose services, route traffic, and pool connections.

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

[**pgBackRest**](#pgbackrest) provides backups and [**PITR**](/docs/concept/pitr). Optional **Silo** or external S3 storage can serve as the remote repository.

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
- **[pgbackrest_exporter](#pgbackrest_exporter) → VictoriaMetrics**: Exports backup status metrics through the Prometheus-compatible protocol to monitor backup health

For more information, see: [**PITR**](/docs/concept/pitr/), [**Backup & Recovery**](/docs/pgsql/backup/), and [**Config: PGSQL - PG_BACKUP**](/docs/pgsql/param/#pg_backup)


--------

## Observability Subsystem

Three **Exporters** collect metrics, and [**Vector**](#vector) collects logs.

| Component                                         | Port   | Target                                                                        | Key Metrics                        |
|:--------------------------------------------------|:-------|:------------------------------------------------------------------------------|:-----------------------------------|
| [pg_exporter](#pg_exporter)                       | `9630` | [PostgreSQL](#postgresql)                                                     | Sessions, transactions, replication lag, buffer hits |
| [pgbouncer_exporter](#pgbouncer_exporter)         | `9631` | [Pgbouncer](#pgbouncer)                                                       | Pool utilization, wait queue, hit rate |
| [pgbackrest_exporter](#pgbackrest_exporter)       | `9854` | [pgBackRest](#pgbackrest)                                                     | Latest backup time, size, type     |
| [vector](#vector)                                 | `9598` | [postgres](#postgresql)/[patroni](#patroni)/[pgbouncer](#pgbouncer) logs      | Structured log stream              |

**Data Flow**:
- **Metrics**: Exporter → VictoriaMetrics (INFRA) → Grafana dashboards
- **Logs**: [Vector](#vector) → VictoriaLogs (INFRA) → Grafana log queries

[pg_exporter](#pg_exporter) and [pgbouncer_exporter](#pgbouncer_exporter) use local Unix sockets, independently of HA topology. [**Slim installation**](/docs/setup/slim) can disable them.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## PostgreSQL

[**PostgreSQL**](https://www.postgresql.org/) is the PGSQL database engine. It listens on `5432` by default, with one instance per [**node**](/docs/node).

Pigsty supports PostgreSQL 14–18 through binary packages from the [**PGDG repository**](/docs/repo/pgdg/). You can replace the default engine with a [**PG-compatible kernel**](/docs/pgsql/kernel). Up to [**{{< param pgext_count >}} extensions**](/docs/pgsql/ext) are available.

[**Patroni**](#patroni) manages **PostgreSQL** processes for [**HA**](/docs/concept/ha) by default. A single-node cluster has one primary. Additional nodes automatically join as replicas and receive changes through real-time physical replication. Replicas serve read-only traffic and can automatically replace a failed primary.

[![pigsty-ha.png](/img/pigsty/ha.png)](/docs/concept/ha)

You can access PostgreSQL directly, or through [HAProxy](#haproxy) and [Pgbouncer](#pgbouncer) connection pool.

For more information, see: [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#pg_bootstrap)


--------

## Patroni

[**Patroni**](https://patroni.readthedocs.io/) is the PostgreSQL HA control component, listening on port `8008` by default.

**Patroni** manages [**PostgreSQL**](#postgresql) startup, shutdown, configuration, and health. It writes leader and member records to [**etcd**](#etcd). It coordinates failover, replication factor, and parameter changes. Its REST API serves [**HAProxy**](#haproxy), monitoring, and administrators.

[**HAProxy**](#haproxy) checks **Patroni** endpoints to identify instance roles and route primary or replica traffic. [**vip-manager**](#vip-manager) watches the [**etcd**](#etcd) leader key and moves the VIP when the primary changes.

[![patroni](/img/dashboard/pgsql-patroni.webp)](/docs/concept/ha)

For more information, see: [**Config: PGSQL - PG_BOOTSTRAP**](/docs/pgsql/param/#patroni_mode)


--------

## Pgbouncer

[**Pgbouncer**](https://www.pgbouncer.org/) provides connection pooling on port `6432` by default. Each node has one Pgbouncer instance for its [PostgreSQL](#postgresql) instance.

**Pgbouncer** is stateless and connects to local [**PostgreSQL**](#postgresql) through a Unix socket. Its default transaction pooling handles connection bursts, stabilizes session counts, and reduces lock contention. This improves performance under high concurrency.

By default, read/write `5433` and read-only `5434` traffic use **Pgbouncer**. Default `5436` and offline `5438` services connect directly to [**PostgreSQL**](#postgresql).

[`pgbouncer_poolmode`](/docs/pgsql/param#pgbouncer_poolmode) defaults to `transaction`. Disable pooling with [`pgbouncer_enabled`](/docs/pgsql/param#pgbouncer_enabled).

[![pgbouncer.png](/img/dashboard/pgsql-pgbouncer.webp)](https://demo.pigsty.io/ui/d/pgsql-pgbouncer)

For more information, see: [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


--------

## pgBackRest

[**pgBackRest**](https://pgbackrest.org/) provides full, incremental, and differential PostgreSQL backups and WAL archiving.

Pigsty uses pgBackRest for [**PITR**](/docs/concept/pitr) to any time within the backup retention window.

**pgBackRest** coordinates with [**PostgreSQL**](#postgresql) for backups and archiving. By default, it creates a repository on the primary: [**`pgbackrest_method`**](/docs/pgsql/param#pgbackrest_method) = `local`. Configure Silo or external S3 storage for centralized backup management.

[**`pgbackrest_init_backup`**](/docs/pgsql/param#pgbackrest_init_backup) can trigger the first full backup after initialization. Recovery integrates with [**Patroni**](#patroni) to initialize replicas as new primaries or standbys.

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

**HAProxy** checks [**Patroni**](#patroni) REST endpoints to identify roles and route primary or replica traffic. [**`pg_default_services`**](/docs/pgsql/param#pg_default_services) and [**`pg_services`**](/docs/pgsql/param#pg_services) define services.

By default, local **HAProxy** instances expose services. For higher traffic, use [**`pg_service_provider`**](/docs/pgsql/param#pg_service_provider) to select a dedicated HAProxy node group.

[![haproxy](/img/dashboard/node-haproxy.webp)](/docs/concept/ha/svc)

For more information, see: [**Service Access**](/docs/pgsql/service/) and [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


--------

## vip-manager

[**vip-manager**](https://github.com/cybertec-postgresql/vip-manager) binds L2 VIP to the current primary node. This is an optional component; enable it if your network supports L2 VIP.

**vip-manager** runs on each PG node. It watches the leader key that [**Patroni**](#patroni) writes to [**etcd**](#etcd). It binds [**`pg_vip_address`**](/docs/pgsql/param#pg_vip_address) to the primary network interface. During failover, it releases the old binding and immediately binds the VIP to the new primary.

Enable this optional component with [**`pg_vip_enabled`**](/docs/pgsql/param#pg_vip_enabled). All nodes must share one VLAN or VIP migration fails. Public clouds usually do not support L2 VIP. Use it for on-premises or private cloud deployments.

[![node-vip](/img/dashboard/node-vip.webp)](/docs/concept/ha/svc)

For more information, see: [**Tutorial: VIP Configuration**](/docs/pgsql/tutorial/pg-vip/) and [**Config: PGSQL - PG_ACCESS**](/docs/pgsql/param/#pg_access)


--------

## pg_exporter

[**pg_exporter**](https://github.com/pgsty/pg_exporter) exports [PostgreSQL](#postgresql) monitoring metrics, listening on port `9630` by default.

**pg_exporter** connects to local [**PostgreSQL**](#postgresql) through a Unix socket. It exports sessions, buffer hits, replication lag, transaction rates, and other metrics. **VictoriaMetrics** on infrastructure nodes collects them.

Set collection rules with [**`pg_exporter_config`**](/docs/pgsql/param#pg_exporter_config). Use [**`pg_exporter_auto_discovery`**](/docs/pgsql/param#pg_exporter_auto_discovery) for automatic database discovery. [**`pg_exporter_cache_ttls`**](/docs/pgsql/param#pg_exporter_cache_ttls) controls different cache lifetimes.

Disable this component through parameters. [**Slim installation**](/docs/setup/slim) leaves it disabled.

[![pg-exporter](/img/dashboard/pgsql-exporter.webp)](https://demo.pigsty.io/ui/d/pgsql-exporter)

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## pgbouncer_exporter

**pgbouncer_exporter** exports [Pgbouncer](#pgbouncer) connection pool metrics, listening on port `9631` by default.

`pgbouncer_exporter` uses the [**pg_exporter**](#pg_exporter) binary with separate metric configuration. It supports pgbouncer 1.8–1.25+. **Pgbouncer** [statistics views](#pgbouncer) provide pool utilization, wait queue, and hit rate metrics.

Disabling [**Pgbouncer**](#pgbouncer) also disables its exporter. [**Slim installation**](/docs/setup/slim) leaves the exporter disabled.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## pgbackrest_exporter

**pgbackrest_exporter** exports backup status metrics, listening on port `9854` by default.

**pgbackrest_exporter** reads [**pgBackRest**](#pgbackrest) status to report the latest backup time, size, type, and other metrics. Alert rules can detect expired or failed backups. Large repositories or many backups can make collection expensive. The default collection interval is 2 minutes, so a completed backup can take 2 minutes to appear in monitoring.

For more information, see: [**Config: PGSQL - PG_MONITOR**](/docs/pgsql/param/#pg_monitor)


--------

## etcd

[**etcd**](/docs/etcd) is a distributed consistent store (DCS), providing cluster metadata storage and leader election capability for [**Patroni**](#patroni).

The separate [**ETCD module**](/docs/etcd) manages etcd. PGSQL relies on it for HA. [Patroni](#patroni) stores cluster state, leader information, and configuration there so nodes can reach consensus. [vip-manager](#vip-manager) reads the leader key to move the VIP automatically.

For more information, see: [**ETCD Module**](/docs/etcd/)


--------

## vector

The [**NODE module**](/docs/node) deploys [**Vector**](https://vector.dev/) to collect PostgreSQL-related logs efficiently.

Vector reads node log directories for [PostgreSQL](#postgresql), [Pgbouncer](#pgbouncer), [Patroni](#patroni), and [pgBackRest](#pgbackrest). It sends structured records to infrastructure-node VictoriaLogs for central storage and queries.

For more information, see: [**NODE Module**](/docs/node/)
