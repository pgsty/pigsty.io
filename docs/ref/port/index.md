# Port List

> Default ports used by Pigsty components, with related parameters and status.

---

LLMS index: [llms.txt](/llms.txt)

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
|  [**`INFRA`**](/docs/infra)    |      **`nginx_exporter`**          | `9113`  | [**`nginx_exporter_port`**](/docs/infra/param#nginx_exporter_port)           | Enabled  |
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
|  [**`MINIO`**](/docs/minio)    |          **Silo S3 API**           | `9000`  | [**`minio_port`**](/docs/minio/param#minio_port)                             | Optional |
|  [**`MINIO`**](/docs/minio)    |        **Silo admin port**         | `9001`  | [**`minio_admin_port`**](/docs/minio/param#minio_admin_port)                 | Optional |
|  [**`REDIS`**](/docs/redis)    |       **Redis / Valkey**           | `6379`  | [**`redis_instances`**](/docs/redis/param#redis_instances)                   | Optional |
|  [**`REDIS`**](/docs/redis)    |       **`redis_exporter`**         | `9121`  | [**`redis_exporter_port`**](/docs/redis/param#redis_exporter_port)           | Optional |
|   [**`VIBE`**](/docs/vibe)     |         **`code-server`**          | `8443`  | [**`code_port`**](/docs/vibe/param#code_port)                                | Optional |
|   [**`VIBE`**](/docs/vibe)     |          **`jupyterlab`**          | `8888`  | [**`jupyter_port`**](/docs/vibe/param#jupyter_port)                          | Optional |
|  [**`KAFKA`**](/docs/kafka)    |            **`broker`**            | `9092`  | [**`kafka_port`**](/docs/kafka/param#kafka_port)                             | 🧪 BETA  |
|  [**`KAFKA`**](/docs/kafka)    |       **`KRaft controller`**       | `9093`  | [**`kafka_controller_port`**](/docs/kafka/param#kafka_controller_port)       | 🧪 BETA  |
|  [**`KAFKA`**](/docs/kafka)    |        **`kafka_exporter`**        | `9308`  | [**`kafka_exporter_port`**](/docs/kafka/param#kafka_exporter_port)           | 🧪 BETA  |
|  [**`KAFKA`**](/docs/kafka)    |         **`JMX exporter`**         | `9404`  | [**`kafka_jmx_exporter_port`**](/docs/kafka/param#kafka_jmx_exporter_port)   | 🧪 BETA  |
| [**`MYSQL`**](/docs/mysql/) |          **`mysqld`**            | `3306`  | Fixed value (the current pilot exposes no port parameter)                    | 🧪 PILOT |
| [**`MYSQL`**](/docs/mysql/) |     **`MySQL X Protocol`**       | `33060` | Fixed value; loopback-only on a single node, member-facing in a 3-node topology | 🧪 PILOT |
| [**`MYSQL`**](/docs/mysql/) |    **`Group Replication`**       | `33061` | Fixed value; three-node InnoDB Cluster only                                  | 🧪 PILOT |
| [**`MYSQL`**](/docs/mysql/) |     **`MySQL Router RW`**        | `6446`  | Fixed value; three-node InnoDB Cluster only                                  | 🧪 PILOT |
| [**`MYSQL`**](/docs/mysql/) |     **`MySQL Router RO`**        | `6447`  | Fixed value; three-node InnoDB Cluster only                                  | 🧪 PILOT |
| [**`MYSQL`**](/docs/mysql/) |     **`mysqld_exporter`**        | `9104`  | Fixed value; controlled by `mysql_exporter_enabled`                          | 🧪 PILOT |
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

The native MySQL pilot reuses port `3306` for MySQL Shell AdminAPI. XtraBackup is invoked by a local systemd timer and has no listening port, while the role explicitly disables the MySQL Router REST management interface. The table lists only network endpoints currently managed by the role.


## Public Port Recommendations

If you use firewall [**`zone`**](/docs/node/param#node_firewall_mode) mode, expose only minimum required ports via [**`node_firewall_public_port`**](/docs/node/param#node_firewall_public_port):

- Minimal management surface: `22, 80, 443` (recommended)
- If public direct DB access is required: additionally expose `5432`

Avoid exposing internal component ports directly to the public internet: `etcd` (`2379/2380`), `patroni` (`8008`), exporters (`9xxx`), object-storage S3/admin endpoints (`9000/9001`), `redis` (`6379`), `ferretdb` (`27017/27018`), Kafka (`9092/9093`), MySQL Group Replication (`33061`), etc.

```yaml
node_firewall_mode: zone
node_firewall_public_port: [22, 80, 443]
# node_firewall_public_port: [22, 80, 443, 5432]  # only if public DB access is required
```
