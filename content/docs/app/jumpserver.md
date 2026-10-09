---
title: "JumpServer: Open-Source Bastion Host"
weight: 618
description: Self-host JumpServer Community Edition with Pigsty managing its PostgreSQL backend, backups, ingress, and operations.
module: [SOFTWARE]
categories: [Reference]
---

[**JumpServer**](https://www.jumpserver.com/) is an open-source PAM and bastion-host system. It manages centralized access to SSH, RDP, database, and web assets. Pigsty's `app/jumpserver` template runs Community Edition application containers with Docker Compose. Pigsty-managed PostgreSQL provides persistent database storage.

The template uses JumpServer `v5.0.0-ce`. It retains Community Edition `core`, `celery`, `koko`, `kael`, `chen`, and `web` services, plus local Redis. It removes the upstream installer's built-in PostgreSQL service. Pigsty manages PostgreSQL, backups, monitoring, Nginx ingress, and the database lifecycle.

The image set follows the [official v5.0.0 installer](https://github.com/jumpserver/installer/tree/33785347d95677ad87c0cc2f754d4f671b4e086f), checked on 2026-10-08. Docker Hub returned `MANIFEST_UNKNOWN` for the Core, KoKo, Chen, and Web `v5.0.0-ce` tags that day. The official Aliyun namespace provided the full set, so the template uses `IMAGE_PULL_PREFIX`. Keep component versions aligned when upgrading.

------

## Quick Start

Use a fresh x86_64 Linux server running a [compatible operating system](/docs/deploy/prepare/). The selected images and tested platform are `linux/amd64`; ARM64 has not been validated:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap
./configure -c app/jumpserver
vi pigsty.yml                 # Required: change passwords, keys, domains, and IPs

./deploy.yml                  # Install Pigsty, Infra, Etcd, and PostgreSQL
./docker.yml                  # Install Docker and Compose
./app.yml                     # Install JumpServer
```

The one-shot `init` service runs migrations, then uses a separate Django process to create a missing terminal host key and validate it. It preserves an existing key. Core starts only after init succeeds; Celery and connection components then wait for Core to become healthy. Check readiness:

```bash
cd /opt/jumpserver
make status
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

- [ ] Prepare a fresh Linux server with at least `4C8G` and 100 GB of disk; size production resources for concurrency and recording retention.
- [ ] Verify that the server IP, DNS, NTP, SSH, and sudo work correctly.
- [ ] Verify that the Docker daemon can pull from `IMAGE_PULL_PREFIX`, which defaults to the official Aliyun registry. Configure download proxies on the daemon that performs the pull; container loopback refers to that container.
- [ ] After running `./configure -c app/jumpserver`, change the default passwords, `SECRET_KEY`, `BOOTSTRAP_TOKEN`, `CHAT_AI_DELEGATION_SECRET`, and `DOMAINS` in `pigsty.yml`.
- [ ] Ensure that `DOMAINS` contains the hostname or IP actually used by the browser, such as `10.10.10.10:8080`.
- [ ] Ensure that PostgreSQL backup jobs work; check `pig pb info` or `pgbackrest info` after deployment.

------

## Configuration Template

[`conf/app/jumpserver.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/jumpserver.yml) defines a single-node self-hosted JumpServer template. The default topology includes:

- `jumpserver`: the node running JumpServer application containers and local Redis.
- `pg-jumpserver`: the Pigsty-managed PostgreSQL cluster.
- `infra`: Nginx ingress, Grafana, VictoriaMetrics, and other infrastructure.
- `etcd`: the distributed configuration store required by Patroni.

`app.yml` copies `app/jumpserver` to `/opt/jumpserver`. It updates values in `/opt/jumpserver/.env` using `apps.jumpserver.conf`, then runs `docker compose up -d`.

Core application services:

- `jms_core`: Django API and web backend, listening on container port `8080`.
- `jms_celery`: asynchronous jobs, scheduled jobs, and background queues.
- `jms_web`: Nginx web ingress, mapped to host port `8080` by default.
- `jms_koko`: SSH / SFTP terminal endpoint, mapped to host port `2222` by default.
- `jms_kael`: the 5.x Community Edition AI gateway, listening internally on `8083` and exposed through Web at `/kael/`.
- `jms_chen`: the web database connector, listening internally on `8082`.
- `jms_init`: one-shot migrations and terminal-key validation; successful completion is `Exited (0)`.
- `jms_redis`: local Redis for caching, queues, and the Channels backend.

------

## Key Parameters

Common parameters:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `IMAGE_PULL_PREFIX` | `registry.cn-beijing.aliyuncs.com/jumpservice` | Full official image namespace |
| `JUMPSERVER_VERSION` | `v5.0.0-ce` | One coordinated Community Edition version for all components |
| `REDIS_VERSION` | `7.4.11-bookworm` | Local Redis image version |
| `JUMPSERVER_DATA` | `/data/jumpserver` | Persistent application directory |
| `DOMAINS` | `10.10.10.10:8080,10.10.10.10,jump.pigsty` | Trusted domains and IPs allowed for login |
| `SECRET_KEY` | Example value | Encryption key; replace and retain it for production |
| `BOOTSTRAP_TOKEN` | Example value | Component registration token; replace and retain it for production |
| `CHAT_AI_DELEGATION_SECRET` | Example value | Shared Core / Kael delegation key; generate once and retain |
| `DB_HOST` / `DB_PORT` | `10.10.10.10` / `5432` | Pigsty PostgreSQL endpoint |
| `DB_USER` / `DB_NAME` | `jumpserver` / `jumpserver` | Application user and database |
| `DB_PASSWORD` | `DBUser.JumpServer` | Application user password; replace it for production |
| `DOCKER_SUBNET` | `192.168.250.0/24` | Internal JumpServer Compose subnet |
| `REDIS_HOST` | `192.168.250.2` | Fixed IP of the local Redis container |
| `CORE_HOST` | `http://192.168.250.4:8080` | Internal JumpServer core endpoint |
| `HTTP_PORT` | `8080` | Web ingress port |
| `SSH_PORT` | `2222` | KoKo host SSH/SFTP port; container port stays `2222` |
| `KOKO_WEB_PROXY_PORT` | `5001` | KoKo website proxy port |
| `KOKO_PRIVILEGED` | `true` | Preserve the upstream KoKo default; SSH was also tested with this disabled |
| `WEB_PROXY_ALLOWED_HOSTS` | `localhost,127.0.0.1` | Allowed Website asset target hosts; retain loopback hosts for KoKo's control API |
| `ANSIBLE_DOCKER_ENABLED` | `false` | Execute Ansible inside Celery with the current data-directory layout |
| `CORE_WORKER` | `2` | Number of Core Gunicorn workers |
| `CELERY_WORKER_COUNT` | `2` | Worker concurrency for each Celery queue |

For Website asset proxying, add the target hostnames or IPs to `WEB_PROXY_ALLOWED_HOSTS` and retain `localhost,127.0.0.1`. Set the JumpServer Endpoint's Web proxy port to match `KOKO_WEB_PROXY_PORT`.

Example commands for generating production keys:

```bash
openssl rand -base64 36 | tr -dc A-Za-z0-9 | head -c 48; echo
openssl rand -base64 24 | tr -dc A-Za-z0-9 | head -c 24; echo
openssl rand -hex 32           # CHAT_AI_DELEGATION_SECRET
```

> [!WARNING] Production keys must remain stable
> Retain `SECRET_KEY`, `BOOTSTRAP_TOKEN`, and `CHAT_AI_DELEGATION_SECRET` after generation. Preserve their original values during upgrades. Store them together with database backups, `/data/jumpserver`, and `/opt/jumpserver/.env`. Losing the original `SECRET_KEY` may make encrypted account credentials in the database unrecoverable.

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

An old URL containing `csrf_failure=1` shows a `DOMAINS=...` warning from the failed request. It does not verify the corrected configuration. Retest with the normal login page. Use an incognito window if necessary.

------

## Docker Network

The template uses a fixed Docker bridge subnet:

```ini
DOCKER_SUBNET=192.168.250.0/24
REDIS_IP=192.168.250.2
CELERY_IP=192.168.250.3
CORE_IP=192.168.250.4
KAEL_IP=192.168.250.5
CHEN_IP=192.168.250.6
KOKO_IP=192.168.250.7
WEB_IP=192.168.250.8
INIT_IP=192.168.250.9
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

- `DOCKER_SUBNET` and the fixed IP for each component, including `INIT_IP`.
- `REDIS_HOST` and `CORE_HOST`.
- `pg_hba_rules.addr` and `pgb_hba_rules.addr`.
- Recreate the Compose network and containers.

Do not set `DB_HOST` to `127.0.0.1`; inside a container, that address refers to the container itself. Use the host's private IP or the Pigsty L2 VIP.

------

## PostgreSQL

Upstream disables Job Center by default. To use it, enable Job Center under System Settings → Feature Settings and leave Ansible Docker Isolation disabled. This template uses `ANSIBLE_DOCKER_ENABLED=false` with its existing data layout. A saved database setting overrides `.env`, so check it after upgrading. Docker isolation also needs an executor image, host Docker control, and matching host paths; changing one variable is insufficient.

JumpServer 5.x uses PostgreSQL and requires PostgreSQL 16 or later. The template uses Pigsty to create the database, user, HBA rules, backup schedule, and optional PgBouncer endpoint.

The application database does not require additional PostgreSQL extensions:

```yaml
pg_extensions: []
pg_users:
  - { name: jumpserver ,password: DBUser.JumpServer ,pgbouncer: true ,pool_mode: session ,roles: [ dbrole_admin ] }
pg_databases:
  - { name: jumpserver ,owner: jumpserver }
```

The template defaults to PostgreSQL 18 and was tested with an external PostgreSQL 18.6 server. Upstream requires PostgreSQL 16 or later; validate other versions for your environment. For high availability, follow the commented `pg_vip_enabled` example. Set `DB_HOST` to the primary-database VIP.

> [!WARNING] Do not use PgBouncer transaction pooling
> JumpServer's Django migrations and Celery Beat are unsuitable for PgBouncer transaction pooling. The default is a direct PostgreSQL connection on port `5432`. If you use PgBouncer, configure session pooling for the `jumpserver` user.

------

## Deployment Verification

After installation, run:

```bash
cd /opt/jumpserver
make status
make health
docker compose logs init
```

Expected results:

- `jms_core`, `jms_celery`, `jms_web`, `jms_redis`, `jms_koko`, `jms_kael`, and `jms_chen` are all `healthy`.
- `make health` returns `status=true`, `db_status=true`, and `redis_status=true`.
- `jms_init` is `Exited (0)`; its log shows completed migrations and the terminal public-key fingerprint. An init failure blocks Core startup.
- Sign in, create a test asset and permission, execute a safe command, and check audits and replay. Healthy containers alone do not prove every feature works.

Database checks:

```bash
sudo -iu postgres patronictl -c /etc/patroni/patroni.yml list
sudo -iu postgres psql -Atqc "select current_setting('server_version'), count(*) from django_migrations" jumpserver
sudo -iu postgres pgbackrest --stanza=pg-jumpserver info
```

Expected results:

- The Patroni cluster Leader is `running`.
- PostgreSQL is version 16 or later.
- `django_migrations` contains applied migration records; a fixed table count is not a version acceptance check.
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

A race over the core log directory can cause this error on first startup. Verify that `/data/jumpserver/core/data/logs` exists. The template creates it in advance.

### Containers Keep Restarting or Health Checks Time Out

JumpServer recommends at least 4C8G; concurrency and recording retention increase resource needs. The template defaults to:

```ini
CORE_WORKER=2
CELERY_WORKER_COUNT=2
```

If Gunicorn worker timeouts, SIGKILL, or memory exhaustion continue, add memory or swap, or reduce worker counts. Check resource use with:

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
make restart   # Stop, then restart through the init dependency order (brief outage)
make status    # Show container status
make log       # Follow logs
make health    # Check HTTP / DB / Redis health
make migrate   # Same ordered stop/init/start sequence as restart, during maintenance
make exec      # Enter the core container
```

### Upgrade from 4.10.19 to 5.0.0

The [official v5.0.0 upgrade script](https://github.com/jumpserver/installer/blob/33785347d95677ad87c0cc2f754d4f671b4e086f/scripts/7_upgrade.sh) accepts source versions from `v3.10.11` onward. This template was tested on `v4.10.19-ce → v5.0.0-ce`, with no intermediate version. Check the official guide before upgrading other old versions.

1. Verify a recoverable PostgreSQL backup, schedule maintenance, and stop the old stack.
2. Back up the database, all of `/opt/jumpserver`, and `/data/jumpserver` together. Restore them into an independent database and directory to prove recovery.
3. Update the full Compose file, `init.sh`, Makefile, and `.env`; keep all components on `v5.0.0-ce`. Preserve the original `SECRET_KEY`, `BOOTSTRAP_TOKEN`, database password, and Redis password. Generate a new random `CHAT_AI_DELEGATION_SECRET`.
4. Rename `LION_IP` to `KAEL_IP` and create the Kael persistent directory. Stop and remove the old Lion container, or disconnect it from the network to release Kael's fixed IP. Retain the old data directory and backups.
5. Check image namespace, proxies, network, and ports. Pull the full image set, then start:

```bash
cd /opt/jumpserver
make pull
make up        # init migrates and validates the key before Core starts
make status
make health
docker compose logs init
```

Recheck original logins, assets, permissions, credential decryption, host-key fingerprint, real sessions, and historical recordings. `make restart`, `make migrate`, and `make upgrade-db` all stop services, then follow the same init dependency order. Do not use `docker compose restart` to restart init and Core in parallel.

If init fails, retain the logs, correct the cause, and retry. Once 5.x migrations have run, changing back to 4.x images is insufficient: rollback requires restoring the pre-upgrade database, application files, and original keys.

------

## Backup and Restore

For an upgrade checkpoint, stop application writes and back up the database, all of `/opt/jumpserver`, and `/data/jumpserver` together. Restrict backup-file permissions to administrators. Prove restoration with a separate database, directory, Compose project, subnet, and ports to avoid overwriting the live instance. Kael ordinary conversation history is stored in the Core database; Terminal AI files and component state also require application-file backups. Back up both.

JumpServer state has two layers:

- PostgreSQL database: back up with Pigsty pgBackRest / PITR.
- Application files: `/data/jumpserver` and `/opt/jumpserver/.env`, which contain logs, recordings, component data, Redis persistence, and keys.

Restore the database, `.env`, and file directory from the same environment:

```bash
# 1. Restore PostgreSQL with Pigsty pgBackRest / PITR
# 2. Restore /opt/jumpserver/.env and /data/jumpserver
# 3. Use the complete Compose version matching the backup; init runs migrations first
cd /opt/jumpserver
make up
make health
```

Restoring PostgreSQL without the original `SECRET_KEY` prevents JumpServer from decrypting stored account credentials correctly.

------

## Community Edition Scope

This template uses JumpServer 5.0.0 Community Edition Core, Celery, KoKo, Chen, Kael, and Web, with a one-shot init service and local Redis. In 5.x, remote-desktop handling is integrated into KoKo, so there is no separate Lion container. JumpServer is licensed under GPLv3; the Pigsty template is Apache-2.0.

The external PostgreSQL 18 backend and PostgreSQL asset connections are separate paths. The tested scope is listed below. RDP/VNC, native clients, ARM64, enterprise components, and external-model inference were not validated. Kael authentication, conversation storage, and permission isolation can be checked without a model provider; inference needs separate configuration and validation. Upstream persists ordinary conversations that contain messages; empty drafts do not survive a restart. Core / Kael delegation was verified by loading 952 operation definitions.

| Validation path | Fresh 5.x | 4.10.19 → 5.0.0 |
|-----------------|-----------|-------------------|
| External PostgreSQL 18.6, normal application role | Passed | Passed |
| API/form login, denied unauthorized access | Passed | Passed; original users and permissions retained |
| Complete user/asset/account/permission CRUD | Passed; disposable objects created, read, updated, and deleted | Passed; original objects retained |
| KoKo SSH and terminal WebSocket safe commands | Passed | Passed; host key retained |
| Session/command audits and recording downloads | Passed | Passed; historical recording hashes match |
| Chen PostgreSQL asset query | Passed; version 180006 and synthetic value 42 | Passed |
| Celery credential verification | Passed | Passed |
| Kael authentication, conversation/message persistence, permission isolation | Passed | Passed |

The pre-upgrade backup was restored into an independent PostgreSQL database and application directory. Original ciphertext, host key, and recordings were compared successfully. Tests used synthetic users, assets, and data in an isolated M3 VM.

------

## References

- [Official JumpServer v5.0.0 release](https://github.com/jumpserver/jumpserver/releases/tag/v5.0.0)
- [Pinned installer source](https://github.com/jumpserver/installer/tree/33785347d95677ad87c0cc2f754d4f671b4e086f)
- [Official upgrade guide](https://docs.jumpserver.org/zh/v4/installation/upgrade/)
- JumpServer project: https://github.com/jumpserver/jumpserver
- JumpServer installer: https://github.com/jumpserver/installer
- Pigsty JumpServer template: https://github.com/pgsty/pigsty/blob/main/conf/app/jumpserver.yml
- [Pigsty Docker module](/docs/docker/)
- [Pigsty Nginx ingress](/docs/infra/admin/portal/)
