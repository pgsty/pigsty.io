---
title: "Discourse: Open-Source Community Forum"
weight: 596
date: 2026-10-14
description: Deploy Discourse with Pigsty-managed PostgreSQL and a single Redis instance embedded in the application container.
module: [SOFTWARE]
categories: [Reference]
---

[**Discourse**](https://www.discourse.org/) is open-source community forum software. Pigsty's `app/discourse` template builds the application image locally with the official classic [`discourse_docker`](https://github.com/discourse/discourse_docker) Launcher and runs it with Docker Compose. PostgreSQL is managed externally by Pigsty; a single Redis instance runs inside the application container.

The template follows `app.yml` → application directory → `.env` → `make`. `apps.discourse.dest` is `/data/app/discourse`, keeping managed and persistent files together for migration. Use `app/discourse/`, `conf/app/discourse.yml`, and `files/discourse.sql` from the same Pigsty version.

| Item | Default |
|------|--------|
| Forum domain | `ask.pigsty` |
| PostgreSQL | `10.10.10.10:5432`; database and user both `discourse` |
| Redis | Single instance inside the application container, `127.0.0.1:6379` |
| Public HTTP/HTTPS | Pigsty Nginx, `80` / `443` |
| Nginx upstream | `unix:/data/app/discourse/shared/nginx.http.sock` |
| Application and management files | `/data/app/discourse` |
{.wide .expand}

The template creates no PostgreSQL container and publishes neither Redis nor HTTP ports. Pigsty Nginx proxies through a Unix socket, avoiding a conflict with its own port 80. Redis binds only to container loopback and is not shared with other applications or native Pigsty Redis. Build and runtime use the same default Docker bridge, keeping database reachability and source addresses consistent.

------

## Quick Start

On a **fresh host** running a compatible OS:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap                    # Install Ansible
./configure -c app/discourse   # Select the Discourse template
vi pigsty.yml                  # Change passwords, domain, and SMTP
./deploy.yml                   # Install Pigsty and PostgreSQL
./docker.yml                   # Install Docker and Compose
./app.yml -l discourse         # Build and start Discourse
```

Resolve `ask.pigsty` to the Nginx host, then visit `http://ask.pigsty`. The template writes the local mapping through `node_etc_hosts`. This name is for local tests, not public certificates.

For an **existing Pigsty deployment**, merge the application definition, `discourse` user/database, and portal into the inventory, preserving existing clusters, hosts, users, databases, and portals. Do not rerun `configure` over a production inventory or reinitialize running clusters. Review the merged configuration, create only the new user and database, install `pgvector` as needed, apply HBA and portal changes, then start the application.

------

## Configuration Template

The source is [`conf/app/discourse.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/discourse.yml); see the full [`app/discourse` template](/docs/conf/discourse/). `app.yml` copies `app/discourse` to `/data/app/discourse` and writes `.env` from `apps.discourse.conf`. Common settings:

| Parameter | Default | Description |
|------|--------|------|
| `DISCOURSE_DATA` | `/data/app/discourse` | Application directory; keep consistent with `dest` |
| `DISCOURSE_HOSTNAME` | `ask.pigsty` | DNS name only, without URL scheme or port |
| `DISCOURSE_VERSION` | `f00f07d62728d646642cd2185cc077ad84a60fa8` | Pinned Discourse application commit |
| `DISCOURSE_DOCKER_REF` | `0ba1841d589e77df3bc923774abca2720a320ec2` | Pinned classic Launcher and template commit |
| `PG_HOST` / `PG_PORT` | `10.10.10.10` / `5432` | Direct PostgreSQL endpoint; cannot be `localhost` |
| `PG_DBNAME` / `PG_USERNAME` | `discourse` / `discourse` | Database and owner |
| `PG_PASSWORD` | `DBUser.Discourse` | Must match `pg_users`; replace in production |
| `UNICORN_WORKERS` | `2` | Web workers |
| `UNICORN_SIDEKIQS` | `1` | Sidekiq processes |
| `DISCOURSE_SIDEKIQ_WORKERS` | `5` | Background job threads |
| `DISCOURSE_DB_POOL` | `8` | Connections per process, not the application total |
| `REDIS_MAX_MEMORY` | `512mb` | Embedded Redis `maxmemory` |
| `DISCOURSE_FORCE_HTTPS` | `false` | Set `true` after configuring a trusted HTTPS portal |
| `DISCOURSE_DEVELOPER_EMAILS` | `admin@example.com` | Administrator email; change before deployment |
| `DISCOURSE_SMTP_ADDRESS` / `DISCOURSE_SMTP_PORT` | `smtp.example.com` / `587` | SMTP server; change before deployment |
| `DISCOURSE_NOTIFICATION_EMAIL` | `noreply@example.com` | Notification sender; change before deployment |
| `DISCOURSE_SKIP_EMAIL_SETUP` | `0` | Set to `1` only for isolated tests |
| `DISCOURSE_IMAGE` | `local_discourse/discourse:latest` | Image built locally by Launcher |
{.wide .expand}

Configure SMTP and the administrator email before startup. The sample SMTP host intentionally causes the build to fail until replaced. `DISCOURSE_SKIP_EMAIL_SETUP=1` is for isolated tests and does not provide working email. Public deployments need a real domain, valid TLS certificate, and `DISCOURSE_FORCE_HTTPS=true`.

------

## Database Requirements

Use PostgreSQL **18**, UTF8 encoding, and `hstore`, `pg_trgm`, `unaccent`, and `vector`. Pigsty creates these extensions as DBA. The `discourse` owner performs migrations without SUPERUSER, CREATEDB, or a shared administrator role; the template revokes `dbrole_admin` membership. `files/discourse.sql` overrides shared default ACLs for this owner.

```yaml
pg_users:
  - name: discourse
    password: DBUser.Discourse  # CHANGE ME, same as PG_PASSWORD above
    pgbouncer: false
    roles: [{ name: dbrole_admin, state: revoke }]
    comment: Discourse database owner
pg_databases:
  - name: discourse
    owner: discourse
    encoding: UTF8
    revokeconn: true
    pgbouncer: false
    baseline: discourse.sql
    extensions: [ hstore, pg_trgm, unaccent, vector ]
    comment: Discourse forum
pg_hba_rules:
  - { user: discourse ,db: discourse ,addr: 172.16.0.0/12 ,auth: pwd ,title: 'Discourse from local Docker bridges' }
```

Connect directly to PostgreSQL, not PgBouncer transaction pooling: Discourse requires advisory locks. For HA, use a direct PostgreSQL endpoint that routes only to the primary, and point the backup endpoint to the same writer. A fixed node's `5432` does not follow failover.

The default Docker HBA rule permits only this user/database from the Docker bridge. Existing firewalls must allow bridge-to-database traffic. The template does not change firewall rules or unrelated demo routes.

------

## Image Builds and Operations

```bash
cd /data/app/discourse
make config      # View the Launcher definition with secrets redacted
make up          # Build initially, start, and wait for HTTP health
make view        # Print the URL and Nginx upstream
make health      # Check /srv/status through the Unix socket
make log         # Follow container logs
make stop        # Stop the container
make start       # Start an existing image whose configuration is unchanged
make rebuild     # Stop, rebuild/migrate, then start
make clean       # Remove the container; retain files and PostgreSQL
make save        # Save the image to /tmp/docker/discourse.tgz
make load        # Load the image from /tmp/docker/discourse.tgz
```

`DISCOURSE_DOCKER_REF` pins both the classic Launcher and templates. `DISCOURSE_VERSION` also defaults to an exact validated application commit for consistent builds across hosts and time. `make up` reuses the image when its build record matches the resolved configuration. Use `make rebuild` after changing pinned commits, or refreshing an explicitly selected floating branch. Check both references and the required PostgreSQL major version when upgrading.

The generated `launcher/containers/discourse.yml` uses JSON syntax, which is also valid YAML, with mode `0600`. It uses Redis, Web, rate-limit, and socket templates, excluding PostgreSQL, SSL, and Let's Encrypt templates. The image is built locally; it does not use the experimental prebuilt `discourse/discourse` image.

Builds stop the old application **before bootstrap**, because bootstrap also starts Redis against shared data. Do not bootstrap another instance against an active `shared/redis_data`, run two copies of this application, or use Launcher V2's external-database auto-rebuild with this embedded Redis layout. After a failed build, the old application stays stopped. Diagnose and fix the error before starting an image against a database that may already have been migrated.

Builds require Linux, Docker, Compose v2.20+, Git, and Python 3. Launcher supports x86-64; upstream describes ARM64 support as experimental. Initial builds need access to Docker Hub, GitHub, gems, and frontend dependencies, plus spare CPU, memory, and disk. Defaults are two Web workers, one Sidekiq process, five job threads, and eight database connections per process. An 8 GiB host can run a small forum with Pigsty if capacity is reserved for monitoring and builds; 16 GiB provides more maintenance headroom.

------

## Persistent Data and Backups

```text
/data/app/discourse/
├── launcher/                      # Pinned upstream source and private application definition
├── .build.json                    # Configuration fingerprint, image ID, and exact commits
└── shared/
    ├── uploads/                   # Originals, attachments, and derived images
    ├── redis_data/                # RDB / complete AOF file set
    ├── backups/default/           # Discourse application archives
    ├── log/                       # Rails, Sidekiq, Redis, and system logs
    ├── state/                     # logrotate / anacron state
    └── tmp/                       # Backup and restore workspace
```

Redis stores background queues as well as cache. It uses `maxmemory 512mb`, `noeviction`, AOF `everysec`, and upstream RDB snapshots; it is not disposable cache. The memory limit does not cap total RSS or rewrite peaks. Monitor memory, job latency, persistence failures, and disk use.

Back up PostgreSQL with Pigsty/pgBackRest. Also create Discourse archives including uploads and keep an independent copy on another host. Copying one live `.aof` file is not a valid multipart AOF backup; use a stable RDB or consistent complete file set. Isolated restore tests need a separate database, Redis, and `shared` directory with outbound email disabled: Discourse restoration clears Redis and queues.

Uploads are local by default. Configure MinIO/Silo/S3 only after checking endpoint/bucket DNS, TLS, CORS, and private-upload permissions. S3 uploads are excluded from archives unless explicitly configured, so back up those objects separately.

------

## Migrate the Application

1. Record the running image ID and source versions, and back up the database.
2. Stop the old application and confirm all Web, Sidekiq, and Redis processes have exited.
3. Copy `/data/app/discourse` through a private channel, preserving ownership and permissions and excluding the temporary Nginx socket.
4. Use `make save` / `make load` to transfer the same image. `/tmp/docker/discourse.tgz` is private: Launcher-built images contain application configuration and must not enter Git or public registries.
5. Configure database connectivity and the Nginx socket upstream on the new host. With unchanged configuration and image, use `make start`. Verify login, posting, uploads, email, background jobs, and backups before switching the public proxy. Keep the old application stopped.

If the database endpoint or other configuration changes, retain the exact `DISCOURSE_VERSION` and `DISCOURSE_DOCKER_REF` from the old build record, then use `make up` to rebuild the same version. Avoid combining migration with an application upgrade.

If PostgreSQL stays in place, no Discourse restore is needed. Moving or retiring the database host is a separate Pigsty switchover or recovery operation. Never copy live PGDATA as part of the application directory.

------

## Known Limitations

- After a failed rebuild, the old `.build.json` may still let `make up` or `make start` connect the old image to a possibly migrated database. Do not use these commands to recover from failed bootstrap before checking schema and image state. Fix build-record invalidation before relying on this workflow for production upgrades.
- `files/discourse.sql` assumes both database and owner are named `discourse`. Retain these names or update SQL, inventory, and `.env` together. Verify baseline success after deployment: the database playbook currently ignores baseline errors and could leave shared-role grants behind.
- The default `oltp` Tuned profile sets `vm.overcommit_memory=0`, while Redis persistence requires `1`. Configure a persistent override and recheck after restarting Tuned or the host; the application template does not handle this yet.

------

## Validation Record

On 2026-10-14, an isolated Linux ARM64 Docker environment built application commit `3279b67fba94db51b9a545b90f8eaf4352cae0bb` with the pinned Launcher and external PostgreSQL 18.6. Schema migrations, the initial setup page, and health endpoint passed through the rendered Pigsty Nginx socket portal. Redis ran as one process with loopback binding, AOF, `noeviction`, and a 512 MB limit; test keys survived container removal and recreation. The database baseline passed repeated execution and denied shared roles access to newly created owner objects.

A native x86-64 deployment the same day used the same application and Launcher commits with Pigsty PostgreSQL 18.6. It validated public HTTPS, Chinese assets, administrator login/API, Redis persistence settings, and Ruby SMTP TLS/authentication checks. Application archives contained SQL and local uploads; the off-host copy had the same SHA-256. Repeated `make up` reused the existing image.

Actual email delivery, complete regular-user posting/upload flows, load capacity, backup recovery, and failover remain unverified.

------

## References

- [Official Docker deployment and templates](https://github.com/discourse/discourse_docker)
- [Separate PostgreSQL server](https://meta.discourse.org/t/configure-discourse-to-use-a-separate-postgresql-server/46375)
- [Nginx coexistence and Unix sockets](https://meta.discourse.org/t/run-other-websites-on-the-same-machine-as-discourse/17247)
- [Sidekiq Redis persistence and memory policy](https://github.com/sidekiq/sidekiq/wiki/Using-Redis)
- [Pigsty application template](https://github.com/pgsty/pigsty/tree/main/app/discourse)
- [Pigsty Nginx portal](/docs/infra/admin/portal/)
