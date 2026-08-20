---
title: "PG Exporter 1.4 Documentation"
linkTitle: pg_exporter 
weight: 8400
icon: fas fa-magnifying-glass
description: Advanced PostgreSQL & pgBouncer Metrics Exporter for Prometheus
module: [PG_EXPORTER]
category: [Concept]
---

The ultimate monitoring experience for PostgreSQL with **600+ metrics**, **declarative configuration**, and **dynamic planning** capabilities.

[**Get Started**](/docs/pg_exporter/start) | [**GitHub**](https://github.com/pgsty/pg_exporter) | [**Live Demo**](https://g.pgsty.com)


--------

## Features

| Feature                    | Description                                                                                                                                       |
|----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|
| **Comprehensive Metrics**  | 600+ metrics covering nearly every statistics view of PostgreSQL (10-19+) and pgBouncer (1.8-1.25+)                                               |
| **Declarative Collectors** | Every metric comes from a YAML collector definition — a SQL query plus execution conditions; add, change, or remove metrics without touching code |
| **Dynamic Planning**       | Each collector branch is admitted per target based on version, primary/replica role, installed extensions, and tags                               |
| **Auto-Discovery**         | Automatically discovers and scrapes every database in an instance, distinguished by the `datname` label                                           |
| **Health Check APIs**      | `/up`, `/primary`, `/replica` endpoints serve directly as load-balancer probes for primary/replica traffic routing                                |
| **Smart Caching**          | Per-collector TTL caching decouples scrape frequency from query frequency — probe and scrape storms never reach the database                      |
| **Snapshot Histograms**    | `HISTOGRAM` column type aggregates SQL snapshots into classic Prometheus histogram distributions                                                  |
| **Extension Aware**        | Native support for pg_stat_statements, pg_wait_sampling, citus, and timescaledb                                                                   |
| **Production Ready**       | Battle-tested in real-world environments across 12K+ cores for 6+ years                                                                           |


--------

## Version Info

- Current stable release: [`v1.4.1`](https://github.com/pgsty/pg_exporter/releases/tag/v1.4.1)
- Default config support: PostgreSQL **10-19+**
- Legacy config support: PostgreSQL **9.1-9.6** via the `legacy/` config bundle
- pgBouncer support: **1.8-1.25+**

See [Release Notes](/docs/pg_exporter/release) for the full history.


--------

## Design Rationale

`pg_exporter` is built around a few simple production-oriented principles:

- Local-first connectivity: fall back to `postgresql:///?sslmode=disable` when no explicit URL is provided, which fits same-host deployments
- Declarative collection: metric behavior is driven by YAML collector definitions with precise control over `ttl`, `timeout`, `tags`, and `fatal`
- Dynamic planning: choose the appropriate collector branch at runtime based on server version, role, extensions, and tags
- Keep serving under failure: use non-blocking startup by default so HTTP endpoints still come up while the database is temporarily unavailable
- Hot reload: support `POST` / `GET /reload` and `SIGHUP` reloads, with extra `SIGUSR1` support on non-Windows platforms
- Split probes from traffic: health endpoints use cached background probes instead of blocking the database on every request
- Tighten the management surface: `/reload`, `/explain`, and `/stat` expose runtime and config details, so production deployments should protect them with `--web.config.file` or keep them internal


--------

## Installation

PG Exporter provides multiple [installation](/docs/pg_exporter/install/) methods to fit your infrastructure:

```bash {tab="Docker"}
docker run -d --name pg_exporter -p 9630:9630 -e PG_EXPORTER_URL="postgres://user:pass@host:5432/postgres" pgsty/pg_exporter:latest
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
sudo yum install -y pg_exporter
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

Get PG Exporter up and running in minutes with [Getting Started](/docs/pg_exporter/start):

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

Experience PG Exporter in action with our live demo environment: **https://g.pgsty.com**

The demo showcases real PostgreSQL clusters monitored by PG Exporter, featuring:

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
