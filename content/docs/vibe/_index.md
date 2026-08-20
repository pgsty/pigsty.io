---
title: "Module: VIBE"
weight: 4800
description: >
  Deploy an AI coding sandbox with Pigsty: Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.
icon: fas fa-laptop-code
module: [VIBE]
categories: [Reference]
aliases: [/docs/pilot/code/]
---

The VIBE module provides a **browser-based dev environment** with Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI,
and can work with [`JUICE`](/docs/juice) shared storage and [`PGSQL`](/docs/pgsql) database capabilities.

VIBE depends on [`NODE`](/docs/node) and [`INFRA`](/docs/infra):

- `NODE` provides base software and Python `uv` environment
- `INFRA` provides Nginx reverse proxy, Grafana and portal entry

--------

## Components

| Component | Description | Local Port | Access Path |
|:-----|:-----|:--------:|:---------|
| Code-Server | VS Code in browser | 8443 | `/code/` |
| JupyterLab | Interactive notebooks | 8888 | `/jupyter/` |
| Node.js | Runtime and npm | - | CLI |
| Claude Code | CLI + observability config | - | CLI / Grafana |
| Codex CLI | CLI installation; configuration is not managed | - | CLI |
{.full-width}

Notes:

- Code-Server listens on `127.0.0.1:8443`, exposed via Nginx
- JupyterLab listens on `0.0.0.0:8888`, base path `/jupyter/`; the current template allows any Origin and disables XSRF checks, so it is for trusted development networks only
- Module default is `jupyter_enabled: false`, while `conf/vibe.yml` template explicitly enables Jupyter

> [!WARNING] Development sandbox, not a production security baseline
> The VIBE Jupyter template relies on its token as the default authentication barrier, and `conf/vibe.yml` does not enable additional Basic Auth on `infra_portal.home`. Set a strong random token, restrict port 8888 and portal sources, and use a trusted TLS endpoint before deployment. Never expose the default template directly to the Internet.

--------

## Quick Start

```bash
./configure -c vibe
./deploy.yml --check          # preview NODE, INFRA, ETCD, MINIO, and PGSQL targets
./deploy.yml                  # deploy after confirming the target set
./juice.yml -l <host> --check # optional shared storage preview
./juice.yml -l <host>         # deploy shared storage after review
./vibe.yml -l <host> --check  # preview VIBE changes
./vibe.yml -l <host>          # deploy VIBE after review
```

Default entry points (via `infra_portal.home`):

- Code-Server: `https://<domain>/code/`
- JupyterLab: `https://<domain>/jupyter/`
- Claude Dashboard: `https://<domain>/ui/d/claude-code`

--------

## Features

- **Unified workspace**: `vibe_data` as root for Code-Server and Jupyter
- **Optional shared storage**: work with `JUICE` for multi-node sharing
- **Observability**: Claude Code OpenTelemetry integrates with VictoriaMetrics/VictoriaLogs
- **Composable**: enable Code/Jupyter/Node.js/Claude/Codex as needed

--------

## Documentation

- [**Configuration**](/docs/vibe/config): component config and workspace settings
- [**Parameters**](/docs/vibe/param): VIBE parameter list and defaults
- [**Playbook**](/docs/vibe/playbook): `vibe.yml` usage and tags
- [**Administration**](/docs/vibe/admin): operations, passwords, and extensions
- [**Monitoring**](/docs/vibe/monitor): Claude Code metrics and logs
- [**FAQ**](/docs/vibe/faq): common questions
