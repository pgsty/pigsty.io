---
title: VIBE Playbook
weight: 4830
description: VIBE module Ansible playbook usage, including deployment, update and management operations.
icon: fas fa-scroll
module: [VIBE]
categories: [Playbook]
---

VIBE module provides one main playbook `vibe.yml` for deploying and managing Code-Server, JupyterLab and Claude Code.


--------

## Playbook Overview

| Playbook    | Description                                              |
|:------------|:---------------------------------------------------------|
| `vibe.yml`  | Deploy VIBE dev environment (Code, Jupyter, Claude) on target nodes |
{.full-width}


--------

## `vibe.yml`

[`vibe.yml`](https://github.com/pgsty/pigsty/blob/main/vibe.yml) playbook deploys VIBE module on managed nodes.

### Playbook Content

```yaml
- name: Deploy VIBE development environment
  hosts: all
  become: yes
  gather_facts: no
  roles:
    - { role: node_id, tags: id }
    - { role: vibe, tags: vibe }
```

### Usage

```bash
# Full deployment (all components)
./vibe.yml -l <host>

# Deploy Code-Server only
./vibe.yml -l <host> -t code

# Deploy JupyterLab only
./vibe.yml -l <host> -t jupyter

# Deploy Claude Code only
./vibe.yml -l <host> -t claude

# Disable specific component
./vibe.yml -l <host> -e code_enabled=false
./vibe.yml -l <host> -e jupyter_enabled=false
./vibe.yml -l <host> -e claude_enabled=false

# Configure Claude API Key
./vibe.yml -l <host> -e claude_env.ANTHROPIC_API_KEY=sk-ant-xxx
```


--------

## Task Structure

`vibe.yml` playbook contains these task hierarchies:

```
vibe
├── vibe_dir          # Create working dir and render context files
├── claude            # Configure Claude Code CLI
│   ├── claude_install    # Install claude package
│   └── claude_config     # Render config files
├── code              # Deploy Code-Server
│   ├── code_install      # Install code-server package
│   ├── code_dir          # Create data directory
│   ├── code_config       # Render config and systemd unit
│   └── code_launch       # Start code-server service
└── jupyter           # Deploy JupyterLab
    ├── jupyter_install   # Install JupyterLab to venv
    ├── jupyter_dir       # Create data directory
    ├── jupyter_config    # Render config and systemd unit
    └── jupyter_launch    # Start JupyterLab service
```


--------

## Task Details

### `vibe_dir`

Create VIBE working directory and render context files.

```bash
./vibe.yml -l <host> -t vibe_dir
```

Actions:
- Create `{{ vibe_data }}` directory (default `/fs`)
- Render `CLAUDE.md` environment doc
- Create `AGENTS.md` symlink

### `claude`

Configure Claude Code CLI.

```bash
./vibe.yml -l <host> -t claude
```

Sub-tasks:

| Tag             | Description                                     |
|:----------------|:------------------------------------------------|
| `claude_install`| Install claude package                          |
| `claude_config` | Render `~/.claude.json` and `~/.claude/settings.json` |
{.full-width}

Config file contents:
- `~/.claude.json`: Skip onboarding dialog
- `~/.claude/settings.json`: OpenTelemetry config

### `code`

Deploy Code-Server.

```bash
./vibe.yml -l <host> -t code
```

Sub-tasks:

| Tag           | Description                              |
|:--------------|:-----------------------------------------|
| `code_install`| Install code-server package              |
| `code_dir`    | Create `{{ code_data }}` data directory  |
| `code_config` | Render config.yaml, systemd unit, env file |
| `code_launch` | Start/restart code-server service        |
{.full-width}

Generated files:
- `/etc/systemd/system/code-server.service`
- `/etc/default/code`
- `{{ code_data }}/code-server/config.yaml`

### `jupyter`

Deploy JupyterLab.

```bash
./vibe.yml -l <host> -t jupyter
```

Sub-tasks:

| Tag              | Description                              |
|:-----------------|:-----------------------------------------|
| `jupyter_install`| Install JupyterLab to Python venv        |
| `jupyter_dir`    | Create `{{ jupyter_data }}` data directory |
| `jupyter_config` | Render jupyter_config.py, systemd unit, env file |
| `jupyter_launch` | Start/restart JupyterLab service         |
{.full-width}

Generated files:
- `/etc/systemd/system/jupyter.service`
- `/etc/default/jupyter`
- `{{ jupyter_data }}/jupyter_config.py`


--------

## Common Commands

### Full Deployment

```bash
# Deploy on single host
./vibe.yml -l 10.10.10.10

# Deploy on multiple hosts
./vibe.yml -l '10.10.10.10,10.10.10.11'

# Deploy on specified group
./vibe.yml -l infra
```

### Component-Level Deployment

```bash
# Deploy Code-Server only
./vibe.yml -l <host> -t code

# Deploy JupyterLab only
./vibe.yml -l <host> -t jupyter

# Deploy Claude Code only
./vibe.yml -l <host> -t claude
```

### Config Update

```bash
# Update Code-Server config and restart
./vibe.yml -l <host> -t code_config,code_launch

# Update JupyterLab config and restart
./vibe.yml -l <host> -t jupyter_config,jupyter_launch

# Update Claude Code config
./vibe.yml -l <host> -t claude_config
```

### Restart Service Only

```bash
# Restart Code-Server
./vibe.yml -l <host> -t code_launch

# Restart JupyterLab
./vibe.yml -l <host> -t jupyter_launch
```

### Parameter Override

```bash
# Custom password
./vibe.yml -l <host> -e code_password='MyPassword'
./vibe.yml -l <host> -e jupyter_password='MyToken'

# Disable component
./vibe.yml -l <host> -e code_enabled=false
./vibe.yml -l <host> -e jupyter_enabled=false
./vibe.yml -l <host> -e claude_enabled=false

# Configure Claude API Key
./vibe.yml -l <host> -e "claude_env={ANTHROPIC_API_KEY: 'sk-ant-xxx'}"

# Use Microsoft extension marketplace
./vibe.yml -l <host> -e code_gallery=microsoft
```


--------

## Deployment Order

VIBE module depends on these components, deploy in order:

```bash
# 1. Deploy infrastructure (INFRA module)
./infra.yml

# 2. Deploy PostgreSQL (PGSQL module)
./pgsql.yml

# 3. Deploy JuiceFS shared storage (optional, JUICE module)
./juice.yml

# 4. Deploy VIBE development environment
./vibe.yml
```

Or use one-click deploy:

```bash
./deploy.yml  # Includes INFRA + PGSQL
./juice.yml   # JuiceFS (optional)
./vibe.yml    # VIBE
```


--------

## Idempotency

VIBE playbook supports idempotent execution:

- **Repeatable**: Multiple executions have no side effects
- **Incremental**: Only updates changed configs
- **Auto-restart**: Related services restart after config changes

```bash
# First deployment
./vibe.yml -l <host>

# Re-run after config change (safe)
./vibe.yml -l <host>
```


--------

## Execution Protection

### Limit Target Hosts

Use `-l` param to limit execution scope:

```bash
# Execute on specified host only
./vibe.yml -l 10.10.10.10

# Execute on specified group only
./vibe.yml -l infra
```

### Preview Mode

Use `--check` param to preview changes:

```bash
./vibe.yml -l <host> --check
```

### Verbose Output

Use `-v` param for detailed output:

```bash
./vibe.yml -l <host> -v      # Verbose
./vibe.yml -l <host> -vv     # More verbose
./vibe.yml -l <host> -vvv    # Debug level
```


