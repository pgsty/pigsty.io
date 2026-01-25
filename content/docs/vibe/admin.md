---
title: VIBE Admin
weight: 4840
description: VIBE module administration guide, including service management, password changes, extension installation.
icon: fas fa-wrench
module: [VIBE]
categories: [Admin]
---

This guide covers daily VIBE module operations including service management, config modification, extension installation and common SOPs.


--------

## Service Management

### Code-Server Service

```bash
# Check service status
sudo systemctl status code-server

# Start service
sudo systemctl start code-server

# Stop service
sudo systemctl stop code-server

# Restart service
sudo systemctl restart code-server

# Enable at boot
sudo systemctl enable code-server

# Disable at boot
sudo systemctl disable code-server
```

### JupyterLab Service

```bash
# Check service status
sudo systemctl status jupyter

# Start service
sudo systemctl start jupyter

# Stop service
sudo systemctl stop jupyter

# Restart service
sudo systemctl restart jupyter

# Enable at boot
sudo systemctl enable jupyter

# Disable at boot
sudo systemctl disable jupyter
```

### View Service Logs

```bash
# Code-Server logs
journalctl -u code-server -f

# JupyterLab logs
journalctl -u jupyter -f

# View last 100 lines
journalctl -u code-server -n 100
journalctl -u jupyter -n 100
```


--------

## Password Management

### Change Code-Server Password

**Method 1: Edit config file**

```bash
# Edit config file
sudo vi /data/code/code-server/config.yaml

# Modify password field
password: YourNewPassword

# Restart service
sudo systemctl restart code-server
```

**Method 2: Use Ansible**

```bash
# Modify code_password in pigsty.yml
# Then execute
./vibe.yml -l <host> -t code_config,code_launch
```

### Change JupyterLab Token

**Method 1: Edit config file**

```bash
# Edit config file
sudo vi /data/jupyter/jupyter_config.py

# Modify c.ServerApp.token value
c.ServerApp.token = 'YourNewToken'

# Restart service
sudo systemctl restart jupyter
```

**Method 2: Use Ansible**

```bash
# Modify jupyter_password in pigsty.yml
# Then execute
./vibe.yml -l <host> -t jupyter_config,jupyter_launch
```


--------

## Extension Management

### Code-Server Extensions

**Install via Web UI**

1. Open Code-Server (`https://<host>/code/`)
2. Click Extensions icon on left sidebar
3. Search and install desired extensions

**Install via CLI**

```bash
# Install single extension
code-server --install-extension ms-python.python

# Install from VSIX file
code-server --install-extension /path/to/extension.vsix

# List installed extensions
code-server --list-extensions

# Uninstall extension
code-server --uninstall-extension ms-python.python
```

**Switch Extension Marketplace**

Modify `code_gallery` param:

```yaml
# Open VSX (default)
code_gallery: openvsx

# Microsoft official marketplace
code_gallery: microsoft
```

Then redeploy:

```bash
./vibe.yml -l <host> -t code_config,code_launch
```

### JupyterLab Extensions

**Install JupyterLab Extensions**

```bash
# Activate venv
source /data/venv/bin/activate

# Install extension
pip install jupyterlab-git
pip install jupyterlab-lsp

# Restart JupyterLab
sudo systemctl restart jupyter
```


--------

## Python Package Management

### Install Python Packages

```bash
# Activate venv
source /data/venv/bin/activate

# Install with pip
pip install numpy pandas matplotlib scikit-learn

# Use Tsinghua mirror (China)
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple numpy pandas

# Install with uv (faster)
uv pip install numpy pandas matplotlib
```

### Configure pip Mirror

```bash
# Temporary use
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple <package>

# Permanent config
pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```

### Install Jupyter Kernel

```bash
# Install ipykernel
pip install ipykernel

# Register new kernel
python -m ipykernel install --user --name myenv --display-name "Python (myenv)"

# List registered kernels
jupyter kernelspec list

# Remove kernel
jupyter kernelspec remove myenv
```


--------

## Claude Code Management

### Configure API Key

**Method 1: Environment variable**

```bash
# Temporary
export ANTHROPIC_API_KEY=sk-ant-xxx-your-api-key

# Permanent (add to ~/.bashrc or ~/.zshrc)
echo 'export ANTHROPIC_API_KEY=sk-ant-xxx-your-api-key' >> ~/.bashrc
source ~/.bashrc
```

**Method 2: Claude config command**

