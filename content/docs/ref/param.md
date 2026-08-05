---
title: Parameters
weight: 475
description: Pigsty v4.x configuration overview and module parameter navigation
icon: fa-solid fa-sliders
categories: [Reference]
---

This is the parameter navigation page for Pigsty v4.x, without repeating full explanations for each parameter.
For parameter details, please read each module's `param` page.

Cross-checked against the current source and parameter reference pages, the 11 official modules expose **380** public parameters. Native MySQL 8.4 remains a pilot module; its 11 public parameters are listed separately and are not included in the official-module total.

--------

## Module Parameter Navigation

|               Module               | Groups | Count | Description                                                |
|:----------------------------------:|:------:|:-----:|:-----------------------------------------------------------|
|  [**`PGSQL`**](/docs/pgsql/param)  |   9    |  124  | PostgreSQL HA cluster configuration                        |
|  [**`INFRA`**](/docs/infra/param)  |   10   |  73   | Software repository and Victoria-based observability infra |
|   [**`NODE`**](/docs/node/param)   |   11   |  73   | Node initialization, system tuning, and ops baseline       |
|   [**`ETCD`**](/docs/etcd/param)   |   2    |  13   | ETCD cluster and removal safeguard parameters              |
|  [**`MINIO`**](/docs/minio/param)  |   2    |  21   | MinIO deployment and removal parameters                    |
|  [**`REDIS`**](/docs/redis/param)  |   2    |  21   | Redis deployment and removal parameters                    |
| [**`FERRET`**](/docs/ferret/param) |   1    |   9   | FerretDB (Mongo API) parameters                            |
| [**`DOCKER`**](/docs/docker/param) |   1    |   8   | Docker engine parameters                                   |
|  [**`JUICE`**](/docs/juice/param)  |   1    |   2   | JuiceFS instance and cache parameters                      |
|   [**`VIBE`**](/docs/vibe/param)   |   1    |  18   | Code/Jupyter/Node.js/Claude/Codex configuration            |
|  [**`KAFKA`**](/docs/kafka/param)  |   2    |  18   | Kafka deployment and removal safeguard parameters          |
{.stretch-last}

Pilot module: [**native `MYSQL` 8.4**](/docs/pilot/mysql/param) currently exposes 11 public parameters. Fixed ports, paths, software versions, and timers are not public parameters.

--------

## Parameter Group Quick View

| Module | Major Groups |
|:-----------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  [**`PGSQL`**](/docs/pgsql/param)   | [`PG_ID`](/docs/pgsql/param/#pg_id), [`PG_BUSINESS`](/docs/pgsql/param/#pg_business), [`PG_INSTALL`](/docs/pgsql/param/#pg_install), [`PG_BOOTSTRAP`](/docs/pgsql/param/#pg_bootstrap), [`PG_PROVISION`](/docs/pgsql/param/#pg_provision), [`PG_BACKUP`](/docs/pgsql/param/#pg_backup), [`PG_ACCESS`](/docs/pgsql/param/#pg_access), [`PG_MONITOR`](/docs/pgsql/param/#pg_monitor), [`PG_REMOVE`](/docs/pgsql/param/#pg_remove) |
|  [**`INFRA`**](/docs/infra/param)   | [`META`](/docs/infra/param/#meta), [`CA`](/docs/infra/param/#ca), [`INFRA_ID`](/docs/infra/param/#infra_id), [`REPO`](/docs/infra/param/#repo), [`INFRA_PACKAGE`](/docs/infra/param/#infra_package), [`NGINX`](/docs/infra/param/#nginx), [`DNS`](/docs/infra/param/#dns), [`VICTORIA`](/docs/infra/param/#victoria), [`PROMETHEUS`](/docs/infra/param/#prometheus), [`GRAFANA`](/docs/infra/param/#grafana) |
|   [**`NODE`**](/docs/node/param)    | [`NODE_ID`](/docs/node/param/#node_id), [`NODE_DNS`](/docs/node/param/#node_dns), [`NODE_PACKAGE`](/docs/node/param/#node_package), [`NODE_TUNE`](/docs/node/param/#node_tune), [`NODE_SEC`](/docs/node/param/#node_sec), [`NODE_ADMIN`](/docs/node/param/#node_admin), [`NODE_TIME`](/docs/node/param/#node_time), [`NODE_VIP`](/docs/node/param/#node_vip)<br>[`HAPROXY`](/docs/node/param/#haproxy), [`NODE_EXPORTER`](/docs/node/param/#node_exporter), [`VECTOR`](/docs/node/param/#vector) |
|   [**`ETCD`**](/docs/etcd/param)    | [`ETCD`](/docs/etcd/param/#etcd), [`ETCD_REMOVE`](/docs/etcd/param/#etcd_remove) |
|  [**`MINIO`**](/docs/minio/param)   | [`MINIO`](/docs/minio/param/#minio), [`MINIO_REMOVE`](/docs/minio/param/#minio_remove) |
|  [**`REDIS`**](/docs/redis/param)   | [`REDIS`](/docs/redis/param/#redis), [`REDIS_REMOVE`](/docs/redis/param/#redis_remove) |
| [**`FERRET`**](/docs/ferret/param)  | [`FERRET`](/docs/ferret/param) |
| [**`DOCKER`**](/docs/docker/param)  | [`DOCKER`](/docs/docker/param) |
|  [**`JUICE`**](/docs/juice/param)   | [`JUICE`](/docs/juice/param) |
|   [**`VIBE`**](/docs/vibe/param)    | [`VIBE`](/docs/vibe/param) |
|  [**`KAFKA`**](/docs/kafka/param)   | [`KAFKA`](/docs/kafka/param/#parameter-overview), [`KAFKA_REMOVE`](/docs/kafka/param/#transient-protected-operational-variables) |
{.stretch-last}

--------

## Recommendations

- Read in this order for first deployment: [`NODE`](/docs/node/param), [`INFRA`](/docs/infra/param), [`PGSQL`](/docs/pgsql/param)
- In production, always review: `*_safeguard`, password credentials, ports, and network exposure
- Validate changes on one cluster first, then roll out globally in batches
