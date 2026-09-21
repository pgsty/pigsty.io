# InsForge: AI Backend-as-a-Service

> Self-host InsForge OSS with Pigsty and let Pigsty manage PostgreSQL, backups, monitoring, and ingress.

---

LLMS index: [llms.txt](/llms.txt)

---

[**InsForge**](https://github.com/InsForge/InsForge) is an open-source Backend-as-a-Service platform for AI coding agents. Built around PostgreSQL, it provides authentication, database APIs, file storage, a model gateway, edge functions, site deployment, payment integrations, and more, allowing applications to skip most backend boilerplate.

Pigsty provides the `app/insforge` configuration template, which runs InsForge OSS stateless services in Docker Compose while placing the most critical state in PostgreSQL managed by Pigsty. This lets you continue using Pigsty's high availability, backup and recovery, monitoring, ingress domains, and infrastructure capabilities instead of hiding the database in an ephemeral container volume.

The current template targets InsForge OSS `v2.2.6`, uses external PostgreSQL, and exposes three services by default: the InsForge Dashboard/API, PostgREST, and Deno Runtime.

------

## Quick Start

Run the following on a fresh Linux x86 / ARM server with a [compatible operating system](/docs/deploy/prepare/):

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap                  # Install Pigsty dependencies
./configure -c app/insforge  # Use the InsForge configuration template
vi pigsty.yml                # Required: keys, admin account, database password, domain

./deploy.yml                 # Install Pigsty, Infra, Etcd, and PostgreSQL
./docker.yml                 # Install Docker and Compose
./app.yml                    # Install InsForge
```

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
- [ ] Confirm that PostgreSQL extension packages are installed correctly, and run `pig pb info` after deployment.

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

- **InsForge App**: `ghcr.io/insforge/insforge-oss:v2.2.6`, providing the Dashboard and main API on port `7130`.
- **PostgREST**: `postgrest/postgrest:v12.2.12`, generating REST APIs from PostgreSQL schemas; exposed on host port `5430`.
- **Deno Runtime**: `ghcr.io/insforge/deno-runtime:latest`, the edge function runtime, listening on port `7133`.
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
    pg_libs: 'pg_cron, pg_stat_statements, auto_explain'
    pg_parameters:
      cron.database_name: insforge
      app.encryption_key: your-encryption-key-here-must-be-32-char-or-above
      insforge.policy_grant_role: project_admin
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
| `INSFORGE_VERSION` | `v2.2.6` | InsForge OSS image tag |
| `DENO_RUNTIME_VERSION` | `latest` | Deno Runtime image tag |
| `APP_PORT` | `7130` | External InsForge App port |
| `POSTGREST_PORT` | `5430` | External PostgREST port |
| `DENO_PORT` | `7133` | External Deno Runtime port |
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

The upstream InsForge PostgreSQL image preinstalls `insforge_pg_utils`. The current Pigsty template does not depend on this extension package. Instead, it uses `pgcrypto`, `http`, and `pg_cron` already provided by Pigsty, while application migrations by InsForge manage runtime schemas.

------

## Service Ports and Persistence

The default Docker Compose services are:

| Service | Container | Host Port | Description |
|---------|-----------|-----------|-------------|
| InsForge App | `insforge` | `7130` | Dashboard and main API |
| PostgREST | `insforge-postgrest` | `5430` | Automatically generated REST API |
| Deno Runtime | `insforge-deno` | `7133` | Edge function runtime |

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

To request an HTTPS certificate, first ensure that the domain resolves to the current node, then add or modify `certbot` under `infra_portal.insforge`:

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

For offline environments, save the images in advance:

```bash
cd /opt/insforge
make pull
make save
make tarball
```

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

- Cannot log in: Confirm that `ROOT_ADMIN_USERNAME` / `ROOT_ADMIN_PASSWORD` were written to `/opt/insforge/.env` by the template, and check the `insforge` container logs.
- PostgREST fails to start: Confirm that the `anon`, `authenticated`, and `project_admin` roles exist, and that `JWT_SECRET` matches the InsForge App setting.
- Database connection fails: Confirm that `POSTGRES_HOST`, `POSTGRES_PORT`, and `POSTGRES_PASSWORD` match the `pg_users` configuration, and check that HBA permits the Docker network.
- File upload or download errors: When using S3 / MinIO, check `AWS_S3_BUCKET`, `S3_ENDPOINT_URL`, `S3_FORCE_PATH_STYLE`, and the access-key configuration.

------

## References

- InsForge project: https://github.com/InsForge/InsForge
- Pigsty template: https://github.com/pgsty/pigsty/blob/main/conf/app/insforge.yml
- Docker Compose: https://github.com/pgsty/pigsty/blob/main/app/insforge/docker-compose.yml
- Database baseline: https://github.com/pgsty/pigsty/blob/main/files/insforge.sql
