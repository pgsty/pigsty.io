---
title: Parameters
weight: 4820
description: VIBE module parameters (16 total).
icon: fas fa-cog
module: [VIBE]
categories: [Param]
---

VIBE module has **16** parameters, grouped as:

- Common
- Code-Server
- JupyterLab
- Node.js
- Claude Code

--------

## Overview

| Parameter | Type | Level | Default | Description |
|:-----|:----:|:----:|:------|:-----|
| [`vibe_data`](#vibe_data) | `path` | `I` | `/fs` | Workspace dir |
| [`code_enabled`](#code_enabled) | `bool` | `I` | `true` | Enable Code-Server |
| [`code_port`](#code_port) | `port` | `I` | `8443` | Code-Server port |
| [`code_data`](#code_data) | `path` | `I` | `/data/code` | Code-Server data dir |
| [`code_password`](#code_password) | `string` | `I` | `Vibe.Coding` | Code-Server password |
| [`code_gallery`](#code_gallery) | `enum` | `I` | `openvsx` | Extension marketplace |
| [`jupyter_enabled`](#jupyter_enabled) | `bool` | `I` | `true` | Enable JupyterLab |
| [`jupyter_port`](#jupyter_port) | `port` | `I` | `8888` | JupyterLab port |
| [`jupyter_data`](#jupyter_data) | `path` | `I` | `/data/jupyter` | JupyterLab data dir |
| [`jupyter_password`](#jupyter_password) | `string` | `I` | `Vibe.Coding` | JupyterLab token |
| [`jupyter_venv`](#jupyter_venv) | `path` | `I` | `/data/venv` | Python venv path |
| [`nodejs_enabled`](#nodejs_enabled) | `bool` | `I` | `true` | Enable Node.js |
| [`nodejs_registry`](#nodejs_registry) | `url` | `I` | `''` | npm registry mirror |
| [`npm_packages`](#npm_packages) | `string[]` | `I` | `[]` | Global npm packages |
| [`claude_enabled`](#claude_enabled) | `bool` | `I` | `true` | Enable Claude config |
| [`claude_env`](#claude_env) | `dict` | `I` | `{}` | Claude env vars |
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

jupyter_enabled: true
jupyter_port: 8888
jupyter_data: /data/jupyter
jupyter_password: Vibe.Coding
jupyter_venv: /data/venv

nodejs_enabled: true
nodejs_registry: ''
npm_packages: []

claude_enabled: true
claude_env: {}
```

--------

## Common

### `vibe_data`

Workspace dir: default root for Code-Server and JupyterLab, and location for `CLAUDE.md` / `AGENTS.md`.

--------

## Code-Server

### `code_enabled`

Enable Code-Server.

### `code_port`

Listen port, bound to `127.0.0.1`, forwarded by Nginx `/code/`.

### `code_data`

Data dir, config file at `code_data/code-server/config.yaml` (default `/data/code/code-server/config.yaml`).

### `code_password`

Login password, must be changed in production.

### `code_gallery`

Extension marketplace: `openvsx` / `microsoft`.
When `region=china` and `openvsx`, Tsinghua mirror is used.

--------

## JupyterLab

### `jupyter_enabled`

Enable JupyterLab.

### `jupyter_port`

Listen port, default `0.0.0.0:8888`.

### `jupyter_data`

Data dir, config file at `jupyter_data/jupyter_config.py` (default `/data/jupyter/jupyter_config.py`).

### `jupyter_password`

Access token written to `c.IdentityProvider.token`.

### `jupyter_venv`

Python venv path for JupyterLab, must be created beforehand (usually by `NODE` module).

--------

## Node.js

### `nodejs_enabled`

Enable Node.js.

### `nodejs_registry`

npm registry mirror; when empty and `region=china`, defaults to `https://registry.npmmirror.com`.

### `npm_packages`

Global npm packages, tagged `nodejs_pkg`.

--------

## Claude Code

### `claude_enabled`

Enable Claude Code config tasks (generate config only, no CLI install).

### `claude_env`

Extra env vars merged into default OpenTelemetry config.

Default env vars include:

- `CLAUDE_CODE_ENABLE_TELEMETRY=1`
- `OTEL_METRICS_EXPORTER=otlp`
- `OTEL_LOGS_EXPORTER=otlp`
- `OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=http://127.0.0.1:8428/opentelemetry/v1/metrics`
- `OTEL_EXPORTER_OTLP_LOGS_ENDPOINT=http://127.0.0.1:9428/insert/opentelemetry/v1/logs`
