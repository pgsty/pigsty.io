---
title: "Module: VIBE"
weight: 4800
description: Deploy AI coding sandbox with Pigsty, including Code-Server, JupyterLab, and Claude Code.
icon: fas fa-laptop-code
module: [VIBE]
categories: [Reference]
---

VIBE module provides a complete **cloud development environment**, integrating browser-based VS Code, interactive computing platform JupyterLab, and AI coding assistant Claude Code.
Combined with JuiceFS distributed filesystem and feature-rich PostgreSQL, it creates a ready-to-use **AI coding sandbox**.


--------

## Components

VIBE module includes three core components:

| Component       | Description                                     | Default Port | Access Path      |
|:----------------|:------------------------------------------------|:-------------|:-----------------|
| **Code-Server** | VS Code in browser, full cloud IDE experience   | 8443         | `/code/`         |
| **JupyterLab**  | Interactive computing, Notebook/terminal/editor | 8888         | `/jupyter/`      |
| **Claude Code** | Anthropic's AI coding assistant CLI with observability | -      | CLI / Dashboard  |
{.full-width}


--------

## Architecture

VIBE components deploy as systemd services, exposed via Nginx reverse proxy with HTTPS:

```
User Browser
    │
    ├── https://h.pigsty/code/     ─────► Code-Server  (127.0.0.1:8443)
    ├── https://h.pigsty/jupyter/  ─────► JupyterLab   (127.0.0.1:8888)
    └── https://h.pigsty:3000/d/claude-code ──► Grafana Dashboard

Command Line
    └── ssh user@h.pigsty ──► Claude Code CLI

Shared Storage
    └── JuiceFS (/fs) ─────► PostgreSQL (metadata + data)
```


--------

## Features

- **Cloud IDE**: Access full VS Code dev environment via browser, code anywhere
- **Interactive Computing**: JupyterLab provides Notebook, terminal, editor multi-functional interface
- **AI Assistant**: Claude Code CLI with OpenTelemetry observability for monitoring and analysis
- **Shared Storage**: JuiceFS enables filesystem sharing with point-in-time recovery (PITR)
- **Rich PostgreSQL**: 400+ extensions pre-installed covering vector, timeseries, geo, analytics
- **One-Click Deploy**: Automated installation via Ansible playbooks, ready out-of-box


--------

## Quick Start

### 1. Prepare Config

Use `vibe` config template:

```bash
./configure -c vibe
```

### 2. Deploy Infrastructure

```bash
./deploy.yml    # Deploy INFRA + PGSQL
./juice.yml     # Deploy JuiceFS shared storage (optional)
```

### 3. Deploy VIBE Module

```bash
./vibe.yml      # Deploy Code-Server + JupyterLab + Claude Code
```

### 4. Access Services

| Service      | URL                               | Default Credential |
|:-------------|:----------------------------------|:-------------------|
| Code-Server  | `https://<ip>/code/`              | `Code.Server`      |
| JupyterLab   | `https://<ip>/jupyter/`           | `Jupyter.Lab`      |
| Claude Monitor | `https://<ip>:3000/d/claude-code` | Grafana creds    |
{.full-width}


--------

## Config Example

Typical VIBE configuration (see [`conf/vibe.yml`](/docs/conf/vibe/)):

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          # VIBE component config
          vibe_data: /fs                    # Working directory (JuiceFS mount)
          code_enabled: true                # Enable Code-Server
          code_password: 'Code.Server'      # Code-Server password
          jupyter_enabled: true             # Enable JupyterLab
          jupyter_password: 'Jupyter.Lab'   # JupyterLab Token
          claude_enabled: true              # Enable Claude Code

          # JuiceFS shared storage
          juice_instances:
            jfs:
              path: /fs
              meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
              data: --storage postgres --bucket postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta?prefix=juice
```


--------

## Pre-installed Tools

VIBE config template includes these development tools:

| Tool           | Description                      |
|:---------------|:---------------------------------|
| `claude`       | Anthropic Claude Code CLI        |
| `opencode`     | Open-source AI coding assistant  |
| `code-server`  | VS Code in browser               |
| `golang`       | Go language toolchain            |
| `nodejs`       | Node.js runtime                  |
| `uv`           | High-performance Python package manager |
| `postgrest`    | PostgreSQL RESTful API service   |
| `genai-toolbox`| Google GenAI Toolbox MCP service |
| `restic`       | Incremental backup tool          |
| `rclone`       | Cloud storage sync tool          |
| `asciinema`    | Terminal recording tool          |
{.full-width}


--------

## PostgreSQL Extensions

VIBE template PostgreSQL includes rich extensions:

- **Vector Search**: `pgvector`, `pgvectorscale`
- **Time Series**: `timescaledb`, `pg_timeseries`
- **Geospatial**: `postgis`, `h3`, `pgrouting`
- **Analytics**: `pg_duckdb`, `pg_analytics`, `hydra`
- **Full-text Search**: `pg_search`, `zhparser`
- **Security**: `pg_tde`, `supabase_vault`, `pgsodium`
- **More**: See [Extension Catalog](https://pgext.cloud)


--------

## Use Cases

- **AI-Assisted Dev**: Use Claude Code for intelligent coding, boost productivity
- **Data Science**: JupyterLab + PostgreSQL + vector/timeseries extensions for analytics platform
- **Remote Dev**: Access full dev environment via browser on any device
- **Training**: Quickly setup standardized learning environments
- **Prototyping**: Rapidly build PoC environments, validate technical solutions


--------

## Notes

{{% alert title="Security Warning" color="warning" %}}
- Always change default passwords (`code_password`, `jupyter_password`)
- Production: configure firewall to restrict access sources
- Claude Code requires API Key configuration
{{% /alert %}}


--------

## Documentation

- [**Configuration**](/docs/vibe/config/): How to configure VIBE module components
- [**Parameters**](/docs/vibe/param/): All VIBE module config parameters
- [**Playbook**](/docs/vibe/playbook/): Deploy and manage VIBE with Ansible playbooks
- [**Administration**](/docs/vibe/admin/): Daily management and operations guide
- [**Monitoring**](/docs/vibe/monitor/): Monitoring metrics and Dashboard guide
- [**FAQ**](/docs/vibe/faq/): Common questions and answers


