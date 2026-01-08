---
title: Port List
weight: 490
description: Default ports used by Pigsty components, with related parameters and status.
icon: fa-solid fa-door-open
categories: [Reference]
---


This page lists default ports used by Pigsty module components. Adjust as needed or use as a reference for fine-grained firewall configuration.

|             Module             |             Component              |   Port  | Parameter                                                                    | Status   |
|:------------------------------:|:----------------------------------:|:-------:|:-----------------------------------------------------------------------------|----------|
|   [**`NODE`**](/docs/node)     |       **`node_exporter`**          | `9100`  | [**`node_exporter_port`**](/docs/node/param#node_exporter_port)              | Enabled  |
|   [**`NODE`**](/docs/node)     |          **`haproxy`**             | `9101`  | [**`haproxy_exporter_port`**](/docs/node/param#haproxy_exporter_port)        | Enabled  |
|   [**`NODE`**](/docs/node)     |           **`vector`**             | `9598`  | [**`vector_port`**](/docs/node/param#vector_port)                            | Enabled  |
|   [**`NODE`**](/docs/node)     |    **`keepalived_exporter`**       | `9650`  | [**`vip_exporter_port`**](/docs/node/param#vip_exporter_port)                | Optional |
|   [**`NODE`**](/docs/node)     |          **`chronyd`**             |  `123`  | -                                                                            | Enabled  |
| [**`DOCKER`**](/docs/docker)   |           **`docker`**             | `9323`  | [**`docker_exporter_port`**](/docs/docker/param#docker_exporter_port)        | Optional |
|  [**`INFRA`**](/docs/infra)    |           **`nginx`**              |  `80`   | [**`nginx_port`**](/docs/infra/param#nginx_port)                             | Enabled  |
|  [**`INFRA`**](/docs/infra)    |           **`nginx`**              |  `443`  | [**`nginx_ssl_port`**](/docs/infra/param#nginx_ssl_port)                     | Enabled  |
|  [**`INFRA`**](/docs/infra)    |          **`grafana`**             | `3000`  | [**`grafana_port`**](/docs/infra/param#grafana_port)                         | Enabled  |
|  [**`INFRA`**](/docs/infra)    |      **`victoriaMetrics`**         | `8428`  | [**`vmetrics_port`**](/docs/infra/param#vmetrics_port)                       | Enabled  |
|  [**`INFRA`**](/docs/infra)    |        **`victoriaLogs`**          | `9428`  | [**`vlogs_port`**](/docs/infra/param#vlogs_port)                             | Enabled  |
|  [**`INFRA`**](/docs/infra)    |       **`victoriaTraces`**         | `10428` | [**`vtraces_port`**](/docs/infra/param#vtraces_port)                         | Enabled  |
|  [**`INFRA`**](/docs/infra)    |          **`vmalert`**             | `8880`  | [**`vmalert_port`**](/docs/infra/param#vmalert_port)                         | Enabled  |
|  [**`INFRA`**](/docs/infra)    |        **`alertmanager`**          | `9059`  | [**`alertmanager_port`**](/docs/infra/param#alertmanager_port)               | Enabled  |
|  [**`INFRA`**](/docs/infra)    |     **`blackbox_exporter`**        | `9115`  | [**`blackbox_port`**](/docs/infra/param#blackbox_port)                       | Enabled  |
|  [**`INFRA`**](/docs/infra)    |          **`dnsmasq`**             |  `53`   | [**`dns_port`**](/docs/infra/param#dns_port)                                 | Enabled  |
|   [**`ETCD`**](/docs/etcd)     |            **`etcd`**              | `2379`  | [**`etcd_port`**](/docs/etcd/param#etcd_port)                                | Enabled  |
|   [**`ETCD`**](/docs/etcd)     |            **`etcd`**              | `2380`  | [**`etcd_peer_port`**](/docs/etcd/param#etcd_peer_port)                      | Enabled  |
|  [**`MINIO`**](/docs/minio)    |           **`minio`**              | `9000`  | [**`minio_port`**](/docs/minio/param#minio_port)                             | Enabled  |
|  [**`MINIO`**](/docs/minio)    |           **`minio`**              | `9001`  | [**`minio_admin_port`**](/docs/minio/param#minio_admin_port)                 | Enabled  |
|  [**`REDIS`**](/docs/redis)    |           **`redis`**              | `6379`  | [**`redis_port`**](/docs/redis/param#redis_port)                             | Optional |
|  [**`REDIS`**](/docs/redis)    |       **`redis_exporter`**         | `9121`  | [**`redis_exporter_port`**](/docs/redis/param#redis_exporter_port)           | Optional |
| [**`FERRET`**](/docs/ferret)   |          **`ferretdb`**            | `27017` | [**`mongo_port`**](/docs/ferret/param#mongo_port)                            | Optional |
| [**`FERRET`**](/docs/ferret)   |       **`mongo_exporter`**         | `9216`  | [**`mongo_exporter_port`**](/docs/ferret/param#mongo_exporter_port)          | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |          **`postgres`**            | `5432`  | [**`pg_port`**](/docs/pgsql/param#pg_port)                                   | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |         **`pgbouncer`**            | `6432`  | [**`pgbouncer_port`**](/docs/pgsql/param#pgbouncer_port)                     | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |          **`patroni`**             | `8008`  | [**`patroni_port`**](/docs/pgsql/param#patroni_port)                         | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |        **`pg_exporter`**           | `9630`  | [**`pg_exporter_port`**](/docs/pgsql/param#pg_exporter_port)                 | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |     **`pgbouncer_exporter`**       | `9631`  | [**`pgbouncer_exporter_port`**](/docs/pgsql/param#pgbouncer_exporter_port)   | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |    **`pgbackrest_exporter`**       | `9854`  | [**`pgbackrest_exporter_port`**](/docs/pgsql/param#pgbackrest_exporter_port) | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |  **`{{ pg_cluster }}-primary`**    | `5433`  | [**`pg_default_services`**](/docs/pgsql/param#pg_default_services)           | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |  **`{{ pg_cluster }}-replica`**    | `5434`  | [**`pg_default_services`**](/docs/pgsql/param#pg_default_services)           | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |  **`{{ pg_cluster }}-default`**    | `5436`  | [**`pg_default_services`**](/docs/pgsql/param#pg_default_services)           | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    |  **`{{ pg_cluster }}-offline`**    | `5438`  | [**`pg_default_services`**](/docs/pgsql/param#pg_default_services)           | Enabled  |
|  [**`PGSQL`**](/docs/pgsql)    | **`{{ pg_cluster }}-<service>`**   | `543x`  | [**`pg_services`**](/docs/pgsql/param#pg_services)                           | Optional |
{.full-width}


