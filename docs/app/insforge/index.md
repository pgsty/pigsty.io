# InsForge: AI Backend-as-a-Service

> Self-host InsForge OSS with Pigsty and let Pigsty manage PostgreSQL, backups, monitoring, and ingress.

---

LLMS index: [llms.txt](/llms.txt)

---

[**InsForge**](https://github.com/InsForge/InsForge) is an open-source Backend-as-a-Service platform for AI coding agents, built around PostgreSQL. It provides authentication, database APIs, file storage, a model gateway, edge functions, site deployment, and payment integrations. These features reduce common backend implementation work.

Pigsty provides the `app/insforge` template. It runs stateless InsForge OSS services in Docker Compose and stores critical state in Pigsty-managed PostgreSQL. This provides high availability, backup and recovery, monitoring, ingress domains, and infrastructure services. The database does not depend on an ephemeral container volume.

The template targets InsForge OSS `v2.3.3` and uses external PostgreSQL. It runs three services by default: InsForge Dashboard/API, PostgREST, and Deno Runtime. The latter two bind only to host loopback.

------

## Quick Start

Run the following on a fresh Linux x86 / ARM server with a [compatible operating system](/docs/deploy/prepare/):

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap                  # Install Pigsty dependencies
./configure -c app/insforge  # Use the InsForge configuration template
vi pigsty.yml                # Required: keys, admin account, database password, domain

./infra.yml                  # Create the CA and initialize infrastructure first
./node.yml -l pg-meta         # Provision PostgreSQL nodes
./pgsql.yml -l pg-meta -t pg_install # Install PostgreSQL packages only
# Install the utility library on every PostgreSQL node; Debian/Ubuntu PG18 example
sudo apt-get install -y postgresql-server-dev-18 build-essential curl patch
sudo env PG_CONFIG=/usr/lib/postgresql/18/bin/pg_config bash app/insforge/pgutils/install.sh
./deploy.yml                 # Initialize PostgreSQL with the library preloaded and deploy Pigsty
./docker.yml                 # Install Docker and Compose
./app.yml                    # Install InsForge
```

On a fresh deployment, run `infra.yml` first so `node.yml` can use its CA. Existing Pigsty deployments should retain their INFRA/ETCD inventory and avoid repeating initialization. See [Database and Permissions](#database-and-permissions) for the utility library requirements on every database node.

After installation, the default access URLs are:

- `http://<your_ip_address>:7130`
- `http://isf.pigsty`

The default administrator account is `admin@example.com` / `pigsty`. In production, you must change the administrator account, administrator password, JWT secret, encryption key, and database password.

To access InsForge through `isf.pigsty`, add the following entry to `/etc/hosts` on the machine running your browser:

```bash
10.10.10.10 isf.pigsty
```

To expose the service to the public internet, use a real domain and HTTPS certificate, and modify `infra_portal` as described below.

------

## Checklist

- [ ] Prepare a fresh Linux server with at least `2C4G`; use an SSD/NVMe disk.
- [ ] Confirm that the server has a static private IPv4 address and can access GHCR / Docker Hub, or that a registry mirror is configured.
- [ ] After running `./configure -c app/insforge`, change the default passwords, domains, and keys in `pigsty.yml`.
- [ ] Generate new `JWT_SECRET` and `ENCRYPTION_KEY` values separately with `openssl rand -base64 32`.
- [ ] Keep `POSTGRES_PASSWORD` consistent with the password of `dbuser_insforge` in `pg_users`.
- [ ] For public access, configure a real domain, an HTTPS certificate, and firewall access rules.
- [ ] Install and preload `insforge_pg_utils` on every PostgreSQL node, verify the extension packages, and run `pig pb info` after deployment.

------

## Architecture

The InsForge template separates the database from the application containers by default:

```text
                    ┌──────────────────────────────────────────────┐
                    │                 InsForge Stack               │
┌──────────┐       │  ┌──────────┐  ┌──────────┐  ┌───────────┐  │
│  Nginx   │──────▶│  │ InsForge │  │PostgREST │  │   Deno    │  │
│ (Pigsty) │  :7130│  │ App+Web  │  │ REST API │  │  Runtime  │  │
└──────────┘       │  │  :7130   │  │  :5430   │  │   :7133   │  │
                    │  └────┬─────┘  └────┬─────┘  └─────┬─────┘  │
                    │       │             │              │         │
                    └───────┼─────────────┼──────────────┼─────────┘
                            │             │              │
                            ▼             ▼              ▼
                    ┌──────────────────────────────────────────────┐
                    │  PostgreSQL (Pigsty Managed HA Cluster)      │
                    │  Patroni + pgBackRest + pgBouncer + HAProxy  │
                    └──────────────────────────────────────────────┘
```

Components:

- **InsForge App**: `ghcr.io/insforge/insforge-oss:v2.3.3`, providing the Dashboard and main API on port `7130`.
- **PostgREST**: `postgrest/postgrest:v12.2.12`, generating REST APIs from PostgreSQL schemas; bound to `127.0.0.1:5430` on the host.
- **Deno Runtime**: `denoland/deno:alpine-2.0.6`, running the bundled, pinned function host and bound to `127.0.0.1:7133` on the host.
- **PostgreSQL**: Managed by Pigsty for persistent state, backup, monitoring, and high availability.

------

## Configuration Template

[`conf/app/insforge.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/insforge.yml) defines a single-node, self-hosted InsForge template. The default topology includes:

- `insforge`: The node running the InsForge, PostgREST, and Deno Runtime containers.
- `pg-meta`: The PostgreSQL database cluster managed by Pigsty, including the roles, database, and extensions required by InsForge.
- `infra`: Infrastructure services such as Nginx ingress, Grafana, and VictoriaMetrics.
- `etcd`: The distributed configuration store required by Patroni.

Key configuration excerpts:

```yaml
insforge:
  hosts: { 10.10.10.10: {} }
  vars:
    app: insforge
    apps:
      insforge:
        conf:
          JWT_SECRET: your-secret-key-here-must-be-32-char-or-above
          ENCRYPTION_KEY: your-encryption-key-here-must-be-32-char-or-above
          ROOT_ADMIN_USERNAME: admin@example.com
          ROOT_ADMIN_PASSWORD: pigsty
          POSTGRES_HOST: 10.10.10.10
          POSTGRES_PORT: 5432
          POSTGRES_DB: insforge
          POSTGRES_USER: dbuser_insforge
          POSTGRES_PASSWORD: DBUser.Insforge

pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - { name: dbuser_insforge ,password: DBUser.Insforge ,pgbouncer: true ,roles: [dbrole_admin] ,superuser: true ,comment: 'insforge superuser' }
      - { name: anon            ,login: false ,comment: 'insforge anonymous role for PostgREST' }
      - { name: authenticated   ,login: false ,comment: 'insforge authenticated role' }
      - { name: project_admin   ,login: false ,bypassrls: true ,comment: 'insforge project admin with RLS bypass' }
    pg_databases:
      - name: insforge
        owner: dbuser_insforge
        baseline: insforge.sql
        extensions: [pgcrypto, http, pg_cron]
    pg_libs: 'pg_cron, insforge_pg_utils, pg_stat_statements, auto_explain'
    pg_parameters:
      cron.database_name: insforge
      cron.use_background_workers: true
      app.encryption_key: your-encryption-key-here-must-be-32-char-or-above
      insforge.policy_grant_role: project_admin
      insforge.extension_grant_role: project_admin
      insforge.policy_grant_tables: 'storage.objects,realtime.channels,realtime.messages,payments.stripe_checkout_sessions,payments.stripe_customer_portal_sessions,payments.razorpay_orders,payments.razorpay_subscriptions'
      insforge.internal_schemas: 'ai,auth,compute,deployments,email,functions,memory,payments,realtime,schedules,storage,system'
    pg_extensions: [ pg_cron, pg_http ]
    pg_hba_rules:
      - { user: dbuser_insforge ,db: all ,addr: 172.16.0.0/12 ,auth: pwd ,title: 'allow insforge access from local docker networks' }
```

------

## Important Parameters

`app.yml` copies the `app/insforge` directory to `/opt/insforge` and uses `apps.insforge.conf` to override `/opt/insforge/.env`. Common parameters include:

| Parameter | Default | Description |
|-----------|---------|-------------|
| `JWT_SECRET` | Sample secret | JWT signing secret; must be replaced in production, preferably with a random value of at least 32 characters |
| `ENCRYPTION_KEY` | Sample secret | Encrypts runtime credentials; must be replaced in production and managed separately from `JWT_SECRET` |
| `ROOT_ADMIN_USERNAME` | `admin@example.com` | Root administrator account |
| `ROOT_ADMIN_PASSWORD` | `pigsty` | Root administrator password; must be replaced in production |
| `POSTGRES_HOST` / `POSTGRES_PORT` | `10.10.10.10` / `5432` | Pigsty PostgreSQL endpoint |
| `POSTGRES_DB` | `insforge` | InsForge database |
| `POSTGRES_USER` | `dbuser_insforge` | Application user that connects InsForge to PostgreSQL |
| `POSTGRES_PASSWORD` | `DBUser.Insforge` | Application user password; must be replaced in production |
| `INSFORGE_VERSION` | `v2.3.3` | InsForge OSS image tag |
| `DENO_RUNTIME_IMAGE` | `denoland/deno:alpine-2.0.6` | Full Deno Runtime image reference |
| `INSFORGE_IMAGE` | Empty | Optional full app image override, taking precedence over `INSFORGE_VERSION` |
| `APP_PORT` | `7130` | External InsForge App port |
| `POSTGREST_PORT` | `5430` | PostgREST loopback port |
| `DENO_PORT` | `7133` | Deno Runtime loopback port |
| `ACCESS_API_KEY` | Empty | Optional MCP / API access key; generated by InsForge when empty |
| `ACCESS_ANON_KEY` | Empty | Optional anonymous frontend access key; should begin with `anon_` when set |
| `OPENROUTER_API_KEY` | Empty | Optional OpenRouter model gateway key |
| `AWS_S3_BUCKET` / `S3_*` | Empty | Optional object storage configuration |
| `DENO_DEPLOY_TOKEN` | Empty | Optional Deno Deploy integration |
| `VERCEL_TOKEN` / `FLY_API_TOKEN` | Empty | Optional site deployment and compute platform integrations |
| `STRIPE_*` / `RAZORPAY_*` | Empty | Optional payment integrations |

Generate production secrets with:

```bash
openssl rand -base64 32
```

When changing the database password, keep the application and database definitions synchronized. For example:

```yaml
apps:
  insforge:
    conf:
      POSTGRES_PASSWORD: <new-password>

pg_users:
  - { name: dbuser_insforge ,password: <new-password> ,pgbouncer: true ,roles: [dbrole_admin] ,superuser: true }
```

Once `ENCRYPTION_KEY` has been used for production data, keep it stable. Changing it may make stored runtime credentials such as API keys, OAuth tokens, and function secrets impossible to decrypt.

------

## Database and Permissions

The default InsForge database is named `insforge` and owned by `dbuser_insforge`. The template creates the following roles:

| Role | Login | Purpose |
|------|-------|---------|
| `dbuser_insforge` | Yes | Application user that connects InsForge to PostgreSQL; granted superuser in the template |
| `anon` | No | PostgREST anonymous role |
| `authenticated` | No | PostgREST authenticated-user role |
| `project_admin` | No | Administrative role with service-key semantics and `BYPASSRLS` |

`files/insforge.sql` configures PostgREST role privileges, default privileges, ACLs for `project_admin`, and the helper function `public.reload_postgrest_schema()`. The function executes:

```sql
NOTIFY pgrst, 'reload schema';
```

This notifies PostgREST to reload its schema.

`insforge_pg_utils` is a required PostgreSQL utility library. It lets `project_admin` manage RLS policies on managed tables and manage extensions; application migrations do not replace it. Copy the complete `app/insforge/pgutils/` directory to every database node, install it before PostgreSQL initialization, and preload it through `pg_libs`. It exposes no SQL objects, so no `CREATE EXTENSION` is needed.

`pgutils/install.sh` downloads and verifies pinned official source, applies the PG16–18 compatibility patch, and builds it with PGXS. For PG18 on Debian/Ubuntu, use `postgresql-server-dev-18` and `/usr/lib/postgresql/18/bin/pg_config`. On EL/RPM, use `postgresql18-devel`, `gcc`, `make`, `curl`, `patch`, and `/usr/pgsql-18/bin/pg_config`. The script does not change configuration or restart a cluster; plan preload configuration and restart separately for an existing deployment.

`cron.use_background_workers: true` runs scheduled jobs as background workers without adding a loopback `trust` rule. Reserve enough `max_worker_processes` slots for cron, replication, and other extensions.

------

## Service Ports and Persistence

The default Docker Compose services are:

| Service | Container | Host Port | Description |
|---------|-----------|-----------|-------------|
| InsForge App | `insforge` | `7130` | Dashboard and main API |
| PostgREST | `insforge-postgrest` | `127.0.0.1:5430` | Automatically generated REST API |
| Deno Runtime | `insforge-deno` | `127.0.0.1:7133` | Edge function runtime |

Remote clients use the main InsForge API for data and functions; do not expose PostgREST or Deno directly. The Docker compute provider is optional, and the template does not mount the Docker socket by default. Enabling that mount grants the container root-equivalent access to the host.

The default Docker volumes are:

| Volume | Mount Point | Description |
|--------|-------------|-------------|
| `storage-data` | `/insforge-storage` | Local file storage |
| `insforge-logs` | `/insforge-logs` | Application logs |
| `deno_cache` | `/deno-dir` | Deno module cache |

By default, Docker containers connect to the Pigsty node at `10.10.10.10:5432`. The template HBA rule permits `172.16.0.0/12`, covering Docker's default bridge and common custom bridge networks.

------

## Domain and Ingress

The template adds an InsForge entry to `infra_portal` by default:

```yaml
infra_portal:
  home    : { domain: i.pigsty }
  insforge:
    domain: isf.pigsty
    endpoint: "10.10.10.10:7130"
    websocket: true
    certbot: isf.pigsty
```

To use a real domain such as `insforge.example.com`, replace the placeholder in bulk:

```bash
sed -ie 's/isf.pigsty/insforge.example.com/g' pigsty.yml
```

Then apply the Nginx ingress configuration:

```bash
./infra.yml -t nginx
```

Before requesting an HTTPS certificate, verify that the domain resolves to the current node. Then add or update `certbot` under `infra_portal.insforge`:

```yaml
insforge:
  domain: insforge.example.com
  endpoint: "10.10.10.10:7130"
  websocket: true
  certbot: insforge.example.com
```

Then run:

```bash
make cert
./infra.yml -t nginx
```

------

## Operations

InsForge is installed in `/opt/insforge`. Common commands include:

```bash
cd /opt/insforge

make up       # Start services
make view     # Print access URLs
make info     # Show container status
make log      # Follow logs
make restart  # Restart containers
make down     # Stop containers
make clean    # Remove stopped containers
make edit     # Edit .env
```

### Upgrade to v2.3.3

Before upgrading, back up PostgreSQL, including `system.migrations`, file storage, and deployment overrides. Preserve the existing JWT and credential-encryption keys. After you pull the new image and recreate the InsForge container, its startup migration runner applies and records `065_restrict-http-extension-to-admin`.

This migration revokes `PUBLIC EXECUTE` on 13 outbound HTTP and curl-option function signatures from the `http` extension while retaining `project_admin` execution. This prevents normal users and anonymous API keys from invoking them through RPC. The new-install `files/insforge.sql` baseline includes the same restriction. **Do not replay the full baseline on an existing database or run a separate copy of migration 065 manually.**

After upgrading, check the migration ledger and actual function privileges. The defaults should be `anon=false`, `authenticated=false`, and `project_admin=true`. Custom role memberships or explicit grants can still confer additional access. See the [template upgrade checks](https://github.com/pgsty/pigsty/tree/main/app/insforge#upgrade-to-v233) and [official migration](https://github.com/InsForge/InsForge/blob/636d1e207d2bca246f7b8ccd0e0b6572528809fa/backend/src/infra/database/migrations/065_restrict-http-extension-to-admin.sql).

### Offline Deployment

For offline environments, save the images in advance:

```bash
cd /opt/insforge
make pull
make save
make tarball
```

The first Deno startup needs access to `deno.land` and `registry.npmjs.org` to pre-cache the function host and worker dependencies. The SDK is pinned to `@insforge/sdk@1.5.2`, and `functions/deno.lock` fixes the dependency graph. Configure `DENO_HTTP_PROXY` / `DENO_HTTPS_PROXY` if needed. `make save` archives images only, not the `deno_cache` volume; prepare and transfer that cache separately for offline use.

Default artifact locations:

- `/tmp/docker/insforge/postgrest.tgz`
- `/tmp/docker/insforge/insforge.tgz`
- `/tmp/docker/insforge/deno.tgz`
- `/tmp/insforge.tgz`

Load the images on the target machine:

```bash
cd /opt/insforge
make load
make up
```

------

## Data and Backup

InsForge state is divided into two categories:

- Business data, users, project metadata, permissions, and related state are stored in the Pigsty PostgreSQL database `insforge`.
- Local files and logs are stored in the Docker volumes `storage-data` and `insforge-logs`.

By default, the template schedules a full PostgreSQL backup every day at 1:00 AM:

```yaml
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
```

After deployment, check the backup status:

```bash
pig pb info
```

If file storage is configured to use S3 / MinIO, file objects are managed by that object storage system. If you keep local volumes, include them separately in your host-level backup strategy.

------

## Troubleshooting

Check container status:

```bash
cd /opt/insforge
make info
```

View logs:

```bash
sudo docker logs insforge
sudo docker logs insforge-postgrest
sudo docker logs insforge-deno
```

Check whether PostgreSQL is reachable from the container:

```bash
sudo docker exec insforge-postgrest bash -c '</dev/tcp/10.10.10.10/5432'
```

Check whether the HBA rules include the Docker network:

```bash
sudo -iu postgres psql -d insforge -c "TABLE pg_hba_file_rules;"
```

Check whether the roles exist:

```bash
sudo -iu postgres psql -d insforge -c "SELECT rolname, rolcanlogin, rolbypassrls FROM pg_roles WHERE rolname IN ('anon','authenticated','project_admin');"
```

Check for port conflicts:

```bash
ss -tlnp | grep -E '7130|7133|5430'
```

Common issues:

- Cannot log in: Verify `ROOT_ADMIN_USERNAME` / `ROOT_ADMIN_PASSWORD` in `/opt/insforge/.env`. Check the `insforge` container logs.
- PostgREST fails to start: Verify that `anon`, `authenticated`, and `project_admin` exist. Verify that `JWT_SECRET` matches the InsForge App setting.
- Database connection fails: Verify `POSTGRES_HOST`, `POSTGRES_PORT`, and `POSTGRES_PASSWORD` against `pg_users`. Verify that HBA permits the Docker network.
- File upload or download errors: When using S3 / MinIO, check `AWS_S3_BUCKET`, `S3_ENDPOINT_URL`, `S3_FORCE_PATH_STYLE`, and the access-key configuration.

------

## References

- InsForge project: https://github.com/InsForge/InsForge
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/insforge.yml
- Docker Compose: https://github.com/pgsty/pigsty/blob/main/app/insforge/docker-compose.yml
- Database baseline: https://github.com/pgsty/pigsty/blob/main/files/insforge.sql
