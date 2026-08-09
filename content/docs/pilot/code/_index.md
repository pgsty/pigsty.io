---
title: "Module: Code"
weight: 5010
description: Deploy Code-Server with Pigsty, run VS Code in browser for cloud development.
icon: fa-solid fa-code
module: [VIBE]
categories: [Reference]
---

{{% alert title="Doc Migrated" color="warning" %}}
Code-Server is now integrated into the **[VIBE Module](/docs/vibe/)**, see new documentation:

- **[VIBE Overview](/docs/vibe/)**: Module intro and quick start
- **[VIBE Config](/docs/vibe/config/)**: Code-Server configuration
- **[VIBE Params](/docs/vibe/param/)**: `code_*` parameter reference
- **[VIBE Playbook](/docs/vibe/playbook/)**: Deployment and management
- **[VIBE Admin](/docs/vibe/admin/)**: Daily operations guide
- **[VIBE FAQ](/docs/vibe/faq/)**: Common questions
{{% /alert %}}

Code-Server is VS Code running in browser, allowing access to a full development environment from any device.
Pigsty's CODE module provides automated Code-Server deployment with HTTPS access via Nginx reverse proxy.


--------

## Overview

CODE module deploys Code-Server as a systemd service, exposed to web via Nginx reverse proxy.

```text
User Browser
    ↓ HTTPS
Nginx (https://i.pigsty/code/)
    ↓ proxy_pass
Code-Server (127.0.0.1:8443)
    └─ User: {{ node_user }}
    └─ WorkDir: {{ code_home }}
    └─ DataDir: {{ code_data }}
```


--------

## Quick Start

### Enable Code-Server

Set `code_enabled: true` on node, then execute:

```bash
./code.yml -l <host>
```

Or enable on infra node with one-liner:

```bash
./code.yml -l infra -e code_enabled=true
```

### Access Code-Server

After deployment, access via:

- **Subpath**: `https://i.pigsty/code/`
- **Subdomain**: `https://code.pigsty` (requires `infra_portal` config)

Default password: `Vibe.Coding`


--------

## Parameters

| Parameter               | Default           | Description                               |
|:-----------------|:--------------|:---------------------------------|
| `code_enabled`   | `false`       | Enable Code-Server on this node             |
| `code_port`      | `8443`        | Code-Server listen port (localhost only)    |
| `code_home`      | `/fs/code`    | Working directory (VS Code opens this folder)             |
| `code_data`      | `/data/code`  | User data directory (extensions, settings)                   |
| `code_password`  | `Vibe.Coding` | Login password                             |
| `code_gallery`   | `openvsx`     | Extension marketplace: `openvsx` or `microsoft`     |
{.full-width}


--------

## Extension Marketplace

Code-Server defaults to [Open VSX](https://open-vsx.org/) marketplace. To use Microsoft's official marketplace:

```yaml
code_gallery: microsoft
```

China mainland users can use Tsinghua mirror for acceleration (auto-configured).


--------

## Playbook & Tasks

`code.yml` playbook contains these tasks:

| Tag               | Description                     |
|:-----------------|:-----------------------|
| `code_install`   | Install code-server package     |
| `code_dir`       | Create working and data directories            |
| `code_config`    | Render config files and systemd service unit   |
| `code_launch`    | Start code-server service      |
| `code_extensions`| Install VS Code extensions          |
{.full-width}

Common commands:

```bash
# Deploy Code-Server
./code.yml -l <host>

# Update config only
./code.yml -l <host> -t code_config

# Restart service
./code.yml -l <host> -t code_launch
```


--------

## Directory Structure

```text
{{ code_home }}                 # Working directory (e.g., /fs/code)
└── your-projects/              # Project files

{{ code_data }}                 # Data directory (e.g., /data/code)
├── code-server/
│   ├── config.yaml             # Code-Server config
│   ├── extensions/             # Installed extensions
│   └── User/
│       └── settings.json       # User settings
└── ...

/etc/systemd/system/code-server.service  # systemd service unit
/etc/default/code                         # Environment variables
```


--------

## Configuration Examples

### Basic Config

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          code_enabled: true
          code_password: 'MySecurePassword'
```

### AI Coding Sandbox

Combined with JuiceFS shared filesystem for cloud development environment:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          code_enabled: true
          code_password: 'Vibe.Coding'
          code_home: /fs/code           # Use JuiceFS mount point
          jupyter_enabled: true
          jupyter_password: 'Jupyter.Lab'
          jupyter_home: /fs/jupyter
          juice_instances:
            jfs:
              path: /fs
              meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
              data: --storage postgres --bucket ...
```


--------

## FAQ

### How to change password?

Modify `code_password` in config, then re-execute playbook:

```bash
./code.yml -l <host> -t code_config,code_launch
```

### How to install extensions?

Search and install directly in Code-Server UI, or via command line:

```bash
code-server --install-extension ms-python.python
```

### Extension marketplace slow?

Use `code_gallery: microsoft` to switch to Microsoft official marketplace, or ensure network can access Open VSX.

### How to use GitHub Copilot?

GitHub Copilot currently doesn't support Code-Server. Consider other AI coding assistants.


--------

## Supported Platforms

- **OS**: EL 8/9/10, Ubuntu 22/24/26, Debian 12/13
- **Arch**: x86_64, ARM64
- **Ansible**: 2.9+
