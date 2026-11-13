---
title: Administration
weight: 4840
description: VIBE module operations and common admin tasks.
icon: fas fa-wrench
module: [VIBE]
categories: [Task]
---

--------

## Service Management

```bash
systemctl status code-server
systemctl restart code-server
systemctl status jupyter
systemctl restart jupyter
```

Logs:

```bash
journalctl -u code-server -f
journalctl -u jupyter -f
```

--------

## Workspace and Context

`vibe_dir` creates these under `vibe_data`:

- `AGENTS.md`: Context file rendered from the role template
- `CLAUDE.md`: Symlink to `AGENTS.md`

Default locations (adjustable via `vibe_data`):

```text
/fs/CLAUDE.md
/fs/AGENTS.md
```

--------

## Password and Auth

### Code-Server

Edit config:

```bash
vi /data/code/code-server/config.yaml
systemctl restart code-server
```

Or via Ansible:

```bash
# Persist the new password in inventory first so it does not enter shell history
./vibe.yml -l <host> -t code_config,code_launch --check
./vibe.yml -l <host> -t code_config,code_launch
```

### JupyterLab

Config file: `/data/jupyter/jupyter_config.py`

Field: `c.IdentityProvider.token`

The current v4.5 template allows any Origin and disables XSRF checks. Thus, the token is its primary authentication barrier. Use a strong random token. Restrict TCP/8888 and access Jupyter through a trusted TLS reverse proxy.

Save the new token in the inventory. Then preview and apply the change:

```bash
./vibe.yml -l <host> -t jupyter_config --check
./vibe.yml -l <host> -t jupyter_config
ssh <host> sudo systemctl restart jupyter
```

Or update through Ansible and restart automatically. Add `-e jupyter_enabled=true` if the inventory does not enable it:

```bash
./vibe.yml -l <host> -e jupyter_enabled=true -e jupyter_password='NewToken' -t jupyter_config,jupyter_launch
```

--------

## Code-Server Extensions

```bash
code-server --install-extension ms-python.python
code-server --list-extensions
code-server --uninstall-extension ms-python.python
```

Switch extension marketplace:

```yaml
code_gallery: microsoft
```

Redeploy:

```bash
./vibe.yml -l <host> -t code_config,code_launch
```

--------

## JupyterLab Environment

If `jupyter_venv` (default `/data/venv`) is absent, `jupyter_install` creates it with `uv venv` and installs `jupyterlab` and `ipykernel`. To initialize manually:

```bash
uv venv /data/venv
```

Install or update JupyterLab manually:

```bash
uv pip install --python /data/venv/bin/python jupyterlab ipykernel
systemctl restart jupyter
```

Install extensions (in venv):

```bash
uv pip install --python /data/venv/bin/python jupyterlab-git
systemctl restart jupyter
```

--------

## Claude Code

`claude_install` installs a native system package from `pigsty-infra` (default `claude_package: claude`); `claude_config` manages configuration files.

```bash
which claude
claude --version
```

Configuration files under `~<node_user>/`:

- `~/.claude.json`: initialized with `force: false`, preserving existing user state
- `~/.claude/settings.json`: merges `env` without destroying existing custom configuration

Update config:

```bash
./vibe.yml -l <host> -t claude_config
```

Reinstall or upgrade Claude CLI:

```bash
./vibe.yml -l <host> -t claude_install
# Or upgrade with the system package manager (EL / Debian)
yum install -y claude      # EL
apt install -y claude      # Debian/Ubuntu
```

The repository also provides the official package name `claude-code`; select it with `claude_package: claude-code` if needed.

--------

## Codex CLI

`codex_install` installs the native `codex` package from `pigsty-infra`. VIBE does not manage Codex configuration:

```bash
which codex
codex --version
./vibe.yml -l <host> -t codex_install
```

To configure for another user, run as that user or copy the files manually.

--------

## File Locations

| Component | Key Files |
|:-----|:--------|
| Code-Server | `/data/code/code-server/config.yaml` |
| Code-Server | `/etc/default/code` |
| Code-Server | `/etc/systemd/system/code-server.service` |
| JupyterLab | `/data/jupyter/jupyter_config.py` |
| JupyterLab | `/etc/default/jupyter` |
| JupyterLab | `/etc/systemd/system/jupyter.service` |
| Claude Code | `~/.claude.json` / `~/.claude/settings.json` |
{.full-width}

--------

## Troubleshooting

Port checks:

```bash
ss -tlnp | grep 8443
ss -tlnp | grep 8888
```

Nginx entry:

```bash
nginx -t
systemctl status nginx
```
