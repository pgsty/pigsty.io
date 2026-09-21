# JumpServer: Open-Source Bastion Host

> Self-host JumpServer Community Edition with Pigsty managing its PostgreSQL backend, backups, ingress, and operations.

---

LLMS index: [llms.txt](/llms.txt)

---

[**JumpServer**](https://www.jumpserver.com/) is an open-source PAM and bastion-host system for centralized access management of SSH, RDP, database, and web assets.
Pigsty's `app/jumpserver` template runs the JumpServer Community Edition application layer with Docker Compose and uses Pigsty-managed PostgreSQL as its persistent backend database.

The current template is based on JumpServer `v4.10.16-ce`. It retains the Community Edition `core`, `celery`, `koko`, `lion`, `chen`, and `web` services plus local Redis, while removing the built-in PostgreSQL service from the upstream installer.
Pigsty manages PostgreSQL, backups, monitoring, Nginx ingress, and the database lifecycle.

------

## Quick Start

On a fresh x86 or ARM Linux server running a [compatible operating system](/docs/deploy/prepare/):

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/jumpserver
vi pigsty.yml                 # Required: change passwords, keys, domains, and IPs

./deploy.yml                  # Install Pigsty, Infra, Etcd, and PostgreSQL
./docker.yml                  # Install Docker and Compose
./app.yml                     # Install JumpServer
```

Run the database migration once after the containers start:

```bash
cd /opt/jumpserver
make migrate
make health
```

Default endpoints:

```text
http://jump.pigsty
http://10.10.10.10:8080
ssh -p 2222 admin@10.10.10.10
```

Default web login:

```text
admin / ChangeMe
```

Change the administrator password immediately after the first login.

------

## Pre-Deployment Checklist

- [ ] Prepare a fresh Linux server with at least `2C4G`; use more memory and configure swap for production.
- [ ] Verify that the server IP, DNS, NTP, SSH, and sudo work correctly.
- [ ] Verify access to Docker Hub, or configure `docker_registry_mirrors` / `proxy_env`.
- [ ] After running `./configure -c app/jumpserver`, change the default passwords, `SECRET_KEY`, `BOOTSTRAP_TOKEN`, and `DOMAINS` in `pigsty.yml`.
- [ ] Ensure that `DOMAINS` contains the hostname or IP actually used by the browser, such as `10.10.10.10:8080`.
- [ ] Ensure that PostgreSQL backup jobs work; check `pig pb info` or `pgbackrest info` after deployment.

------

## Configuration Template

[`conf/app/jumpserver.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/jumpserver.yml) defines a single-node self-hosted JumpServer template. The default topology includes:

- `jumpserver`: the node running JumpServer application containers and local Redis.
- `pg-jumpserver`: the Pigsty-managed PostgreSQL cluster.
- `infra`: Nginx ingress, Grafana, VictoriaMetrics, and other infrastructure.
- `etcd`: the distributed configuration store required by Patroni.

`app.yml` copies `app/jumpserver` to `/opt/jumpserver`, overwrites `/opt/jumpserver/.env` with `apps.jumpserver.conf`, and then runs `docker compose up -d`.

Core application services:

- `jms_core`: Django API and web backend, listening on container port `8080`.
- `jms_celery`: asynchronous jobs, scheduled jobs, and background queues.
- `jms_web`: Nginx web ingress, mapped to host port `8080` by default.
- `jms_koko`: SSH / SFTP terminal endpoint, mapped to host port `2222` by default.
- `jms_lion`: Web Terminal component.
- `jms_chen`: WebSocket and database-terminal support component.
- `jms_redis`: local Redis for caching, queues, and the Channels backend.

------

## Key Parameters

Common parameters:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `JUMPSERVER_VERSION` | `v4.10.16-ce` | JumpServer Community Edition image version |
| `JUMPSERVER_DATA` | `/data/jumpserver` | Persistent application directory |
| `DOMAINS` | `10.10.10.10:8080,10.10.10.10,jump.pigsty` | Trusted domains and IPs allowed for login |
| `SECRET_KEY` | Example value | Encryption key; replace and retain it for production |
| `BOOTSTRAP_TOKEN` | Example value | Component registration token; replace and retain it for production |
| `DB_HOST` / `DB_PORT` | `10.10.10.10` / `5432` | Pigsty PostgreSQL endpoint |
| `DB_USER` / `DB_NAME` | `jumpserver` / `jumpserver` | Application user and database |
| `DB_PASSWORD` | `DBUser.JumpServer` | Application user password; replace it for production |
| `DOCKER_SUBNET` | `192.168.250.0/24` | Internal JumpServer Compose subnet |
| `REDIS_HOST` | `192.168.250.2` | Fixed IP of the local Redis container |
| `CORE_HOST` | `http://192.168.250.4:8080` | Internal JumpServer core endpoint |
| `HTTP_PORT` | `8080` | Web ingress port |
| `SSH_PORT` | `2222` | Koko SSH/SFTP endpoint port |
| `CORE_WORKER` | `2` | Number of core Gunicorn workers, sized for a 2C4G sandbox |
| `CELERY_WORKER_COUNT` | `2` | Worker concurrency for each Celery queue |

