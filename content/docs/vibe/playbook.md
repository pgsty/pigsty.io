---
title: Playbook
weight: 4830
description: VIBE module Ansible playbook guide.
icon: fas fa-scroll
module: [VIBE]
categories: [Task]
---

VIBE provides the `vibe.yml` playbook to deploy Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.

> `vibe.yml` includes only the `node_id` and `vibe` roles. It does not include `node/infra`.
> Run [`deploy.yml`](/docs/deploy/) first, or explicitly run [`node.yml`](/docs/node/playbook) and [`infra.yml`](/docs/infra/playbook).

--------

## `vibe.yml`

[`vibe.yml`](https://github.com/pgsty/pigsty/blob/main/vibe.yml):

```yaml
- name: VIBE
  hosts: all
  become: true
  gather_facts: no
  roles:
    - { role: node_id, tags: id }
    - { role: vibe,    tags: vibe }
```

--------

## Task Structure

```bash
vibe
├── vibe_dir          # create workspace and context files
├── code              # Code-Server
│   ├── code_install
│   ├── code_dir
│   ├── code_config
│   └── code_launch
├── jupyter           # JupyterLab
│   ├── jupyter_install
│   ├── jupyter_dir
│   ├── jupyter_config
│   └── jupyter_launch
├── nodejs            # Node.js runtime and additional npm packages
│   ├── nodejs_install
│   ├── nodejs_config
│   └── nodejs_pkg
├── codex             # Codex CLI
│   └── codex_install
└── claude            # Claude Code
    ├── claude_install
    └── claude_config
```

Notes:

- `jupyter_install` creates a venv with `uv venv` if `<jupyter_venv>/bin/python` is absent, then installs `jupyterlab` / `ipykernel` with `uv pip`
- `nodejs_config` detects global npm configuration and sets `prefix=/usr/local` plus optional mirrors; `nodejs_pkg` installs only additional `npm_packages`, which defaults to empty
- `claude_install` installs `claude_package` through the system package manager (default native package `claude`); `claude_config` merges `~/.claude/settings.json` and initializes `~/.claude.json`
- `codex_install` installs native package `codex` without managing its configuration

--------

## Common Commands

Full deploy:

```bash
./vibe.yml -l <host> --check   # Preview first
./vibe.yml -l <host>           # Apply after confirming the target
```

Deploy individual components. `jupyter_enabled` defaults to `false`; pass `-e jupyter_enabled=true` if the inventory does not enable it:

```bash
./vibe.yml -l <host> -t code
./vibe.yml -l <host> -t jupyter -e jupyter_enabled=true
./vibe.yml -l <host> -t nodejs
./vibe.yml -l <host> -t claude
./vibe.yml -l <host> -t codex
```

Update configuration. Both `code_launch` and `jupyter_launch` restart their services when configuration, unit, or environment files change:

```bash
./vibe.yml -l <host> -t code_config,code_launch
./vibe.yml -l <host> -t jupyter_config,jupyter_launch -e jupyter_enabled=true
./vibe.yml -l <host> -t claude_config
```

Skip components for this run:

```bash
./vibe.yml -l <host> -e code_enabled=false
./vibe.yml -l <host> -e jupyter_enabled=false
./vibe.yml -l <host> -e nodejs_enabled=false
./vibe.yml -l <host> -e claude_enabled=false
./vibe.yml -l <host> -e codex_enabled=false
```

These switches are independent task conditions. `false` skips the corresponding installation/configuration tasks; for example, `nodejs_enabled=false` skips Node.js even when `claude` or `codex` is enabled. It does not stop, disable, or uninstall previously deployed software. To retire Code-Server or JupyterLab, separately run `systemctl disable --now code-server` or `systemctl disable --now jupyter`. VIBE currently has no dedicated removal playbook.

--------

## Deployment Order

```bash
./deploy.yml      # declared NODE, INFRA, ETCD, VAULT, MINIO, and PGSQL modules
./juice.yml       # optional shared storage
./vibe.yml        # VIBE
```

--------

## Idempotency

`vibe.yml` is idempotent. Re-run after config changes.
