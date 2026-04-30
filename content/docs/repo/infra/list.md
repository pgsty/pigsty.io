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
| [`grafana`](https://github.com/grafana/grafana/)                                         | `13.0.1` | [AGPLv3](https://github.com/grafana/grafana/blob/main/LICENSE)                         | Observability and visualization platform |
| [`loki`](https://github.com/grafana/loki)                                                | `3.6.7`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Log aggregation system (obsolete, frozen) |
| [`promtail`](https://github.com/grafana/loki/releases/tag/v3.6.7)                        | `3.6.7`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Loki log collection agent (obsolete, frozen) |
| [`logcli`](https://github.com/grafana/loki/releases/tag/v3.6.7)                          | `3.6.7`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Loki query CLI (obsolete, frozen)        |
| [`grafana-infinity-ds`](https://github.com/grafana/grafana-infinity-datasource/)         | `3.8.0`  | [Apache-2.0](https://github.com/grafana/grafana-infinity-datasource/blob/main/LICENSE) | JSON/CSV/XML datasource support          |
| [`grafana-plugins`](https://github.com/pgsty/infra-pkg/tree/main/noarch/grafana-plugins) | `13.0.0` | [Apache-2.0](https://github.com/pgsty/infra-pkg/blob/main/LICENSE)                     | Extra panel plugins by Pigsty (noarch)   |
{.stretch-last}


--------

## Victoria Stack

| Name                                                                                                    | Version   | License                                                                                       | Comment                                       |
|---------------------------------------------------------------------------------------------------------|-----------|-----------------------------------------------------------------------------------------------|-----------------------------------------------|
| [`victoria-metrics`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                | `1.142.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | High-performance TSDB, Prometheus alternative |
| [`victoria-logs`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                   | `1.50.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | High-performance log storage and query engine |
| [`victoria-traces`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                 | `0.8.2`   | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | Distributed tracing backend                   |
| [`victoria-metrics-cluster`](https://github.com/VictoriaMetrics/VictoriaMetrics)                        | `1.142.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaMetrics distributed cluster           |
| [`vmutils`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                         | `1.142.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaMetrics CLI utilities                 |
| [`vlogscli`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                        | `1.50.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaLogs interactive query client         |
| [`vlagent`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                         | `1.50.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)          | VictoriaLogs log collection agent             |
| [`grafana-victorialogs-ds`](https://github.com/VictoriaMetrics/victorialogs-datasource/releases/)       | `0.26.3`  | [Apache-2.0](https://github.com/VictoriaMetrics/victorialogs-datasource/blob/main/LICENSE)    | VictoriaLogs Grafana datasource               |
| [`grafana-victoriametrics-ds`](https://github.com/VictoriaMetrics/victoriametrics-datasource/releases/) | `0.24.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/victoriametrics-datasource/blob/main/LICENSE) | VictoriaMetrics Grafana datasource            |
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
| [`prometheus`](https://github.com/prometheus/prometheus)               | `3.11.3` | [Apache-2.0](https://github.com/prometheus/prometheus/blob/main/LICENSE)          | Cloud-native monitoring & TSDB            |
| [`pushgateway`](https://github.com/prometheus/pushgateway)             | `1.11.2` | [Apache-2.0](https://github.com/prometheus/pushgateway/blob/master/LICENSE)       | Metrics push gateway for short-lived jobs |
| [`alertmanager`](https://github.com/prometheus/alertmanager)           | `0.32.1` | [Apache-2.0](https://github.com/prometheus/alertmanager/blob/main/LICENSE)        | Alert management & notification dispatch  |
| [`blackbox_exporter`](https://github.com/prometheus/blackbox_exporter) | `0.28.0` | [Apache-2.0](https://github.com/prometheus/blackbox_exporter/blob/master/LICENSE) | Blackbox probing, endpoint availability   |
{.stretch-last}


--------

## Metric Exporters

| Name                                                                      | Version  | License                                                                               | Comment                            |
|---------------------------------------------------------------------------|----------|---------------------------------------------------------------------------------------|------------------------------------|
| [`pg_exporter`](https://github.com/pgsty/pg_exporter)                     | `1.2.2`  | [Apache-2.0](https://github.com/pgsty/pg_exporter/blob/master/LICENSE)                | Advanced Postgres metrics exporter |
| [`pgbackrest_exporter`](https://github.com/woblerr/pgbackrest_exporter)   | `0.23.0` | [MIT](https://github.com/woblerr/pgbackrest_exporter/blob/master/LICENSE)             | Expose pgbackrest metrics          |
| [`node_exporter`](https://github.com/prometheus/node_exporter)            | `1.11.1` | [Apache-2.0](https://github.com/prometheus/node_exporter/blob/master/LICENSE)         | Expose Linux node metrics          |
| [`keepalived_exporter`](https://github.com/mehdy/keepalived-exporter)     | `1.7.1`  | [GPL-3.0](https://github.com/mehdy/keepalived-exporter/blob/master/LICENSE)           | Expose keepalived/VIP metrics      |
| [`nginx_exporter`](https://github.com/nginxinc/nginx-prometheus-exporter) | `1.5.1`  | [Apache-2.0](https://github.com/nginxinc/nginx-prometheus-exporter/blob/main/LICENSE) | Expose nginx metrics               |
| [`zfs_exporter`](https://github.com/waitingsong/zfs_exporter/releases/)   | `3.8.1`  | [MIT](https://github.com/waitingsong/zfs_exporter/blob/main/LICENSE)                  | Expose zfs metrics                 |
| [`mysqld_exporter`](https://github.com/prometheus/mysqld_exporter)        | `0.19.0` | [Apache-2.0](https://github.com/prometheus/mysqld_exporter/blob/main/LICENSE)         | Expose mysql metrics               |
| [`redis_exporter`](https://github.com/oliver006/redis_exporter)           | `1.82.0` | [MIT](https://github.com/oliver006/redis_exporter/blob/master/LICENSE)                | Expose redis metrics               |
| [`kafka_exporter`](https://github.com/danielqsj/kafka_exporter)           | `1.9.0`  | [Apache-2.0](https://github.com/danielqsj/kafka_exporter/blob/master/LICENSE)         | Expose kafka metrics               |
| [`mongodb_exporter`](https://github.com/percona/mongodb_exporter)         | `0.50.0` | [Apache-2.0](https://github.com/percona/mongodb_exporter/blob/main/LICENSE)           | Expose mongodb metrics             |
| [`mtail`](https://github.com/google/mtail)                                | `3.0.8`  | [Apache-2.0](https://github.com/google/mtail/blob/main/LICENSE)                       | Parse logs and generate metrics    |
| [`vector`](https://github.com/vectordotdev/vector/releases)               | `0.55.0` | [MPL-2.0](https://github.com/vectordotdev/vector/blob/master/LICENSE)                 | Versatile log collector            |
{.stretch-last}


--------

## Object Storage

| Name                                                    | Version          | License                                                                         | Comment                            |
|---------------------------------------------------------|------------------|---------------------------------------------------------------------------------|------------------------------------|
| [`minio`](https://github.com/pgsty/minio)               | `20260417000000` | [AGPLv3](https://github.com/minio/minio/blob/master/LICENSE)                    | FOSS S3 server, now built by pgsty |
| [`mcli`](https://github.com/pgsty/mc)                   | `20260417000000` | [AGPLv3](https://github.com/pgsty/mc/blob/main/LICENSE)                         | FOSS S3 client, now built by pgsty |
| [`rustfs`](https://github.com/rustfs/rustfs)            | `1.0.0-beta.1`       | [Apache-2.0](https://github.com/rustfs/rustfs/blob/main/LICENSE)                | FOSS MinIO, Beta                   |
| [`garage`](https://git.deuxfleurs.fr/Deuxfleurs/garage) | `2.3.0`          | [AGPL-3.0](https://git.deuxfleurs.fr/Deuxfleurs/garage/src/branch/main/LICENSE) | Lightweight S3                     |
| [`seaweedfs`](https://github.com/seaweedfs/seaweedfs)   | `4.22`           | [Apache-2.0](https://github.com/seaweedfs/seaweedfs/blob/master/LICENSE)        | S3 for small files                 |
| [`rclone`](https://github.com/rclone/rclone/)           | `1.73.5`         | [MIT](https://github.com/rclone/rclone/blob/master/COPYING)                     | S3 command line tool               |
| [`restic`](https://github.com/restic/restic)            | `0.18.1`         | [BSD-2](https://github.com/restic/restic/blob/master/LICENSE)                   | Backup tool                        |
| [`juicefs`](https://github.com/juicedata/juicefs)       | `1.3.1`          | [Apache-2.0](https://github.com/juicedata/juicefs/blob/main/LICENSE)            | Filesystem over S3                 |
{.stretch-last}

{{% alert title="MinIO is now maintained by a pgsty fork" color="info" %}}
[`minio/minio`](https://github.com/minio/minio) is no longer maintained. Pigsty now maintains its own MinIO forks at [`pgsty/minio`](https://github.com/pgsty/minio) and [`pgsty/mc`](https://github.com/pgsty/mc).
`minio` and `mcli` both use the latest builds maintained by pgsty.

{{% /alert %}}


--------

## Databases

PostgreSQL related tools, DBMS, and other utilities

| Name                                                        | Version   | License                                                                            | Comment                                 |
|-------------------------------------------------------------|-----------|------------------------------------------------------------------------------------|-----------------------------------------|
| [`etcd`](https://github.com/etcd-io/etcd)                   | `3.6.10`  | [Apache-2.0](https://github.com/etcd-io/etcd/blob/main/LICENSE)                    | Fault-tolerant distributed coordination |
| [`kafka`](https://github.com/apache/kafka)                  | `4.2.0`   | [Apache-2.0](https://github.com/apache/kafka/blob/trunk/LICENSE)                   | Message queue                           |
| [`duckdb`](https://github.com/duckdb/duckdb)                | `1.5.2`   | [MIT](https://github.com/duckdb/duckdb/blob/main/LICENSE)                          | Embedded OLAP                           |
| [`ferretdb`](https://github.com/FerretDB/FerretDB)          | `2.7.0`   | [Apache-2.0](https://github.com/FerretDB/FerretDB/blob/main/LICENSE)               | MongoDB over PG                         |
| [`tigerbeetle`](https://github.com/tigerbeetle/tigerbeetle) | `0.17.2` | [Apache-2.0](https://github.com/tigerbeetle/tigerbeetle/blob/main/LICENSE)         | Financial OLTP                          |
| [`ivorysql`](https://github.com/IvorySQL/IvorySQL)          | `5.3`     | [Apache-2.0](https://github.com/IvorySQL/IvorySQL/blob/IVORY_REL_5_STABLE/LICENSE) | Oracle compatible PG 18.1               |
{.stretch-last}


--------

## Utilities

Pig package manager, PostgreSQL tools, and other database related utilities

| Name                                                                                    | Version    | License                                                                                 | Comment                                                         |
|-----------------------------------------------------------------------------------------|------------|-----------------------------------------------------------------------------------------|-----------------------------------------------------------------|
| [`pig`](https://github.com/pgsty/pig)                                                   | `1.4.1`    | [Apache-2.0](https://github.com/pgsty/pig/blob/main/LICENSE)                            | PG package manager                                              |
| [`vip-manager`](https://github.com/cybertec-postgresql/vip-manager)                     | `4.2.0`    | [BSD-2](https://github.com/cybertec-postgresql/vip-manager/blob/master/LICENSE)         | Bind L2 VIP to PG primary                                       |
| [`pgschema`](https://github.com/pgplex/pgschema)                                        | `1.9.0`    | [Apache-2.0](https://github.com/pgplex/pgschema/blob/main/LICENSE)                      | Terraform-style declarative Postgres schema migration CLI       |
| [`pgstream`](https://github.com/xataio/pgstream)                                        | `1.0.1`    | [Apache-2.0](https://github.com/xataio/pgstream/blob/main/LICENSE)                      | PostgreSQL replication with DDL changes                         |
| [`pg_timetable`](https://github.com/cybertec-postgresql/pg_timetable)                   | `6.3.0`    | [PostgreSQL](https://github.com/cybertec-postgresql/pg_timetable/blob/master/LICENSE)   | Advanced scheduling for PostgreSQL                              |
| [`timescaledb-tools`](https://github.com/timescale/timescaledb-tune)                    | `0.19.0`   | [Apache-2.0](https://github.com/timescale/timescaledb-tune/blob/main/LICENSE)           | Optimize timescaledb params                                     |
| [`timescaledb-event-streamer`](https://github.com/noctarius/timescaledb-event-streamer) | `0.20.0`   | [Apache-2.0](https://github.com/noctarius/timescaledb-event-streamer/blob/main/LICENSE) | CDC on timescaledb hypertable                                   |
| [`tigerfs`](https://github.com/timescale/tigerfs)                                       | `0.6.0`    | [MIT](https://github.com/timescale/tigerfs/blob/main/LICENSE)                           | Mount PostgreSQL as a filesystem                                |
| [`dblab`](https://github.com/danvergara/dblab)                                          | `0.38.0`   | [MIT](https://github.com/danvergara/dblab/blob/main/LICENSE)                            | Multi-database CLI tool                                         |
| [`rainfrog`](https://github.com/achristmascarl/rainfrog)                                | `0.3.18`   | [MIT](https://github.com/achristmascarl/rainfrog/blob/main/LICENSE)                     | Terminal Postgres database management tool                      |
| [`sql-studio`](https://github.com/frectonz/sql-studio)                                  | `0.1.51`   | [MIT](https://github.com/frectonz/sql-studio/blob/main/LICENSE)                         | Terminal SQL database explorer                                  |
| [`sqlcmd`](https://github.com/microsoft/go-sqlcmd)                                      | `1.10.0`    | [MIT](https://github.com/microsoft/go-sqlcmd/blob/main/LICENSE)                         | MS SQL Server CLI client                                        |
| [`pev2`](https://github.com/dalibo/pev2)                                                | `1.21.0`   | [PostgreSQL](https://github.com/dalibo/pev2/blob/master/LICENSE.md)                     | PostgreSQL explain visualizer 2                                 |
| [`sealos`](https://github.com/labring/sealos)                                           | `5.1.1`    | [Apache-2.0](https://github.com/labring/sealos/blob/main/LICENSE)                       | Battery-included Kubernetes distribution                        |
| [`vray`](https://github.com/v2fly/v2ray-core)                                           | `5.48.0`   | [MIT](https://github.com/v2fly/v2ray-core/blob/master/LICENSE)                          | Build proxies to bypass network restrictions                    |
| [`xray`](https://github.com/XTLS/Xray-core)                                             | `26.3.27`   | [MPL-2.0](https://github.com/XTLS/Xray-core/blob/main/LICENSE)                          | Next-generation proxy core with advanced routing and transports |
| [`gost`](https://github.com/ginuerzh/gost)                                              | `2.12.0`   | [MIT](https://github.com/ginuerzh/gost/blob/master/LICENSE)                             | General-purpose tunneling and proxy tool written in Go          |
| [`sabiql`](https://github.com/riii111/sabiql)                                           | `1.11.1`    | [MIT](https://github.com/riii111/sabiql/blob/main/LICENSE)                              | Modern SQL client for PostgreSQL and MySQL                      |
| [`postgrest`](https://github.com/PostgREST/postgrest)                                   | `14.10`     | [MIT](https://github.com/PostgREST/postgrest/blob/main/LICENSE)                         | PostgreSQL RESTful API server                                   |
| [`npgsqlrest`](https://github.com/vb-consulting/NpgsqlRest)                             | `3.12.0`   | [MIT](https://github.com/vb-consulting/NpgsqlRest/blob/master/LICENSE.md)               | .NET PostgreSQL REST API generator                              |
| [`caddy`](https://github.com/caddyserver/caddy)                                         | `2.11.2`   | [Apache-2.0](https://github.com/caddyserver/caddy/blob/master/LICENSE)                  | Web server with automatic HTTPS                                 |
| [`hugo`](https://github.com/gohugoio/hugo)                                              | `0.161.1`  | [Apache-2.0](https://github.com/gohugoio/hugo/blob/master/LICENSE)                      | Fast static site generator                                      |
| [`cloudflared`](https://github.com/cloudflare/cloudflared)                              | `2026.2.0` | [Apache-2.0](https://github.com/cloudflare/cloudflared/blob/master/LICENSE)             | Cloudflare tunnel client                                        |
| [`headscale`](https://github.com/juanfont/headscale)                                    | `0.28.0`   | [BSD-3](https://github.com/juanfont/headscale/blob/main/LICENSE)                        | Self-hosted Tailscale control server                            |
| [`stalwart`](https://github.com/stalwartlabs/stalwart)                                  | `0.16.2`   | [AGPLv3](https://github.com/stalwartlabs/stalwart/blob/main/LICENSE)                    | Modern full-featured mail server                                |
| [`maddy`](https://github.com/foxcpp/maddy)                                              | `0.9.3`    | [GPL-3.0](https://github.com/foxcpp/maddy/blob/master/LICENSE)                          | Lightweight mail server                                         |
{.stretch-last}


--------

## AI

AI agents, MCP toolboxes, coding IDEs, Python/Go/Node tools...

| Name                                                           | Version   | License                                                                     | Comment                                                    |
|----------------------------------------------------------------|-----------|-----------------------------------------------------------------------------|------------------------------------------------------------|
| [`claude`](https://github.com/anthropics/claude-code)          | `2.1.123` | [Proprietary](https://www.anthropic.com/legal/terms)                        | Claude Code - Anthropic agentic coding                     |
| [`opencode`](https://github.com/anomalyco/opencode)            | `1.14.30` | [MIT](https://github.com/anomalyco/opencode/blob/main/LICENSE)              | Terminal AI coding assistant                               |
| [`codex`](https://github.com/openai/codex)                     | `0.125.0` | [Apache-2.0](https://github.com/openai/codex/blob/main/LICENSE)             | OpenAI coding agent CLI                                    |
| [`crush`](https://github.com/charmbracelet/crush)              | `0.64.0`  | [FSL-1.1-MIT](https://github.com/charmbracelet/crush/blob/main/LICENSE.md)  | Charm's terminal AI coding agent                           |
| [`agentsview`](https://github.com/wesm/agentsview)             | `0.26.0`  | [MIT](https://github.com/wesm/agentsview/blob/main/LICENSE)                 | Browse and replay AI coding agent trajectories in terminal |
| [`code`](https://code.visualstudio.com/)                       | `1.118.1` | [MIT](https://github.com/microsoft/vscode/blob/main/LICENSE.txt)            | Visual Studio Code editor                                  |
| [`code-server`](https://github.com/coder/code-server)          | `4.117.0` | [MIT](https://github.com/coder/code-server/blob/main/LICENSE)               | VS Code in the browser                                     |
| [`genai-toolbox`](https://github.com/googleapis/mcp-toolbox)   | `1.1.0`   | [Apache-2.0](https://github.com/googleapis/mcp-toolbox/blob/main/LICENSE)   | Google database MCP server                                 |
| [`uv`](https://github.com/astral-sh/uv)                        | `0.11.8`  | [MIT](https://github.com/astral-sh/uv/blob/main/LICENSE-MIT)                | Next-gen Python package manager                            |
| [`golang`](https://golang.org/)                                | `1.26.2`  | [BSD-3](https://github.com/golang/go/blob/master/LICENSE)                   | Go compiler                                                |
| [`nodejs`](https://nodejs.org/)                                | `24.15.0` | [MIT/Mixed](https://github.com/nodejs/node/blob/main/LICENSE)               | Server-side JavaScript runtime                             |
{.stretch-last}
