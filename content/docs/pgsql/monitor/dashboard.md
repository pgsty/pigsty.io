---
title: Dashboards
weight: 1901
description: Pigsty provides many out-of-the-box Grafana monitoring dashboards for
  PostgreSQL
icon: fa-solid fa-gauge-simple-high
module: [PGSQL]
categories: [Reference]
tags: []
---

> Pigsty provides many out-of-the-box Grafana monitoring dashboards for PostgreSQL: [Demo](https://demo.pigsty.io/d/pgsql-overview) & [Gallery](https://github.com/pgsty/pigsty/wiki/Gallery).

There are 26 PostgreSQL-related monitoring dashboards in Pigsty, organized hierarchically into Overview, Cluster, Instance, and Database categories, and by data source into [PGSQL](#overview), [PGCAT](#pgcat), and [PGLOG](#pglog) categories.

![pigsty-dashboard.jpg](/img/pigsty/dashboard.jpg)

----------------

## Overview

|                           Overview                            |                               Cluster                               |                            Instance                             |                            Database                            |
|:-------------------------------------------------------------:|:-------------------------------------------------------------------:|:---------------------------------------------------------------:|:--------------------------------------------------------------:|
| [PGSQL Overview](https://demo.pigsty.io/d/pgsql-overview)    |     [PGSQL Cluster](https://demo.pigsty.io/d/pgsql-cluster)        |  [PGSQL Instance](https://demo.pigsty.io/d/pgsql-instance)     | [PGSQL Database](https://demo.pigsty.io/d/pgsql-database)     |
|    [PGSQL Alert](https://demo.pigsty.io/d/pgsql-alert)       |     [PGRDS Cluster](https://demo.pigsty.io/d/pgrds-cluster)        |  [PGRDS Instance](https://demo.pigsty.io/d/pgrds-instance)     | [PGCAT Database](https://demo.pigsty.io/d/pgcat-database)     |
|    [PGSQL Shard](https://demo.pigsty.io/d/pgsql-shard)       |    [PGSQL Activity](https://demo.pigsty.io/d/pgsql-activity)       |  [PGCAT Instance](https://demo.pigsty.io/d/pgcat-instance)     |   [PGSQL Tables](https://demo.pigsty.io/d/pgsql-tables)       |
|                                                               | [PGSQL Replication](https://demo.pigsty.io/d/pgsql-replication)    |   [PGSQL Persist](https://demo.pigsty.io/d/pgsql-persist)      |    [PGSQL Table](https://demo.pigsty.io/d/pgsql-table)        |
|                                                               |     [PGSQL Service](https://demo.pigsty.io/d/pgsql-service)        |     [PGSQL Proxy](https://demo.pigsty.io/d/pgsql-proxy)        |    [PGCAT Table](https://demo.pigsty.io/d/pgcat-table)        |
|                                                               |   [PGSQL Databases](https://demo.pigsty.io/d/pgsql-databases)      | [PGSQL Pgbouncer](https://demo.pigsty.io/d/pgsql-pgbouncer)    |    [PGSQL Query](https://demo.pigsty.io/d/pgsql-query)        |
|                                                               |     [PGSQL Patroni](https://demo.pigsty.io/d/pgsql-patroni)        |   [PGSQL Session](https://demo.pigsty.io/d/pgsql-session)      |    [PGCAT Query](https://demo.pigsty.io/d/pgcat-query)        |
|                                                               |        [PGSQL PITR](https://demo.pigsty.io/d/pgsql-pitr)           |     [PGSQL Xacts](https://demo.pigsty.io/d/pgsql-xacts)        |    [PGCAT Locks](https://demo.pigsty.io/d/pgcat-locks)        |
|                                                               |                                                                     |  [PGSQL Exporter](https://demo.pigsty.io/d/pgsql-exporter)     |   [PGCAT Schema](https://demo.pigsty.io/d/pgcat-schema)       |


**Overview**

- [pgsql-overview](https://demo.pigsty.io/d/pgsql-overview): Main dashboard for the PGSQL module
- [pgsql-alert](https://demo.pigsty.io/d/pgsql-alert): Global critical metrics and alert events for PGSQL
- [pgsql-shard](https://demo.pigsty.io/d/pgsql-shard): Overview of horizontally sharded PGSQL clusters, such as Citus / GPSQL clusters

**Cluster**

- [pgsql-cluster](https://demo.pigsty.io/d/pgsql-cluster): Main dashboard for a PGSQL cluster
- [pgrds-cluster](https://demo.pigsty.io/d/pgrds-cluster): RDS version of PGSQL Cluster, focused on all PostgreSQL-specific metrics
- [pgsql-activity](https://demo.pigsty.io/d/pgsql-activity): Focus on PGSQL cluster sessions/load/QPS/TPS/locks
- [pgsql-replication](https://demo.pigsty.io/d/pgsql-replication): Focus on PGSQL cluster replication, slots, and pub/sub
- [pgsql-service](https://demo.pigsty.io/d/pgsql-service): Focus on PGSQL cluster services, proxies, routing, and load balancing
- [pgsql-databases](https://demo.pigsty.io/d/pgsql-databases): Focus on database CRUD, slow queries, and table statistics across all instances
- [pgsql-patroni](https://demo.pigsty.io/d/pgsql-patroni): Focus on cluster high availability status and Patroni component status
- [pgsql-pitr](https://demo.pigsty.io/d/pgsql-pitr): Focus on cluster PITR process context for point-in-time recovery assistance

**Instance**

- [pgsql-instance](https://demo.pigsty.io/d/pgsql-instance): Main dashboard for a single PGSQL instance
- [pgrds-instance](https://demo.pigsty.io/d/pgrds-instance): RDS version of PGSQL Instance, focused on all PostgreSQL-specific metrics
- [pgcat-instance](https://demo.pigsty.io/d/pgcat-instance): Instance information retrieved directly from the database catalog
- [pgsql-proxy](https://demo.pigsty.io/d/pgsql-proxy): Detailed metrics for a single HAProxy load balancer
- [pgsql-pgbouncer](https://demo.pigsty.io/d/pgsql-pgbouncer): Metrics overview in a single Pgbouncer connection pool instance
- [pgsql-persist](https://demo.pigsty.io/d/pgsql-persist): Persistence metrics: WAL, XID, checkpoints, archiving, IO
- [pgsql-session](https://demo.pigsty.io/d/pgsql-session): Session and active/idle time metrics in a single instance
- [pgsql-xacts](https://demo.pigsty.io/d/pgsql-xacts): Metrics related to transactions, locks, TPS/QPS
- [pgsql-exporter](https://demo.pigsty.io/d/pgsql-exporter): Self-monitoring metrics for Postgres and Pgbouncer monitoring components



**Database**

- [pgsql-database](https://demo.pigsty.io/d/pgsql-database): Main dashboard for a single PGSQL database
- [pgcat-database](https://demo.pigsty.io/d/pgcat-database): Database information retrieved directly from the database catalog
- [pgsql-tables](https://demo.pigsty.io/d/pgsql-tables): Table/index access metrics within a single database
- [pgsql-table](https://demo.pigsty.io/d/pgsql-table): Details of a single table (QPS/RT/index/sequences...)
- [pgcat-table](https://demo.pigsty.io/d/pgcat-table): Details of a single table retrieved directly from the database catalog (stats/bloat...)
- [pgsql-query](https://demo.pigsty.io/d/pgsql-query): Details of a single query (QPS/RT)
- [pgcat-query](https://demo.pigsty.io/d/pgcat-query): Details of a single query retrieved directly from the database catalog (SQL/stats)
- [pgcat-schema](https://demo.pigsty.io/d/pgcat-schema): Information about schemas retrieved directly from the database catalog (tables/indexes/sequences...)
- [pgcat-locks](https://demo.pigsty.io/d/pgcat-locks): Information about activities and lock waits retrieved directly from the database catalog


-------------------

## Overview

[PGSQL Overview](https://demo.pigsty.io/d/pgsql-overview): Main dashboard for the PGSQL module

<details><summary>PGSQL Overview</summary>

[![pgsql-overview.jpg](/img/dashboard/pgsql-overview.jpg)](https://demo.pigsty.io/d/pgsql-overview)

</details>


[PGSQL Alert](https://demo.pigsty.io/d/pgsql-alert): Global critical metrics overview and alert event listing for PGSQL

<details><summary>PGSQL Alert</summary>

[![pgsql-alert.jpg](/img/dashboard/pgsql-alert.jpg)](https://demo.pigsty.io/d/pgsql-alert)

</details>


[PGSQL Shard](https://demo.pigsty.io/d/pgsql-shard): Shows horizontal metric comparisons within a PGSQL horizontally sharded cluster, such as CITUS / GPSQL clusters

<details><summary>PGSQL Shard</summary>

[![pgsql-shard.jpg](/img/dashboard/pgsql-shard.jpg)](https://demo.pigsty.io/d/pgsql-shard)

</details>



-------------------

## Cluster

[PGSQL Cluster](https://demo.pigsty.io/d/pgsql-cluster): Main dashboard for a PGSQL cluster

<details><summary>PGSQL Cluster</summary>

[![pgsql-cluster.jpg](/img/dashboard/pgsql-cluster.jpg)](https://demo.pigsty.io/d/pgsql-cluster)

</details>


[PGRDS Cluster](https://demo.pigsty.io/d/pgrds-cluster): RDS version of PGSQL Cluster, focused on all PostgreSQL-specific metrics

<details><summary>PGRDS Cluster</summary>

[![pgrds-cluster.jpg](/img/dashboard/pgrds-cluster.jpg)](https://demo.pigsty.io/d/pgrds-cluster)

</details>


[PGSQL Service](https://demo.pigsty.io/d/pgsql-service): Focus on PGSQL cluster services, proxies, routing, and load balancing

<details><summary>PGSQL Service</summary>

[![pgsql-service.jpg](/img/dashboard/pgsql-service.jpg)](https://demo.pigsty.io/d/pgsql-service)

</details>

[PGSQL Activity](https://demo.pigsty.io/d/pgsql-activity): Focus on PGSQL cluster sessions/load/QPS/TPS/locks

<details><summary>PGSQL Activity</summary>

[![pgsql-activity.jpg](/img/dashboard/pgsql-activity.jpg)](https://demo.pigsty.io/d/pgsql-activity)

</details>

[PGSQL Replication](https://demo.pigsty.io/d/pgsql-replication): Focus on PGSQL cluster replication, slots, and pub/sub

<details><summary>PGSQL Replication</summary>

[![pgsql-replication.jpg](/img/dashboard/pgsql-replication.jpg)](https://demo.pigsty.io/d/pgsql-replication)

</details>


[PGSQL Databases](https://demo.pigsty.io/d/pgsql-databases): Focus on database CRUD, slow queries, and table statistics across all instances

<details><summary>PGSQL Databases</summary>

[![pgsql-databases.jpg](/img/dashboard/pgsql-databases.jpg)](https://demo.pigsty.io/d/pgsql-databases)

</details>


[PGSQL Patroni](https://demo.pigsty.io/d/pgsql-patroni): Focus on cluster high availability status and Patroni component status

<details><summary>PGSQL Patroni</summary>

[![pgsql-patroni.jpg](/img/dashboard/pgsql-patroni.jpg)](https://demo.pigsty.io/d/pgsql-patroni)

</details>


[PGSQL PITR](https://demo.pigsty.io/d/pgsql-pitr): Focus on cluster PITR process context for point-in-time recovery assistance

<details><summary>PGSQL PITR</summary>

[![pgsql-patroni.jpg](/img/dashboard/pgsql-pitr.jpg)](https://demo.pigsty.io/d/pgsql-pitr)

</details>



-------------------

## Instance

[PGSQL Instance](https://demo.pigsty.io/d/pgsql-instance): Main dashboard for a single PGSQL instance

<details><summary>PGSQL Instance</summary>

[![pgsql-instance.jpg](/img/dashboard/pgsql-instance.jpg)](https://demo.pigsty.io/d/pgsql-instance)

</details>


[PGRDS Instance](https://demo.pigsty.io/d/pgrds-instance): RDS version of PGSQL Instance, focused on all PostgreSQL-specific metrics

<details><summary>PGRDS Instance</summary>

[![pgrds-instance.jpg](/img/dashboard/pgrds-instance.jpg)](https://demo.pigsty.io/d/pgrds-instance)

</details>


[PGSQL Proxy](https://demo.pigsty.io/d/pgsql-proxy): Detailed metrics for a single HAProxy load balancer

<details><summary>PGSQL Proxy</summary>

[![pgsql-proxy.jpg](/img/dashboard/pgsql-proxy.jpg)](https://demo.pigsty.io/d/pgsql-proxy)

</details>


[PGSQL Pgbouncer](https://demo.pigsty.io/d/pgsql-pgbouncer): Metrics overview in a single Pgbouncer connection pool instance

<details><summary>PGSQL Pgbouncer</summary>

[![pgsql-pgbouncer.jpg](/img/dashboard/pgsql-pgbouncer.jpg)](https://demo.pigsty.io/d/pgsql-pgbouncer)

</details>


[PGSQL Persist](https://demo.pigsty.io/d/pgsql-persist): Persistence metrics: WAL, XID, checkpoints, archiving, IO

<details><summary>PGSQL Persist</summary>

[![pgsql-persist.jpg](/img/dashboard/pgsql-persist.jpg)](https://demo.pigsty.io/d/pgsql-persist)

</details>


[PGSQL Xacts](https://demo.pigsty.io/d/pgsql-xacts): Metrics related to transactions, locks, TPS/QPS

<details><summary>PGSQL Xacts</summary>

[![pgsql-xacts.jpg](/img/dashboard/pgsql-xacts.jpg)](https://demo.pigsty.io/d/pgsql-xacts)

</details>


[PGSQL Session](https://demo.pigsty.io/d/pgsql-session): Session and active/idle time metrics in a single instance

<details><summary>PGSQL Session</summary>

[![pgsql-session.jpg](/img/dashboard/pgsql-session.jpg)](https://demo.pigsty.io/d/pgsql-session)

</details>


[PGSQL Exporter](https://demo.pigsty.io/d/pgsql-exporter): Self-monitoring metrics for Postgres/Pgbouncer monitoring components

<details><summary>PGSQL Exporter</summary>

[![pgsql-exporter.jpg](/img/dashboard/pgsql-exporter.jpg)](https://demo.pigsty.io/d/pgsql-exporter)

</details>




-------------------

## Database


[PGSQL Database](https://demo.pigsty.io/d/pgsql-database): Main dashboard for a single PGSQL database

<details><summary>PGSQL Database</summary>

[![pgsql-database.jpg](/img/dashboard/pgsql-database.jpg)](https://demo.pigsty.io/d/pgsql-database)

</details>


[PGSQL Tables](https://demo.pigsty.io/d/pgsql-tables): Table/index access metrics within a single database

<details><summary>PGSQL Tables</summary>

[![pgsql-tables.jpg](/img/dashboard/pgsql-tables.jpg)](https://demo.pigsty.io/d/pgsql-tables)

</details>


[PGSQL Table](https://demo.pigsty.io/d/pgsql-table): Details of a single table (QPS/RT/index/sequences...)

<details><summary>PGSQL Table</summary>

[![pgsql-table.jpg](/img/dashboard/pgsql-table.jpg)](https://demo.pigsty.io/d/pgsql-table)

</details>


[PGSQL Query](https://demo.pigsty.io/d/pgsql-query): Details of a single query (QPS/RT)

<details><summary>PGSQL Query</summary>

[![pgsql-query.jpg](/img/dashboard/pgsql-query.jpg)](https://demo.pigsty.io/d/pgsql-query)

</details>




-------------------

## PGCAT

[PGCAT Instance](https://demo.pigsty.io/d/pgcat-instance): Instance information retrieved directly from the database catalog

<details><summary>PGCAT Instance</summary>

[![pgcat-instance.jpg](/img/dashboard/pgcat-instance.jpg)](https://demo.pigsty.io/d/pgcat-instance)

</details>


[PGCAT Database](https://demo.pigsty.io/d/pgcat-database): Database information retrieved directly from the database catalog

<details><summary>PGCAT Database</summary>

[![pgcat-database.jpg](/img/dashboard/pgcat-database.jpg)](https://demo.pigsty.io/d/pgcat-database)

</details>



[PGCAT Schema](https://demo.pigsty.io/d/pgcat-schema): Information about schemas retrieved directly from the database catalog (tables/indexes/sequences...)

<details><summary>PGCAT Schema</summary>

[![pgcat-schema.jpg](/img/dashboard/pgcat-schema.jpg)](https://demo.pigsty.io/d/pgcat-schema)

</details>




[PGCAT Table](https://demo.pigsty.io/d/pgcat-table): Details of a single table retrieved directly from the database catalog (stats/bloat...)

<details><summary>PGCAT Table</summary>

[![pgcat-table.jpg](/img/dashboard/pgcat-table.jpg)](https://demo.pigsty.io/d/pgcat-table)

</details>



[PGCAT Query](https://demo.pigsty.io/d/pgcat-query): Details of a single query retrieved directly from the database catalog (SQL/stats)

<details><summary>PGCAT Query</summary>

[![pgcat-query.jpg](/img/dashboard/pgcat-query.jpg)](https://demo.pigsty.io/d/pgcat-query)

</details>



[PGCAT Locks](https://demo.pigsty.io/d/pgcat-locks): Information about activities and lock waits retrieved directly from the database catalog

<details><summary>PGCAT Locks</summary>

[![pgcat-locks.jpg](/img/dashboard/pgcat-locks.jpg)](https://demo.pigsty.io/d/pgcat-locks)

</details>



-------------------

## PGLOG

[PGLOG Overview](https://demo.pigsty.io/d/pglog-overview): Overview of CSV log samples in Pigsty CMDB

<details><summary>PGLOG Overview</summary>

[![pglog-overview.jpg](/img/dashboard/pglog-overview.jpg)](https://demo.pigsty.io/d/pglog-overview)

</details>



[PGLOG Session](https://demo.pigsty.io/d/pglog-session): Log details of a session in CSV log samples in Pigsty CMDB

<details><summary>PGLOG Session</summary>

[![pglog-session.jpg](/img/dashboard/pglog-session.jpg)](https://demo.pigsty.io/d/pglog-session)

</details>





----------------

## Gallery

For details, refer to [pigsty/wiki/gallery](https://github.com/pgsty/pigsty/wiki/Gallery).

<details><summary>PGSQL Overview</summary>

[![pgsql-overview.jpg](/img/dashboard/pgsql-overview.jpg)](https://demo.pigsty.io/d/pgsql-overview)

</details>


<details><summary>PGSQL Shard</summary>

[![pgsql-shard.jpg](/img/dashboard/pgsql-shard.jpg)](https://demo.pigsty.io/d/pgsql-shard)

</details>


<details><summary>PGSQL Cluster</summary>

[![pgsql-cluster.jpg](/img/dashboard/pgsql-cluster.jpg)](https://demo.pigsty.io/d/pgsql-cluster)

</details>


<details><summary>PGSQL Service</summary>

[![pgsql-service.jpg](/img/dashboard/pgsql-service.jpg)](https://demo.pigsty.io/d/pgsql-service)

</details>


<details><summary>PGSQL Activity</summary>

[![pgsql-activity.jpg](/img/dashboard/pgsql-activity.jpg)](https://demo.pigsty.io/d/pgsql-activity)

</details>


<details><summary>PGSQL Replication</summary>

[![pgsql-replication.jpg](/img/dashboard/pgsql-replication.jpg)](https://demo.pigsty.io/d/pgsql-replication)

</details>


<details><summary>PGSQL Databases</summary>

[![pgsql-databases.jpg](/img/dashboard/pgsql-databases.jpg)](https://demo.pigsty.io/d/pgsql-databases)

</details>


<details><summary>PGSQL Instance</summary>

[![pgsql-instance.jpg](/img/dashboard/pgsql-instance.jpg)](https://demo.pigsty.io/d/pgsql-instance)

</details>


<details><summary>PGSQL Proxy</summary>

[![pgsql-proxy.jpg](/img/dashboard/pgsql-proxy.jpg)](https://demo.pigsty.io/d/pgsql-proxy)

</details>


<details><summary>PGSQL Pgbouncer</summary>

[![pgsql-pgbouncer.jpg](/img/dashboard/pgsql-pgbouncer.jpg)](https://demo.pigsty.io/d/pgsql-pgbouncer)

</details>


<details><summary>PGSQL Session</summary>

[![pgsql-session.jpg](/img/dashboard/pgsql-session.jpg)](https://demo.pigsty.io/d/pgsql-session)

</details>


<details><summary>PGSQL Xacts</summary>

[![pgsql-xacts.jpg](/img/dashboard/pgsql-xacts.jpg)](https://demo.pigsty.io/d/pgsql-xacts)

</details>


<details><summary>PGSQL Persist</summary>

[![pgsql-persist.jpg](/img/dashboard/pgsql-persist.jpg)](https://demo.pigsty.io/d/pgsql-persist)

</details>


<details><summary>PGSQL Database</summary>

[![pgsql-database.jpg](/img/dashboard/pgsql-database.jpg)](https://demo.pigsty.io/d/pgsql-database)

</details>


<details><summary>PGSQL Tables</summary>

[![pgsql-tables.jpg](/img/dashboard/pgsql-tables.jpg)](https://demo.pigsty.io/d/pgsql-tables)

</details>


<details><summary>PGSQL Table</summary>

[![pgsql-table.jpg](/img/dashboard/pgsql-table.jpg)](https://demo.pigsty.io/d/pgsql-table)


</details>


<details><summary>PGSQL Query</summary>

[![pgsql-query.jpg](/img/dashboard/pgsql-query.jpg)](https://demo.pigsty.io/d/pgsql-query)

</details>


<details><summary>PGCAT Instance</summary>

[![pgcat-instance.jpg](/img/dashboard/pgcat-instance.jpg)](https://demo.pigsty.io/d/pgcat-instance)

</details>


<details><summary>PGCAT Database</summary>

[![pgcat-database.jpg](/img/dashboard/pgcat-database.jpg)](https://demo.pigsty.io/d/pgcat-database)

</details>


<details><summary>PGCAT Schema</summary>

[![pgcat-schema.jpg](/img/dashboard/pgcat-schema.jpg)](https://demo.pigsty.io/d/pgcat-schema)

</details>


<details><summary>PGCAT Table</summary>

[![pgcat-table.jpg](/img/dashboard/pgcat-table.jpg)](https://demo.pigsty.io/d/pgcat-table)

</details>


<details><summary>PGCAT Lock</summary>

[![pgcat-locks.jpg](/img/dashboard/pgcat-locks.jpg)](https://demo.pigsty.io/d/pgcat-locks)

</details>


<details><summary>PGCAT Query</summary>

[![pgcat-query.jpg](/img/dashboard/pgcat-query.jpg)](https://demo.pigsty.io/d/pgcat-query)

</details>



<details><summary>PGLOG Overview</summary>

[![pglog-overview.jpg](/img/dashboard/pglog-overview.jpg)](https://demo.pigsty.io/d/pglog-overview)


</details>


<details><summary>PGLOG Session</summary>

[![pglog-session.jpg](/img/dashboard/pglog-session.jpg)](https://demo.pigsty.io/d/pglog-session)

</details>


