---
title: VIBE Config
weight: 4810
description: VIBE module configuration guide, including Code-Server, JupyterLab and Claude Code setup.
icon: fas fa-sliders
module: [VIBE]
categories: [Config]
---

VIBE module provides flexible configuration options to enable/disable components and customize their behavior.


--------

## Overview

VIBE module contains three independently configurable components:

| Component   | Enable Param        | Default | Description                |
|:------------|:--------------------|:--------|:---------------------------|
| Code-Server | `code_enabled`      | enabled | VS Code in browser         |
| JupyterLab  | `jupyter_enabled`   | enabled | Interactive computing env  |
| Claude Code | `claude_enabled`    | enabled | AI coding assistant CLI    |
{.full-width}

Configuration in Pigsty config file host/group vars:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          # VIBE config
          vibe_data: /fs
          code_enabled: true
          jupyter_enabled: true
          claude_enabled: true
```


--------

## Code-Server Config

### Basic Settings

```yaml
code_enabled: true           # Enable Code-Server
code_port: 8443              # Listen port (localhost only)
code_data: /data/code        # User data directory
code_password: 'Code.Server' # Login password
code_gallery: openvsx        # Extension marketplace
```

### Extension Marketplace

Code-Server supports multiple extension marketplaces:

| Option      | Description                    |
|:------------|:-------------------------------|
| `openvsx`   | Open VSX marketplace (default) |
| `microsoft` | Microsoft official marketplace |
{.full-width}

China mainland users auto-use Tsinghua mirror for acceleration.

### Example

```yaml
# Use Microsoft extension marketplace
code_enabled: true
code_password: 'MySecretPassword'
code_gallery: microsoft
code_data: /data/code
```


--------

## JupyterLab Config

### Basic Settings

```yaml
jupyter_enabled: true           # Enable JupyterLab
jupyter_port: 8888              # Listen port
jupyter_data: /data/jupyter     # Data directory
jupyter_password: 'Jupyter.Lab' # Login Token
jupyter_venv: /data/venv        # Python venv path
```

### Python Virtual Environment

JupyterLab runs in Python venv, needs pre-creation:

```bash
# Create venv
python3 -m venv /data/venv

# Install JupyterLab (VIBE playbook auto-installs)
/data/venv/bin/pip install jupyterlab ipykernel
```

### Example

```yaml
# Custom JupyterLab config
jupyter_enabled: true
jupyter_password: 'MySecretToken'
jupyter_port: 8888
jupyter_data: /data/jupyter
jupyter_venv: /data/venv
```


--------

## Claude Code Config

### Basic Settings

```yaml
claude_enabled: true   # Enable Claude Code
claude_env: {}         # Extra environment variables
```

### Configure API Key

Claude Code requires API Key. Pass via `claude_env`:

```yaml
claude_enabled: true
claude_env:
  ANTHROPIC_API_KEY: sk-ant-xxx-your-api-key
```

Or configure manually after deployment:

```bash
# Set env var
export ANTHROPIC_API_KEY=sk-ant-xxx-your-api-key

# Or use Claude Code config command
claude config set apiKey sk-ant-xxx-your-api-key
```

### OpenTelemetry Config

Claude Code includes OpenTelemetry observability by default, auto-pushing metrics and logs to VictoriaMetrics/VictoriaLogs:

- **Metrics endpoint**: `http://127.0.0.1:8428/opentelemetry/v1/metrics`
- **Logs endpoint**: `http://127.0.0.1:9428/insert/opentelemetry/v1/logs`

Config file at `~/.claude/settings.json`.


--------

## Working Directory

`vibe_data` param specifies shared working directory for all VIBE components:

```yaml
vibe_data: /fs   # Default uses JuiceFS mount point
```

This directory is used for:
- Code-Server default open directory
- JupyterLab Notebook root directory
- Claude Code working directory

Recommend using with JuiceFS for:
- Distributed filesystem high availability
- PostgreSQL-based PITR capability
- File sharing across nodes


--------

## Complete Examples

### Minimal Config

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          code_enabled: true
```

### Standard Config

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          # Working directory
          vibe_data: /fs

          # Code-Server
          code_enabled: true
          code_port: 8443
          code_password: 'Code.Server'
          code_gallery: openvsx

          # JupyterLab
          jupyter_enabled: true
          jupyter_port: 8888
          jupyter_password: 'Jupyter.Lab'
          jupyter_venv: /data/venv

          # Claude Code
          claude_enabled: true
          claude_env:
            ANTHROPIC_API_KEY: sk-ant-xxx
```

### AI Coding Sandbox Config

Complete AI coding sandbox config with JuiceFS shared storage:

```yaml
all:
  vars:
    version: v3.4.0
    admin_ip: 10.10.10.10
    infra_portal:
      home: { domain: h.pigsty }
      grafana: { domain: g.pigsty, endpoint: "${admin_ip}:3000" }
      prometheus: { domain: p.pigsty, endpoint: "${admin_ip}:9090" }
      alertmanager: { domain: a.pigsty, endpoint: "${admin_ip}:9093" }
      code: { domain: code.pigsty, endpoint: "127.0.0.1:8443", websocket: true }
      jupyter: { domain: jupyter.pigsty, endpoint: "127.0.0.1:8888", websocket: true }

    # PostgreSQL config
    pg_cluster: pg-meta
    pg_databases:
      - name: meta

    # JuiceFS config
    juice_instances:
      jfs:
        path: /fs
        meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
        data: --storage postgres --bucket postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta?prefix=juice

  children:
    infra:
      hosts:
        10.10.10.10:
          # VIBE config
          vibe_data: /fs
          code_enabled: true
          code_password: 'YourSecurePassword'
          jupyter_enabled: true
          jupyter_password: 'YourSecureToken'
          claude_enabled: true
          claude_env:
            ANTHROPIC_API_KEY: sk-ant-xxx
```


--------

## Disable Components

To disable specific components:

```yaml
# Only enable Code-Server
code_enabled: true
jupyter_enabled: false
claude_enabled: false

# Only enable JupyterLab
code_enabled: false
jupyter_enabled: true
claude_enabled: false

# Only enable Claude Code
code_enabled: false
jupyter_enabled: false
claude_enabled: true
```

Or disable via command line when running playbook:

```bash
./vibe.yml -l <host> -e code_enabled=false
./vibe.yml -l <host> -e jupyter_enabled=false
./vibe.yml -l <host> -e claude_enabled=false
```


--------

## Nginx Reverse Proxy

VIBE components exposed via Nginx reverse proxy. Related config in `infra_portal`:

```yaml
infra_portal:
  # Sub-path mode (default)
  home: { domain: h.pigsty }

  # Sub-domain mode (optional)
  code: { domain: code.pigsty, endpoint: "127.0.0.1:8443", websocket: true }
  jupyter: { domain: jupyter.pigsty, endpoint: "127.0.0.1:8888", websocket: true }
```

Access methods:
- **Sub-path**: `https://h.pigsty/code/`, `https://h.pigsty/jupyter/`
- **Sub-domain**: `https://code.pigsty`, `https://jupyter.pigsty`


