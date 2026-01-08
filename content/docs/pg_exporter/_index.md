---
title: PG Exporter
weight: 5600
icon: fas fa-magnifying-glass
description: Advanced PostgreSQL & pgBouncer Metrics Exporter for Prometheus
---

The ultimate monitoring experience for PostgreSQL with **600+ metrics**, **declarative configuration**, and **dynamic planning** capabilities.

[**Get Started**](start) | [**GitHub**](https://github.com/pgsty/pg_exporter) | [**Live Demo**](https://g.pgsty.com)


--------

## Features

| Feature | Description |
|---------|-------------|
| **Comprehensive Metrics** | Monitor PostgreSQL (10-18+) and pgBouncer (1.8-1.24+) with 600+ metrics and ~3K time series per instance |
| **Declarative Configuration** | Define custom metrics through YAML configs with fine-grained control over timeout, caching, and skip conditions |
| **Custom Collectors** | Define your own metrics with declarative YAML configuration and dynamic query planning |
| **Auto-Discovery** | Automatically discover and monitor multiple databases within a PostgreSQL instance |
| **Dynamic Planning** | Automatically adapt metric collection based on PostgreSQL version, extensions, and server characteristics |
| **Production Ready** | Battle-tested in real-world environments across 12K+ cores for 6+ years with enterprise reliability |
| **Health Check APIs** | Comprehensive HTTP endpoints for service health and traffic routing with primary/replica detection |
| **Smart Caching** | Built-in caching mechanism with configurable TTL to reduce database load and improve performance |
| **Extension Aware** | Native support for TimescaleDB, Citus, pg_stat_statements, pg_wait_sampling and automatic detection |


--------

## Installation

PG Exporter provides multiple [install](install) methods to fit your infrastructure:

{{< tabpane persist="disabled" >}}
{{% tab header="Installation" disabled=true /%}}

{{< tab header="Docker" lang="bash" >}}
docker run -d --name pg_exporter -p 9630:9630 -e PG_EXPORTER_URL="postgres://user:pass@host:5432/postgres" pgsty/pg_exporter:latest
{{< /tab >}}

{{< tab header="YUM" lang="bash" >}}
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
{{< /tab >}}

{{< tab header="APT" lang="bash" >}}
sudo tee /etc/apt/sources.list.d/pigsty-infra.list > /dev/null <<EOF
deb [trusted=yes] https://repo.pigsty.io/apt/infra generic main
EOF

sudo apt update;
sudo apt install -y pg-exporter
{{< /tab >}}

{{< tab header="Binary" lang="bash" >}}
wget https://github.com/pgsty/pg_exporter/releases/download/v1.1.0/pg_exporter-v1.1.0.linux-amd64.tar.gz
tar -xf pg_exporter-v1.1.0.linux-amd64.tar.gz
sudo install pg_exporter-v1.1.0.linux-amd64/pg_exporter /usr/bin/
sudo install pg_exporter-v1.1.0.linux-amd64/pg_exporter.yml /etc/pg_exporter.yml
{{< /tab >}}

{{< tab header="Source" lang="bash" >}}
# Build from source
git clone https://github.com/pgsty/pg_exporter.git
cd pg_exporter
make build
{{< /tab >}}

{{< /tabpane >}}


--------

## Quick Start

Get PG Exporter up and running in minutes, [Getting Started](start) with:

```bash
# Run with PostgreSQL URL
PG_EXPORTER_URL='postgres://user:pass@localhost:5432/postgres' pg_exporter

# Access metrics
curl http://localhost:9630/metrics
```


--------

## Documentation

- [**Getting Started**](start) - Quick start guide and basic concepts
- [**Installation**](install) - Installation instructions for all platforms
- [**Configuration**](config) - Configuration reference and examples
- [**Deployment**](deploy) - Production deployment best practices
- [**Collectors**](https://github.com/pgsty/pg_exporter/tree/main/config) - Detailed documentation for all metric collectors


--------

## Live Demo

Experience PG Exporter in action with our live demo environment: **https://g.pgsty.com**

The demo showcases real PostgreSQL clusters monitored by PG Exporter, featuring:

- Real-time metrics visualization with Grafana
- Multiple PostgreSQL versions and configurations
- Extension-specific metrics and monitoring
- Complete observability stack powered by [Pigsty](https://pgsty.com)


--------

## Community & Support

- [**GitHub**](https://github.com/pgsty/pg_exporter) - Source code, issues, and contributions
- [**Discussions**](https://github.com/pgsty/pg_exporter/discussions) - Ask questions and share experiences
- [**Pigsty**](https://pgsty.com) - Complete PostgreSQL Distro with PG Exporter


--------

## License

PG Exporter is open-source software licensed under the [Apache License 2.0](https://github.com/pgsty/pg_exporter/blob/main/LICENSE).

Copyright 2018-2025 © [Ruohang Feng](https://vonng.com/en) / [rh@vonng.com](mailto:rh@vonng.com)
