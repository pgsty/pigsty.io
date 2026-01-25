---
title: code
weight: 795
description: AI coding sandbox with Code-Server, Jupyter, JuiceFS and PostgreSQL
icon: fa-solid fa-laptop-code
categories: [Reference]
---

The `code` template provides a ready-to-use **AI coding sandbox**, integrating Code-Server (Web VS Code), Jupyter Lab, JuiceFS distributed filesystem, and a feature-rich PostgreSQL database.


--------

## Overview

- Config Name: `code`
- Node Count: Single node
- Description: AI coding sandbox with Web IDE + Jupyter + JuiceFS + PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c code [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/code.yml`](https://github.com/pgsty/pigsty/blob/main/conf/code.yml)

{{< readfile file="yaml/code.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `code` template is an **AI-era web coding sandbox**, enabling development, data analysis, and AI application building directly in browser.

**Core Components**:

| Component | Description | Access |
|-----------|-------------|--------|
| **Code-Server** | Web-based VS Code, full-featured editor | `http://<ip>/code` |
| **Jupyter Lab** | Interactive data science notebook | `http://<ip>:8888` |
| **JuiceFS** | PostgreSQL-backed distributed filesystem | Mount at `/fs` |
| **PostgreSQL 18** | Feature-rich database with vector/timeseries/FTS extensions | Port `5432` |

**Pre-installed Tools**:

- **AI Assistants**: `opencode`, `claude` CLI coding tools
- **Runtimes**: `golang`, `nodejs`, `uv` (Python package manager)
- **Data Tools**: `postgrest` (auto REST API), `genai-toolbox`
- **Utilities**: `restic`, `rclone` (backup/sync), `asciinema` (terminal recording)

**PostgreSQL Extensions**:

Pre-installed extensions covering AI/vector, timeseries, FTS, analytics:

```
# Vector & AI
pgvector, vchord, pgvectorscale, pg_search, vchord_bm25

# Timeseries & GIS
timescaledb, postgis, pg_cron

# Analytics & Lakehouse
pg_duckdb, pg_mooncake, pg_clickhouse, pg_parquet

# Security & Audit
pg_anon, pgsmcrypto, credcheck, pg_vault, pgsodium

# Development
pg_tle, pljs, plprql, documentdb
```


--------

## JuiceFS Filesystem

This template uses **JuiceFS** for distributed filesystem capability, with a unique feature: **both metadata and data stored in PostgreSQL**.

**Architecture**:

- **Metadata Engine**: PostgreSQL stores filesystem metadata
- **Data Storage**: PostgreSQL Large Objects store file data
- **Mount Point**: Default `/fs` directory
- **Metrics Port**: `9567` for Prometheus scraping

**Use Cases**:

- Persistent storage for code projects
- Jupyter Notebook working directory
- AI model and dataset storage
- File sharing across instances (when scaling to multiple nodes)

**Configuration**:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port  : 9567
```


--------

## Deployment

```bash
# 1. Download Pigsty
curl https://repo.pigsty.io/get | bash

# 2. Use code template
./configure -c code

# 3. Change passwords (important!)
vi pigsty.yml
# Modify code_password, jupyter_password, etc.

# 4. Deploy infra and PostgreSQL
./deploy.yml

# 5. Deploy JuiceFS filesystem
./juice.yml

# 6. Deploy Code-Server and Jupyter
./code.yml
```


--------

## Access

After deployment, access via browser:

```bash
# Code-Server (VS Code Web)
http://<ip>/code
# Password: Code.Server (change it!)

# Jupyter Lab
http://<ip>:8888
# Password: Jupyter.Lab (change it!)

# Grafana Monitoring
http://<ip>:3000
# Username: admin, Password: pigsty

# PostgreSQL
psql postgres://dbuser_meta:DBUser.Meta@<ip>:5432/meta
```


--------

## Use Cases

- **AI App Development**: Build RAG, Agent, LLM applications
- **Data Science**: Jupyter-based data analysis and visualization
- **Remote Development**: Cloud-based Web IDE environment
- **Education**: Consistent dev environment for students
- **Rapid Prototyping**: Quick idea validation without local setup


--------

## Notes

- **Change Passwords**: Default `code_password` and `jupyter_password` are for testing only
- **Network Security**: This template opens world access (`addr: world`), configure firewall or VPN for production
- **Resources**: Recommend 2+ cores, 4GB+ RAM, SSD storage
- **Simplified Architecture**: Patroni, PgBouncer disabled for single-node dev environment

