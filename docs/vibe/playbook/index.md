# Playbook

> VIBE module Ansible playbook guide.

---

LLMS index: [llms.txt](/llms.txt)

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

- `jupyter_install` uses `uv pip`. It does not create a venv.
- `nodejs_pkg` installs only the additional packages declared in `npm_packages`; the list is empty by default
- `claude_install` installs Claude CLI with `claude_package`. The `claude_config` task writes the `~/.claude` configuration.
- `codex_install` installs `@openai/codex` and does not manage Codex configuration

--------

## Common Commands

Full deploy:

```bash
./vibe.yml -l <host> --check   # Preview first
./vibe.yml -l <host>           # Apply after confirming the target
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
./vibe.yml -l <host> -t jupyter_config
ssh <host> sudo systemctl restart jupyter
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

These switches control task execution. If a switch is `false`, the corresponding installation and configuration tasks are skipped. This does not stop, disable, or uninstall a previously deployed service or package. To stop and disable Code-Server, run `systemctl disable --now code-server` separately. For JupyterLab, run `systemctl disable --now jupyter`. VIBE currently has no dedicated removal playbook.

Node.js is a runtime dependency of Claude Code and Codex CLI. The `nodejs` phase runs if either `claude_enabled` or `codex_enabled` is `true`, even with `nodejs_enabled=false`. It is skipped only when all three switches are `false`.

--------

## Deployment Order

```bash
./deploy.yml --check          # Preview inventory-defined base components
./deploy.yml                  # Deploy after review
./juice.yml -l <host> --check # Optional shared-storage preview
./juice.yml -l <host>
./vibe.yml -l <host> --check  # VIBE preview
./vibe.yml -l <host>
```

--------

## Idempotency

`vibe.yml` is idempotent. Re-run after config changes.
