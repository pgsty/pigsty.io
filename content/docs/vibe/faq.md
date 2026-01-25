---
title: VIBE FAQ
weight: 4860
description: VIBE module frequently asked questions covering deployment, configuration, and usage.
icon: fas fa-question-circle
module: [VIBE]
categories: [FAQ]
---

This document covers common questions and solutions for VIBE module usage.


--------

## Deployment Issues

### How to use VIBE config template?

```bash
# Download Pigsty
curl https://repo.pigsty.io/get | bash

# Use vibe config template
./configure -c vibe

# Modify passwords then deploy
vi pigsty.yml
./deploy.yml
./juice.yml   # Optional
./vibe.yml
```

### Error "code-server package not found"

Ensure repos are properly configured:

```bash
# Check repo availability
yum repolist          # EL systems
apt update            # Debian/Ubuntu

# Refresh repo cache
./infra.yml -t repo
```

### JupyterLab Installation Fails

Check if Python venv exists:

```bash
# Check venv
ls -la /data/venv/bin/python

# If not exists, create manually
python3 -m venv /data/venv

# Re-run playbook
./vibe.yml -l <host> -t jupyter
```


--------

## Access Issues

### Cannot Access Code-Server

1. **Check service status**
   ```bash
   systemctl status code-server
   ```

2. **Check port listening**
   ```bash
   ss -tlnp | grep 8443
   ```

3. **Check Nginx config**
   ```bash
   nginx -t
   systemctl status nginx
   ```

4. **Check firewall**
   ```bash
   firewall-cmd --list-all
   ```

### Cannot Access JupyterLab

1. **Check service status**
   ```bash
   systemctl status jupyter
   ```

2. **Check port listening**
   ```bash
   ss -tlnp | grep 8888
   ```

3. **Verify Token**

   Ensure using correct Token, default is `Jupyter.Lab`.

### WebSocket Connection Failed

JupyterLab and Code-Server both depend on WebSocket. Ensure Nginx config is correct:

```nginx
proxy_http_version 1.1;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
```

Check `infra_portal` config has WebSocket enabled:

```yaml
infra_portal:
  code: { domain: code.pigsty, endpoint: "127.0.0.1:8443", websocket: true }
  jupyter: { domain: jupyter.pigsty, endpoint: "127.0.0.1:8888", websocket: true }
```


--------

## Password and Authentication

### How to Change Code-Server Password?

**Method 1: Edit config directly**
```bash
vi /data/code/code-server/config.yaml
# Modify password field
systemctl restart code-server
```

**Method 2: Use Ansible**
```bash
# Modify code_password in pigsty.yml
./vibe.yml -l <host> -t code_config,code_launch
```

### How to Change JupyterLab Token?

**Method 1: Edit config directly**
```bash
vi /data/jupyter/jupyter_config.py
# Modify c.ServerApp.token
systemctl restart jupyter
```

**Method 2: Use Ansible**
```bash
# Modify jupyter_password in pigsty.yml
./vibe.yml -l <host> -t jupyter_config,jupyter_launch
```

### Forgot Password?

View password from config files:

```bash
# Code-Server password
grep password /data/code/code-server/config.yaml

# JupyterLab Token
grep token /data/jupyter/jupyter_config.py
```


--------

## Claude Code Issues

### Claude Code Not Working

1. **Check if API Key is configured**
   ```bash
   echo $ANTHROPIC_API_KEY
   cat ~/.claude.json
   ```

2. **Configure API Key**
   ```bash
   export ANTHROPIC_API_KEY=sk-ant-xxx
   # Or
   claude config set apiKey sk-ant-xxx
   ```

### Claude Code Cannot Connect to API

1. **Check network**
   ```bash
   curl -I https://api.anthropic.com
   ```

2. **Check proxy settings**
   ```bash
   echo $HTTP_PROXY
   echo $HTTPS_PROXY
   ```

### Claude Code Monitoring Data Not Showing

Check if OpenTelemetry endpoints are reachable:

```bash
# Check VictoriaMetrics
curl http://127.0.0.1:8428/api/v1/status/buildinfo

# Check VictoriaLogs
curl http://127.0.0.1:9428/select/logsql/stats_query
```

Confirm `~/.claude/settings.json` is configured correctly.


--------

## Extensions and Plugins

### Code-Server Extension Installation Fails

