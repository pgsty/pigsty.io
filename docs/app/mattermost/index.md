# Mattermost: Open-Source Team Collaboration

> Deploy Mattermost with Pigsty and store state in external PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

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

Running `app/mattermost` directly stores data under `./volumes` by default. With the configuration template, `app.yml` creates `/data/mattermost/*` from `apps.mattermost.file` with UID/GID `2000:2000`. `make up` prepares only the default `./volumes`; verify custom paths and permissions yourself.

## Calls and Version Differences

Compose does not publish the Calls media port. For calls, retain the Web mapping and add these entries to the `mattermost` service's `ports`:

```yaml
  - "8443:8443/tcp"
  - "8443:8443/udp"
```

Public Calls traffic requires both TCP and UDP media ports, or a TURN configuration. The generic `node_firewall_public_port` parameter opens only TCP and does not cover UDP calls by itself.

The development template adds `CALLS_PORT`, a script that prepares the actual mount directories, and `make health`. Use the matching application files for these features.

## Operations

```bash
cd /opt/mattermost
make up
make restart
make log
make stop
```

The 11.10.1 image contains neither a shell nor `curl`. Check status with `docker compose exec -T mattermost /mattermost/bin/mmctl system status --local`. Before upgrading, back up PostgreSQL, configuration, data, plugins, and Bleve directories. To roll back, restore matching data backups; do not point an old image directly at data upgraded by a newer version.

## References

- Mattermost docs: https://docs.mattermost.com/
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/mattermost.yml
