---
title: Playbook
weight: 4830
description: VIBE module Ansible playbook guide.
icon: fas fa-scroll
module: [VIBE]
categories: [Task]
---

VIBE provides the `vibe.yml` playbook to deploy Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.

> `vibe.yml` includes only `node_id` and `vibe` roles, it does not include `node/infra`.
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

- `jupyter_install` uses `uv pip`, it does not create venv
- `nodejs_pkg` installs only the additional packages declared in `npm_packages`; the list is empty by default
- `claude_install` installs Claude CLI with `claude_package`, while `claude_config` writes the `~/.claude` configuration
- `codex_install` installs `@openai/codex` and does not manage Codex configuration

--------

## Common Commands

Full deploy:

```bash
./vibe.yml -l <host>
```

Component-level:

```bash
./vibe.yml -l <host> -t code
./vibe.yml -l <host> -t jupyter
./vibe.yml -l <host> -t nodejs
./vibe.yml -l <host> -t claude
./vibe.yml -l <host> -t codex
```

Config updates:

```bash
./vibe.yml -l <host> -t code_config,code_launch
./vibe.yml -l <host> -t jupyter_config,jupyter_launch
./vibe.yml -l <host> -t claude_config
```

Disable components:

```bash
./vibe.yml -l <host> -e code_enabled=false
./vibe.yml -l <host> -e jupyter_enabled=false
./vibe.yml -l <host> -e nodejs_enabled=false
./vibe.yml -l <host> -e claude_enabled=false
./vibe.yml -l <host> -e codex_enabled=false
```

--------

## Deployment Order

```bash
./deploy.yml      # NODE + INFRA + PGSQL
./juice.yml       # optional shared storage
./vibe.yml        # VIBE
```

--------

## Idempotency

`vibe.yml` is idempotent. Re-run after config changes.
