# Gitea: Self-Hosted Git Service

> Deploy Gitea with Pigsty's Compose template and connect it to external PostgreSQL.

---

LLMS index: [llms.txt](/llms.txt)

---

[Gitea](https://gitea.io/) is a lightweight open-source Git hosting platform.

Pigsty's `app/gitea` template uses **external PostgreSQL mode** by default, configured via `GITEA_DB_*` values in `.env`.

## Quick Start

```bash
cd ~/pigsty/app/gitea
vi .env         # check domain, ports, database settings
make up
```

Default endpoints:

- Web: `http://git.pigsty` or `http://<IP>:8889`
- SSH: `<IP>:2222`

## Database Preparation

```bash
bin/pgsql-user pg-meta dbuser_gitea
bin/pgsql-db   pg-meta gitea
```

Connection string example:

```bash
postgres://dbuser_gitea:DBUser.Gitea@10.10.10.10:5432/gitea
```

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
