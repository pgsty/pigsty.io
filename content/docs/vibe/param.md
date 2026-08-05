---
title: Parameters
weight: 4820
description: VIBE module parameters (18 total).
icon: fas fa-cog
module: [VIBE]
categories: [Reference]
---

VIBE module has **18** parameters, grouped as:

- Common
- Code-Server
- JupyterLab
- Node.js
- Claude Code
- Codex CLI

--------

## Overview

| Parameter | Type | Level | Default | Description |
|:-----|:----:|:----:|:------|:-----|
| [`vibe_data`](#vibe_data) | `path` | `C` | `/fs` | Workspace dir |
| [`code_enabled`](#code_enabled) | `bool` | `C` | `true` | Enable Code-Server |
| [`code_port`](#code_port) | `port` | `C` | `8443` | Code-Server port |
| [`code_data`](#code_data) | `path` | `C` | `/data/code` | Code-Server data dir |
| [`code_password`](#code_password) | `string` | `C` | `Vibe.Coding` | Code-Server password |
| [`code_gallery`](#code_gallery) | `enum` | `C` | `openvsx` | Extension marketplace |
| [`jupyter_enabled`](#jupyter_enabled) | `bool` | `C` | `false` | Enable JupyterLab |
| [`jupyter_port`](#jupyter_port) | `port` | `C` | `8888` | JupyterLab port |
| [`jupyter_data`](#jupyter_data) | `path` | `C` | `/data/jupyter` | JupyterLab data dir |
| [`jupyter_password`](#jupyter_password) | `string` | `C` | `Vibe.Coding` | JupyterLab token |
| [`jupyter_venv`](#jupyter_venv) | `path` | `C` | `/data/venv` | Python venv path |
| [`nodejs_enabled`](#nodejs_enabled) | `bool` | `C` | `true` | Enable Node.js |
| [`nodejs_registry`](#nodejs_registry) | `url` | `C` | `''` | npm registry mirror |
| [`npm_packages`](#npm_packages) | `string[]` | `C` | `[]` | Additional global npm packages |
| [`claude_enabled`](#claude_enabled) | `bool` | `C` | `true` | Install and configure Claude Code |
| [`claude_package`](#claude_package) | `string` | `C` | `@anthropic-ai/claude-code` | Claude Code npm package |
| [`claude_env`](#claude_env) | `dict` | `C` | `{}` | Claude env vars |
| [`codex_enabled`](#codex_enabled) | `bool` | `C` | `true` | Install Codex CLI |
{.full-width}

--------

## Default Parameters

Defined in [`roles/vibe/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/vibe/defaults/main.yml):

```yaml
vibe_data: /fs

code_enabled: true
code_port: 8443
code_data: /data/code
code_password: Vibe.Coding
code_gallery: 'openvsx'

jupyter_enabled: false
jupyter_port: 8888
jupyter_data: /data/jupyter
jupyter_password: Vibe.Coding
jupyter_venv: /data/venv

nodejs_enabled: true
nodejs_registry: ''
npm_packages: []

claude_enabled: true
claude_package: '@anthropic-ai/claude-code'
claude_env: {}

codex_enabled: true
```

--------

## Common

### `vibe_data`

Workspace directory, default `/fs`. Code-Server and JupyterLab use it as their workspace root; `vibe_dir` renders `AGENTS.md` here and creates a `CLAUDE.md` symlink to it.

--------

## Code-Server

### `code_enabled`

Enable Code-Server, default `true`.

### `code_port`

Listen port, default `8443`; bound to `127.0.0.1` and forwarded by Nginx `/code/`.

### `code_data`

Data dir, config file at `code_data/code-server/config.yaml` (default `/data/code/code-server/config.yaml`).

### `code_password`

Login password, default `Vibe.Coding`; it must be changed in production.

### `code_gallery`

Extension marketplace: `openvsx` / `microsoft`.
When `region=china` and `openvsx`, Tsinghua mirror is used.

--------

## JupyterLab

### `jupyter_enabled`

Enable JupyterLab.
Module default is `false`; `conf/vibe.yml` explicitly sets it to `true` to enable a full sandbox.

### `jupyter_port`

Listen port, default `0.0.0.0:8888`.

### `jupyter_data`

Data dir, config file at `jupyter_data/jupyter_config.py` (default `/data/jupyter/jupyter_config.py`).

### `jupyter_password`

Access token, default `Vibe.Coding`, written to `c.IdentityProvider.token`.

### `jupyter_venv`

Python venv path for JupyterLab, default `/data/venv`; it must be created beforehand (usually by the `NODE` module).

--------

## Node.js

### `nodejs_enabled`

Enable the standalone Node.js installation task, default `true`.

### `nodejs_registry`

npm registry mirror; when empty and `region=china`, defaults to `https://registry.npmmirror.com`.

### `npm_packages`

Additional global npm packages, tagged `nodejs_pkg`; empty by default.
Claude Code and Codex CLI are installed by their own dedicated tasks and do not need to be added here.

--------

## Claude Code

### `claude_enabled`

Enable Claude Code installation and configuration, default `true`. `claude_install` installs the CLI, while `claude_config` writes its configuration.

### `claude_package`

The npm package used for Claude Code; defaults to `@anthropic-ai/claude-code`.

### `claude_env`

Extra env vars merged into default OpenTelemetry config.

Default env vars include:

- `CLAUDE_CODE_ENABLE_TELEMETRY=1`
- `OTEL_METRICS_EXPORTER=otlp`
- `OTEL_LOGS_EXPORTER=otlp`
- `OTEL_EXPORTER_OTLP_METRICS_PROTOCOL=http/protobuf`
- `OTEL_EXPORTER_OTLP_LOGS_PROTOCOL=http/protobuf`
- `OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=http://127.0.0.1:8428/opentelemetry/v1/metrics`
- `OTEL_EXPORTER_OTLP_LOGS_ENDPOINT=http://127.0.0.1:9428/insert/opentelemetry/v1/logs`
- `OTEL_RESOURCE_ATTRIBUTES=ip=<inventory_hostname>,job=claude`

--------

## Codex CLI

### `codex_enabled`

Whether to install Codex CLI; defaults to `true`. When enabled, `codex_install` runs `npm install -g @openai/codex`.
VIBE installs Codex CLI only; it does not manage Codex configuration or configure OpenTelemetry for it.
