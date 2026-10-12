---
title: Service Access
weight: 221
description: Pigsty uses HAProxy to provide service access, with optional pgBouncer
  for connection pooling, and optional L2 VIP and DNS access.
icon: fa-solid fa-arrow-down-up-across-line
module: [PGSQL]
categories: [Concept]
---




> Split read and write operations, route traffic correctly, and deliver PostgreSQL cluster capabilities reliably.

A [service](#service-overview) exposes database cluster capabilities through a stable interface that hides the underlying cluster details.

Services provide [stable production access](#access-services), especially during [HA](/docs/concept/ha) failover. [Personal users](#personal-users) usually do not need this abstraction.


---------------

## Personal Users

Services are mainly for production. Personal users with one node can connect directly through the instance name or IP address.

For example, connect to the default single-node `pg-meta`.`meta` database with any of these three users:

```bash
psql postgres://dbuser_dba:DBUser.DBA@10.10.10.10/meta     # Connect directly with DBA superuser
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10/meta   # Connect with default business admin user
psql postgres://dbuser_view:DBUser.Viewer@pg-meta/meta     # Connect with default read-only user via instance domain name
```


---------------

## Service Overview

Production clusters commonly use primary-replica replication. Exactly one [primary](/docs/pgsql/config#primary) accepts writes. [Replicas](/docs/pgsql/config#replica) continuously receive its change logs and can serve read-only requests. This reduces primary load for read-heavy workloads. Separate write requests from read-only requests to use this capacity.

Pgbouncer reduces connection and backend-process overhead for frequent short connections. ETL and change operations can bypass the pool for direct access. Failover changes the primary, so write traffic must follow the new leader automatically. The **Service** abstraction combines read/write separation, pooled or direct access, and automatic failover routing.

Every database cluster needs this basic service:

- **Read-write service (primary)**: Can read from and write to the database

Production clusters should provide at least these two services:

- **Read-write service (primary)**: Write data: Can only be served by the primary.
- **Read-only service (replica)**: Read data: Can be served by replicas; falls back to primary when no replicas are available

Depending on the workload, add services such as:

- **Default direct service (default)**: Let administrators bypass the connection pool.
- **Offline replica service (offline)**: Use a dedicated replica for ETL and analytics, separate from online reads.
- **Sync replica service (standby)**: Serve reads without replication delay from a [synchronous standby](/docs/pgsql/config/cluster#sync-standby) or primary.
- **Delayed replica service (delayed)**: Read earlier cluster data from [delayed replicas](/docs/pgsql/config#delayed-cluster).



---------------

## Access Services

Pigsty provides service access up to the cluster HAProxy endpoints. Clients can reach these load balancers in several ways.

Typically, DNS or a VIP points to one or more cluster load balancers.

![pigsty-access.jpg](/img/pigsty/access.jpg)

Choose a host and port combination for the required access method.

**Host**

| Type | Sample | Description |
|------|-------|------------|
| Cluster Domain Name | `pg-test` | Resolved by dnsmasq on INFRA nodes; with `pg_dns_target: auto`, points to the VIP when enabled, otherwise to the primary IP |
| Cluster VIP Address | `10.10.10.3` | When `pg_vip_enabled` is enabled, an L2 VIP managed by `vip-manager` and bound to the primary node |
| Instance Hostname | `pg-test-1` | Access via any instance hostname (resolved by dnsmasq @ infra nodes) |
| Instance IP Address | `10.10.10.11` | Access any instance's IP address |

**Port**

Different **ports** select different [PostgreSQL services](#service-overview).

| Port | Service | Type | Description |
|------|---------|------|-------------|
| 5432 | postgres | Database | Direct access to postgres server |
| 6432 | pgbouncer | Middleware | Access postgres through connection pool middleware |
| 5433 | primary | Service | Access primary pgbouncer (or postgres) |
| 5434 | replica | Service | Access replica pgbouncer (or postgres) |
| 5436 | default | Service | Access primary postgres |
| 5438 | offline | Service | Access offline postgres |

**Combinations**


```bash
# Access via cluster domain (this example assumes a cluster VIP; without one, DNS resolves to the primary IP by default)
postgres://test@pg-test:5432/test # DNS -> L2 VIP -> primary direct connection
postgres://test@pg-test:6432/test # DNS -> L2 VIP -> primary connection pool -> primary
postgres://test@pg-test:5433/test # DNS -> L2 VIP -> HAProxy -> primary connection pool -> primary
postgres://test@pg-test:5434/test # DNS -> L2 VIP -> HAProxy -> replica connection pool -> replica
postgres://dbuser_dba@pg-test:5436/test # DNS -> L2 VIP -> HAProxy -> primary direct connection (for admin)
postgres://dbuser_stats@pg-test:5438/test # DNS -> L2 VIP -> HAProxy -> offline direct connection (for ETL/personal queries)

# Access via cluster VIP directly
postgres://test@10.10.10.3:5432/test # L2 VIP -> primary direct access
postgres://test@10.10.10.3:6432/test # L2 VIP -> primary connection pool -> primary
postgres://test@10.10.10.3:5433/test # L2 VIP -> HAProxy -> primary connection pool -> primary
postgres://test@10.10.10.3:5434/test # L2 VIP -> HAProxy -> replica connection pool -> replica
postgres://dbuser_dba@10.10.10.3:5436/test # L2 VIP -> HAProxy -> primary direct connection (for admin)
postgres://dbuser_stats@10.10.10.3:5438/test # L2 VIP -> HAProxy -> offline direct connection (for ETL/personal queries)

# Directly specify any cluster instance name
postgres://test@pg-test-1:5432/test # DNS -> database instance direct connection (singleton access)
postgres://test@pg-test-1:6432/test # DNS -> connection pool -> database
postgres://test@pg-test-1:5433/test # DNS -> HAProxy -> connection pool -> database read/write
postgres://test@pg-test-1:5434/test # DNS -> HAProxy -> connection pool -> database read-only
postgres://dbuser_dba@pg-test-1:5436/test # DNS -> HAProxy -> database direct connection
postgres://dbuser_stats@pg-test-1:5438/test # DNS -> HAProxy -> database offline read/write

# Directly specify any cluster instance IP access
postgres://test@10.10.10.11:5432/test # Database instance direct connection (directly specify instance, no automatic traffic distribution)
postgres://test@10.10.10.11:6432/test # Connection pool -> database
postgres://test@10.10.10.11:5433/test # HAProxy -> connection pool -> database read/write
postgres://test@10.10.10.11:5434/test # HAProxy -> connection pool -> database read-only
postgres://dbuser_dba@10.10.10.11:5436/test # HAProxy -> database direct connection
postgres://dbuser_stats@10.10.10.11:5438/test # HAProxy -> database offline read-write

# Smart client: read/write separation via URL
postgres://test@10.10.10.11:6432,10.10.10.12:6432,10.10.10.13:6432/test?target_session_attrs=primary
postgres://test@10.10.10.11:6432,10.10.10.12:6432,10.10.10.13:6432/test?target_session_attrs=prefer-standby
```
