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

- `CLAUDE.md`
- `AGENTS.md` (symlink to `CLAUDE.md`)

Default locations (adjustable via `vibe_data`):

```
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
./vibe.yml -l <host> -e code_password='NewPassword' -t code_config,code_launch
```

### JupyterLab

Config file: `/data/jupyter/jupyter_config.py`

Field: `c.IdentityProvider.token`

```bash
vi /data/jupyter/jupyter_config.py
systemctl restart jupyter
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

VIBE does not create venv automatically, ensure `jupyter_venv` exists:

```bash
uv venv /data/venv
```

Install/upgrade JupyterLab:

```bash
uv pip install --python /data/venv/bin/python jupyterlab ipykernel
systemctl restart jupyter
```

Install extensions (in venv):

```bash
source /data/venv/bin/activate
pip install jupyterlab-git
systemctl restart jupyter
```

--------

## Claude Code

The `claude_config` subtask only writes config files.
Claude CLI is installed globally by `nodejs_pkg` through `npm_packages` (which includes `@anthropic-ai/claude-code` by default).

```bash
which claude
claude --version
```

Config files:

- `~/.claude.json`
- `~/.claude/settings.json`

Update config:

```bash
./vibe.yml -l <host> -t claude_config
```

Reinstall/install Claude CLI:

```bash
./vibe.yml -l <host> -t nodejs_pkg
# or install manually
npm install -g @anthropic-ai/claude-code
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
