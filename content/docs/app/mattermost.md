---
title: "Mattermost: Open-Source Team Collaboration"
weight: 595
description: Deploy Mattermost with Pigsty and store state in external PostgreSQL.
module: [SOFTWARE]
categories: [Reference]
---

[**Mattermost**](https://mattermost.com/) is an open-source team collaboration platform and a private alternative to Slack.

Pigsty provides `app/mattermost` (`conf/app/mattermost.yml`). It stores application state in external PostgreSQL and keeps file directories on host paths.

The default image is `mattermost/mattermost-team-edition:latest`. The verified Team Edition 11.10.1 image provides only `linux/amd64`, so that version requires an x86-64 host. Pin the image version for production.

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

- Bleve directory inside the container: set `MM_BLEVESETTINGS_INDEXDIR` to `/mattermost/bleve-indexes`, not a host path

When run directly, `app/mattermost` stores data under `./volumes`. With the configuration template, `app.yml` creates `/data/mattermost/*` from `apps.mattermost.file` with UID/GID `2000:2000`. `make up` first calls `prepare.sh` to resolve the active Compose bind mounts, create directories, and fix ownership.

## Calls Media Ports

Compose publishes both Calls media mappings through `CALLS_PORT` (default `8443`): `${CALLS_PORT}:8443/tcp` and `${CALLS_PORT}:8443/udp`.

For public Calls traffic, allow both TCP and UDP media ports in the firewall and cloud security groups, or configure TURN. The general `node_firewall_public_port` parameter opens TCP only and cannot by itself permit UDP call traffic.

## Operations

```bash
cd /opt/mattermost
make up
make health
make restart
make log
make stop
```

The 11.10.1 image has neither a shell nor `curl`. `make health` checks readiness with `docker compose exec -T mattermost /mattermost/bin/mmctl system status --local`. Before upgrading, back up PostgreSQL and the configuration, data, plugins, and Bleve directories. Rollback requires matching data backups; do not point an older image at an upgraded database.

## References

- Mattermost docs: https://docs.mattermost.com/
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/mattermost.yml
