# Dashboard

> Pigsty provides numerous out-of-the-box Grafana monitoring dashboards for PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

> Pigsty provides numerous out-of-the-box Grafana monitoring dashboards for PostgreSQL: [Demo](https://demo.pigsty.io/ui/d/pgsql-overview) & [Gallery](https://github.com/pgsty/pigsty/wiki/Gallery).

The current source provides 31 PostgreSQL-related dashboards: 29 PostgreSQL / PGCAT dashboards under `files/grafana/pgsql`, plus two PGLOG dashboards under `files/grafana/app`. They are organized by hierarchy into Overview, Cluster, Instance, and Database categories, and by data source into [PGSQL](#overview), [PGCAT](#pgcat), and [PGLOG](#pglog).

![pigsty-dashboard.jpg](/img/pigsty/dashboard.jpg)

----------------

## Overview

|                           Overview                           |                              Cluster                               |                            Instance                            |                           Database                           |
|:------------------------------------------------------------:|:------------------------------------------------------------------:|:--------------------------------------------------------------:|:------------------------------------------------------------:|
| [PGSQL Overview](https://demo.pigsty.io/ui/d/pgsql-overview) |     [PGSQL Cluster](https://demo.pigsty.io/ui/d/pgsql-cluster)     |  [PGSQL Instance](https://demo.pigsty.io/ui/d/pgsql-instance)  | [PGSQL Database](https://demo.pigsty.io/ui/d/pgsql-database) |
|    [PGSQL Alert](https://demo.pigsty.io/ui/d/pgsql-alert)    |     [PGRDS Cluster](https://demo.pigsty.io/ui/d/pgrds-cluster)     |  [PGRDS Instance](https://demo.pigsty.io/ui/d/pgrds-instance)  | [PGCAT Database](https://demo.pigsty.io/ui/d/pgcat-database) |
|    [PGSQL Shard](https://demo.pigsty.io/ui/d/pgsql-shard)    |    [PGSQL Activity](https://demo.pigsty.io/ui/d/pgsql-activity)    |  [PGCAT Instance](https://demo.pigsty.io/ui/d/pgcat-instance)  |   [PGSQL Tables](https://demo.pigsty.io/ui/d/pgsql-tables)   |
|                                                              | [PGSQL Replication](https://demo.pigsty.io/ui/d/pgsql-replication) |   [PGSQL Persist](https://demo.pigsty.io/ui/d/pgsql-persist)   |    [PGSQL Table](https://demo.pigsty.io/ui/d/pgsql-table)    |
|                                                              |     [PGSQL Service](https://demo.pigsty.io/ui/d/pgsql-service)     |     [PGSQL Proxy](https://demo.pigsty.io/ui/d/pgsql-proxy)     |    [PGCAT Table](https://demo.pigsty.io/ui/d/pgcat-table)    |
|                                                              |   [PGSQL Databases](https://demo.pigsty.io/ui/d/pgsql-databases)   | [PGSQL Pgbouncer](https://demo.pigsty.io/ui/d/pgsql-pgbouncer) |    [PGSQL Query](https://demo.pigsty.io/ui/d/pgsql-query)    |
|                                                              |     [PGSQL Patroni](https://demo.pigsty.io/ui/d/pgsql-patroni)     |   [PGSQL Session](https://demo.pigsty.io/ui/d/pgsql-session)   |    [PGCAT Query](https://demo.pigsty.io/ui/d/pgcat-query)    |
|                                                              |        [PGSQL PITR](https://demo.pigsty.io/ui/d/pgsql-pitr)        |     [PGSQL Xacts](https://demo.pigsty.io/ui/d/pgsql-xacts)     |    [PGCAT Locks](https://demo.pigsty.io/ui/d/pgcat-locks)    |
|                                                              |                                                                    |  [PGSQL Exporter](https://demo.pigsty.io/ui/d/pgsql-exporter)  |   [PGCAT Schema](https://demo.pigsty.io/ui/d/pgcat-schema)   |
{.full-width}


**Overview**

- [pgsql-overview](https://demo.pigsty.io/ui/d/pgsql-overview): Main dashboard for the PGSQL module
- [pgsql-alert](https://demo.pigsty.io/ui/d/pgsql-alert): Global key metrics and alert events for PGSQL
- [pgsql-shard](https://demo.pigsty.io/ui/d/pgsql-shard): Overview of horizontally sharded PGSQL clusters (e.g., Citus/GPSQL)

**Cluster**

- [pgsql-cluster](https://demo.pigsty.io/ui/d/pgsql-cluster): Main dashboard for a PGSQL cluster
- [pgrds-cluster](https://demo.pigsty.io/ui/d/pgrds-cluster): RDS version of PGSQL Cluster, focusing on PostgreSQL-native metrics
- [pgsql-activity](https://demo.pigsty.io/ui/d/pgsql-activity): Session/load/QPS/TPS/locks for PGSQL cluster
- [pgsql-replication](https://demo.pigsty.io/ui/d/pgsql-replication): Replication, slots, and pub/sub for PGSQL cluster
- [pgsql-service](https://demo.pigsty.io/ui/d/pgsql-service): Service, proxy, routing, and load balancing for PGSQL cluster
- [pgsql-databases](https://demo.pigsty.io/ui/d/pgsql-databases): Database CRUD, slow queries, and table statistics across all instances
- [pgsql-patroni](https://demo.pigsty.io/ui/d/pgsql-patroni): HA status and Patroni component status for cluster
- [pgsql-pitr](https://demo.pigsty.io/ui/d/pgsql-pitr): PITR context for point-in-time recovery assistance

**Instance**

- [pgsql-instance](https://demo.pigsty.io/ui/d/pgsql-instance): Main dashboard for a single PGSQL instance
- [pgrds-instance](https://demo.pigsty.io/ui/d/pgrds-instance): RDS version of PGSQL Instance, focusing on PostgreSQL-native metrics
- [pgcat-instance](https://demo.pigsty.io/ui/d/pgcat-instance): Instance info retrieved directly from database catalog
- [pgsql-proxy](https://demo.pigsty.io/ui/d/pgsql-proxy): Detailed metrics for a single HAProxy load balancer
- [pgsql-pgbouncer](https://demo.pigsty.io/ui/d/pgsql-pgbouncer): Metrics overview for a single Pgbouncer connection pooler
- [pgsql-persist](https://demo.pigsty.io/ui/d/pgsql-persist): Persistence metrics: WAL, XID, checkpoint, archive, IO
- [pgsql-session](https://demo.pigsty.io/ui/d/pgsql-session): Session and active/idle time metrics for a single instance
- [pgsql-xacts](https://demo.pigsty.io/ui/d/pgsql-xacts): Transaction, lock, TPS/QPS related metrics
- [pgsql-exporter](https://demo.pigsty.io/ui/d/pgsql-exporter): Self-monitoring metrics for Postgres and Pgbouncer exporters



**Database**

- [pgsql-database](https://demo.pigsty.io/ui/d/pgsql-database): Main dashboard for a single PGSQL database
- [pgcat-database](https://demo.pigsty.io/ui/d/pgcat-database): Database info retrieved directly from database catalog
- [pgsql-tables](https://demo.pigsty.io/ui/d/pgsql-tables): Table/index access metrics within a single database
- [pgsql-table](https://demo.pigsty.io/ui/d/pgsql-table): Detailed info for a single table (QPS/RT/index/sequence...)
- [pgcat-table](https://demo.pigsty.io/ui/d/pgcat-table): Detailed table info from database catalog (stats/bloat...)
- [pgsql-query](https://demo.pigsty.io/ui/d/pgsql-query): Detailed info for a query type (QPS/RT)
- [pgcat-query](https://demo.pigsty.io/ui/d/pgcat-query): Query details from database catalog (SQL/stats)
- [pgcat-schema](https://demo.pigsty.io/ui/d/pgcat-schema): Schema info from database catalog (tables/indexes/sequences...)
- [pgcat-locks](https://demo.pigsty.io/ui/d/pgcat-locks): Activity and lock wait info from database catalog


-------------------

## Overview

[PGSQL Overview](https://demo.pigsty.io/ui/d/pgsql-overview): Main dashboard for the PGSQL module

> [!DETAILS]- PGSQL Overview
> [![pgsql-overview.jpg](/img/dashboard/pgsql-overview.jpg)](https://demo.pigsty.io/ui/d/pgsql-overview)


[PGSQL Alert](https://demo.pigsty.io/ui/d/pgsql-alert): Global core metrics overview and alert events

> [!DETAILS]- PGSQL Alert
> [![pgsql-alert.jpg](/img/dashboard/pgsql-alert.jpg)](https://demo.pigsty.io/ui/d/pgsql-alert)


[PGSQL Shard](https://demo.pigsty.io/ui/d/pgsql-shard): Cross-shard metric comparison for horizontally sharded PGSQL clusters (e.g., CITUS/GPSQL)

> [!DETAILS]- PGSQL Shard
> [![pgsql-shard.jpg](/img/dashboard/pgsql-shard.jpg)](https://demo.pigsty.io/ui/d/pgsql-shard)



-------------------

## Cluster

[PGSQL Cluster](https://demo.pigsty.io/ui/d/pgsql-cluster): Main dashboard for a PGSQL cluster

> [!DETAILS]- PGSQL Cluster
> [![pgsql-cluster.jpg](/img/dashboard/pgsql-cluster.jpg)](https://demo.pigsty.io/ui/d/pgsql-cluster)


[PGRDS Cluster](https://demo.pigsty.io/ui/d/pgrds-cluster): RDS version of PGSQL Cluster, focusing on PostgreSQL-native metrics

> [!DETAILS]- PGRDS Cluster
> [![pgrds-cluster.jpg](/img/dashboard/pgrds-cluster.jpg)](https://demo.pigsty.io/ui/d/pgrds-cluster)


[PGSQL Service](https://demo.pigsty.io/ui/d/pgsql-service): Service, proxy, routing, and load balancing for PGSQL cluster

> [!DETAILS]- PGSQL Service
> [![pgsql-service.jpg](/img/dashboard/pgsql-service.jpg)](https://demo.pigsty.io/ui/d/pgsql-service)

[PGSQL Activity](https://demo.pigsty.io/ui/d/pgsql-activity): Session/load/QPS/TPS/locks for PGSQL cluster

> [!DETAILS]- PGSQL Activity
> [![pgsql-activity.jpg](/img/dashboard/pgsql-activity.jpg)](https://demo.pigsty.io/ui/d/pgsql-activity)

[PGSQL Replication](https://demo.pigsty.io/ui/d/pgsql-replication): Replication, slots, and pub/sub for PGSQL cluster

> [!DETAILS]- PGSQL Replication
> [![pgsql-replication.jpg](/img/dashboard/pgsql-replication.jpg)](https://demo.pigsty.io/ui/d/pgsql-replication)


[PGSQL Databases](https://demo.pigsty.io/ui/d/pgsql-databases): Database CRUD, slow queries, and table statistics across all instances

> [!DETAILS]- PGSQL Databases
> [![pgsql-databases.jpg](/img/dashboard/pgsql-databases.jpg)](https://demo.pigsty.io/ui/d/pgsql-databases)


[PGSQL Patroni](https://demo.pigsty.io/ui/d/pgsql-patroni): HA status and Patroni component status for cluster

> [!DETAILS]- PGSQL Patroni
> [![pgsql-patroni.jpg](/img/dashboard/pgsql-patroni.jpg)](https://demo.pigsty.io/ui/d/pgsql-patroni)


[PGSQL PITR](https://demo.pigsty.io/ui/d/pgsql-pitr): PITR context for point-in-time recovery assistance

> [!DETAILS]- PGSQL PITR
> [![pgsql-patroni.jpg](/img/dashboard/pgsql-pitr.jpg)](https://demo.pigsty.io/ui/d/pgsql-pitr)



-------------------

## Instance

[PGSQL Instance](https://demo.pigsty.io/ui/d/pgsql-instance): Main dashboard for a single PGSQL instance

> [!DETAILS]- PGSQL Instance
> [![pgsql-instance.jpg](/img/dashboard/pgsql-instance.jpg)](https://demo.pigsty.io/ui/d/pgsql-instance)


[PGRDS Instance](https://demo.pigsty.io/ui/d/pgrds-instance): RDS version of PGSQL Instance, focusing on PostgreSQL-native metrics

> [!DETAILS]- PGRDS Instance
> [![pgrds-instance.jpg](/img/dashboard/pgrds-instance.jpg)](https://demo.pigsty.io/ui/d/pgrds-instance)


[PGSQL Proxy](https://demo.pigsty.io/ui/d/pgsql-proxy): Detailed metrics for a single HAProxy load balancer

> [!DETAILS]- PGSQL Proxy
> [![pgsql-proxy.jpg](/img/dashboard/pgsql-proxy.jpg)](https://demo.pigsty.io/ui/d/pgsql-proxy)


[PGSQL Pgbouncer](https://demo.pigsty.io/ui/d/pgsql-pgbouncer): Metrics overview for a single Pgbouncer connection pooler

> [!DETAILS]- PGSQL Pgbouncer
> [![pgsql-pgbouncer.jpg](/img/dashboard/pgsql-pgbouncer.jpg)](https://demo.pigsty.io/ui/d/pgsql-pgbouncer)


[PGSQL Persist](https://demo.pigsty.io/ui/d/pgsql-persist): Persistence metrics: WAL, XID, checkpoint, archive, IO

> [!DETAILS]- PGSQL Persist
> [![pgsql-persist.jpg](/img/dashboard/pgsql-persist.jpg)](https://demo.pigsty.io/ui/d/pgsql-persist)


[PGSQL Xacts](https://demo.pigsty.io/ui/d/pgsql-xacts): Transaction, lock, TPS/QPS related metrics

> [!DETAILS]- PGSQL Xacts
> [![pgsql-xacts.jpg](/img/dashboard/pgsql-xacts.jpg)](https://demo.pigsty.io/ui/d/pgsql-xacts)


[PGSQL Session](https://demo.pigsty.io/ui/d/pgsql-session): Session and active/idle time metrics for a single instance

> [!DETAILS]- PGSQL Session
> [![pgsql-session.jpg](/img/dashboard/pgsql-session.jpg)](https://demo.pigsty.io/ui/d/pgsql-session)


[PGSQL Exporter](https://demo.pigsty.io/ui/d/pgsql-exporter): Self-monitoring metrics for Postgres/Pgbouncer exporters

> [!DETAILS]- PGSQL Exporter
> [![pgsql-exporter.jpg](/img/dashboard/pgsql-exporter.jpg)](https://demo.pigsty.io/ui/d/pgsql-exporter)




-------------------

## Database


[PGSQL Database](https://demo.pigsty.io/ui/d/pgsql-database): Main dashboard for a single PGSQL database

> [!DETAILS]- PGSQL Database
> [![pgsql-database.jpg](/img/dashboard/pgsql-database.jpg)](https://demo.pigsty.io/ui/d/pgsql-database)


[PGSQL Tables](https://demo.pigsty.io/ui/d/pgsql-tables): Table/index access metrics within a single database

> [!DETAILS]- PGSQL Tables
> [![pgsql-tables.jpg](/img/dashboard/pgsql-tables.jpg)](https://demo.pigsty.io/ui/d/pgsql-tables)


[PGSQL Table](https://demo.pigsty.io/ui/d/pgsql-table): Detailed info for a single table (QPS/RT/index/sequence...)

> [!DETAILS]- PGSQL Table
> [![pgsql-table.jpg](/img/dashboard/pgsql-table.jpg)](https://demo.pigsty.io/ui/d/pgsql-table)


[PGSQL Query](https://demo.pigsty.io/ui/d/pgsql-query): Detailed info for a query type (QPS/RT)

> [!DETAILS]- PGSQL Query
> [![pgsql-query.jpg](/img/dashboard/pgsql-query.jpg)](https://demo.pigsty.io/ui/d/pgsql-query)




-------------------

## PGCAT

[PGCAT Instance](https://demo.pigsty.io/ui/d/pgcat-instance): Instance info retrieved directly from database catalog

> [!DETAILS]- PGCAT Instance
> [![pgcat-instance.jpg](/img/dashboard/pgcat-instance.jpg)](https://demo.pigsty.io/ui/d/pgcat-instance)


[PGCAT Database](https://demo.pigsty.io/ui/d/pgcat-database): Database info retrieved directly from database catalog

> [!DETAILS]- PGCAT Database
> [![pgcat-database.jpg](/img/dashboard/pgcat-database.jpg)](https://demo.pigsty.io/ui/d/pgcat-database)



[PGCAT Schema](https://demo.pigsty.io/ui/d/pgcat-schema): Schema info from database catalog (tables/indexes/sequences...)

> [!DETAILS]- PGCAT Schema
> [![pgcat-schema.jpg](/img/dashboard/pgcat-schema.jpg)](https://demo.pigsty.io/ui/d/pgcat-schema)




[PGCAT Table](https://demo.pigsty.io/ui/d/pgcat-table): Detailed table info from database catalog (stats/bloat...)

> [!DETAILS]- PGCAT Table
> [![pgcat-table.jpg](/img/dashboard/pgcat-table.jpg)](https://demo.pigsty.io/ui/d/pgcat-table)



[PGCAT Query](https://demo.pigsty.io/ui/d/pgcat-query): Query details from database catalog (SQL/stats)

> [!DETAILS]- PGCAT Query
> [![pgcat-query.jpg](/img/dashboard/pgcat-query.jpg)](https://demo.pigsty.io/ui/d/pgcat-query)



[PGCAT Locks](https://demo.pigsty.io/ui/d/pgcat-locks): Activity and lock wait info from database catalog

> [!DETAILS]- PGCAT Locks
> [![pgcat-locks.jpg](/img/dashboard/pgcat-locks.jpg)](https://demo.pigsty.io/ui/d/pgcat-locks)



-------------------

## PGLOG

[PGLOG Overview](https://demo.pigsty.io/ui/d/pglog-overview): Overview of CSV log samples in Pigsty CMDB

> [!DETAILS]- PGLOG Overview
> [![pglog-overview.jpg](/img/dashboard/pglog-overview.jpg)](https://demo.pigsty.io/ui/d/pglog-overview)



[PGLOG Session](https://demo.pigsty.io/ui/d/pglog-session): Log details for a single session in CSV log samples

> [!DETAILS]- PGLOG Session
> [![pglog-session.jpg](/img/dashboard/pglog-session.jpg)](https://demo.pigsty.io/ui/d/pglog-session)





----------------

## Gallery

See [pigsty/wiki/gallery](https://github.com/pgsty/pigsty/wiki/Gallery) for details.

> [!DETAILS]- PGSQL Overview
> [![pgsql-overview.jpg](/img/dashboard/pgsql-overview.jpg)](https://demo.pigsty.io/ui/d/pgsql-overview)


> [!DETAILS]- PGSQL Shard
> [![pgsql-shard.jpg](/img/dashboard/pgsql-shard.jpg)](https://demo.pigsty.io/ui/d/pgsql-shard)


> [!DETAILS]- PGSQL Cluster
> [![pgsql-cluster.jpg](/img/dashboard/pgsql-cluster.jpg)](https://demo.pigsty.io/ui/d/pgsql-cluster)


> [!DETAILS]- PGSQL Service
> [![pgsql-service.jpg](/img/dashboard/pgsql-service.jpg)](https://demo.pigsty.io/ui/d/pgsql-service)


> [!DETAILS]- PGSQL Activity
> [![pgsql-activity.jpg](/img/dashboard/pgsql-activity.jpg)](https://demo.pigsty.io/ui/d/pgsql-activity)


> [!DETAILS]- PGSQL Replication
> [![pgsql-replication.jpg](/img/dashboard/pgsql-replication.jpg)](https://demo.pigsty.io/ui/d/pgsql-replication)


> [!DETAILS]- PGSQL Databases
> [![pgsql-databases.jpg](/img/dashboard/pgsql-databases.jpg)](https://demo.pigsty.io/ui/d/pgsql-databases)


> [!DETAILS]- PGSQL Instance
> [![pgsql-instance.jpg](/img/dashboard/pgsql-instance.jpg)](https://demo.pigsty.io/ui/d/pgsql-instance)


> [!DETAILS]- PGSQL Proxy
> [![pgsql-proxy.jpg](/img/dashboard/pgsql-proxy.jpg)](https://demo.pigsty.io/ui/d/pgsql-proxy)


> [!DETAILS]- PGSQL Pgbouncer
> [![pgsql-pgbouncer.jpg](/img/dashboard/pgsql-pgbouncer.jpg)](https://demo.pigsty.io/ui/d/pgsql-pgbouncer)


> [!DETAILS]- PGSQL Session
> [![pgsql-session.jpg](/img/dashboard/pgsql-session.jpg)](https://demo.pigsty.io/ui/d/pgsql-session)


> [!DETAILS]- PGSQL Xacts
> [![pgsql-xacts.jpg](/img/dashboard/pgsql-xacts.jpg)](https://demo.pigsty.io/ui/d/pgsql-xacts)


> [!DETAILS]- PGSQL Persist
> [![pgsql-persist.jpg](/img/dashboard/pgsql-persist.jpg)](https://demo.pigsty.io/ui/d/pgsql-persist)


> [!DETAILS]- PGSQL Database
> [![pgsql-database.jpg](/img/dashboard/pgsql-database.jpg)](https://demo.pigsty.io/ui/d/pgsql-database)


> [!DETAILS]- PGSQL Tables
> [![pgsql-tables.jpg](/img/dashboard/pgsql-tables.jpg)](https://demo.pigsty.io/ui/d/pgsql-tables)


> [!DETAILS]- PGSQL Table
> [![pgsql-table.jpg](/img/dashboard/pgsql-table.jpg)](https://demo.pigsty.io/ui/d/pgsql-table)


> [!DETAILS]- PGSQL Query
> [![pgsql-query.jpg](/img/dashboard/pgsql-query.jpg)](https://demo.pigsty.io/ui/d/pgsql-query)


> [!DETAILS]- PGCAT Instance
> [![pgcat-instance.jpg](/img/dashboard/pgcat-instance.jpg)](https://demo.pigsty.io/ui/d/pgcat-instance)


> [!DETAILS]- PGCAT Database
> [![pgcat-database.jpg](/img/dashboard/pgcat-database.jpg)](https://demo.pigsty.io/ui/d/pgcat-database)


> [!DETAILS]- PGCAT Schema
> [![pgcat-schema.jpg](/img/dashboard/pgcat-schema.jpg)](https://demo.pigsty.io/ui/d/pgcat-schema)


> [!DETAILS]- PGCAT Table
> [![pgcat-table.jpg](/img/dashboard/pgcat-table.jpg)](https://demo.pigsty.io/ui/d/pgcat-table)


> [!DETAILS]- PGCAT Lock
> [![pgcat-locks.jpg](/img/dashboard/pgcat-locks.jpg)](https://demo.pigsty.io/ui/d/pgcat-locks)


> [!DETAILS]- PGCAT Query
> [![pgcat-query.jpg](/img/dashboard/pgcat-query.jpg)](https://demo.pigsty.io/ui/d/pgcat-query)



> [!DETAILS]- PGLOG Overview
> [![pglog-overview.jpg](/img/dashboard/pglog-overview.jpg)](https://demo.pigsty.io/ui/d/pglog-overview)


> [!DETAILS]- PGLOG Session
> [![pglog-session.jpg](/img/dashboard/pglog-session.jpg)](https://demo.pigsty.io/ui/d/pglog-session)

---

Section pages:

- [Overview](/docs/pgsql/dashboard/overview/): PostgreSQL module global overview monitoring dashboards
- [Cluster](/docs/pgsql/dashboard/cluster/): PostgreSQL cluster-level monitoring dashboards
- [Instance](/docs/pgsql/dashboard/instance/): PostgreSQL instance-level monitoring dashboards
- [Database](/docs/pgsql/dashboard/database/): PostgreSQL database-level monitoring dashboards
