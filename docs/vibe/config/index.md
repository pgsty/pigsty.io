# Configuration

> VIBE module configuration for Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.

---

LLMS index: [llms.txt](/llms.txt)

---

Enable VIBE components as needed. VIBE provides a shared workspace and exposes services through the Nginx portal.

--------

## Overview

| Component | Enable Param | Default | Description |
|:-----|:---------|:--------:|:-----|
| Code-Server | `code_enabled` | Enabled | VS Code in browser |
| JupyterLab | `jupyter_enabled` | Disabled | Notebook / terminal / editor |
| Node.js | `nodejs_enabled` | Enabled | Node.js runtime and npm |
| Claude Code | `claude_enabled` | Enabled | CLI installation, config, and observability |
| Codex CLI | `codex_enabled` | Enabled | CLI installation only; configuration is not managed |
{.full-width}

Note: The module default is `jupyter_enabled: false`. The `conf/vibe.yml` template explicitly sets it to `true`.

Configuration usually resides in cluster `vars`. You can override it at the instance level:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          vibe_data: /fs
          code_enabled: true
          jupyter_enabled: true
          claude_enabled: true
          codex_enabled: true
```

--------

## Workspace

`vibe_data` is the unified workspace for VIBE:

- Code-Server default open directory
- JupyterLab `root_dir`
- Claude Code working dir
- Render the `AGENTS.md` context file, removing any legacy symlink first, and create a `CLAUDE.md` symlink pointing to it

`vibe_dir` creates directories and writes context files owned by `node_user`, falling back to `root` if undefined.

```yaml
vibe_data: /fs
```

--------

## Code-Server

```yaml
code_enabled: true
code_port: 8443
code_data: /data/code
code_password: Vibe.Coding
code_gallery: openvsx
```

Notes:

- Service listens on `127.0.0.1:<code_port>` (default 8443), accessed via Nginx `/code/`
- Config file: `code_data/code-server/config.yaml` (default `/data/code/code-server/config.yaml`)
- Env file: `/etc/default/code`, used to configure extension marketplace

Extension marketplace:

- `code_gallery: microsoft` uses Microsoft marketplace
- When `region=china`, Open VSX defaults to Tsinghua mirror

--------

## JupyterLab

```yaml
jupyter_enabled: true
jupyter_port: 8888
jupyter_data: /data/jupyter
jupyter_password: Vibe.Coding
jupyter_venv: /data/venv
```

Notes:

- Listen on `0.0.0.0:<jupyter_port>` (default 8888), with base path `/jupyter/`
- Configuration: `jupyter_data/jupyter_config.py`, default `/data/jupyter/jupyter_config.py`
- Login token: `c.IdentityProvider.token`
- If `<jupyter_venv>/bin/python` is absent, `jupyter_install` creates the environment with `uv venv`; if `<jupyter_venv>/bin/jupyter` is absent, it installs `jupyterlab` and `ipykernel`. It can also reuse `/data/venv` provisioned by `NODE`.

Use a high-entropy random token. Restrict TCP/8888 to trusted networks or the reverse proxy. `infra_portal.home` does not enable Basic Auth by default. For a second authentication layer, configure `nginx_users` and set `auth: true` on the portal. If you tighten the Jupyter settings, validate WebSockets, origin handling, and login before rollout.

Example of manually creating or reusing a venv:

```bash
uv venv /data/venv
```

--------

## Node.js

```yaml
nodejs_enabled: true
nodejs_registry: ''
npm_packages: []
```

Notes:

- `nodejs` is an independent runtime controlled only by `nodejs_enabled`, separate from `claude` / `codex`
- `nodejs_config` detects the global npm configuration (`npm config get globalconfig`, falling back to `/etc/npmrc`) and sets `prefix=/usr/local`
- When `nodejs_registry` is empty and `region=china`, default registry is `https://registry.npmmirror.com`
- `npm_packages` installs additional global packages through `npm install -g` and defaults to empty
- Claude Code and Codex CLI use native `pigsty-infra` packages and do not depend on npm

--------

## Claude Code

The `claude` subtask installs the native package (`claude_install`) and writes configuration (`claude_config`).

```yaml
claude_enabled: true
claude_package: claude
claude_env:
  ANTHROPIC_API_KEY: sk-ant-xxx
```

`claude_install` uses APT/YUM to install `claude_package` from `pigsty-infra`, defaulting to `claude`. The repository also provides `claude-code`; override with `claude_package: claude-code` if needed.

Managed files under `~<node_user>/`, mode `0600`:

- `~/.claude.json`: initial state to skip first-run setup and permission confirmation, written with `force: false` so existing user state is preserved
- `~/.claude/settings.json`: read existing settings and merge with `combine`, preserving custom top-level fields and `env` keys while refreshing managed OpenTelemetry defaults and applying `claude_env` overrides; keys with `null` values are removed

OpenTelemetry defaults point to `vmetrics_port` (`8428`) and `vlogs_port` (`9428`) on control-plane `admin_ip`, falling back to `127.0.0.1` when undefined. Non-admin nodes can therefore report directly to central VictoriaMetrics / VictoriaLogs.

--------

## Codex CLI

```yaml
codex_enabled: true
```

The `codex` subtask installs the native `codex` package from `pigsty-infra` through the system package manager. VIBE installs only the CLI, without writing Codex settings or connecting it to Claude Code observability.

--------

## Nginx Portal

VIBE exposes services through [`infra_portal`](/docs/infra/param#infra_portal).
By default, `home` domain includes `/code/` and `/jupyter/` paths.

For dedicated domains:

```yaml
infra_portal:
  code: { domain: code.pigsty, endpoint: "127.0.0.1:8443", websocket: true, auth: true }
  jupyter: { domain: jupyter.pigsty, endpoint: "127.0.0.1:8888", websocket: true, auth: true }
nginx_users:
  devadmin: '<strong-password>'
```
