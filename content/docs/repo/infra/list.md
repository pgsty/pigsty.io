---
title: "Package List"
icon: fas fa-list
description: Available packages in the Infra repository
weight: 5441
---


--------

## Grafana Stack

| Name                                                                                     | Version  | License                                                                                | Comment                                  |
|------------------------------------------------------------------------------------------|----------|----------------------------------------------------------------------------------------|------------------------------------------|
| [`grafana`](https://github.com/grafana/grafana/)                                         | `12.3.1` | [AGPLv3](https://github.com/grafana/grafana/blob/main/LICENSE)                         | Observability and visualization platform |
| [`loki`](https://github.com/grafana/loki)                                                | `3.1.1`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Log aggregation system (deprecated)      |
| [`promtail`](https://github.com/grafana/loki/releases/tag/v3.0.0)                        | `3.0.0`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Loki log collection agent (deprecated)   |
| [`grafana-infinity-ds`](https://github.com/grafana/grafana-infinity-datasource/)         | `3.7.0`  | [Apache-2.0](https://github.com/grafana/grafana-infinity-datasource/blob/main/LICENSE) | JSON/CSV/XML datasource support          |
| [`grafana-plugins`](https://github.com/pgsty/infra-pkg/tree/main/noarch/grafana-plugins) | `12.3.0` | [Apache-2.0](https://github.com/pgsty/infra-pkg/blob/main/LICENSE)                     | Extra panel plugins by Pigsty            |
{.stretch-last}


--------

## Victoria Stack

| Name                                                                                                    | Version   | License                                                                                       | Comment                                       |
|---------------------------------------------------------------------------------------------------------|-----------|-----------------------------------------------------------------------------------------------|-----------------------------------------------|
| [`victoria-metrics`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                | `1.133.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | High-performance TSDB, Prometheus alternative |
| [`victoria-logs`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                   | `1.43.1`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | High-performance log storage and query engine |
| [`victoria-traces`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                 | `0.5.1`   | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | Distributed tracing backend                   |
| [`victoria-metrics-cluster`](https://github.com/VictoriaMetrics/VictoriaMetrics)                        | `1.133.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaMetrics distributed cluster           |
| [`vmutils`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                         | `1.133.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaMetrics CLI utilities                 |
| [`vlogscli`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                        | `1.43.1`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaLogs interactive query client         |
| [`vlagent`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                         | `1.43.1`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaLogs log collection agent             |
| [`grafana-victorialogs-ds`](https://github.com/VictoriaMetrics/victorialogs-datasource/releases/)       | `0.23.3`  | [Apache-2.0](https://github.com/VictoriaMetrics/victorialogs-datasource/blob/main/LICENSE)    | VictoriaLogs Grafana datasource               |
| [`grafana-victoriametrics-ds`](https://github.com/VictoriaMetrics/victoriametrics-datasource/releases/) | `0.20.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/victoriametrics-datasource/blob/main/LICENSE) | VictoriaMetrics Grafana datasource            |
{.stretch-last}

{{% alert title="Note on Victoria Grafana Datasource Plugins" color="info" %}}
Pigsty splits the Victoria datasource extensions into architecture-specific sub-packages.
If you choose to install these plugins to your own Grafana instance,
please configure the following parameter in `/etc/grafana/grafana.ini` to allow loading unsigned plugins.

```ini
allow_loading_unsigned_plugins = victoriametrics-logs-datasource,victoriametrics-metrics-datasource
```
{{% /alert %}}



--------

## Prometheus Stack

| Name                                                                   | Version  | License                                                                           | Comment                                   |
|------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------|-------------------------------------------|
| [`prometheus`](https://github.com/prometheus/prometheus)               | `3.9.1`  | [Apache-2.0](https://github.com/prometheus/prometheus/blob/main/LICENSE)          | Cloud-native monitoring & TSDB            |
| [`pushgateway`](https://github.com/prometheus/pushgateway)             | `1.11.2` | [Apache-2.0](https://github.com/prometheus/pushgateway/blob/master/LICENSE)       | Metrics push gateway for short-lived jobs |
| [`alertmanager`](https://github.com/prometheus/alertmanager)           | `0.30.0` | [Apache-2.0](https://github.com/prometheus/alertmanager/blob/main/LICENSE)        | Alert management & notification dispatch  |
| [`blackbox_exporter`](https://github.com/prometheus/blackbox_exporter) | `0.27.0` | [Apache-2.0](https://github.com/prometheus/blackbox_exporter/blob/master/LICENSE) | Blackbox probing, endpoint availability   |
{.stretch-last}


--------

## Metric Exporters

| Name                                                                      | Version  | License                                                                               | Comment                            |
|---------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------|------------------------------------|
| [`pg_exporter`](https://github.com/pgsty/pg_exporter)                     | `1.1.2`  | [Apache-2.0](https://github.com/pgsty/pg_exporter/blob/master/LICENSE)                | Advanced Postgres metrics exporter |
| [`pgbackrest_exporter`](https://github.com/woblerr/pgbackrest_exporter)   | `0.22.0` | [MIT](https://github.com/woblerr/pgbackrest_exporter/blob/master/LICENSE)             | Expose pgbackrest metrics          |
| [`node_exporter`](https://github.com/prometheus/node_exporter)            | `1.10.2` | [Apache-2.0](https://github.com/prometheus/node_exporter/blob/master/LICENSE)         | Expose Linux node metrics          |
| [`keepalived_exporter`](https://github.com/mehdy/keepalived-exporter)     | `1.7.0`  | [GPL-3.0](https://github.com/mehdy/keepalived-exporter/blob/master/LICENSE)           | Expose keepalived/VIP metrics      |
| [`nginx_exporter`](https://github.com/nginxinc/nginx-prometheus-exporter) | `1.5.1`  | [Apache-2.0](https://github.com/nginxinc/nginx-prometheus-exporter/blob/main/LICENSE) | Expose nginx metrics               |
| [`zfs_exporter`](https://github.com/waitingsong/zfs_exporter/releases/)   | `3.8.1`  | [MIT](https://github.com/waitingsong/zfs_exporter/blob/main/LICENSE)                  | Expose zfs metrics                 |
| [`mysqld_exporter`](https://github.com/prometheus/mysqld_exporter)        | `0.18.0` | [Apache-2.0](https://github.com/prometheus/mysqld_exporter/blob/main/LICENSE)         | Expose mysql metrics               |
| [`redis_exporter`](https://github.com/oliver006/redis_exporter)           | `1.80.1` | [MIT](https://github.com/oliver006/redis_exporter/blob/master/LICENSE)                | Expose redis metrics               |
| [`kafka_exporter`](https://github.com/danielqsj/kafka_exporter)           | `1.9.0`  | [Apache-2.0](https://github.com/danielqsj/kafka_exporter/blob/master/LICENSE)         | Expose kafka metrics               |
| [`mongodb_exporter`](https://github.com/percona/mongodb_exporter)         | `0.47.2` | [Apache-2.0](https://github.com/percona/mongodb_exporter/blob/main/LICENSE)           | Expose mongodb metrics             |
| [`mtail`](https://github.com/google/mtail)                                | `3.0.8`  | [Apache-2.0](https://github.com/google/mtail/blob/main/LICENSE)                       | Parse logs and generate metrics    |
| [`vector`](https://github.com/vectordotdev/vector/releases)               | `0.52.0` | [MPL-2.0](https://github.com/vectordotdev/vector/blob/master/LICENSE)                 | Versatile log collector            |
{.stretch-last}


--------

## Object Storage

| Name                                                    | Version          | License                                                                         | Comment                            |
|---------------------------------------------------------|------------------|---------------------------------------------------------------------------------|------------------------------------|
| [`minio`](https://github.com/minio/minio)               | `20251203120000` | [AGPLv3](https://github.com/minio/minio/blob/master/LICENSE)                    | FOSS S3 server, now built by pgsty |
| [`mcli`](https://github.com/minio/mc)                   | `20250813083541` | [AGPLv3](https://github.com/minio/mc/blob/master/LICENSE)                       | FOSS S3 client                     |
| [`rustfs`](https://github.com/rustfs/rustfs)            | `alpha.80`       | [Apache-2.0](https://github.com/rustfs/rustfs/blob/main/LICENSE)                | FOSS MinIO, Alpha                  |
| [`garage`](https://git.deuxfleurs.fr/Deuxfleurs/garage) | `2.1.0`          | [AGPL-3.0](https://git.deuxfleurs.fr/Deuxfleurs/garage/src/branch/main/LICENSE) | Lightweight S3                     |
| [`seaweedfs`](https://github.com/seaweedfs/seaweedfs)   | `4.06`           | [Apache-2.0](https://github.com/seaweedfs/seaweedfs/blob/master/LICENSE)        | S3 for small files                 |
| [`rclone`](https://github.com/rclone/rclone/)           | `1.72.1`         | [MIT](https://github.com/rclone/rclone/blob/master/COPYING)                     | S3 command line tool               |
| [`restic`](https://github.com/restic/restic)            | `0.18.1`         | [BSD-2](https://github.com/restic/restic/blob/master/LICENSE)                   | Backup tool                        |
| [`juicefs`](https://github.com/juicedata/juicefs)       | `1.3.1`          | [Apache-2.0](https://github.com/juicedata/juicefs/blob/main/LICENSE)            | Filesystem over S3                 |
{.stretch-last}


--------

## Databases

PostgreSQL related tools, DBMS, and other utilities

| Name                                                        | Version   | License                                                                            | Comment                                 |
|-------------------------------------------------------------|-----------|------------------------------------------------------------------------------------|-----------------------------------------|
| [`etcd`](https://github.com/etcd-io/etcd)                   | `3.6.7`   | [Apache-2.0](https://github.com/etcd-io/etcd/blob/main/LICENSE)                    | Fault-tolerant distributed coordination |
| [`kafka`](https://github.com/apache/kafka)                  | `4.1.1`   | [Apache-2.0](https://github.com/apache/kafka/blob/trunk/LICENSE)                   | Message queue                           |
| [`duckdb`](https://github.com/duckdb/duckdb)                | `1.4.3`   | [MIT](https://github.com/duckdb/duckdb/blob/main/LICENSE)                          | Embedded OLAP                           |
| [`ferretdb`](https://github.com/FerretDB/FerretDB)          | `2.7.0`   | [Apache-2.0](https://github.com/FerretDB/FerretDB/blob/main/LICENSE)               | MongoDB over PG                         |
| [`tigerbeetle`](https://github.com/tigerbeetle/tigerbeetle) | `0.16.68` | [Apache-2.0](https://github.com/tigerbeetle/tigerbeetle/blob/main/LICENSE)         | Financial OLTP                          |
| [`IvorySQL`](https://github.com/IvorySQL/IvorySQL)          | `5.1`     | [Apache-2.0](https://github.com/IvorySQL/IvorySQL/blob/IVORY_REL_5_STABLE/LICENSE) | Oracle compatible PG 18.1               |
{.stretch-last}


--------

## Utilities

Pig package manager, PostgreSQL tools, and other database related utilities

| Name                                                                                    | Version  | License                                                                                 | Comment                                       |
|-----------------------------------------------------------------------------------------|----------|-----------------------------------------------------------------------------------------|-----------------------------------------------|
| [`pig`](https://github.com/pgsty/pig)                                                   | `0.9.1`  | [Apache-2.0](https://github.com/pgsty/pig/blob/main/LICENSE)                            | PG package manager                            |
| [`vip-manager`](https://github.com/cybertec-postgresql/vip-manager)                     | `4.0.0`  | [BSD-2](https://github.com/cybertec-postgresql/vip-manager/blob/master/LICENSE)         | Bind L2 VIP to PG primary                     |
| [`pgflo`](https://github.com/pgflo/pg_flo)                                              | `0.0.15` | [Apache-2.0](https://github.com/pgflo/pg_flo/blob/main/LICENSE)                         | Stream, transform, route PG data in real-time |
| [`pgschema`](https://github.com/schemagood/pgschema)                                    | `1.4.2`  | [Apache-2.0](https://github.com/schemagood/pgschema/blob/main/LICENSE)                  | Perform PG schema migration                   |
| [`pg_timetable`](https://github.com/cybertec-postgresql/pg_timetable)                   | `6.2.0`  | [PostgreSQL](https://github.com/cybertec-postgresql/pg_timetable/blob/master/LICENSE)   | Advanced scheduling for PostgreSQL            |
| [`timescaledb-tools`](https://github.com/timescale/timescaledb-tune)                    | `0.18.1` | [Apache-2.0](https://github.com/timescale/timescaledb-tune/blob/main/LICENSE)           | Optimize timescaledb params                   |
| [`timescaledb-event-streamer`](https://github.com/noctarius/timescaledb-event-streamer) | `0.20.0` | [Apache-2.0](https://github.com/noctarius/timescaledb-event-streamer/blob/main/LICENSE) | CDC on timescaledb hypertable                 |
| [`dblab`](https://github.com/danvergara/dblab)                                          | `0.34.2` | [MIT](https://github.com/danvergara/dblab/blob/main/LICENSE)                            | Multi-database CLI tool                       |
| [`sqlcmd`](https://github.com/microsoft/go-sqlcmd)                                      | `1.9.0`  | [MIT](https://github.com/microsoft/go-sqlcmd/blob/main/LICENSE)                         | MS SQL Server CLI client                      |
| [`pev2`](https://github.com/dalibo/pev2)                                                | `1.19.0` | [PostgreSQL](https://github.com/dalibo/pev2/blob/master/LICENSE.md)                     | PostgreSQL explain visualizer 2               |
| [`sealos`](https://github.com/labring/sealos)                                           | `5.0.1`  | [Apache-2.0](https://github.com/labring/sealos/blob/main/LICENSE)                       | Battery-included Kubernetes distribution      |
| [`vray`](https://github.com/v2fly/v2ray-core)                                           | `5.44.1` | [MIT](https://github.com/v2fly/v2ray-core/blob/master/LICENSE)                          | Build proxies to bypass network restrictions  |
| [`asciinema`](https://github.com/asciinema/asciinema)                                   | `3.1.0`  | [GPL-3.0](https://github.com/asciinema/asciinema/blob/develop/LICENSE)                  | Terminal session recording and playback       |
| [`postgrest`](https://github.com/PostgREST/postgrest)                                   | `14.3`   | [MIT](https://github.com/PostgREST/postgrest/blob/main/LICENSE)                         | RESTful API for PostgreSQL                    |
| [`npgsqlrest`](https://github.com/vb-consulting/NpgsqlRest)                             | `3.4.3`  | [MIT](https://github.com/vb-consulting/NpgsqlRest/blob/master/LICENSE.md)               | .NET REST API generator for PostgreSQL        |
{.stretch-last}

--------

## AI Coding

AI Agent, MCP  tools, python package manager, web IDE, etc...

| Name                                                           | Version   | License                                                                     | Comment                                       |
|----------------------------------------------------------------|-----------|-----------------------------------------------------------------------------|-----------------------------------------------|
| [`claude`](https://github.com/anthropics/claude-code)          | `2.1.9`   | [Proprietary](https://www.anthropic.com/legal/terms)                        | Claude Code - Anthropic's agentic coding tool |
| [`opencode`](https://github.com/opencode-ai/opencode)          | `1.1.23`  | [MIT](https://github.com/opencode-ai/opencode/blob/main/LICENSE)            | Terminal-based AI coding assistant            |
| [`code-server`](https://github.com/coder/code-server)          | `4.108.0` | [MIT](https://github.com/coder/code-server/blob/main/LICENSE)               | VS Code in the browser                        |
| [`genai-toolbox`](https://github.com/googleapis/genai-toolbox) | `0.25.0`  | [Apache-2.0](https://github.com/googleapis/genai-toolbox/blob/main/LICENSE) | Google database MCP server                    |
| [`uv`](https://github.com/astral-sh/uv)                        | `0.9.26`  | [MIT](https://github.com/astral-sh/uv/blob/main/LICENSE-MIT)                | Next-gen Python package manager               |
| [`golang`](https://golang.org/)                                | `1.25.6`  | [BSD-3](https://github.com/golang/go/blob/master/LICENSE)                   | Go compiler                                   |
| [`nodejs`](https://nodejs.org/)                                | `24.12.0` | [MIT/Mixed](https://github.com/nodejs/node/blob/main/LICENSE)               | Run Javascript on serverside                  |
{.stretch-last}
