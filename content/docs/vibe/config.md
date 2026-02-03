---
title: Configuration
weight: 4810
description: VIBE module configuration for Code-Server, JupyterLab, Node.js, and Claude Code.
icon: fas fa-sliders
module: [VIBE]
categories: [Config]
---

VIBE supports enabling components on demand and exposes services via a unified workspace and Nginx portal.

--------

## Overview

| Component | Enable Param | Default | Description |
|:-----|:---------|:--------:|:-----|
| Code-Server | `code_enabled` | Enabled | VS Code in browser |
| JupyterLab | `jupyter_enabled` | Enabled | Notebook / terminal / editor |
| Node.js | `nodejs_enabled` | Enabled | Node.js runtime and npm |
| Claude Code | `claude_enabled` | Enabled | CLI config and observability |
{.full-width}

Config usually lives at instance level:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          vibe_data: /fs
          code_enabled: true
          jupyter_enabled: true
          claude_enabled: true
```

--------

## Workspace

`vibe_data` is the unified workspace for VIBE:

- Code-Server default open directory
- JupyterLab `root_dir`
- Claude Code working dir
- `CLAUDE.md` / `AGENTS.md` context files

The `vibe_dir` task creates the directory and context files, owned by `node_user`.

```yaml
vibe_data: /fs
```

--------

## Code-Server

```yaml
code_enabled: true
code_port: 8443
code_data: /data/code
code_password: Vibe.Coding
code_gallery: openvsx
```

Notes:

- Service listens on `127.0.0.1:<code_port>` (default 8443), accessed via Nginx `/code/`
- Config file: `code_data/code-server/config.yaml` (default `/data/code/code-server/config.yaml`)
- Env file: `/etc/default/code`, used to configure extension marketplace

Extension marketplace:

- `code_gallery: microsoft` uses Microsoft marketplace
- When `region=china`, Open VSX defaults to Tsinghua mirror

--------

## JupyterLab

```yaml
jupyter_enabled: true
jupyter_port: 8888
jupyter_data: /data/jupyter
jupyter_password: Vibe.Coding
jupyter_venv: /data/venv
```

Notes:

- Service listens on `0.0.0.0:<jupyter_port>` (default 8888), base path `/jupyter/`
- Config file: `jupyter_data/jupyter_config.py` (default `/data/jupyter/jupyter_config.py`)
- Login token: `c.IdentityProvider.token`
- **Venv is not created automatically**, use `node_uv_env` in `NODE` module beforehand

Create venv example:

```bash
uv venv /data/venv
```

--------

## Node.js

```yaml
nodejs_enabled: true
nodejs_registry: ''
npm_packages:
  - '@anthropic-ai/claude-code'
  - pnpm
```

Notes:

- When `nodejs_registry` is empty and `region=china`, default registry is `https://registry.npmmirror.com`
- `npm_packages` are installed via `npm install -g` and available globally

--------

## Claude Code

Claude Code **only writes config**, CLI should be installed via `npm_packages` or manually.

```yaml
claude_enabled: true
claude_env:
  ANTHROPIC_API_KEY: sk-ant-xxx
```

Generated files:

- `~/.claude.json`
- `~/.claude/settings.json`

`claude_env` is merged with default OpenTelemetry env vars, sending telemetry to VictoriaMetrics / VictoriaLogs.

--------

## Nginx Portal

VIBE exposes services through [`infra_portal`](/docs/infra/param#infra_portal).
By default, `home` domain includes `/code/` and `/jupyter/` paths.

For dedicated domains:

```yaml
infra_portal:
  code: { domain: code.pigsty, endpoint: "127.0.0.1:8443", websocket: true }
  jupyter: { domain: jupyter.pigsty, endpoint: "127.0.0.1:8888", websocket: true }
```
