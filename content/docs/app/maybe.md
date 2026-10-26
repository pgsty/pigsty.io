---
title: "Maybe: Self-Hosted Personal Finance"
weight: 600
description: Self-host the Maybe personal finance application with Pigsty and let Pigsty manage PostgreSQL, backups, monitoring, and ingress.
module: [SOFTWARE]
categories: [Reference]
---

[**Maybe**](https://github.com/maybe-finance/maybe) is an open-source personal finance application. It manages accounts, transactions, budgets, investments, and household financial views. This Rails application stores production business data in PostgreSQL and uses Redis for background job queues.

Pigsty's `app/maybe` template connects stateless Maybe Web / Worker containers to Pigsty-managed PostgreSQL. Local Redis provides the Sidekiq queue. Financial data resides in a PostgreSQL cluster with backup, monitoring, and recovery support, rather than an ephemeral Docker volume.

> The upstream Maybe repository has been archived. Pigsty retains the `ghcr.io/maybe-finance/maybe:stable` channel by default; the source validation snapshot is `v0.6.0`. This channel does not imply ongoing upstream maintenance. Record and pin the actual image digest when controlled rollback is required.

------

## Quick Start

Run the following on a fresh Linux x86 / ARM server with a [compatible operating system](/docs/deploy/prepare/):

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap                # Install Pigsty dependencies
./configure -c app/maybe   # Use the Maybe configuration template
vi pigsty.yml              # Required: SECRET_KEY_BASE, database password, domain

./deploy.yml               # Install Pigsty, Infra, Etcd, and PostgreSQL
./docker.yml               # Install Docker and Compose
./app.yml                  # Install Maybe
```

Maybe listens on port `5002` by default. After installation, you can access it at:

- `http://<your_ip_address>:5002`
- `http://maybe.pigsty`

On the first visit, select the account creation option on the login page. Register your first household account.

To access Maybe through `maybe.pigsty`, add the following entry to `/etc/hosts` on the machine running your browser:

```bash
10.10.10.10 maybe.pigsty
```

To expose the service to the public internet, use a real domain and HTTPS certificate, and modify `infra_portal` as described below.

------

## Checklist

- [ ] Prepare a fresh Linux server with at least `2C4G`; use an SSD/NVMe disk.
- [ ] Confirm that the server has a static private IPv4 address and can access GHCR / Docker Hub, or that a registry mirror is configured.
- [ ] After running `./configure -c app/maybe`, change the default passwords, domain, and secrets in `pigsty.yml`.
- [ ] Generate a new `SECRET_KEY_BASE` with `openssl rand -hex 64`.
- [ ] Keep `POSTGRES_PASSWORD` consistent with the password of the `maybe` user in `pg_users`.
- [ ] For public access, configure a real domain, an HTTPS certificate, and firewall access rules.
- [ ] Confirm that PostgreSQL backup jobs run correctly, and check `pig pb info` after deployment.

------

## Configuration Template

[`conf/app/maybe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/maybe.yml) defines a single-node, self-hosted Maybe template. The default topology includes:

- `maybe`: The node running the Maybe Web / Worker / Redis containers.
- `pg-maybe`: The PostgreSQL database cluster managed by Pigsty.
- `infra`: Infrastructure services such as Nginx ingress, Grafana, and VictoriaMetrics.
- `etcd`: The distributed configuration store required by Patroni.

Key configuration excerpts:

```yaml
maybe:
  hosts: { 10.10.10.10: {} }
  vars:
    app: maybe
    apps:
      maybe:
        file:
          - { path: /data/maybe             ,state: directory ,mode: 0755 }
          - { path: /data/maybe/storage     ,state: directory ,owner: 1000 ,group: 1000 ,mode: 0755 }
          - { path: /data/maybe/redis       ,state: directory ,mode: 0755 }
        conf:
          MAYBE_IMAGE: ghcr.io/maybe-finance/maybe
          MAYBE_VERSION: stable
          MAYBE_PORT: 5002
          MAYBE_DATA: /data/maybe
          APP_DOMAIN: maybe.pigsty
          SECRET_KEY_BASE: 2f1e4c3d5b6a79808796a5b4c3d2e1f00123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef01234567
          DB_HOST: 10.10.10.10
          DB_PORT: 5432
          POSTGRES_USER: maybe
          POSTGRES_PASSWORD: MaybeFinance2026
          POSTGRES_DB: maybe_production
          REDIS_VERSION: 7-alpine

pg-maybe:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-maybe
    pg_users:
      - { name: maybe ,password: MaybeFinance2026 ,pgbouncer: true ,roles: [ dbrole_admin ] ,comment: admin user for maybe service }
    pg_databases:
      - { name: maybe_production ,owner: maybe ,revokeconn: true ,comment: maybe main database }
    pg_hba_rules:
      - { user: maybe ,db: maybe_production ,addr: 172.16.0.0/12 ,auth: pwd ,title: 'allow maybe access from local docker network' }
    pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
```

Maybe / Rails uses `maybe_production` as its default production database name. You can rename it to `maybe`. Update `POSTGRES_DB`, `pg_databases.name`, `pg_hba_rules.db`, and all documentation and operational script references together.

------

## Important Parameters

`app.yml` copies the `app/maybe` directory to `/opt/maybe` and uses `apps.maybe.conf` to override `/opt/maybe/.env`. Common parameters include:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `MAYBE_IMAGE` | `ghcr.io/maybe-finance/maybe` | Maybe image repository |
| `MAYBE_VERSION` | `stable` | Image tag; keep `stable` for production |
| `MAYBE_PORT` | `5002` | Host port exposed by Maybe |
| `MAYBE_DATA` | `/data/maybe` | Persistent directory on the host |
| `APP_DOMAIN` | `maybe.pigsty` | Placeholder for the default Maybe ingress domain |
| `SECRET_KEY_BASE` | Sample random string | Rails encryption and signing secret; must be replaced in production |
| `DB_HOST` / `DB_PORT` | `10.10.10.10` / `5432` | Pigsty PostgreSQL endpoint |
| `POSTGRES_USER` | `maybe` | Application user that connects Maybe to PostgreSQL |
| `POSTGRES_PASSWORD` | `MaybeFinance2026` | Application user password; must be replaced in production |
| `POSTGRES_DB` | `maybe_production` | Maybe production database |
| `REDIS_VERSION` | `7-alpine` | Local Redis image tag |

Generate a production secret with:

```bash
openssl rand -hex 64
```

When changing the password, keep the application and database definitions synchronized. For example:

```yaml
apps:
  maybe:
    conf:
      POSTGRES_PASSWORD: <new-password>

pg_users:
  - { name: maybe ,password: <new-password> ,pgbouncer: true ,roles: [ dbrole_admin ] }
```

------

## Domain and Ingress

The template adds a Maybe entry to `infra_portal` by default:

```yaml
infra_portal:
  home  : { domain: i.pigsty }
  maybe:
    domain: maybe.pigsty
    endpoint: "10.10.10.10:5002"
    websocket: true
```

To use a real domain such as `finance.example.com`, replace the placeholder in bulk:

```bash
sed -ie 's/maybe.pigsty/finance.example.com/g' pigsty.yml
```

Then apply the Nginx ingress configuration:

```bash
./infra.yml -t nginx
```

Before requesting an HTTPS certificate, verify that the domain resolves to the current node. Then add `certbot` under `infra_portal.maybe`:

```yaml
maybe:
  domain: finance.example.com
  endpoint: "10.10.10.10:5002"
  websocket: true
  certbot: finance.example.com
```

Then run:

```bash
make cert
./infra.yml -t nginx
```

------

## Operations

Maybe is installed in `/opt/maybe`. Common commands include:

```bash
cd /opt/maybe

make up        # Start Maybe
make run       # Start in the foreground and show logs
make restart   # Restart containers
make down      # Stop containers
make status    # Show container status
make log       # Follow logs
make health    # Check the Rails /up health endpoint
make migrate   # Run Rails db:prepare manually
make console   # Enter the Rails console
make exec      # Enter a shell in the maybe-web container
```

The `web` container runs `db:prepare` at startup, so manual migration is usually unnecessary. After an image upgrade, inspect any migration errors in startup logs. Then run:

```bash
cd /opt/maybe
make pull
make up
make log
```

------

## Data and Backup

Maybe state is divided into two categories:

- Business data is stored in the Pigsty PostgreSQL database `maybe_production`.
- Attachments and cache are stored in the host directories `/data/maybe/storage` and `/data/maybe/redis`.

By default, the template schedules a full PostgreSQL backup every day at 1:00 AM:

```yaml
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
```

After deployment, check the backup status:

```bash
pig pb info
```

If you use Maybe to store real financial data in production, at minimum:

- Regularly verify that PostgreSQL backups succeed.
- Place the pgBackRest repository on reliable storage or object storage.
- Include `/data/maybe/storage` in file-level backups; for example, use restic to back it up to S3.
- Do not expose `SECRET_KEY_BASE`, database passwords, or API keys in a public repository.

------

## Security Recommendations

Maybe manages highly sensitive personal and household financial data. For production use:

- Change all Pigsty default passwords, especially `pg_admin_password`, `pg_monitor_password`, `patroni_password`, and `haproxy_admin_password`.
- Change the Maybe database user password in `POSTGRES_PASSWORD`.
- Use a new `SECRET_KEY_BASE`; do not retain the sample value from the template.
- Enable HTTPS for public access and restrict access to administration ports.
- If you enable `OPENAI_ACCESS_TOKEN` or `SYNTH_API_KEY`, assess both external API costs and the boundary of data exposure.

The upstream Maybe repository is archived. It suits users who accept the existing features and prefer long-term local ownership. If you need new features or automatic bank synchronization, evaluate upstream maintenance before adoption.

------

## References

- Maybe project: https://github.com/maybe-finance/maybe
- Maybe Docker self-hosting guide: https://github.com/maybe-finance/maybe/blob/main/docs/hosting/docker.md
- Pigsty Maybe template: https://github.com/pgsty/pigsty/blob/main/conf/app/maybe.yml
- [Pigsty Docker module](/docs/docker/)
- [Pigsty Nginx ingress](/docs/infra/admin/portal/)
