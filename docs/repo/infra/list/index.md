# Package List

> Available packages in the Infra repository

---

LLMS index: [llms.txt](/llms.txt)

---

This page lists local `pigsty-infra` versions as of 2026-11-23. This batch updates 10 packages and adds two cargo-pgrx slots. The signed local APT and YUM repositories index all 24 DEBs and 24 RPMs. APT and DNF verification passed on both architectures. Online publication is pending. [Release log](/docs/repo/infra/log/#2026-11-23)

## Grafana Stack

| Name                                                                              | Version  | License                                                                                | Comment                                  |
| :-------------------------------------------------------------------------------- | :------- | :------------------------------------------------------------------------------------- | :--------------------------------------- |
| [`grafana`](https://github.com/grafana/grafana/)                                  | `13.3.1` | [AGPLv3](https://github.com/grafana/grafana/blob/main/LICENSE)                         | Observability and visualization platform |
| [`loki`](https://github.com/grafana/loki)                                         | `3.7.10`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Log aggregation system; locally indexed, publication pending |
| [`promtail`](https://github.com/grafana/loki/releases/tag/v3.6.11)                | `3.6.11` | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Loki log collection agent (EOL)          |
| [`logcli`](https://github.com/grafana/loki/releases/tag/v3.7.10)                   | `3.7.10`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Loki query CLI; locally indexed, publication pending |
| [`loki-canary`](https://github.com/grafana/loki/releases/tag/v3.7.10)              | `3.7.10`  | [AGPLv3](https://github.com/grafana/loki/blob/main/LICENSE)                            | Loki write-path health probe; locally indexed, publication pending |
| [`grafana-infinity-ds`](https://github.com/grafana/grafana-infinity-datasource/)  | `4.1.8`  | [Apache-2.0](https://github.com/grafana/grafana-infinity-datasource/blob/main/LICENSE) | JSON/CSV/XML datasource support; locally indexed, publication pending |
| [`grafana-plugins`](https://github.com/pgsty/infra-pkg/tree/main/grafana-plugins) | `13.3.1` | [Apache-2.0](https://github.com/pgsty/infra-pkg/blob/main/LICENSE)                     | Extra panel plugins by Pigsty (noarch); locally indexed, publication pending |
{.wide .expand}

## Victoria Stack

| Name                                                                                                    | Version   | License                                                                                          | Comment                                       |
| :------------------------------------------------------------------------------------------------------ | :-------- | :----------------------------------------------------------------------------------------------- | :-------------------------------------------- |
| [`victoria-metrics`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                | `1.156.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)             | High-performance TSDB, Prometheus alternative |
| [`victoria-logs`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                   | `1.54.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)             | High-performance log storage and query engine; locally indexed, publication pending |
| [`victoria-traces`](https://github.com/VictoriaMetrics/VictoriaTraces)                                  | `0.13.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaTraces/blob/master/LICENSE)              | Distributed tracing backend                   |
| [`victoria-metrics-cluster`](https://github.com/VictoriaMetrics/VictoriaMetrics)                        | `1.156.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)             | VictoriaMetrics distributed cluster |
| [`vmutils`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                         | `1.156.0` | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)             | VictoriaMetrics CLI utilities |
| [`vlogscli`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                        | `1.54.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)             | VictoriaLogs interactive query client; locally indexed, publication pending |
| [`vlagent`](https://github.com/VictoriaMetrics/VictoriaMetrics)                                         | `1.54.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/VictoriaMetrics/blob/master/LICENSE)             | VictoriaLogs log collection agent; locally indexed, publication pending |
| [`grafana-victorialogs-ds`](https://github.com/VictoriaMetrics/victorialogs-datasource/releases/)       | `0.34.0`  | [Apache-2.0](https://github.com/VictoriaMetrics/victorialogs-datasource/blob/main/LICENSE)       | VictoriaLogs Grafana datasource               |
| [`grafana-victoriametrics-ds`](https://github.com/VictoriaMetrics/victoriametrics-datasource/releases/) | `1.0.2`   | [AGPL-3.0-only](https://github.com/VictoriaMetrics/victoriametrics-datasource/blob/main/LICENSE) | VictoriaMetrics Grafana datasource; locally indexed, publication pending |
{.wide .expand}

> [!NOTE] Note on Victoria Grafana Datasource Plugins
> Pigsty splits the Victoria datasource extensions into architecture-specific sub-packages.
> If you install these plugins in your own Grafana instance, set this parameter in `/etc/grafana/grafana.ini`.
> It permits unsigned plugins.
>
> ```ini
> allow_loading_unsigned_plugins = victoriametrics-logs-datasource,victoriametrics-metrics-datasource
> ```

## Prometheus Stack

| Name                                                                   | Version  | License                                                                           | Comment                                   |
| :--------------------------------------------------------------------- | :------- | :-------------------------------------------------------------------------------- | :---------------------------------------- |
| [`prometheus`](https://github.com/prometheus/prometheus)               | `3.16.0` | [Apache-2.0](https://github.com/prometheus/prometheus/blob/main/LICENSE)          | Cloud-native monitoring & TSDB            |
| [`pushgateway`](https://github.com/prometheus/pushgateway)             | `1.11.4` | [Apache-2.0](https://github.com/prometheus/pushgateway/blob/master/LICENSE)       | Metrics push gateway for short-lived jobs |
| [`alertmanager`](https://github.com/prometheus/alertmanager)           | `0.35.0` | [Apache-2.0](https://github.com/prometheus/alertmanager/blob/main/LICENSE)        | Alert management & notification dispatch |
| [`blackbox-exporter`](https://github.com/prometheus/blackbox_exporter) | `0.29.1` | [Apache-2.0](https://github.com/prometheus/blackbox_exporter/blob/master/LICENSE) | Blackbox probing, endpoint availability   |
{.wide .expand}

## Metric Exporters

| Name                                                                      | Version  | License                                                                               | Comment                                                   |
| :------------------------------------------------------------------------ | :------- | :------------------------------------------------------------------------------------ | :-------------------------------------------------------- |
| [`pg-exporter`](https://github.com/pgsty/pg_exporter)                     | `1.6.1` | [Apache-2.0](https://github.com/pgsty/pg_exporter/blob/master/LICENSE)                | Advanced Postgres metrics exporter |
| [`pgbackrest-exporter`](https://github.com/woblerr/pgbackrest_exporter)   | `0.25.0` | [MIT](https://github.com/woblerr/pgbackrest_exporter/blob/master/LICENSE)             | Reproducible vendored source build for both architectures |
| [`node-exporter`](https://github.com/prometheus/node_exporter)            | `1.13.1` | [Apache-2.0](https://github.com/prometheus/node_exporter/blob/master/LICENSE)         | Expose Linux node metrics; locally indexed, publication pending |
| [`keepalived-exporter`](https://github.com/mehdy/keepalived-exporter)     | `1.7.1`  | [GPL-3.0](https://github.com/mehdy/keepalived-exporter/blob/master/LICENSE)           | Expose keepalived/VIP metrics                             |
| [`nginx-exporter`](https://github.com/nginxinc/nginx-prometheus-exporter) | `1.5.3`  | [Apache-2.0](https://github.com/nginxinc/nginx-prometheus-exporter/blob/main/LICENSE) | Expose nginx metrics                                      |
| [`zfs-exporter`](https://github.com/waitingsong/zfs_exporter/releases/)   | `3.8.1`  | [MIT](https://github.com/waitingsong/zfs_exporter/blob/main/LICENSE)                  | Expose zfs metrics                                        |
| [`mysqld-exporter`](https://github.com/prometheus/mysqld_exporter)        | `0.21.0` | [Apache-2.0](https://github.com/prometheus/mysqld_exporter/blob/main/LICENSE)         | Expose mysql metrics                                      |
| [`redis-exporter`](https://github.com/oliver006/redis_exporter)           | `1.98.0` | [MIT](https://github.com/oliver006/redis_exporter/blob/master/LICENSE)                | Expose redis metrics                                      |
| [`kafka-exporter`](https://github.com/danielqsj/kafka_exporter)           | `1.11.0` | [Apache-2.0](https://github.com/danielqsj/kafka_exporter/blob/master/LICENSE)         | Expose kafka metrics                                      |
| [`jmx-exporter`](https://github.com/prometheus/jmx_exporter)              | `1.7.0`  | [Apache-2.0](https://github.com/prometheus/jmx_exporter/blob/main/LICENSE)            | Expose JVM metrics (noarch)                               |
| [`mongodb-exporter`](https://github.com/percona/mongodb_exporter)         | `0.54.0` | [Apache-2.0](https://github.com/percona/mongodb_exporter/blob/main/LICENSE)           | Expose mongodb metrics                                    |
| [`mtail`](https://github.com/jaqx0r/mtail)                                | `3.4.22` | [Apache-2.0](https://github.com/jaqx0r/mtail/blob/main/LICENSE)                       | Parse logs and generate metrics; locally indexed, publication pending |
| [`vector`](https://github.com/vectordotdev/vector/releases)               | `0.62.0` | [MPL-2.0](https://github.com/vectordotdev/vector/blob/master/LICENSE)                 | Versatile log collector; locally indexed, publication pending |
{.wide .expand}

## Object Storage

| Name                                                    | Version              | License                                                                                 | Comment                                                |
| :------------------------------------------------------ | :------------------- | :-------------------------------------------------------------------------------------- | :----------------------------------------------------- |
| [`silo`](https://github.com/pgsty/silo)                 | `20261112000000.0.0` | [AGPLv3](https://github.com/pgsty/silo/blob/main/LICENSE)                               | Open-source S3-compatible object storage maintained by Pigsty |
| [`silo-console`](https://github.com/pgsty/silo-console) | `2.7.2` | [AGPLv3](https://github.com/pgsty/silo-console/blob/v2.7.2/LICENSE)                     | Standalone S3 administration console; official native packages |
| [`kes`](https://github.com/pgsty/kes)                   | `20261026000000.0.0` | [AGPL-3.0-only](https://github.com/pgsty/kes/blob/RELEASE.2026-10-26T00-00-00Z/LICENSE) | SILO key management service                            |
| [`mcli`](https://github.com/pgsty/mc)                   | `20261112000000.0.0` | [AGPLv3](https://github.com/pgsty/mc/blob/main/LICENSE)                                 | S3 command-line client |
| [`rustfs`](https://github.com/rustfs/rustfs)            | `1.0.6` | [Apache-2.0](https://github.com/rustfs/rustfs/blob/main/LICENSE)                        | Optional repository package; not the MINIO module backend; locally indexed, publication pending |
| [`garage`](https://git.deuxfleurs.fr/Deuxfleurs/garage) | `2.5.0`              | [AGPL-3.0](https://git.deuxfleurs.fr/Deuxfleurs/garage/src/branch/main/LICENSE)         | Lightweight S3                                         |
| [`seaweedfs`](https://github.com/seaweedfs/seaweedfs)   | `4.55`               | [Apache-2.0](https://github.com/seaweedfs/seaweedfs/blob/master/LICENSE)                | S3 for small files; locally indexed, publication pending |
| [`rclone`](https://github.com/rclone/rclone/)           | `1.76.0`             | [MIT](https://github.com/rclone/rclone/blob/master/COPYING)                             | S3 command line tool                                   |
| [`restic`](https://github.com/restic/restic)            | `0.20.0`             | [BSD-2](https://github.com/restic/restic/blob/master/LICENSE)                           | Backup tool; locally indexed, publication pending |
| [`juicefs`](https://github.com/juicedata/juicefs)       | `1.4.2`              | [Apache-2.0](https://github.com/juicedata/juicefs/blob/main/LICENSE)                    | Filesystem over S3                                     |
{.wide .expand}

> [!NOTE] SILO has replaced MinIO
> [`silo`](https://github.com/pgsty/silo) and [`mcli`](https://github.com/pgsty/mc) are the Pigsty-maintained server and client. Since 2026-08-06, the package, binary, and systemd service use the `silo` name. The S3/Admin APIs, `/minio/*` routes, `MINIO_*` variables, and on-disk format remain compatible.

## Kubernetes

| Name                                                                      | Version  | License                                                         | Comment                                                                           |
| :------------------------------------------------------------------------ | :------- | :-------------------------------------------------------------- | :-------------------------------------------------------------------------------- |
| [`k3s`](https://github.com/k3s-io/k3s)                                    | `1.37.2` | [Apache-2.0](https://github.com/k3s-io/k3s/blob/master/LICENSE) | Lightweight Kubernetes; upstream `v1.37.2+k3s1`; package revision 2PGSTY          |
| [`k3s-images`](https://github.com/k3s-io/k3s/releases/tag/v1.37.2%2Bk3s1) | `1.37.2` | Multiple                                                        | Exact-match, architecture-specific offline system images; package revision 2PGSTY |
{.wide .expand}

## Databases

PostgreSQL related tools, DBMS, and other utilities

| Name                                                        | Version  | License                                                                            | Comment                                 |
|-------------------------------------------------------------|----------|------------------------------------------------------------------------------------|-----------------------------------------|
| [`etcd`](https://github.com/etcd-io/etcd)                   | `3.7.4`  | [Apache-2.0](https://github.com/etcd-io/etcd/blob/main/LICENSE)                    | Fault-tolerant distributed coordination; locally indexed, publication pending |
| [`kafka`](https://github.com/apache/kafka)                  | `4.4.0`  | [Apache-2.0](https://github.com/apache/kafka/blob/trunk/LICENSE)                   | Message queue                           |
| [`duckdb`](https://github.com/duckdb/duckdb)                | `2.0.1`  | [MIT](https://github.com/duckdb/duckdb/blob/main/LICENSE)                          | Embedded OLAP; locally indexed, publication pending |
| [`ferretdb`](https://github.com/FerretDB/FerretDB)          | `2.7.0`  | [Apache-2.0](https://github.com/FerretDB/FerretDB/blob/main/LICENSE)               | MongoDB over PG                         |
| [`tigerbeetle`](https://github.com/tigerbeetle/tigerbeetle) | `0.17.9` | [Apache-2.0](https://github.com/tigerbeetle/tigerbeetle/blob/main/LICENSE)         | Financial OLTP                          |
| [`ivorysql`](https://github.com/IvorySQL/IvorySQL)          | `5.6` | [Apache-2.0](https://github.com/IvorySQL/IvorySQL/blob/IVORY_REL_5_STABLE/LICENSE) | Oracle compatible PG 18.6 |
{.wide .expand}

## Utilities

Pig package manager, PostgreSQL tools, and other database related utilities

| Name                                                                                    | Version     | License                                                                                 | Comment                                                                   |
| :-------------------------------------------------------------------------------------- | :---------- | :-------------------------------------------------------------------------------------- | :------------------------------------------------------------------------ |
| [`pig`](https://github.com/pgsty/pig)                                                   | `1.11.0`    | [Apache-2.0](https://github.com/pgsty/pig/blob/main/LICENSE)                            | PostgreSQL package manager |
| [`sow`](https://github.com/pgsty/sow)                                                   | `0.8.0` | [Apache-2.0](https://github.com/pgsty/sow/blob/main/LICENSE)                            | Software repository build and publication tool |
| [`barn`](https://github.com/pgsty/barn)                                                 | `1.3.0` | [Apache-2.0](https://github.com/pgsty/barn/blob/v1.3.0/LICENSE)                         | VM manager (stable) |
| [`openbao`](https://github.com/openbao/openbao)                                         | `2.7.3`     | [MPL-2.0](https://github.com/openbao/openbao/blob/main/LICENSE)                         | Open-source secrets and encryption management; locally indexed, publication pending |
| [`opentofu`](https://github.com/opentofu/opentofu)                                      | `1.13.9`    | [MPL-2.0](https://github.com/opentofu/opentofu/blob/main/LICENSE)                       | Open-source infrastructure-as-code tool                                   |
| [`vip-manager`](https://github.com/cybertec-postgresql/vip-manager)                     | `5.0.0`     | [BSD-2](https://github.com/cybertec-postgresql/vip-manager/blob/master/LICENSE)         | Bind L2 VIP to PG primary                                                 |
| [`pg-hardstorage`](https://github.com/cybertec-postgresql/pg_hardstorage)               | `1.7.0` | [Apache-2.0](https://github.com/cybertec-postgresql/pg_hardstorage/blob/main/LICENSE)   | PostgreSQL backup with continuous WAL streaming |
| [`pgext`](https://github.com/pgsty/pgext) | `1.7.2` | [Apache-2.0](https://github.com/pgsty/pgext/blob/v1.7.2/LICENSE) | PostgreSQL extension catalog CLI and web app; native packages |
| [`pgschema`](https://github.com/pgplex/pgschema)                                        | `1.15.0`    | [Apache-2.0](https://github.com/pgplex/pgschema/blob/main/LICENSE)                      | Terraform-style declarative Postgres schema migration CLI                 |
| [`pgstream`](https://github.com/xataio/pgstream)                                        | `1.6.0`     | [Apache-2.0](https://github.com/xataio/pgstream/blob/main/LICENSE)                      | PostgreSQL replication with DDL; pinned source build |
| [`pgbot`](https://github.com/pgrundev/pgbot)                                            | `0.10.0`     | [Apache-2.0](https://github.com/pgrundev/pgbot/blob/v0.10.0/LICENSE)                     | PostgreSQL diagnostics and JSON/MCP (beta); locally indexed, publication pending |
| [`pgterm`](https://github.com/pgrundev/pgterm)                                          | `0.4.0`     | [Apache-2.0](https://github.com/pgrundev/pgterm/blob/v0.4.0/LICENSE)                    | PostgreSQL terminal workspace with pgbot (beta)                           |
| [`pggo`](https://github.com/pgrundev/pggo)                                              | `0.1.1`     | [MIT](https://github.com/pgrundev/pggo/blob/v0.1.1/LICENSE)                             | JSON SQL CLI for scripts and agents                                       |
| [`pgsync`](https://github.com/pgrundev/pgsync)                                          | `0.1.1`     | [Apache-2.0](https://github.com/pgrundev/pgsync/blob/v0.1.1/LICENSE)                    | PostgreSQL snapshots and CDC (beta)                                       |
| [`pg-timetable`](https://github.com/cybertec-postgresql/pg_timetable)                   | `7.1.0`     | [PostgreSQL](https://github.com/cybertec-postgresql/pg_timetable/blob/master/LICENSE)   | Advanced scheduling for PostgreSQL                                        |
| [`timescaledb-tools`](https://github.com/timescale/timescaledb-tune)                    | `0.19.1` | [Apache-2.0](https://github.com/timescale/timescaledb-tune/blob/main/LICENSE)           | tune 0.19.1 + parallel-copy 0.13.2 |
| [`timescaledb-event-streamer`](https://github.com/noctarius/timescaledb-event-streamer) | `0.20.0`    | [Apache-2.0](https://github.com/noctarius/timescaledb-event-streamer/blob/main/LICENSE) | CDC on timescaledb hypertable                                             |
| [`tigerfs`](https://github.com/timescale/tigerfs)                                       | `0.7.0`     | [MIT](https://github.com/timescale/tigerfs/blob/main/LICENSE)                           | Mount PostgreSQL as a filesystem                                          |
| [`dblab`](https://github.com/danvergara/dblab)                                          | `0.55.2` | [MIT](https://github.com/danvergara/dblab/blob/main/LICENSE)                            | Multi-database CLI tool |
| [`rainfrog`](https://github.com/achristmascarl/rainfrog)                                | `0.4.7` | [MIT](https://github.com/achristmascarl/rainfrog/blob/main/LICENSE)                     | Terminal Postgres database management tool |
| [`sql-studio`](https://github.com/frectonz/sql-studio)                                  | `0.1.54`    | [MIT](https://github.com/frectonz/sql-studio/blob/main/LICENSE)                         | Terminal SQL database explorer; locally indexed, publication pending |
| [`sqlcmd`](https://github.com/microsoft/go-sqlcmd)                                      | `1.11.0`    | [MIT](https://github.com/microsoft/go-sqlcmd/blob/main/LICENSE)                         | MS SQL Server CLI client; locally indexed, publication pending |
| [`asciinema`](https://github.com/asciinema/asciinema)                                   | `3.2.1`     | [GPL-3.0](https://github.com/asciinema/asciinema/blob/main/LICENSE)                     | Terminal session recorder and player                                      |
| [`pev2`](https://github.com/dalibo/pev2)                                                | `1.25.0`    | [PostgreSQL](https://github.com/dalibo/pev2/blob/master/LICENSE.md)                     | PostgreSQL explain visualizer 2                                           |
| [`sealos`](https://github.com/labring/sealos/releases/tag/v5.0.1) | `5.0.1` | [Apache-2.0](https://github.com/labring/sealos/blob/v5.0.1/LICENSE) | Permanently locked; no further updates; local 2PGSTY rebuild; locally indexed; historical 5.1.1 removed; APT/DNF default to the locked version; publication pending |
| [`v2ray`](https://github.com/v2fly/v2ray-core)                                          | `5.53.0`    | [MIT](https://github.com/v2fly/v2ray-core/blob/master/LICENSE)                          | Build proxies to bypass network restrictions                              |
| [`xray`](https://github.com/XTLS/Xray-core)                                             | `26.11.9` | [MPL-2.0](https://github.com/XTLS/Xray-core/blob/main/LICENSE)                          | Next-generation proxy core with advanced routing and transports |
| [`gost`](https://github.com/ginuerzh/gost)                                              | `2.12.0`    | [MIT](https://github.com/ginuerzh/gost/blob/master/LICENSE)                             | General-purpose tunneling and proxy tool written in Go                    |
| [`sabiql`](https://github.com/riii111/sabiql)                                           | `3.1.0` | [MIT](https://github.com/riii111/sabiql/blob/main/LICENSE)                              | Modern SQL client for PostgreSQL and MySQL; locally indexed, publication pending |
| [`postgrest`](https://github.com/PostgREST/postgrest)                                   | `16.6`      | [MIT](https://github.com/PostgREST/postgrest/blob/main/LICENSE)                         | PostgreSQL RESTful API server (PostgreSQL 14+); locally indexed, publication pending |
| [`npgsqlrest`](https://github.com/NpgsqlRest/NpgsqlRest)                             | `4.1.0`    | [MIT](https://github.com/NpgsqlRest/NpgsqlRest/blob/v4.1.0/LICENSE)               | .NET PostgreSQL REST API generator; locally indexed, publication pending |
| [`caddy`](https://github.com/caddyserver/caddy)                                         | `2.11.9`    | [Apache-2.0](https://github.com/caddyserver/caddy/blob/master/LICENSE)                  | Web server with automatic HTTPS                                           |
| [`hugo`](https://github.com/gohugoio/hugo)                                              | `0.170.1`   | [Apache-2.0](https://github.com/gohugoio/hugo/blob/master/LICENSE)                      | Fast static site generator; locally indexed, publication pending |
| [`cloudflared`](https://github.com/cloudflare/cloudflared)                              | `2026.11.1` | [Apache-2.0](https://github.com/cloudflare/cloudflared/blob/master/LICENSE)             | Cloudflare tunnel client; locally indexed, publication pending |
| [`headscale`](https://github.com/juanfont/headscale)                                    | `0.29.7`    | [BSD-3](https://github.com/juanfont/headscale/blob/main/LICENSE)                        | Self-hosted Tailscale control server                                      |
| [`tailcat`](https://github.com/tailscale/tailcat)                                       | `0.7.0`     | [BSD-3](https://github.com/tailscale/tailcat/blob/main/LICENSE)                         | Netcat-like tool over Tailscale's data plane without its control plane    |
| [`stalwart`](https://github.com/stalwartlabs/stalwart)                                  | `1.1.1` | [AGPLv3](https://github.com/stalwartlabs/stalwart/blob/main/LICENSE)                    | Mail and collaboration server; 0.16.x upgrades require database migration; locally indexed, publication pending |
| [`maddy`](https://github.com/foxcpp/maddy)                                              | `0.9.8`     | [GPL-3.0](https://github.com/foxcpp/maddy/blob/master/LICENSE)                          | Lightweight mail server; locally indexed, publication pending |
{.wide .expand}

## AI

AI agents, MCP toolboxes, coding IDEs, Python/Go/Node tools...

| Name                                                       | Version   | License                                                                    | Comment                                                    |
| :--------------------------------------------------------- | :-------- | :------------------------------------------------------------------------- | :--------------------------------------------------------- |
| [`claude-code`](https://github.com/anthropics/claude-code) | `2.1.330` | [Proprietary](https://www.anthropic.com/legal/terms)                       | Official Anthropic packages; upstream bytes retained in dist; repository RPM copies carry PGSTY signatures; legacy `claude` needs a package-name migration; locally indexed, publication pending |
| [`opencode`](https://github.com/anomalyco/opencode)        | `1.19.6-1PGSTY` | [MIT](https://github.com/anomalyco/opencode/blob/main/LICENSE)             | Terminal AI coding assistant; locally indexed, publication pending |
| [`codex`](https://github.com/openai/codex)                 | `0.171.0` | [Apache-2.0](https://github.com/openai/codex/blob/main/LICENSE)            | OpenAI coding agent CLI; locally indexed, publication pending |
| [`pi-coding-agent`](https://github.com/earendil-works/pi) | `1.6.0` | [MIT](https://github.com/earendil-works/pi/blob/v1.6.0/LICENSE) | Extensible terminal coding agent; newly imported; locally indexed, publication pending |
| [`crush`](https://github.com/charmbracelet/crush)          | `0.102.0` | [FSL-1.1-MIT](https://github.com/charmbracelet/crush/blob/main/LICENSE.md) | Charm's terminal AI coding agent; locally indexed, publication pending |
| [`agentsview`](https://github.com/kenn-io/agentsview)      | `0.48.0` | [MIT](https://github.com/kenn-io/agentsview/blob/main/LICENSE)             | Browse and replay AI coding agent trajectories in terminal |
| [`t3code`](https://github.com/pingdotgg/t3code) | `0.1.11` | [MIT](https://github.com/pingdotgg/t3code/blob/v0.1.11/LICENSE) | T3 Code desktop; official DEB, repacked RPM; glibc 2.34+; locally indexed, publication pending; arm64 Cursor sandbox requires glibc 2.39 |
| [`orca-ide`](https://github.com/stablyai/orca) | `1.4.271` | [MIT](https://github.com/stablyai/orca/blob/v1.4.271/LICENSE) | Orca desktop; official DEB/RPM for both architectures; locally indexed, publication pending |
| [`code`](https://code.visualstudio.com/)                   | `1.147.0` | [MIT](https://github.com/microsoft/vscode/blob/main/LICENSE.txt)           | Visual Studio Code editor; locally indexed, publication pending |
| [`code-server`](https://github.com/coder/code-server)      | `4.146.0` | [MIT](https://github.com/coder/code-server/blob/main/LICENSE)              | VS Code in the browser; locally indexed, publication pending |
| [`mcp-toolbox`](https://github.com/googleapis/mcp-toolbox) | `1.18.0`  | [Apache-2.0](https://github.com/googleapis/mcp-toolbox/blob/main/LICENSE)  | Google database MCP server; locally indexed, publication pending |
| [`uv`](https://github.com/astral-sh/uv)                    | `0.13.9`  | [MIT](https://github.com/astral-sh/uv/blob/main/LICENSE-MIT)               | Next-gen Python package manager; locally indexed, publication pending |
| [`golang`](https://golang.org/)                            | `1.27.4` | [BSD-3](https://github.com/golang/go/blob/master/LICENSE)                  | Go compiler |
| [`nodejs`](https://nodejs.org/)                            | `26.13.1` | [MIT/Mixed](https://github.com/nodejs/node/blob/main/LICENSE)              | Node.js 26 LTS server-side JavaScript runtime |
{.wide .expand}

## Build toolchains

| Name              | Version  | Notes                                                         |
|-------------------|----------|---------------------------------------------------------------|
| `rust-toolchain` | `1.100.0` | Current Rust toolchain; private prefix; locally indexed, publication pending |
| `cargo-pgrx-0191` | `0.19.1` | Retained exact version slot                                   |
| `cargo-pgrx-0192` | `0.19.2` | New exact version slot, built natively on EL8                 |
| `cargo-pgrx-0193` | `0.19.3` | New exact version slot; 0191/0192 retained; native EL8 builds |
| `cargo-pgrx-0194` | `0.19.4` | Rust >= 1.96.0; PostgreSQL 13–19; locally indexed, publication pending |
| `cargo-pgrx-0195` | `0.19.5` | Rust >= 1.96.0, PG13–19 |
| `cargo-pgrx-0200` | `0.20.0` | Rust >= 1.99.1; PG15–19; locally indexed, publication pending |
| `cargo-pgrx-0201` | `0.20.1` | Rust >= 1.99.1, PG15–19 |
{.wide .expand}
