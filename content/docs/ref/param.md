---
title: Parameters
weight: 475
description: Pigsty v4.x configuration overview and module parameter navigation
icon: fa-solid fa-sliders
categories: [Reference]
---

Use this page to find Pigsty v4.x parameters. For full explanations, read each module's `param` page.

The `files/cmdb.sql` defaults contain **399 public parameters** across 12 modules, including deployment and protected removal settings. See [**Modules**](/docs/ref/module/) for maturity levels.

--------

## Module Parameter Navigation

| Module | Groups | Parameters | Description |
|:----------------------------------:|:------:|:-------:|:-------------------------------------|
| [**`PGSQL`**](/docs/pgsql/param) | 10 | 125 | PostgreSQL HA, backups, and PITR |
| [**`INFRA`**](/docs/infra/param) | 10 | 73 | Repositories and Victoria observability |
| [**`NODE`**](/docs/node/param) | 11 | 73 | Node initialization, tuning, and operations baseline |
| [**`ETCD`**](/docs/etcd/param) | 2 | 13 | ETCD clusters and removal safeguards |
| [**`VAULT`**](/docs/vault/param) | 2 | 8 | OpenBao secrets clusters and removal safeguards |
| [**`MINIO`**](/docs/minio/param) | 2 | 22 | Silo deployment, monitoring, and removal |
| [**`REDIS`**](/docs/redis/param) | 2 | 22 | Redis/Valkey deployment and removal |
| [**`DOCKER`**](/docs/docker/param) | 1 | 8 | Docker engine settings |
| [**`JUICE`**](/docs/juice/param) | 1 | 2 | JuiceFS instances and cache |
| [**`VIBE`**](/docs/vibe/param) | 6 | 18 | Code/Jupyter/Node.js/Claude/Codex |
| [**`KAFKA`**](/docs/kafka/param) | 2 | 19 | Kafka deployment, including kafka_jmx_exporter_enabled, and removal safeguards |
| [**`MYSQL`**](/docs/mysql/param) | 6 | 16 | Native MySQL 8.4 deployment, backups, monitoring, and removal |
| **Total** | **55** | **399** | Default records in files/cmdb.sql |
{.wide .expand}

> `cmdb.sql` combines `INFRA_ID` and `INFRA_PACKAGE`, giving INFRA 9 groups; docs split them into 10 for navigation. NODE also defines platform-derived `node_tuned_profile_dir` in `defaults/main.yml`, so its [**parameter page**](/docs/node/param) lists 74 entries. Native [**MYSQL 8.4**](/docs/mysql/param/#quick-reference) exposes 16 parameters, including `mysql_data`, `mysql_backup_dir`, `mysql_backup_retention`, and 3 removal safeguards. Fixed ports, versions, and timers are not public parameters.

--------

## Parameter Group Quick View

| Module | Major Groups |
|:-----------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  [**`PGSQL`**](/docs/pgsql/param)  | [`PG_ID`](/docs/pgsql/param/#pg_id)、[`PG_BUSINESS`](/docs/pgsql/param/#pg_business)、[`PG_INSTALL`](/docs/pgsql/param/#pg_install)、[`PG_BOOTSTRAP`](/docs/pgsql/param/#pg_bootstrap)、[`PG_PROVISION`](/docs/pgsql/param/#pg_provision)、[`PG_BACKUP`](/docs/pgsql/param/#pg_backup)、[`PG_ACCESS`](/docs/pgsql/param/#pg_access)、[`PG_MONITOR`](/docs/pgsql/param/#pg_monitor)、[`PG_PITR`](/docs/pgsql/param/)、[`PG_REMOVE`](/docs/pgsql/param/#pg_remove)                                |
|  [**`INFRA`**](/docs/infra/param)   | [`META`](/docs/infra/param/#meta), [`CA`](/docs/infra/param/#ca), [`INFRA_ID`](/docs/infra/param/#infra_id), [`REPO`](/docs/infra/param/#repo), [`INFRA_PACKAGE`](/docs/infra/param/#infra_package), [`NGINX`](/docs/infra/param/#nginx), [`DNS`](/docs/infra/param/#dns), [`VICTORIA`](/docs/infra/param/#victoria), [`PROMETHEUS`](/docs/infra/param/#prometheus), [`GRAFANA`](/docs/infra/param/#grafana) |
|   [**`NODE`**](/docs/node/param)    | [`NODE_ID`](/docs/node/param/#node_id), [`NODE_DNS`](/docs/node/param/#node_dns), [`NODE_PACKAGE`](/docs/node/param/#node_package), [`NODE_TUNE`](/docs/node/param/#node_tune), [`NODE_SEC`](/docs/node/param/#node_sec), [`NODE_ADMIN`](/docs/node/param/#node_admin), [`NODE_TIME`](/docs/node/param/#node_time), [`NODE_VIP`](/docs/node/param/#node_vip)<br>[`HAPROXY`](/docs/node/param/#haproxy), [`NODE_EXPORTER`](/docs/node/param/#node_exporter), [`VECTOR`](/docs/node/param/#vector) |
|   [**`ETCD`**](/docs/etcd/param)    | [`ETCD`](/docs/etcd/param/#etcd), [`ETCD_REMOVE`](/docs/etcd/param/#etcd_remove) |
|  [**`VAULT`**](/docs/vault/param)  | [`VAULT`](/docs/vault/param/#vault)、[`VAULT_REMOVE`](/docs/vault/param/#vault_remove)                                                                                                                                                                                                                                                                                                                                                                                                   |
|  [**`MINIO`**](/docs/minio/param)   | [`MINIO`](/docs/minio/param/#minio), [`MINIO_REMOVE`](/docs/minio/param/#minio_remove) |
|  [**`REDIS`**](/docs/redis/param)   | [`REDIS`](/docs/redis/param/#parameter-overview), [`REDIS_REMOVE`](/docs/redis/param/#redis_remove) |
| [**`DOCKER`**](/docs/docker/param)  | [`DOCKER`](/docs/docker/param) |
|  [**`JUICE`**](/docs/juice/param)   | [`JUICE`](/docs/juice/param) |
| [**`VIBE`**](/docs/vibe/param) | [`VIBE`](/docs/vibe/param): general settings, Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI |
|  [**`KAFKA`**](/docs/kafka/param)   | [`KAFKA`](/docs/kafka/param/#parameter-overview), [`KAFKA_REMOVE`](/docs/kafka/param/#transient-protected-operational-variables) |
| [**`MYSQL`**](/docs/mysql/param) | [`MYSQL`](/docs/mysql/param/#quick-reference): identity, directories, credentials, application objects, backups, monitoring, and protected removal |
{.wide .expand}

--------

## Recommendations

- Read in this order for first deployment: [`NODE`](/docs/node/param), [`INFRA`](/docs/infra/param), [`PGSQL`](/docs/pgsql/param)
- In production, always review: `*_safeguard`, password credentials, ports, and network exposure
- Validate changes on one cluster first. Then apply them globally in batches.
