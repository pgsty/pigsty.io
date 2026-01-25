---
title: vibe
weight: 795
description: VIBE AI coding sandbox config template, integrating Code-Server, JupyterLab, Claude Code and JuiceFS web development environment
icon: fa-solid fa-laptop-code
categories: [Reference]
---

The `vibe` config template provides a ready-to-use **AI coding sandbox**, integrating Code-Server (Web VS Code), JupyterLab, Claude Code CLI, JuiceFS distributed filesystem, and feature-rich PostgreSQL database.


--------

## Overview

- Config Name: `vibe`
- Node Count: Single node
- Description: VIBE AI coding sandbox with Code-Server + JupyterLab + Claude Code + JuiceFS + PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c vibe [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/vibe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/vibe.yml)

{{< readfile file="yaml/vibe.yml" code="true" lang="yaml" >}}


--------

## Explanation

The `vibe` template is an **AI-era Web coding sandbox**, enabling development, data analysis, AI app building all in browser.

**Core Components**:

| Component       | Description                             | Access Method             |
|-----------------|----------------------------------------|---------------------------|
| **Code-Server** | Web version of VS Code, full-featured code editor | `http://<ip>/code`    |
| **JupyterLab**  | Interactive data science notebook, Python/SQL | `http://<ip>/jupyter` |
| **Claude Code** | AI coding assistant CLI with OpenTelemetry observability | Terminal `claude` command |
| **JuiceFS**     | PostgreSQL-based distributed filesystem | Mount point `/fs`        |
| **PostgreSQL 18** | Feature-rich database with vector/timeseries/fulltext extensions | Port `5432` |

**Pre-installed Dev Tools**:

- **AI Assistants**: `claude` (Claude Code CLI), `opencode` (CLI AI coding tool)
- **Language Runtimes**: `golang`, `nodejs`, `uv` (Python package manager)
- **Data Tools**: `postgrest` (auto REST API), `genai-toolbox`
- **Utilities**: `restic`, `rclone` (backup sync), `asciinema` (terminal recording)

**PostgreSQL Extensions**:

This template pre-installs rich PostgreSQL extensions covering AI/vector, timeseries, fulltext search, analytics:

```
# Vector & AI
pgvector, vchord, pgvectorscale, pg_search, pg_textsearch, vchord_bm25

# Timeseries & Geo
timescaledb, postgis, pg_cron

# Analytics & Lakehouse
pg_duckdb, pg_mooncake, pg_clickhouse, pg_parquet

# Security & Audit
pg_anon, pgsmcrypto, credcheck, pg_vault, pgsodium, pg_session_jwt

# Development
pg_tle, pljs, plprql, documentdb, pglinter
```


--------

## VIBE Module Components

VIBE module is new in v4.0.0, an AI coding sandbox module with three core components:

**Code-Server**: VS Code in browser

- Full VS Code functionality, extension support
- HTTPS access via Nginx reverse proxy
- Supports Open VSX and Microsoft extension marketplaces
- Related params: `code_enabled`, `code_port`, `code_data`, `code_password`, `code_gallery`

**JupyterLab**: Interactive computing environment

- Python/SQL/Markdown notebook support
- Pre-configured Python venv with data science libraries
- HTTPS access via Nginx reverse proxy
- Related params: `jupyter_enabled`, `jupyter_port`, `jupyter_data`, `jupyter_password`, `jupyter_venv`

**Claude Code**: AI coding assistant

- Configure Claude Code CLI, skip initial onboarding
- Built-in OpenTelemetry config, sends metrics/logs to Victoria stack
- Provides `claude-code` dashboard for usage monitoring
- Related params: `claude_enabled`, `claude_env`


--------

## JuiceFS Filesystem

This template uses **JuiceFS** for distributed filesystem capability, with a special feature: **both metadata and data stored in PostgreSQL**.

**Architecture Features**:

- **Metadata Engine**: Uses PostgreSQL for filesystem metadata storage
- **Data Storage**: Uses PostgreSQL Large Object for file data storage
- **Mount Point**: Default mount at `/fs` (controlled by `vibe_data` param)
- **Monitoring Port**: `9567` provides Prometheus metrics

**Use Cases**:

- Persistent storage for code projects
- Working directory for Jupyter Notebooks
- Storage for AI models and datasets
- File sharing across instances (when scaled to multiple nodes)

**Config Example**:

```yaml
juice_instances:
  jfs:
    path  : /fs
    meta  : postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
    data  : --storage postgres --bucket 10.10.10.10:5432/meta --access-key dbuser_meta --secret-key DBUser.Meta
    port  : 9567
```


--------

## Deployment Steps

```bash
# 1. Download Pigsty
curl https://repo.pigsty.io/get | bash

# 2. Use vibe config template
./configure -c vibe

# 3. Modify passwords (important!)
vi pigsty.yml
# Change code_password, jupyter_password, etc.

# 4. Deploy infrastructure and PostgreSQL
./deploy.yml

# 5. Deploy JuiceFS filesystem
./juice.yml

# 6. Deploy VIBE module (Code-Server, JupyterLab, Claude Code)
./vibe.yml
```


--------

## Access Methods

After deployment, access via browser:

```bash
# Code-Server (VS Code Web)
http://<ip>/code
# Password: Code.Server (please change)

# JupyterLab
http://<ip>/jupyter
# Password: Jupyter.Lab (please change)

# Claude Code Dashboard
http://<ip>:3000/d/claude-code
# Grafana default: admin / pigsty

# PostgreSQL
psql postgres://dbuser_meta:DBUser.Meta@<ip>:5432/meta
```


--------

## Use Cases

- **AI App Development**: Build RAG, Agent, LLM applications
- **Data Science**: Use JupyterLab for data analysis and visualization
- **Remote Development**: Setup Web IDE environment on cloud servers
- **Teaching Demos**: Provide consistent dev environment for students
- **Rapid Prototyping**: Quickly validate ideas without local env setup
- **Claude Code Observability**: Monitor AI coding assistant usage


--------

## Notes

- **Must change passwords**: `code_password` and `jupyter_password` defaults are for testing only
- **Network security**: This template opens world access (`addr: world`), production should configure firewall or VPN
- **Resource requirements**: Recommend at least 2 cores 4GB memory, SSD disk
- **Simplified architecture**: This template disables Patroni, PgBouncer etc HA components, suitable for single-node dev env
- **Claude API**: Using Claude Code requires configuring API key in `claude_env`


