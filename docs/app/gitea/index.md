# Gitea: Self-Hosted Git Service

> Deploy Gitea with Pigsty's Compose template and connect it to external PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

---

[Gitea](https://gitea.io/) is a lightweight open-source Git hosting platform.

Pigsty's `app/gitea` template uses **external PostgreSQL mode** by default. Configure the database through `GITEA_DB_*` values in `.env`.

## Quick Start

```bash
cd ~/pigsty/app/gitea
vi .env         # check domain, ports, database settings
make up
```

Default endpoints:

- Web: `http://git.pigsty` or `http://<IP>:8889`
- SSH: `<IP>:222`

## Database Preparation

```bash
bin/pgsql-user pg-meta dbuser_gitea
bin/pgsql-db   pg-meta gitea
```

Connection string example:

```bash
postgres://dbuser_gitea:DBUser.Gitea@10.10.10.10:5432/gitea
```

## Reverse Proxy and Upgrades

Gitea 28 serves notifications at `/-/ws`. Enable WebSocket support on the Nginx portal:

```yaml
infra_portal:
  gitea: { domain: git.pigsty, endpoint: "127.0.0.1:8889", websocket: true }
```

Before upgrading, back up PostgreSQL and `/data/gitea` together and record the running image digest. Restore matching database and file backups when rolling back. Gitea 28 defaults to removing completed Actions runs, logs, and artifacts after 400 days; check retention settings if those records need to be kept longer. See the [Gitea 28 release notes](https://blog.gitea.com/release-of-28.0.0/).

## Common Commands

```bash
make up
make log
make stop
make clean
```

## References

- Gitea docs: https://docs.gitea.com/
- Pigsty template: https://github.com/pgsty/pigsty/tree/main/app/gitea