1. **Check network connection**
   ```bash
   curl -I https://open-vsx.org
   ```

2. **Switch extension marketplace**
   ```yaml
   code_gallery: microsoft  # Switch to Microsoft marketplace
   ```

   Redeploy:
   ```bash
   ./vibe.yml -l <host> -t code_config,code_launch
   ```

3. **Manual VSIX install**
   ```bash
   code-server --install-extension /path/to/extension.vsix
   ```

### How to Use GitHub Copilot?

GitHub Copilot doesn't support Code-Server. Consider:

- Use Claude Code as AI coding assistant
- Use Codeium or other Code-Server compatible AI tools

### JupyterLab Extension Installation Fails

```bash
# Activate venv
source /data/venv/bin/activate

# Check JupyterLab version
jupyter --version

# Install extension
pip install jupyterlab-git

# Restart service
systemctl restart jupyter
```


--------

## Python and Jupyter

### JupyterLab Won't Start

1. **Check venv**
   ```bash
   /data/venv/bin/python --version
   /data/venv/bin/jupyter --version
   ```

2. **Reinstall JupyterLab**
   ```bash
   /data/venv/bin/pip install --upgrade jupyterlab ipykernel
   ```

3. **Check logs**
   ```bash
   journalctl -u jupyter -xe
   ```

### How to Install Additional Python Packages?

```bash
# Activate venv
source /data/venv/bin/activate

# Install packages
pip install numpy pandas matplotlib

# Use Tsinghua mirror (China)
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy pandas
```

### How to Add New Jupyter Kernel?

```bash
# Install ipykernel
pip install ipykernel

# Register kernel
python -m ipykernel install --user --name myenv --display-name "Python (myenv)"

# List kernels
jupyter kernelspec list
```

### How to Connect to PostgreSQL?

```python
import psycopg2

conn = psycopg2.connect(
    'postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta'
)
cursor = conn.cursor()
cursor.execute('SELECT version()')
print(cursor.fetchone())
conn.close()
```


--------

## Performance and Resources

### Code-Server Laggy

1. **Check memory usage**
   ```bash
   free -h
   ps aux | grep code-server
   ```

2. **Disable unnecessary extensions**

   Disable unused extensions in Code-Server.

3. **Add system resources**

   Consider increasing VM memory.

### JupyterLab Notebook Runs Slow

1. **Check kernel resources**
   ```bash
   top
   htop
   ```

2. **Clear Notebook output**

   Clearing cell outputs reduces memory usage.

3. **Restart kernel**

   Periodically restart kernel to release memory.

### Disk Space Low

```bash
# Check disk usage
df -h

# Clean logs
journalctl --vacuum-time=7d

# Clean pip cache
pip cache purge
```


--------

## JuiceFS Integration

### Working Directory Unavailable

1. **Check JuiceFS mount**
   ```bash
   mount | grep juicefs
   df -h /fs
   ```

2. **Remount**
   ```bash
   ./juice.yml -l <host>
   ```

### Filesystem Performance Poor

1. **Check network latency**
   ```bash
   ping <postgresql-host>
   ```

2. **Check PostgreSQL status**
   ```bash
   psql postgres://... -c "SELECT 1"
   ```


--------

## Security Issues

### How to Restrict Access?

1. **Configure firewall**
   ```bash
   # Allow specific IP only
   firewall-cmd --add-rich-rule='rule family="ipv4" source address="10.0.0.0/8" port port="443" protocol="tcp" accept'
   ```

2. **Use Nginx access control**
   ```nginx
   location /code/ {
       allow 10.0.0.0/8;
       deny all;
       ...
   }
   ```

### Are Default Passwords Secure?

**No!** Always change in production:

- `code_password`: Default `Code.Server`
- `jupyter_password`: Default `Jupyter.Lab`

```yaml
code_password: 'YourStrongPassword!'
jupyter_password: 'YourStrongToken!'
```


--------

## Supported Platforms

### Which Operating Systems?

| System | Versions            |
|:-------|:--------------------|
| EL     | 8, 9, 10            |
| Ubuntu | 20.04, 22.04, 24.04 |
| Debian | 11, 12, 13          |
{.full-width}

### Which Architectures?

- x86_64 (AMD64)
- ARM64 (AArch64)

### Ansible Version Requirement?

Minimum: Ansible 2.9+


