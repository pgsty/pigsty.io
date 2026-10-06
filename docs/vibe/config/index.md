# Configuration

> VIBE module configuration for Code-Server, JupyterLab, Node.js, Claude Code, and Codex CLI.

---

LLMS index: [llms.txt](/llms.txt)

---

VIBE supports enabling components on demand and exposes services via a unified workspace and Nginx portal.

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

Note: module default is `jupyter_enabled: false`, while `conf/vibe.yml` explicitly sets it to `true`.

Config usually lives in cluster `vars`, and can be overridden at instance level:

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
- Render the `AGENTS.md` context file and create a `CLAUDE.md` symlink to it

The `vibe_dir` task creates the directory and context files, owned by `node_user`.

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

- Service listens on `0.0.0.0:<jupyter_port>` (default 8888), base path `/jupyter/`
- Config file: `jupyter_data/jupyter_config.py` (default `/data/jupyter/jupyter_config.py`)
- Login token: `c.IdentityProvider.token`
- The v4.5 template also sets `allow_origin = '*'`, `disable_check_xsrf = True`, and `trust_xheaders = True`; these relax the security boundary for a reverse-proxied development sandbox
- **Venv is not created automatically**, use `node_uv_env` in `NODE` module beforehand

Use a high-entropy random token and restrict TCP/8888 to trusted networks or the reverse proxy. `infra_portal.home` does not enable Basic Auth by default. For a second authentication layer, configure `nginx_users` and set `auth: true` on the portal. If you tighten the Jupyter settings, validate WebSockets, origin handling, and login before rollout.

Create venv example:

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

- When `nodejs_registry` is empty and `region=china`, default registry is `https://registry.npmmirror.com`
- `npm_packages` installs additional global npm packages and is empty by default
- Claude Code and Codex CLI are installed by their own dedicated tasks

--------

## Claude Code

The `claude` task installs the CLI (`claude_install`) and writes its configuration (`claude_config`).

```yaml
claude_enabled: true
claude_package: '@anthropic-ai/claude-code'
claude_env:
  ANTHROPIC_API_KEY: sk-ant-xxx
```

When Claude or Codex is enabled, VIBE ensures that the Node.js runtime is installed. Override `claude_package` to use a different Claude npm package.

Generated files:

- `~/.claude.json`
- `~/.claude/settings.json`

`claude_env` is merged with default OpenTelemetry env vars, sending telemetry to VictoriaMetrics / VictoriaLogs.

--------

## Codex CLI

```yaml
codex_enabled: true
```

The `codex` task runs `npm install -g @openai/codex`. VIBE installs Codex CLI only; it does not write Codex configuration or connect it to VIBE's Claude Code observability.

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
