---
title: "Mattermost: Open-Source Team Collaboration"
weight: 595
description: Deploy Mattermost with Pigsty and store state in external PostgreSQL.
module: [SOFTWARE]
categories: [Reference]
---

[**Mattermost**](https://mattermost.com/) is an open-source team collaboration platform and a private alternative to Slack.

Pigsty provides `app/mattermost` (`conf/app/mattermost.yml`), which stores app state in external PostgreSQL and persists file directories on host paths.

## Quick Start

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/mattermost
vi pigsty.yml                 # update passwords and domain
./deploy.yml
./docker.yml
./app.yml
```

Default endpoints:

- `http://<IP>:8065`
- `http://mm.pigsty`

On first access, initialize the admin account in the web UI.

## Default Storage and Connections

Default template settings include:

- PostgreSQL URL: `POSTGRES_URL=postgres://dbuser_mattermost:DBUser.Mattermost@<IP>:5432/mattermost?...`
- Persistent directories: `/data/mattermost/{config,data,logs,plugins,client/plugins,bleve-indexes}`

## Operations

```bash
cd /opt/mattermost
make up
make restart
make log
make stop
```

## References

- Mattermost docs: https://docs.mattermost.com/
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/mattermost.yml