Example commands for generating production keys:

```bash
openssl rand -base64 36 | tr -dc A-Za-z0-9 | head -c 48; echo
openssl rand -base64 24 | tr -dc A-Za-z0-9 | head -c 24; echo
```

> [!WARNING] Production keys must remain stable
> Do not change `SECRET_KEY` or `BOOTSTRAP_TOKEN` after production data exists. Store them together with database backups, `/data/jumpserver`, and `/opt/jumpserver/.env`. Losing the original `SECRET_KEY` may make encrypted account credentials in the database unrecoverable.

> [!WARNING] Password character restrictions
> Do not use single or double quotes in `DB_PASSWORD` or `REDIS_PASSWORD`. This matches the behavior of the official JumpServer installer.

------

## Login and DOMAINS

JumpServer validates trusted access domains during login. `DOMAINS` must include the Host actually used by the browser:

```ini
DOMAINS=10.10.10.10:8080,10.10.10.10,jump.pigsty
```

Normal login URL:

```text
http://10.10.10.10:8080/core/auth/login/?admin=1
```

If the login page shows:

```text
There is a problem with the configuration file; unable to log in...
DOMAINS=10.10.10.10:8080
```

Check `/opt/jumpserver/.env` and the container environment:

```bash
cd /opt/jumpserver
grep '^DOMAINS=' .env
docker exec jms_core env | grep '^DOMAINS='
```

Recreate the `core` container after correcting it:

```bash
sudo sed -i 's#^DOMAINS=.*#DOMAINS=10.10.10.10:8080,10.10.10.10,jump.pigsty#' /opt/jumpserver/.env
docker compose up -d --force-recreate core
```

Also update `pigsty.yml` or `conf/app/jumpserver.yml`; otherwise, the next `./app.yml` run will overwrite `/opt/jumpserver/.env` again.

Do not use an old URL containing `csrf_failure=1` to determine whether the configuration is still wrong. That page displays the `DOMAINS=...` warning using the failed request context. Retest with the normal login page and use an incognito window if necessary.

------

## Docker Network

The template uses a fixed Docker bridge subnet:

```ini
DOCKER_SUBNET=192.168.250.0/24
REDIS_IP=192.168.250.2
CELERY_IP=192.168.250.3
CORE_IP=192.168.250.4
LION_IP=192.168.250.5
CHEN_IP=192.168.250.6
KOKO_IP=192.168.250.7
WEB_IP=192.168.250.8
```

Fixed IPs serve two purposes:

- Avoid transient Docker DNS resolution failures while JumpServer Python and Java components start.
- Allow PostgreSQL HBA rules to permit the application subnet precisely.

PostgreSQL sees container clients as coming from `192.168.250.0/24`, so the template includes:

```yaml
pg_hba_rules:
  - { user: jumpserver ,db: jumpserver ,addr: 192.168.250.0/24 ,auth: pwd ,order: 560 ,title: 'allow jumpserver access from docker bridge' }
pgb_hba_rules:
  - { user: jumpserver ,db: jumpserver ,addr: 192.168.250.0/24 ,auth: pwd ,order: 390 ,title: 'allow jumpserver pgbouncer access from docker bridge' }
```

If `192.168.250.0/24` conflicts with an existing network, update all of the following together:

- `DOCKER_SUBNET` and the fixed IP for each component.
- `REDIS_HOST` and `CORE_HOST`.
- `pg_hba_rules.addr` and `pgb_hba_rules.addr`.
- Recreate the Compose network and containers.

Do not set `DB_HOST` to `127.0.0.1`; inside a container, that address refers to the container itself. Use the host's private IP or the Pigsty L2 VIP.

------

## PostgreSQL

JumpServer 4.x uses PostgreSQL and requires PostgreSQL 16 or later. The template uses Pigsty to create the database, user, HBA rules, backup schedule, and optional PgBouncer endpoint.

The application database does not require additional PostgreSQL extensions:

```yaml
pg_extensions: []
pg_users:
  - { name: jumpserver ,password: DBUser.JumpServer ,pgbouncer: true ,pool_mode: session ,roles: [ dbrole_admin ] }
pg_databases:
  - { name: jumpserver ,owner: jumpserver }
```

The template's `pg_version` can be pinned to 16, 17, or a later major version for your environment; JumpServer requires at least PostgreSQL 16. For a high-availability database deployment, follow the commented `pg_vip_enabled` example in the template and point the application's `DB_HOST` to the primary-database VIP.

> [!WARNING] Do not use PgBouncer transaction pooling
> JumpServer's Django migrations and Celery Beat are unsuitable for PgBouncer transaction pooling. The default is a direct PostgreSQL connection on port `5432`. If you use PgBouncer, configure session pooling for the `jumpserver` user.

