# Modules

> This article lists available Pigsty modules and the current module planning.

---

LLMS index: [llms.txt](/llms.txt)

---

----------------

## Core and Extension Modules

The table lists modules with separate configuration and documentation. GA, BETA, and PILOT indicate maturity; the module count does not imply that every module is production-ready.

| Module | Category | Status | Documentation | Description |
|:----------------------------:|:------:|:-----:|:--------------:|:--------------------------------------------------------------------|
| [**`PGSQL`**](/docs/pgsql) | **Core** | GA | `/docs/pgsql` | HA PostgreSQL with backups, monitoring, SOPs, and extensions |
| [**`INFRA`**](/docs/infra) | **Core** | GA | `/docs/infra` | Local repository, VictoriaMetrics/Logs/Traces, Grafana, and other infrastructure |
| [**`NODE`**](/docs/node) | **Core** | GA | `/docs/node` | Node initialization/convergence: tuning, admins, HAProxy, Vector, Keepalived |
| [**`ETCD`**](/docs/etcd) | **Core** | GA | `/docs/etcd` | PostgreSQL HA DCS: discovery, configuration, and election metadata |
| [**`MINIO`**](/docs/minio) | Extension | GA | `/docs/minio` | Silo S3-compatible object storage, usable as a PostgreSQL backup repository |
| [**`REDIS`**](/docs/redis) | Extension | GA | `/docs/redis` | Redis (default) or Valkey standalone, sentinel, and cluster deployment/monitoring |
| [**`DOCKER`**](/docs/docker) | Extension | GA | `/docs/docker` | Docker daemon and container application runtime |
| [**`VAULT`**](/docs/vault) | Extension | BETA | `/docs/vault` | OpenBao KMS and secrets storage (`roles/vault`, `roles/vault_remove`) |
| [**`JUICE`**](/docs/juice) | Extension | BETA | `/docs/juice` | JuiceFS distributed filesystem with PostgreSQL metadata |
| [**`VIBE`**](/docs/vibe) | Extension | BETA | `/docs/vibe` | Browser development environment with Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI |
|  [**`KAFKA`**](/docs/kafka)  | Extension |  PILOT  | `/docs/kafka`  | Apache Kafka 4.x dynamic KRaft cluster deployment, security baseline, and monitoring.                 |
| [**`MYSQL`**](/docs/mysql) | Extension | PILOT | `/docs/mysql` | Native MySQL 8.4 LTS standalone or three-node InnoDB Cluster with TLS, backups, and monitoring |
{.wide .expand}

----------------

## Core Modules

Pigsty provides four <span class="text-primary"><b>core</b></span> modules. Together, they deliver complete, highly available PostgreSQL services:

- [**`PGSQL`**](/docs/pgsql): Self-healing PostgreSQL clusters with HA, PITR, IaC, SOP, monitoring, and [**625**](/ext/list) extensions.
- [**`INFRA`**](/docs/infra): Local software repository, VictoriaMetrics, VictoriaLogs, VictoriaTraces, Grafana, Alertmanager, Blackbox Exporter...
- [**`NODE`**](/docs/node): Node convergence for hostname, timezone, NTP, SSH, sudo, HAProxy, Vector, and Keepalived.
- [**`ETCD`**](/docs/etcd): Distributed key-value store used as DCS for HA PostgreSQL clusters: consensus leader election/config management/service discovery.

These four modules are usually installed together. You can also use them separately. In practice, only the NODE module is usually mandatory.


----------------

## Extension Modules

Pigsty provides eight optional <span class="text-secondary"><b>extension</b></span> modules to expand the data infrastructure:

- [**`MINIO`**](/docs/minio): An S3-compatible object-storage module that deploys Silo and provides PostgreSQL backup integration and monitoring.
- [**`REDIS`**](/docs/redis): Redis server with standalone/sentinel/cluster production deployment and full monitoring support.
- [**`DOCKER`**](/docs/docker): Docker daemon service for one-click deployment of stateless software templates on Pigsty.
- [**`VAULT`**](/docs/vault): secrets/KMS module (`roles/vault` + `roles/vault_remove`) based on OpenBao, with Raft, mandatory TLS 1.3, and auto-unseal, for transparent encryption, object storage, and application secrets.
- [**`JUICE`**](/docs/juice): JuiceFS distributed filesystem module using PostgreSQL as metadata engine, providing shared POSIX storage.
- [**`VIBE`**](/docs/vibe): Browser-based development environment with Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.
- [**`KAFKA`**](/docs/kafka): Apache Kafka 4.x dynamic KRaft clusters with TLS/SCRAM/ACL security baseline, declarative topics/users, and full monitoring.
- [**`MYSQL`**](/docs/mysql): native MySQL 8.4 LTS (`roles/mysql` + `roles/mysql_remove`), standalone or three-node single-primary InnoDB Cluster, with mandatory TLS, node VIP, XtraBackup physical backups, and monitoring/alerts.

----------------

## Ecosystem Modules

These PostgreSQL ecosystem components are optional compatibility kernels or experimental capabilities and are not counted among the 12 modules above:

- [**`SUPABASE`**](/docs/pgsql/kernel/supabase), [**`DUCKDB`**](/docs/pilot/duckdb): peripheral ecosystem integration.
- [**`MSSQL`**](/docs/pgsql/kernel/babelfish), [**`IVORY`**](/docs/pgsql/kernel/ivorysql), [**`POLAR`**](/docs/pgsql/kernel/polardb), [**`CITUS`**](/docs/pgsql/kernel/citus), [**`CLOUDBERRY`**](/docs/pgsql/kernel/cloudberry), [**`PGEDGE`**](/docs/pgsql/kernel/pgedge): kernel replacement, distributed, and MPP forms.
- [**MySQL-compatible OpenHalo**](/docs/pgsql/kernel/openhalo), [**ORIOLE**](/docs/pgsql/kernel/orioledb), [**PGTDE**](/docs/pgsql/kernel/percona), and [**AGENS**](/docs/pgsql/kernel/agensgraph): protocol compatibility, storage engines, transparent encryption, and graph databases. `pg_mode: mysql` selects PostgreSQL-based OpenHalo, distinct from the standalone native [**MYSQL**](/docs/mysql/) 8.4 module.
- [**`GREENPLUM`**](/docs/pgsql/kernel/greenplum), [**`NEON`**](/docs/pgsql/kernel/neon): historical docs retained, no longer default public capabilities.
- [**`KUBE`**](/docs/pilot/kube/), [**`VICTORIA`**](/blog/db/victoria-stack/), [**`JUPYTER`**](/docs/app/jupyter/): other pilot modules, currently not open for public use.
