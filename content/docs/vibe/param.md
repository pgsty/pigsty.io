---
title: Parameters
weight: 4820
description: VIBE module parameters (18 total).
icon: fas fa-cog
module: [VIBE]
categories: [Reference]
---

The VIBE module has **18** parameters in these groups:

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
| [`claude_package`](#claude_package) | `string` | `C` | `claude` | Claude Code system package name |
| [`claude_env`](#claude_env) | `dict` | `C` | `{}` | Claude env vars |
| [`codex_enabled`](#codex_enabled) | `bool` | `C` | `true` | Install the Codex CLI package |
{.full-width .wide .expand}

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
claude_package: claude
claude_env: {}

codex_enabled: true
```

--------

## Common

### `vibe_data`

Workspace directory. The default is `/fs`. Code-Server and JupyterLab use it as their workspace root. The `vibe_dir` task renders `AGENTS.md` here and creates a `CLAUDE.md` symlink to it.

--------

## Code-Server

### `code_enabled`

Enable Code-Server, default `true`.

### `code_port`

Listen port. The default is `8443`, bound to `127.0.0.1`. Nginx forwards requests through `/code/`.

### `code_data`

Data dir, config file at `code_data/code-server/config.yaml` (default `/data/code/code-server/config.yaml`).

### `code_password`

Login password. The default is `Vibe.Coding`. You must change it in production.

### `code_gallery`

Extension marketplace: `openvsx` / `microsoft`.
If `region=china` and the marketplace is `openvsx`, VIBE uses the Tsinghua mirror.

--------

## JupyterLab

### `jupyter_enabled`

Enable JupyterLab.
The module default is `false`. The `conf/vibe.yml` template explicitly sets it to `true` for a full sandbox.

### `jupyter_port`

Listen port, default `0.0.0.0:8888`.

### `jupyter_data`

Data dir, config file at `jupyter_data/jupyter_config.py` (default `/data/jupyter/jupyter_config.py`).

### `jupyter_password`

Access token, default `Vibe.Coding`, written to `c.IdentityProvider.token`.

### `jupyter_venv`

Python venv for JupyterLab, default `/data/venv`. If `<jupyter_venv>/bin/python` is absent, `jupyter_install` creates it with `uv venv`; if `<jupyter_venv>/bin/jupyter` is absent, it installs `jupyterlab` and `ipykernel`.

--------

## Node.js

### `nodejs_enabled`

Enable independent Node.js installation/configuration, default `true`. This is separate from `claude_enabled` / `codex_enabled`. When enabled, `nodejs_config` also sets the global npm prefix to `/usr/local`.

### `nodejs_registry`

npm registry mirror. If this value is empty and `region=china`, the default is `https://registry.npmmirror.com`.

### `npm_packages`

Additional global npm packages, tagged `nodejs_pkg`; empty by default.
Claude Code and Codex CLI are installed by their own native-package tasks and need not appear in this list.

--------

## Claude Code

### `claude_enabled`

Enable Claude Code installation/configuration, default `true`. `claude_install` installs the native package; `claude_config` merges `~/.claude/settings.json` nondestructively and initializes `~/.claude.json` with `force: false`.

### `claude_package`

Native `pigsty-infra` package for Claude Code, default `claude`. The repository also provides the official `claude-code` name, which can be selected as an override.

### `claude_env`

Additional environment variables merged nondestructively into `env` in `~/.claude/settings.json`. They override managed defaults while preserving other existing custom keys.

Default variables include the following; `<admin_ip>` falls back to `127.0.0.1`, with `vmetrics_port: 8428` and `vlogs_port: 9428`:

- `CLAUDE_CODE_ENABLE_TELEMETRY=1`
- `OTEL_METRICS_EXPORTER=otlp`
- `OTEL_LOGS_EXPORTER=otlp`
- `OTEL_EXPORTER_OTLP_METRICS_PROTOCOL=http/protobuf`
- `OTEL_EXPORTER_OTLP_LOGS_PROTOCOL=http/protobuf`
- `OTEL_EXPORTER_OTLP_METRICS_ENDPOINT=http://<admin_ip>:<vmetrics_port>/opentelemetry/v1/metrics`
- `OTEL_EXPORTER_OTLP_LOGS_ENDPOINT=http://<admin_ip>:<vlogs_port>/insert/opentelemetry/v1/logs`
- `OTEL_RESOURCE_ATTRIBUTES=ip=<inventory_hostname>,job=claude`

--------

## Codex CLI

### `codex_enabled`

Install Codex CLI, default `true`. `codex_install` uses the system package manager to install native package `codex` from `pigsty-infra`.
VIBE installs the CLI only; it does not manage Codex settings or configure its OpenTelemetry.
