---
title: FAQ
weight: 4860
description: VIBE module frequently asked questions.
icon: fas fa-question-circle
module: [VIBE]
categories: [Reference]
---

--------

## Deployment

### code-server package not found

Make sure that [`NODE`](/docs/node) and the repository configuration are ready:

```bash
yum repolist    # EL
apt-cache policy   # Debian/Ubuntu, read-only inspection
./infra.yml -l infra -t repo --check
```

### JupyterLab Is Missing or Installation Fails

1. `jupyter_enabled` defaults to `false`; only `conf/vibe.yml` explicitly enables it. For `-t jupyter`, enable it in inventory or pass `-e jupyter_enabled=true`.
2. Confirm that [`NODE`](/docs/node) installed `uv`. `jupyter_install` uses `uv venv` to create `jupyter_venv` and install `jupyterlab` / `ipykernel`.

```bash
which uv
./vibe.yml -l <host> -t jupyter -e jupyter_enabled=true
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

First, save the new password in the inventory. This keeps it out of shell history:

```bash
./vibe.yml -l <host> -t code_config,code_launch --check
./vibe.yml -l <host> -t code_config,code_launch
```

### Change JupyterLab token

First, save a high-entropy random token in the inventory. The current template allows any Origin and disables XSRF checks. Never use an example token or expose TCP/8888 directly:

`jupyter_launch` automatically restarts `jupyter` when configuration changes. Add `-e jupyter_enabled=true` if the inventory does not enable it:

```bash
./vibe.yml -l <host> -e jupyter_enabled=true -e jupyter_password='NewToken' -t jupyter_config,jupyter_launch
```

--------

## Claude Code

### CLI not found

Claude Code uses a native `pigsty-infra` package, named `claude` by default. Check repository availability and `claude_install`:

```bash
which claude
rpm -q claude || dpkg -l claude
./vibe.yml -l <host> -t claude_install
```

If `claude_enabled` is disabled, install manually through the system package manager:

```bash
yum install -y claude      # EL
apt install -y claude      # Debian/Ubuntu
```

To use the new official package name, set `claude_package: claude-code`.

### Codex CLI not found

Codex CLI also uses the native `pigsty-infra` package `codex`:

```bash
which codex
rpm -q codex || dpkg -l codex
./vibe.yml -l <host> -t codex_install
```

Ensure `codex_enabled: true` and that the node has the `pigsty-infra` repository. VIBE installs Codex CLI but does not generate its configuration.

### API key not set

```bash
export ANTHROPIC_API_KEY=sk-ant-xxx
# Or add to claude_env and run ./vibe.yml -l <host> -t claude_config
```

### Telemetry not showing

Check VictoriaMetrics / VictoriaLogs reachability on the control plane (`<admin_ip>`, or `127.0.0.1` for a single-node deployment):

```bash
curl http://<admin_ip>:8428/api/v1/status/buildinfo
curl http://<admin_ip>:9428/select/logsql/stats_query
```

Verify that the OTEL endpoints in `~/.claude/settings.json` are reachable: `http://<admin_ip>:8428/opentelemetry/v1/metrics` and `http://<admin_ip>:9428/insert/opentelemetry/v1/logs`.

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
