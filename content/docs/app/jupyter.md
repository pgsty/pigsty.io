---
title: 'Jupyter: Notebooks and Data Analysis'
weight: 650
lastmod: 2026-08-13
description: Run JupyterLab with Pigsty's standalone Docker Compose template and access PostgreSQL safely.
module: [SOFTWARE]
categories: [Reference]
---

[JupyterLab](https://jupyter.org/) is an interactive notebook, terminal, and data-analysis environment. Pigsty v4.5.0 has two distinct deployment paths:

- The [`VIBE`](/docs/vibe/) module, managed by Ansible and systemd, for the complete v4.5.0 development sandbox.
- The lightweight standalone `app/jupyter` Docker Compose template documented here.

`app/jupyter` is not a default `apps` inventory entry, and data-directory preparation is a separate step. Do not assume that `app.yml -e app=jupyter` handles its directory ownership.

![JupyterLab](/img/docs/app/jupyter.jpeg)

--------

## Quick Start

```bash
cd ~/pigsty/app/jupyter
vi .env                    # change JUPYTER_TOKEN and optionally pin JUPYTER_IMAGE
chmod 600 .env
make dir                   # create /data/jupyter, owned by 1000:100
make up                    # docker compose up -d
```

Generate a strong token with `openssl rand -hex 32`. The default port is `8888`; open `http://<host_ip>:8888`.

`lab.pigsty` works only when that name is configured in `infra_portal`, Nginx, and DNS. The template default `JUPYTER_TOKEN=pigsty` is for local demonstrations only and must be replaced in production.

--------

## Current Template

The v4.5.0 `.env` defaults are:

```bash
JUPYTER_IMAGE=quay.io/jupyter/minimal-notebook:latest
JUPYTER_PORT=8888
JUPYTER_TOKEN=pigsty
```

Compose mounts host `/data/jupyter` at `/home/jovyan/work` and passes the token into the container. The `latest` tag changes upstream; production deployments should use a tested, explicit image tag or digest.

For SciPy, R, Julia, TensorFlow, PyTorch, or Spark, select another [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/) image listed in `.env`, while still pinning its version and validating architecture support.

--------

## Access PostgreSQL

Install the modern Psycopg driver and optional analysis libraries from a Jupyter terminal:

```bash
pip install "psycopg[binary]" pandas sqlalchemy
```

Do not store real passwords in notebooks. This example obtains the connection string through hidden input and reads system information only:

```python
from getpass import getpass
import psycopg

pgurl = getpass("PostgreSQL URL: ")
with psycopg.connect(pgurl) as conn:
    with conn.cursor() as cur:
        cur.execute("SELECT current_database(), current_user, version()")
        print(cur.fetchone())
```

Use Pandas and SQLAlchemy with a system statistics view:

```python
import pandas as pd
from sqlalchemy import create_engine

engine = create_engine(pgurl)
df = pd.read_sql(
    "SELECT datname, numbackends, xact_commit, xact_rollback "
    "FROM pg_stat_database ORDER BY datname",
    engine,
)
df
```

These examples access system views only. Obtain authorization from the data owner before reading application tables, and limit columns, predicates, and result size.

--------

## Persistence and Dependencies

Only `/home/jovyan/work` is mapped to `/data/jupyter`. The following are not persistent across container recreation by default:

- Python or Conda packages installed temporarily inside the container
- notebooks, configuration, and caches outside `work`
- the container's own user state

For production, install dependencies through a pinned image, custom Dockerfile, or reproducible dependency file, and back up `/data/jupyter` separately. A persistent mount is not a backup.

--------

## Management Commands

From `~/pigsty/app/jupyter`:

```bash
make up      # start JupyterLab
make dir     # create the data directory with 1000:100 ownership
make view    # show access endpoints
make log     # follow logs
make info    # inspect the container
make stop    # stop the container
make pull    # pull the image selected in .env
```

`make clean` removes the container but retains `/data/jupyter`. `make purge` recursively deletes `/data/jupyter`; it is an unrecoverable data-deletion operation and requires confirmation of the exact directory and a recent backup.

--------

## Security Checklist

- Use a strong random token, protect `.env`, and do not disable authentication.
- The default port mapping listens on the host network. Restrict sources with a firewall and prefer Nginx with valid HTTPS.
- A notebook can execute arbitrary code and access mounted files and databases. Grant only least-privilege database accounts and host directories.
- Pin and scan the image, and validate dependency upgrades reproducibly.
- Back up `/data/jupyter` regularly and test restoration to a temporary directory.

--------

## Related Links

- [Jupyter documentation](https://jupyter.org/documentation)
- [Jupyter Docker Stacks](https://jupyter-docker-stacks.readthedocs.io/)
- [Pigsty VIBE module](/docs/vibe/)
