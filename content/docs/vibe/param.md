---
title: VIBE Params
weight: 4820
description: VIBE module parameter reference, covering all configurable options for Code-Server, JupyterLab and Claude Code.
icon: fas fa-cog
module: [VIBE]
categories: [Param]
---

VIBE module has **16** config parameters, grouped into: common params, Code-Server params, JupyterLab params, Claude Code params, and Node.js params.


--------

## Parameter Overview

| Parameter             | Type   | Level | Default          | Description              |
|:----------------------|:-------|:------|:-----------------|:-------------------------|
| [`vibe_data`](#vibe_data) | path | H/I | `/fs` | VIBE working directory |
| [`code_enabled`](#code_enabled) | bool | H/I | `true` | Enable Code-Server |
| [`code_port`](#code_port) | port | H/I | `8443` | Code-Server listen port |
| [`code_data`](#code_data) | path | H/I | `/data/code` | Code-Server data dir |
| [`code_password`](#code_password) | string | H/I | `Code.Server` | Code-Server password |
| [`code_gallery`](#code_gallery) | enum | H/I | `openvsx` | Extension marketplace type |
| [`jupyter_enabled`](#jupyter_enabled) | bool | H/I | `true` | Enable JupyterLab |
| [`jupyter_port`](#jupyter_port) | port | H/I | `8888` | JupyterLab listen port |
| [`jupyter_data`](#jupyter_data) | path | H/I | `/data/jupyter` | JupyterLab data dir |
| [`jupyter_password`](#jupyter_password) | string | H/I | `Jupyter.Lab` | JupyterLab Token |
| [`jupyter_venv`](#jupyter_venv) | path | H/I | `/data/venv` | Python venv path |
| [`claude_enabled`](#claude_enabled) | bool | H/I | `true` | Enable Claude Code |
| [`claude_env`](#claude_env) | dict | H/I | `{}` | Claude Code extra env vars |
| [`nodejs_enabled`](#nodejs_enabled) | bool | H/I | `true` | Enable Node.js |
| [`nodejs_registry`](#nodejs_registry) | url | H/I | `''` | npm registry URL, auto for china |
| [`npm_packages`](#npm_packages) | string[] | H/I | `[]` | Global npm packages to install |
{.full-width}


--------

## Common Parameters

### `vibe_data`

VIBE module working directory, default working path for all components.

- **Type**: `path`
- **Level**: H/I (Host/Instance)
- **Default**: `/fs`

Used for:
- Code-Server default open directory
- JupyterLab Notebook root directory
- Claude Code working directory
- Store `CLAUDE.md` and `AGENTS.md` context files

Recommend using JuiceFS mount point for distributed storage and PITR capability.

```yaml
vibe_data: /fs              # Default, JuiceFS mount point
vibe_data: /home/dev/work   # Custom working directory
```


--------

## Code-Server Parameters

### `code_enabled`

Whether to enable Code-Server on this node.

- **Type**: `bool`
- **Level**: H/I
- **Default**: `true`

```yaml
code_enabled: true   # Enabled (default)
code_enabled: false  # Disabled
```

### `code_port`

Code-Server listen port, binds to localhost only.

- **Type**: `port`
- **Level**: H/I
- **Default**: `8443`

External access via Nginx reverse proxy, no need to expose this port directly.

```yaml
code_port: 8443   # Default port
code_port: 9443   # Custom port
```

### `code_data`

Code-Server user data directory, stores extensions, user settings, etc.

- **Type**: `path`
- **Level**: H/I
- **Default**: `/data/code`

Directory structure:
```
/data/code/
├── code-server/
│   ├── config.yaml      # Config file
│   ├── extensions/      # Installed extensions
│   └── User/
│       └── settings.json # User settings
└── ...
```

```yaml
code_data: /data/code      # Default path
code_data: /home/dev/code  # Custom path
```

### `code_password`

Code-Server login password.

- **Type**: `string`
- **Level**: H/I
- **Default**: `Code.Server`

{{% alert title="Security Warning" color="warning" %}}
Always change default password in production!
{{% /alert %}}

```yaml
code_password: 'Code.Server'     # Default (change it!)
code_password: 'MySecretPass!'   # Custom password
```

### `code_gallery`

Code-Server extension marketplace type.

- **Type**: `enum`
- **Level**: H/I
- **Default**: `openvsx`
- **Options**: `openvsx`, `microsoft`

| Option      | Description                    |
|:------------|:-------------------------------|
| `openvsx`   | Open VSX marketplace (default) |
| `microsoft` | Microsoft VS Code marketplace  |
{.full-width}

China mainland auto-uses Tsinghua mirror.

```yaml
code_gallery: openvsx    # Open VSX (default)
code_gallery: microsoft  # Microsoft marketplace
```


--------

## JupyterLab Parameters

### `jupyter_enabled`

Whether to enable JupyterLab on this node.

- **Type**: `bool`
- **Level**: H/I
- **Default**: `true`

```yaml
jupyter_enabled: true   # Enabled (default)
jupyter_enabled: false  # Disabled
```

### `jupyter_port`

JupyterLab listen port.

- **Type**: `port`
- **Level**: H/I
- **Default**: `8888`

JupyterLab binds to `0.0.0.0`, but typically accessed via Nginx reverse proxy.

```yaml
jupyter_port: 8888   # Default port
jupyter_port: 8899   # Custom port
```

### `jupyter_data`

JupyterLab data directory, stores config files and kernel info.

- **Type**: `path`
- **Level**: H/I
- **Default**: `/data/jupyter`

Directory structure:
```
/data/jupyter/
├── jupyter_config.py   # JupyterLab config
└── kernels/            # Jupyter kernels
```

```yaml
jupyter_data: /data/jupyter      # Default path
jupyter_data: /home/dev/jupyter  # Custom path
```

### `jupyter_password`

JupyterLab login Token.

- **Type**: `string`
- **Level**: H/I
- **Default**: `Jupyter.Lab`

{{% alert title="Security Warning" color="warning" %}}
Always change default Token in production!
{{% /alert %}}

```yaml
jupyter_password: 'Jupyter.Lab'   # Default (change it!)
jupyter_password: 'MySecretToken' # Custom Token
```

### `jupyter_venv`

Python virtual environment path for JupyterLab.

- **Type**: `path`
- **Level**: H/I
- **Default**: `/data/venv`

Directory structure:
```
/data/venv/
└── bin/
    ├── python
    ├── pip
    └── jupyter
```

```yaml
jupyter_venv: /data/venv          # Default path
jupyter_venv: /home/dev/.venv     # Custom path
```


--------

## Claude Code Parameters

### `claude_enabled`

Whether to enable Claude Code CLI configuration on this node.

- **Type**: `bool`
- **Level**: H/I
- **Default**: `true`

```yaml
claude_enabled: true   # Enabled (default)
claude_enabled: false  # Disabled
```

### `claude_env`

Extra environment variables for Claude Code, used for API Key etc.

- **Type**: `dict`
- **Level**: H/I
- **Default**: `{}`

Common environment variables:

| Variable              | Description              |
|:----------------------|:-------------------------|
| `ANTHROPIC_API_KEY`   | Anthropic API key        |
| `ANTHROPIC_BASE_URL`  | Custom API endpoint      |
{.full-width}

```yaml
# Configure API Key
claude_env:
  ANTHROPIC_API_KEY: sk-ant-xxx-your-api-key

# Configure custom API endpoint
claude_env:
  ANTHROPIC_API_KEY: sk-ant-xxx
  ANTHROPIC_BASE_URL: https://api.example.com
```


--------

## Node.js Parameters

### `nodejs_enabled`

Whether to enable Node.js runtime on this node.

- **Type**: `bool`
- **Level**: H/I
- **Default**: `true`

```yaml
nodejs_enabled: true   # Enabled (default)
nodejs_enabled: false  # Disabled
```

### `nodejs_registry`

npm package registry URL.

- **Type**: `url`
- **Level**: H/I
- **Default**: `''` (empty string)

When empty:
- If `region=china`, auto-uses China npm mirror `https://registry.npmmirror.com`
- Otherwise uses npm official registry

When explicitly set, uses the specified registry (useful for internal networks).

```yaml
nodejs_registry: ''                                # Auto-detect (default)
nodejs_registry: 'https://registry.npmmirror.com'  # Manually specify China mirror
nodejs_registry: 'http://npm.internal.example.com' # Internal mirror
```

### `npm_packages`

List of npm packages to install globally via `npm install -g`.

- **Type**: `string[]`
- **Level**: H/I
- **Default**: `[]` (empty list)

Use this to install CLI tools like Claude Code, TypeScript, pnpm, etc.

```yaml
npm_packages: []                                   # No packages (default)
npm_packages:
  - '@anthropic-ai/claude-code'                    # Claude Code CLI
  - typescript                                      # TypeScript compiler
  - pnpm                                            # Fast package manager
```


--------

## Parameter Level Reference

| Level | Description                        |
|:------|:-----------------------------------|
| G     | Global param, defined in `all.vars`|
| C     | Cluster param, defined at cluster level |
| I     | Instance param, defined at host level |
| H     | Host param, specific to single host |
{.full-width}

VIBE module params are all **H/I level**, defined at host or instance level. Different hosts can have different values:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          code_enabled: true
          code_password: 'Password1'
        10.10.10.11:
          code_enabled: true
          code_password: 'Password2'
```


--------

## Default Values Summary

```yaml
# VIBE common params
vibe_data: /fs

# Code-Server params
code_enabled: true
code_port: 8443
code_data: /data/code
code_password: 'Code.Server'
code_gallery: openvsx

# JupyterLab params
jupyter_enabled: true
jupyter_port: 8888
jupyter_data: /data/jupyter
jupyter_password: 'Jupyter.Lab'
jupyter_venv: /data/venv

# Claude Code params
claude_enabled: true
claude_env: {}

# Node.js params
nodejs_enabled: true
nodejs_registry: ''
npm_packages: []
```


