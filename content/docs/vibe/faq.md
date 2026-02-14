---
title: FAQ
weight: 4860
description: VIBE module frequently asked questions.
icon: fas fa-question-circle
module: [VIBE]
categories: [FAQ]
---

--------

## Deployment

### code-server package not found

Ensure [`NODE`](/docs/node) and repo config are in place:

```bash
yum repolist    # EL
apt update      # Debian/Ubuntu
./infra.yml -t repo
```

### JupyterLab installation failed

`jupyter_venv` must exist:

```bash
uv venv /data/venv
./vibe.yml -l <host> -t jupyter
```

--------

## Access

### Cannot access `/code/` or `/jupyter/`

1. Check service status
2. Check port listening
3. Check Nginx config

```bash
systemctl status code-server
systemctl status jupyter
ss -tlnp | grep 8443
ss -tlnp | grep 8888
nginx -t
```

### WebSocket connection fails

Ensure Nginx enables WebSocket (default is enabled).
If using custom `infra_portal`, set `websocket: true`.

--------

## Password and Token

### Change Code-Server password

```bash
./vibe.yml -l <host> -e code_password='NewPass' -t code_config,code_launch
```

### Change JupyterLab token

```bash
./vibe.yml -l <host> -e jupyter_password='NewToken' -t jupyter_config,jupyter_launch
```

--------

## Claude Code

### CLI not found

First check whether `nodejs_pkg` completed (`@anthropic-ai/claude-code` is installed by default):

```bash
which claude
npm list -g --depth=0 | grep '@anthropic-ai/claude-code'
./vibe.yml -l <host> -t nodejs_pkg
```

If `nodejs_enabled` is disabled or `npm_packages` is overridden, install manually:

```bash
npm install -g @anthropic-ai/claude-code
```

### API key not set

```bash
export ANTHROPIC_API_KEY=sk-ant-xxx
# or set in claude_env
```

### Telemetry not showing

Check local VictoriaMetrics/VictoriaLogs:

```bash
curl http://127.0.0.1:8428/api/v1/status/buildinfo
curl http://127.0.0.1:9428/select/logsql/stats_query
```

Ensure OTEL endpoints in `~/.claude/settings.json` are correct.

--------

## Extensions and Plugins

### Code-Server extension install fails

- Check network
- Try switching `code_gallery`
- Or install VSIX manually

```bash
code-server --install-extension /path/to/extension.vsix
```

### JupyterLab extension install fails

```bash
source /data/venv/bin/activate
pip install jupyterlab-git
systemctl restart jupyter
```
