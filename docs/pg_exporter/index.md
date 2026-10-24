# PG Exporter 1.5.0 Documentation

> Advanced PostgreSQL & pgBouncer Metrics Exporter for Prometheus

---

LLMS index: [llms.txt](/llms.txt)

---

Monitor PostgreSQL with **460 metric definitions**, **declarative configuration**, and **dynamic planning**.

[**Get Started**](/docs/pg_exporter/start) | [**GitHub**](https://github.com/pgsty/pg_exporter) | [**Live Demo**](https://g.pgsty.com)


--------

## Features

| Feature                    | Description                                                                                                                                       |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| **Comprehensive Metrics**  | 460 metric definitions cover nearly every statistics view in PostgreSQL (10-19+) and pgBouncer (1.8-1.26+)                                               |
| **Declarative Collectors** | Define each metric in a YAML collector with a SQL query and execution conditions. Add, change, or remove metrics without code changes |
| **Dynamic Planning**       | Select each collector branch for a target by version, primary/replica role, installed extensions, and tags                               |
| **Auto-Discovery**         | Discover and scrape each database in an instance. The `datname` label identifies the database                                           |
| **Health Check APIs**      | Use `/up`, `/primary`, and `/replica` as load-balancer probes to route primary/replica traffic                                |
| **Smart Caching**          | Cache each collector by TTL. Frequent probes and scrapes do not cause an equal number of database queries                      |
| **Snapshot Histograms**    | Use the `HISTOGRAM` column type to aggregate SQL snapshots into classic Prometheus histogram distributions                                                  |
| **Extension Aware**        | Native support for pg_stat_statements, pg_wait_sampling, citus, and timescaledb                                                                   |
| **Production Ready**       | Used in production on 12K+ cores for 6+ years                                                                           |


--------

## Version Info

- Current stable release: [`v1.5.0`](https://github.com/pgsty/pg_exporter/releases/tag/v1.5.0)
- Default config support: PostgreSQL **10-19+**
- Legacy config support: PostgreSQL **9.1-9.6** via the `legacy/` config bundle
- pgBouncer support: **1.8-1.26+**

The v1.5.0 default bundle contains **58 YAML files** (57 collector files and one configuration reference), **96 version/role branches**, and **59 metric namespaces**. The 460 metric names are deduplicated across branches, including disabled collectors and two unexpanded `HISTOGRAM` definitions. Actual time-series counts depend on versions, objects, labels, and histogram buckets.

See [Release Notes](/docs/pg_exporter/release) for the full history.

Before upgrading, review the [v1.5.0 metric changes](/docs/pg_exporter/release/#v150-metric-compatibility) and [dashboard / alert migration checks](/docs/pg_exporter/config/#metric-compatibility). Retaining a metric name does not guarantee unchanged labels, state codes, or semantics; a PostgreSQL major-version upgrade also changes collector branch selection.


--------

## Design Rationale

`pg_exporter` uses these principles for production deployments:

- Local connections: if no URL is specified, use `postgresql:///?sslmode=disable` for a database on the same host.
- Declarative collection: use YAML collector definitions to control metric behavior with `ttl`, `timeout`, `tags`, and `fatal`.
- Dynamic planning: select the collector branch at runtime from the server version, role, extensions, and tags.
- Operation during failure: startup is non-blocking by default. HTTP endpoints start even if the database is temporarily unavailable.
- Hot reload: use `POST` / `GET /reload` or `SIGHUP` to reload. Non-Windows platforms also support `SIGUSR1`.
- Separate probes from traffic: health endpoints use cached background probes. Each request does not need a database query.
- Protect management endpoints: `/reload`, `/explain`, and `/stat` expose runtime and configuration details. In production, protect them with `--web.config.file` or keep them internal.


--------

## Installation

Select an [installation](/docs/pg_exporter/install/) method for your infrastructure:

```bash {tab="Docker"}
docker run -d --name pg_exporter -p 9630:9630 -e PG_EXPORTER_URL="postgres://user:pass@host:5432/postgres" pgsty/pg_exporter:1.5.0
```

```bash {tab="YUM"}
# RPM-based systems
sudo tee /etc/yum.repos.d/pigsty-infra.repo > /dev/null <<-'EOF'
[pigsty-infra]
name=Pigsty Infra for $basearch
baseurl=https://repo.pigsty.io/yum/infra/$basearch
enabled = 1
gpgcheck = 0
module_hotfixes=1
EOF

sudo yum makecache;
sudo yum install -y pg-exporter
```

```bash {tab="APT"}
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [trusted=yes] https://repo.pigsty.io/apt/infra generic main
EOF

sudo apt update;
sudo apt install -y pg-exporter
```

```bash {tab="Binary"}
VERSION=$(curl -fsSL https://api.github.com/repos/pgsty/pg_exporter/releases/latest | sed -n 's/.*"tag_name": "v\([^"]*\)".*/\1/p')
wget "https://github.com/pgsty/pg_exporter/releases/download/v${VERSION}/pg_exporter-${VERSION}.linux-amd64.tar.gz"
mkdir -p "pg_exporter-${VERSION}.linux-amd64"
tar -xf "pg_exporter-${VERSION}.linux-amd64.tar.gz" -C "pg_exporter-${VERSION}.linux-amd64"
sudo install "pg_exporter-${VERSION}.linux-amd64/pg_exporter" /usr/bin/
sudo install "pg_exporter-${VERSION}.linux-amd64/pg_exporter.yml" /etc/pg_exporter.yml
```

```bash {tab="Source"}
# Build from source
git clone https://github.com/pgsty/pg_exporter.git
cd pg_exporter
make build
```


--------

## Quick Start

Follow [Getting Started](/docs/pg_exporter/start) to start PG Exporter:

```bash
# Minimal startup with the local-first default URL
pg_exporter

# Or point to a specific target
PG_EXPORTER_URL='postgres://user:pass@localhost:5432/postgres' pg_exporter

# Access metrics
curl http://localhost:9630/metrics

# Reload configuration online (POST recommended)
curl -X POST http://localhost:9630/reload
```


--------

## Documentation

- [**Getting Started**](/docs/pg_exporter/start) - Quick start guide and basic concepts
- [**Installation**](/docs/pg_exporter/install) - Installation instructions for all platforms
- [**Configuration**](/docs/pg_exporter/config) - Configuration reference and examples
- [**Deployment**](/docs/pg_exporter/deploy) - Production deployment best practices
- [**Collectors**](https://github.com/pgsty/pg_exporter/tree/main/config) - Detailed documentation for all metric collectors


--------

## Live Demo

Open the PG Exporter demo: **https://g.pgsty.com**

The demo monitors real PostgreSQL clusters with PG Exporter. It includes:

- Real-time metrics visualization with Grafana
- Multiple PostgreSQL versions and configurations
- Extension-specific metrics and monitoring
- Complete observability stack powered by [Pigsty](https://pigsty.io)


--------

## Community & Support

- [**GitHub**](https://github.com/pgsty/pg_exporter) - Source code, issues, and contributions
- [**Discussions**](https://github.com/pgsty/pg_exporter/discussions) - Ask questions and share experiences
- [**Pigsty**](https://pigsty.io) - Complete PostgreSQL Distro with PG Exporter


--------

## License

PG Exporter is open-source software licensed under the [Apache License 2.0](https://github.com/pgsty/pg_exporter/blob/main/LICENSE).

Copyright 2018-2026 © [Ruohang Feng](https://vonng.com/en) / [rh@vonng.com](mailto:rh@vonng.com)

---

Section pages:

- [Getting Started](/docs/pg_exporter/start/): Get pg_exporter running and see PostgreSQL metrics in Prometheus within ten minutes
- [Installation](/docs/pg_exporter/install/): How to download and install the pg_exporter
- [Configuration](/docs/pg_exporter/config/)
- [API Reference](/docs/pg_exporter/api/)
- [Deployment](/docs/pg_exporter/deploy/): Production deployment — connection & credentials, systemd / Docker / Kubernetes, auto-discovery and alerting
- [Release Notes](/docs/pg_exporter/release/)
