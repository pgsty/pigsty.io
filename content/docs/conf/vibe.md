---
title: vibe
weight: 260
description: VIBE AI coding sandbox config template, integrating Code-Server, JupyterLab, Claude Code, Codex CLI, and JuiceFS
icon: fa-solid fa-laptop-code
categories: [Reference]
---

The `vibe` config template provides a ready-to-use **AI coding sandbox**, integrating Code-Server (Web VS Code), JupyterLab, Claude Code observability, Codex CLI, JuiceFS distributed filesystem, and a feature-rich PostgreSQL database.


--------

## Overview

- Config Name: `vibe`
- Node Count: Single node
- Description: VIBE AI coding sandbox with Code-Server + JupyterLab + Claude Code + Codex CLI + JuiceFS + PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c vibe [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/vibe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/vibe.yml)

{{< include file="yaml/vibe.yml" code=true lang="yaml" >}}


--------

## Explanation

The `vibe` template is an **AI-era Web coding sandbox**, enabling development, data analysis, AI app building all in browser.

**Core Components**:

| Component       | Description                             | Access Method             |
|-----------------|----------------------------------------|---------------------------|
| **Code-Server** | Web version of VS Code, full-featured code editor | `http://<ip>/code`    |
| **JupyterLab**  | Interactive data science notebook, Python/SQL | `http://<ip>/jupyter` |
| **Claude Code** | AI coding runtime and observability entrypoint (`claude_env` customizable) | Terminal / Dashboard |
| **Codex CLI**   | OpenAI agentic coding CLI; VIBE installs it but does not manage its configuration | Terminal |
| **JuiceFS**     | PostgreSQL-based distributed filesystem | Mount point `/fs`        |
| **PostgreSQL 18** | Feature-rich database with `pg18-main` + categorized extension package groups | Port `5432` |

**Node tools explicitly installed by this template** (`node_packages`):

- `openssh-server`, `juicefs`, `restic`, `rclone`
- `uv`, `opencode`, `golang`
- `asciinema`, `tmux`

**PostgreSQL Extensions**:

This template installs PostgreSQL 18 extension groups by category:

```text
pg18-main, pg18-time, pg18-gis, pg18-rag, pg18-fts, pg18-olap,
pg18-feat, pg18-lang, pg18-type, pg18-util, pg18-func, pg18-admin,
pg18-stat, pg18-sec, pg18-fdw, pg18-sim, pg18-etl
```

By default, the `meta` database enables `postgis`, `timescaledb`, and `vector`; other extensions can be enabled as needed.


--------

## VIBE Module Components

The VIBE module provides AI coding sandbox capability; `vibe.yml` explicitly enables Code-Server and Jupyter and installs Claude Code and Codex CLI by default.

**Code-Server**: VS Code in browser

- Full VS Code functionality, extension support
- HTTPS access via Nginx reverse proxy
- Supports Open VSX and Microsoft extension marketplaces
- Explicit template params: `code_enabled`, `code_password`
- Optional params: `code_port`, `code_data`, `code_gallery`

**JupyterLab**: Interactive computing environment

- Python/SQL/Markdown notebook support
- Pre-configured Python venv with data science libraries
- HTTPS access via Nginx reverse proxy
- Explicit template params: `jupyter_enabled`, `jupyter_password`
- Optional params: `jupyter_port`, `jupyter_data`, `jupyter_venv`

**Claude Code**: AI coding assistant runtime

- Uses module default behavior to bootstrap Claude runtime
- Supports endpoint/API key overrides through `claude_env`
- Provides `claude-code` dashboard for usage monitoring

**Codex CLI**: AI coding assistant

- Controlled by `codex_enabled`, which defaults to `true`
- VIBE installs `@openai/codex` only; it does not write Codex configuration or connect Codex to the Claude Code dashboard


--------

## JuiceFS Filesystem

This template uses **JuiceFS** for distributed filesystem capability, with a special feature: **both metadata and data stored in PostgreSQL**.

**Architecture Features**:

- **Metadata Engine**: Uses PostgreSQL for filesystem metadata storage
- **Data Storage**: Uses PostgreSQL Large Object for file data storage
- **Mount Point**: Default mount at `/fs` (controlled by `juice_instances.jfs.path`)
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
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty

# 2. Use vibe config template
./configure -c vibe

# 3. Modify passwords (important!)
vi pigsty.yml
# Change code_password, jupyter_password, database, and infrastructure defaults

# 4. Deploy infrastructure and PostgreSQL
./deploy.yml

# 5. Optional: deploy the JuiceFS filesystem
./juice.yml -l 10.10.10.10

# 6. Deploy VIBE (Code-Server, JupyterLab, Claude Code, Codex CLI)
./vibe.yml -l 10.10.10.10
```


--------

## Access Methods

After deployment, access via browser:

```bash
# Code-Server (VS Code Web)
https://<domain>/code/
# Use the rotated code_password

# JupyterLab
https://<domain>/jupyter/
# Use the rotated jupyter_password token

# Claude Code Dashboard
https://<domain>/ui/d/claude-code
# Use the rotated Grafana administrator credentials

# PostgreSQL
psql 'host=<ip> port=5432 dbname=meta user=dbuser_meta sslmode=require'
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
- **Jupyter boundary**: The template listens on `0.0.0.0:8888`, allows any Origin, disables XSRF checks, and relies on the token by default; restrict the port and portal sources and never expose it directly to the Internet
- **Network security**: This template exposes `5432` (`node_firewall_public_port`) and includes `addr: world` HBA by default; remove those public paths for production and add portal Basic Auth when appropriate
- **Resource requirements**: Recommend at least 2 cores 4GB memory, SSD disk
- **Simplified architecture**: This template disables Patroni, PgBouncer etc HA components, suitable for single-node dev env
- **Claude API**: Using Claude Code requires configuring API key in `claude_env`