------

## Deployment Verification

After installation, run:

```bash
cd /opt/jumpserver
make status
make health
make migrate
```

Expected results:

- `jms_core`, `jms_celery`, `jms_web`, `jms_redis`, `jms_koko`, `jms_lion`, and `jms_chen` are all `healthy`.
- `make health` returns `status=true`, `db_status=true`, and `redis_status=true`.
- `make migrate` prints `No migrations to apply` or completes any pending migrations.

Database checks:

```bash
sudo -iu postgres patronictl -c /etc/patroni/patroni.yml list
sudo -iu postgres psql -Atqc "select current_setting('server_version'), count(*) from information_schema.tables where table_schema='public'" jumpserver
sudo -iu postgres pgbackrest --stanza=pg-jumpserver info
```

Expected results:

- The Patroni cluster Leader is `running`.
- PostgreSQL is version 16 or later.
- The public schema contains about 168 tables after JumpServer migrations.
- The pgBackRest stanza status is `ok`.

------

## Troubleshooting

### Login Page Reports a DOMAINS Configuration Error

Verify that both configuration layers match:

```bash
cd /opt/jumpserver
grep '^DOMAINS=' .env
docker exec jms_core env | grep '^DOMAINS='
```

You must recreate the `core` container after changing `.env`:

```bash
docker compose up -d --force-recreate core
```

Also update `apps.jumpserver.conf.DOMAINS` in the Pigsty inventory; otherwise, the next `./app.yml` run will overwrite it.

### `admin / ChangeMe` Cannot Log In

First distinguish between two kinds of errors:

- A red `DOMAINS=...` box at the top of the page indicates a domain / CSRF configuration problem, not a password problem.
- A form message reporting an incorrect username or password indicates a credential problem.

You can verify inside the container whether the default password is still valid:

```bash
docker exec -w /opt/jumpserver/apps jms_core python -c '
import os
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "jumpserver.settings")
import django; django.setup()
from django.contrib.auth import get_user_model
u = get_user_model().objects.get(username="admin")
print(u.is_active, u.check_password("ChangeMe"))
'
```

### Web Returns 502

Check core and web:

```bash
cd /opt/jumpserver
docker compose ps
docker logs --tail 100 jms_core
docker logs --tail 100 jms_web
```

If the problem is a race over the core log directory during the first start, confirm that `/data/jumpserver/core/data/logs` exists. The template creates this directory in advance.

### Containers Keep Restarting or Health Checks Time Out

JumpServer uses substantial memory on a 2C4G node. The template defaults to:

```ini
CORE_WORKER=2
CELERY_WORKER_COUNT=2
```

If Gunicorn worker timeouts, SIGKILL, or system memory exhaustion still occur, add memory or swap, or reduce the worker counts further. Check resource usage with:

```bash
free -h
docker stats --no-stream
```

------

## Operations

After installation, enter `/opt/jumpserver`:

```bash
cd /opt/jumpserver

make up        # Start JumpServer
make down      # Stop JumpServer
make restart   # Restart containers
make status    # Show container status
make log       # Follow logs
make health    # Check HTTP / DB / Redis health
make migrate   # Run ./jms upgrade_db
make exec      # Enter the core container
```

When upgrading JumpServer, do not only change the image tag; you must run database migrations:

```bash
cd /opt/jumpserver
make pull
make down
docker compose up -d redis core
make migrate
make up
```

Keep `SECRET_KEY` and `BOOTSTRAP_TOKEN` unchanged during the upgrade.

------

## Backup and Restore

JumpServer state has two layers:

- PostgreSQL database: back up with Pigsty pgBackRest / PITR.
- Application files: `/data/jumpserver` and `/opt/jumpserver/.env`, which contain logs, recordings, component data, Redis persistence, and keys.

Restore the database, `.env`, and file directory from the same environment:

```bash
# 1. Restore PostgreSQL with Pigsty pgBackRest / PITR
# 2. Restore /opt/jumpserver/.env and /data/jumpserver
# 3. Start the containers and run migrations
cd /opt/jumpserver
make up
make migrate
make health
```

Restoring PostgreSQL without the original `SECRET_KEY` prevents JumpServer from decrypting stored account credentials correctly.

------

## Community Edition Scope

This template uses PostgreSQL as JumpServer's own backend database and follows the self-hosted Community Edition deployment path. JumpServer's "database asset management" is a separate product capability and is not the same as this backend database.

------

## References

- JumpServer project: https://github.com/jumpserver/jumpserver
- JumpServer installer: https://github.com/jumpserver/installer
- Pigsty JumpServer template: https://github.com/pgsty/pigsty/blob/main/conf/app/jumpserver.yml
- [Pigsty Docker module](/docs/docker/)
- [Pigsty Nginx ingress](/docs/infra/admin/portal/)
