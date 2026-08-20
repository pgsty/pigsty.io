# Administration

> VIBE module operations and common admin tasks.

---

LLMS index: [llms.txt](/llms.txt)

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

The current v4.5 template also allows any Origin and disables XSRF checks, so the token is its primary authentication barrier. Use a strong random token, restrict TCP/8888, and access it through a trusted TLS reverse proxy. Persist a new token in inventory, then preview and apply it:

```bash
./vibe.yml -l <host> -t jupyter_config --check
./vibe.yml -l <host> -t jupyter_config
ssh <host> sudo systemctl restart jupyter
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

The `claude_install` subtask installs Claude CLI, while `claude_config` writes the configuration files.

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
./vibe.yml -l <host> -t claude_install
# or install manually
npm install -g @anthropic-ai/claude-code
```

Override `claude_package` if you need a different npm package.

--------

## Codex CLI

VIBE installs `@openai/codex` through `codex_install`, but does not manage Codex configuration:

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
