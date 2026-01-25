---
title: "Module: Jupyter"
weight: 5020
description: Deploy JupyterLab with Pigsty, a ready-to-use interactive computing and data analysis environment.
icon: fab fa-python
module: [VIBE]
categories: [Reference]
---

{{% alert title="Doc Migrated" color="warning" %}}
JupyterLab is now integrated into the **[VIBE Module](/docs/vibe/)**, see new documentation:

- **[VIBE Overview](/docs/vibe/)**: Module intro and quick start
- **[VIBE Config](/docs/vibe/config/)**: JupyterLab configuration
- **[VIBE Params](/docs/vibe/param/)**: `jupyter_*` parameter reference
- **[VIBE Playbook](/docs/vibe/playbook/)**: Deployment and management
- **[VIBE Admin](/docs/vibe/admin/)**: Daily operations guide
- **[VIBE FAQ](/docs/vibe/faq/)**: Common questions
{{% /alert %}}

JupyterLab is a next-gen interactive development environment supporting Notebooks, terminals, text editors, and more.
Pigsty's JUPYTER module provides automated JupyterLab deployment with HTTPS access via Nginx reverse proxy.


--------

## Overview

JUPYTER module deploys JupyterLab as a systemd service, exposed to web via Nginx reverse proxy.

```
User Browser
    ↓ HTTPS
Nginx (https://i.pigsty/jupyter/)
    ↓ proxy_pass
JupyterLab (127.0.0.1:8888)
    └─ User: {{ node_user }}
    └─ WorkDir: {{ jupyter_home }}
    └─ Venv: {{ jupyter_venv }}
```


--------

## Quick Start

### Prerequisites

JupyterLab must be pre-installed in a Python virtual environment:

```bash
# Create venv and install JupyterLab
uv pip install jupyterlab ipykernel --python /data/venv/bin/python

# Or use pip
/data/venv/bin/pip install jupyterlab ipykernel
```

### Enable JupyterLab

Set `jupyter_enabled: true` on node, then execute:

```bash
./jupyter.yml -l <host>
```

Or enable on infra node with one-liner:

```bash
./jupyter.yml -l infra -e jupyter_enabled=true
```

### Access JupyterLab

After deployment, access via:

- **Subpath**: `https://i.pigsty/jupyter/`
- **Subdomain**: `https://jupyter.pigsty` (requires `infra_portal` config)

Default login Token: `Jupyter.Lab`


--------

## Parameters

| Parameter            | Default         | Description                               |
|:---------------------|:----------------|:------------------------------------------|
| `jupyter_enabled`    | `false`         | Enable JupyterLab on this node            |
| `jupyter_port`       | `8888`          | JupyterLab listen port (localhost only)   |
| `jupyter_home`       | `/fs/jupyter`   | Working directory (Notebook root)         |
| `jupyter_data`       | `/data/jupyter` | Data directory (config, kernels, etc.)    |
| `jupyter_password`   | `Jupyter.Lab`   | Login Token                               |
| `jupyter_venv`       | `/data/venv`    | Python venv path containing JupyterLab    |
{.full-width}


--------

## Playbook & Tasks

`jupyter.yml` playbook contains these tasks:

| Tag              | Description                               |
|:-----------------|:------------------------------------------|
| `jupyter_dir`    | Create working and data directories       |
| `jupyter_config` | Render config files and systemd service   |
| `jupyter_launch` | Start JupyterLab service                  |
{.full-width}

Common commands:

```bash
# Deploy JupyterLab
./jupyter.yml -l <host>

# Update config only
./jupyter.yml -l <host> -t jupyter_config

# Restart service
./jupyter.yml -l <host> -t jupyter_launch
```


--------

## Connect to PostgreSQL

Connect to PostgreSQL databases from Notebook:

### Install Driver

```bash
# Using pip
pip install psycopg2-binary psycopg2
```

### Usage Example

```python
import psycopg2

# Connect to database
conn = psycopg2.connect('postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta')
cursor = conn.cursor()

# Execute query
cursor.execute('SELECT * FROM pg_stat_activity LIMIT 5')
for row in cursor.fetchall():
    print(row)

# Close connection
cursor.close()
conn.close()
```

### Using pandas

```python
import pandas as pd
import psycopg2

conn = psycopg2.connect('postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta')
df = pd.read_sql('SELECT * FROM pg_stat_activity', conn)
df.head()
```


--------

## Directory Structure

```
{{ jupyter_home }}              # Working directory (e.g., /fs/jupyter)
├── *.ipynb                     # Notebook files
└── data/                       # Data files

{{ jupyter_data }}              # Data directory (e.g., /data/jupyter)
├── jupyter_config.py           # JupyterLab config
└── kernels/                    # Jupyter kernels

{{ jupyter_venv }}              # Python venv (e.g., /data/venv)
└── bin/
    ├── python
    ├── pip
    └── jupyter

/etc/systemd/system/jupyter.service  # systemd service unit
/etc/default/jupyter                  # Environment variables
```


--------

## Configuration Examples

### Basic Config

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          jupyter_enabled: true
          jupyter_password: 'MySecureToken'
```

### Data Analysis Workstation

Combined with JuiceFS shared filesystem for data analysis environment:

```yaml
all:
  children:
    infra:
      hosts:
        10.10.10.10:
          jupyter_enabled: true
          jupyter_password: 'Jupyter.Lab'
          jupyter_home: /fs/jupyter      # Use JuiceFS mount point
          code_enabled: true
          code_password: 'Code.Server'
          code_home: /fs/code
          juice_instances:
            jfs:
              path: /fs
              meta: postgres://dbuser_meta:DBUser.Meta@10.10.10.10:5432/meta
              data: --storage postgres --bucket ...
```


--------

## Installing Python Packages

Install additional Python packages in JupyterLab terminal:

```bash
# Using pip
pip install numpy pandas matplotlib scikit-learn
```

Or using conda (if installed):

```bash
conda install numpy pandas matplotlib
```


--------

## FAQ

### How to change password?

Modify `jupyter_password` in config, then re-execute playbook:

```bash
./jupyter.yml -l <host> -t jupyter_config,jupyter_launch
```

### JupyterLab fails to start?

Check if JupyterLab is properly installed in venv:

```bash
/data/venv/bin/jupyter --version
```

If not installed, run installation first:

```bash
/data/venv/bin/pip install jupyterlab ipykernel
```

### How to add new Kernel?

```bash
# Install ipykernel
pip install ipykernel

# Register new kernel
python -m ipykernel install --user --name myenv --display-name "Python (myenv)"
```

### WebSocket connection issues?

JupyterLab relies on WebSocket for real-time communication. If encountering connection issues, ensure Nginx config properly supports WebSocket:

```nginx
proxy_http_version 1.1;
proxy_set_header Upgrade $http_upgrade;
proxy_set_header Connection "upgrade";
```


--------

## Docker Alternative

If you prefer Docker over systemd service:

```bash
cd ~/pigsty/app/jupyter
make dir up
```

Access `http://10.10.10.10:8888`, default Token: `pigsty`

Docker Makefile commands:

```bash
make up      # Start Jupyter container
make down    # Stop container
make log     # View logs
make clean   # Remove container
```


--------

## Supported Platforms

- **OS**: EL 8/9/10, Ubuntu 20/22/24, Debian 11/12/13
- **Arch**: x86_64, ARM64
- **Ansible**: 2.9+