```bash
claude config set apiKey sk-ant-xxx-your-api-key
```

**Method 3: Configure during Ansible deployment**

```yaml
claude_env:
  ANTHROPIC_API_KEY: sk-ant-xxx-your-api-key
```

### View Claude Config

```bash
# View current config
cat ~/.claude.json
cat ~/.claude/settings.json

# View Claude version
claude --version
```

### Using Claude Code

```bash
# Start Claude in current directory
claude

# Start in specified directory
claude /path/to/project

# Non-interactive mode
claude -p "Explain this code"

# Specify model
claude --model claude-sonnet-4-20250514
```


--------

## Directory Structure

### VIBE Working Directory

```
{{ vibe_data }}           # Default /fs
├── CLAUDE.md             # Claude Code context file
├── AGENTS.md             # Symlink -> CLAUDE.md
└── <your-projects>/      # Project files
```

### Code-Server Data Directory

```
{{ code_data }}           # Default /data/code
└── code-server/
    ├── config.yaml       # Config file
    ├── extensions/       # Extensions directory
    └── User/
        └── settings.json # User settings
```

### JupyterLab Data Directory

```
{{ jupyter_data }}        # Default /data/jupyter
├── jupyter_config.py     # Config file
└── kernels/              # Jupyter kernels
```

### Python Virtual Environment

```
{{ jupyter_venv }}        # Default /data/venv
├── bin/
│   ├── python
│   ├── pip
│   ├── jupyter
│   └── ...
├── lib/
│   └── python3.x/
│       └── site-packages/
└── ...
```


--------

## Config File Locations

| Component   | Config File                                    |
|:------------|:-----------------------------------------------|
| Code-Server | `/data/code/code-server/config.yaml`           |
| Code-Server | `/etc/systemd/system/code-server.service`      |
| Code-Server | `/etc/default/code`                            |
| JupyterLab  | `/data/jupyter/jupyter_config.py`              |
| JupyterLab  | `/etc/systemd/system/jupyter.service`          |
| JupyterLab  | `/etc/default/jupyter`                         |
| Claude Code | `~/.claude.json`                               |
| Claude Code | `~/.claude/settings.json`                      |
{.full-width}


--------

## Connect to PostgreSQL

### From JupyterLab

```python
import psycopg2

# Connect to database
conn = psycopg2.connect(
    'postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta'
)
cursor = conn.cursor()

# Execute query
cursor.execute('SELECT version()')
print(cursor.fetchone())

# Close connection
cursor.close()
conn.close()
```

### Using pandas

```python
import pandas as pd
import psycopg2

conn = psycopg2.connect(
    'postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta'
)
df = pd.read_sql('SELECT * FROM pg_stat_activity', conn)
df.head()
```

### From Code-Server Terminal

```bash
# Using psql
psql postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta

# Using pgcli (if installed)
pgcli postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta
```


--------

## Backup and Restore

### Backup Code-Server Config

```bash
# Backup user data
tar -czvf code-backup.tar.gz /data/code

# Restore
tar -xzvf code-backup.tar.gz -C /
sudo systemctl restart code-server
```

### Backup JupyterLab Config

```bash
# Backup config and notebooks
tar -czvf jupyter-backup.tar.gz /data/jupyter /fs/*.ipynb

# Restore
tar -xzvf jupyter-backup.tar.gz -C /
sudo systemctl restart jupyter
```

### Using JuiceFS PITR

If working directory uses JuiceFS, leverage PostgreSQL PITR for point-in-time recovery. See [JUICE Admin Guide](/docs/juice/admin/).


--------

## Troubleshooting

### Service Won't Start

```bash
# View detailed error logs
journalctl -u code-server -xe
journalctl -u jupyter -xe

# Check port usage
ss -tlnp | grep 8443
ss -tlnp | grep 8888

# Check processes
ps aux | grep code-server
ps aux | grep jupyter
```

### Cannot Access Web UI

```bash
# Check Nginx status
sudo systemctl status nginx

# Check Nginx config
sudo nginx -t

# Check firewall
sudo firewall-cmd --list-all
```

### JupyterLab Python Version Issues

```bash
# Check Python version in venv
/data/venv/bin/python --version

# Check JupyterLab version
/data/venv/bin/jupyter --version

# Rebuild venv
rm -rf /data/venv
python3 -m venv /data/venv
/data/venv/bin/pip install jupyterlab ipykernel
```


