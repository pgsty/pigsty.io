---
title: Service Access
weight: 221
description: Pigsty uses HAProxy to provide service access, with optional pgBouncer
  for connection pooling, and optional L2 VIP and DNS access.
icon: fa-solid fa-arrow-down-up-across-line
module: [PGSQL]
categories: [Concept]
tags: [Service]
---




> Split read and write operations, route traffic correctly, and deliver PostgreSQL cluster capabilities reliably.

[Service](#service-overview) is an abstraction: it represents the form in which database clusters expose their capabilities externally, encapsulating underlying cluster details.

Services are crucial for [stable access](#access-services) in production environments, showing their value during automatic failover in [high availability](/docs/concept/ha) clusters. [Personal users](#personal-users) typically don't need to worry about this concept.


---------------

## Personal Users

The concept of "service" is for production environments. Personal users with single-node clusters can skip the complexity and directly use instance names or IP addresses to access the database.

For example, Pigsty's default single-node `pg-meta`.`meta` database can be connected directly using three different users:

```bash
psql postgres://dbuser_dba:DBUser.DBA@10.10.10.10/meta     # Connect directly with DBA superuser
psql postgres://dbuser_meta:DBUser.Meta@10.10.10.10/meta   # Connect with default business admin user
psql postgres://dbuser_view:DBUser.View@pg-meta/meta       # Connect with default read-only user via instance domain name
```


---------------

## Service Overview

In real-world production environments, we use primary-replica database clusters based on replication. Within a cluster, one and only one instance serves as the leader ([primary](/docs/pgsql/config#primary)) that can accept writes.
Other instances ([replicas](/docs/pgsql/config#replica)) continuously fetch change logs from the cluster leader to stay synchronized. Replicas can also handle read-only requests, significantly offloading the primary in read-heavy, write-light scenarios.
Therefore, distinguishing write requests from read-only requests is a common practice.

Additionally, for production environments with high-frequency, short-lived connections, we pool requests through connection pool middleware (Pgbouncer) to reduce connection and backend process creation overhead. However, for scenarios like ETL and change execution, we need to bypass the connection pool and directly access the database.
Meanwhile, high-availability clusters may undergo failover during failures, causing cluster leadership changes. Therefore, high-availability database solutions require write traffic to automatically adapt to cluster leadership changes.
These varying access needs (read-write separation, pooled vs. direct connections, failover auto-adaptation) ultimately lead to the abstraction of the **Service** concept.

Typically, database clusters must provide this most basic service:

- **Read-write service (primary)**: Can read from and write to the database

For production database clusters, at least these two services should be provided:

- **Read-write service (primary)**: Write data: Can only be served by the primary.
- **Read-only service (replica)**: Read data: Can be served by replicas; falls back to primary when no replicas are available

Additionally, depending on specific business scenarios, there may be other services, such as:

- **Default direct service (default)**: Allows (admin) users to bypass the connection pool and directly access the database
- **Offline replica service (offline)**: Dedicated replica not serving online read traffic, used for ETL and analytical queries
- **Sync replica service (standby)**: Read-only service with no replication delay, handled by [synchronous standby](/docs/pgsql/config#sync-standby)/primary for read queries
- **Delayed replica service (delayed)**: Access data from the same cluster as it was some time ago, handled by [delayed replicas](/docs/pgsql/config#delayed-cluster)



---------------

## Access Services

Pigsty's service delivery boundary stops at the cluster's HAProxy. Users can access these load balancers through various means.

The typical approach is to use DNS or VIP access, binding them to all or any number of load balancers in the cluster.

![pigsty-access.jpg](/img/pigsty/access.jpg)

You can use different host & port combinations, which provide PostgreSQL service in different ways.

**Host**

| Type | Sample | Description |
|------|-------|------------|
| Cluster Domain Name | `pg-test` | Access via cluster domain name (resolved by dnsmasq @ infra nodes) |
| Cluster VIP Address | `10.10.10.3` | Access via L2 VIP address managed by `vip-manager`, bound to primary node |
| Instance Hostname | `pg-test-1` | Access via any instance hostname (resolved by dnsmasq @ infra nodes) |
| Instance IP Address | `10.10.10.11` | Access any instance's IP address |

**Port**

Pigsty uses different **ports** to distinguish [pg services](#service-overview)

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
# Access via cluster domain
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
postgres://dbuser_stats@10.10.10.3::5438/test # L2 VIP -> HAProxy -> offline direct connection (for ETL/personal queries)

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


