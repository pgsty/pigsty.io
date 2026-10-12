---
title: "Enterprise Self-Hosted Supabase"
weight: 555
description: Self-host enterprise-grade Supabase with Pigsty, featuring monitoring, high availability, PITR, IaC, and 575 PostgreSQL extensions.
module: [SOFTWARE]
categories: [Reference]
---

Pigsty can deploy Supabase on your physical, virtual, or cloud servers with a single command. Self-hosting provides more extensions, performance options, control, and potential cost savings.

> As of August 2026, the [official Supabase self-hosting guide](https://supabase.com/docs/guides/self-hosting) recommends Docker and classifies other implementations as community projects. Pigsty is an independent community integration and is not currently listed on that page.

This tutorial requires basic Linux knowledge. Otherwise, consider using Supabase cloud or plain Docker Compose self-hosting.

The current template tracks the coordinated Supabase [`self-hosted/v0.8.2`](https://github.com/supabase/supabase/tree/564eab8ad7840b13324f68b1bfac074ef8d51c21/docker) release (commit `564eab8`), with Envoy `1.39.1` as the default gateway and Studio `2026.09.07-sha-7996410`.
It uses external Pigsty-managed PostgreSQL, with PG18 as the template default. This combination has passed basic functional checks on PG18.6. See [`docker-compose.yml`](https://github.com/pgsty/pigsty/blob/main/app/supabase/docker-compose.yml) for the complete image versions and [the upgrade procedure](#upgrading-existing-deployments) for existing deployments.


--------

## TL;DR

[Prepare](/docs/deploy/prepare) a [**Linux server**](/docs/deploy/prepare), follow the Pigsty [**standard single-node installation**](/docs/setup/install) process with the `supabase` config template:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./configure -c supabase    # Use supabase config (change credentials in pigsty.yml)
vi pigsty.yml              # Edit domain, passwords, keys...
./deploy.yml               # Standard single-node Pigsty deployment
./docker.yml -l supabase   # Install Docker on the supabase group
./app.yml -l supabase      # Start stateless containers on the supabase group (may be slow)
```

After installation, access Supa Studio on port `8000` with username `supabase` and password `pigsty`.

![Supabase](/img/pigsty/supabase.webp)

{{< asciinema file="demo/supabase.cast" markers="0:Check,11:Install,43:Config,307:Docker,321:Domain,340:App,350:Verify" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}



--------

## Checklist

- [ ] At least one 2-core/4 GB server; 4 cores/8 GB or more is recommended for the full stack
- [ ] Static internal IPv4 address
- [ ] [**Supported Linux distro**](/docs/ref/linux) installed
- [ ] [**Standard Pigsty installation**](/docs/setup/install)
- [ ] Modified config file: domain, passwords, IP address
- [ ] [**Docker module installed**](/docs/docker), ensure proxy/mirror available
- [ ] Use Pigsty's [`app.yml`](/docs/docker/playbook) to start Supabase


------

## Table of Contents

- [What is Supabase?](#what-is-supabase)
- [Why Self-Host?](#why-self-host)
- [Single-Node Quick Start](#single-node-quick-start)
- [Upgrading Existing Deployments](#upgrading-existing-deployments)
- [Advanced: Security Hardening](#advanced-security-hardening)
- [Advanced: Domain Configuration](#advanced-domain-configuration)
- [Advanced: External Object Storage](#advanced-external-object-storage)
- [Advanced: Using SMTP](#advanced-using-smtp)
- [Advanced: True High Availability](#advanced-true-high-availability)

------

## What is Supabase?

[Supabase](https://supabase.com/) is an open-source Backend as a Service (BaaS) and Firebase alternative. It is widely used for AI agent database and backend services. Supabase adds authentication, messaging, edge functions, and object storage to PostgreSQL. It generates REST APIs from the database schema. Enable `pg_graphql` when you need GraphQL APIs.

Supabase combines backend services to reduce development and infrastructure maintenance work. Developers can focus on database design and the frontend to build applications quickly. Vibe coding can help create the frontend and schema for complete applications.

Supabase is one of the most popular open-source projects in the [PostgreSQL ecosystem](https://ossrank.com/cat/368-postgresql-ecosystem). As of August 2026, its [GitHub repository](https://github.com/supabase/supabase/) has more than 100,000 stars.
Supabase also offers a free hosted tier. The current [Free plan](https://supabase.com/pricing) includes shared CPU, 500 MB of RAM, a 500 MB database quota, and 1 GB of file storage; consult the official page for later changes.

------

## Why Self-Host?

Self-hosting can address cost, functionality, and control requirements.

Costs can rise quickly when data, compute, or availability requirements exceed a managed-service tier. See [Is Cloud Database an IQ Tax?](https://vonng.com/cloud/rds/). Reliable [local enterprise NVMe SSDs](https://vonng.com/cloud/bonus/) have a cost advantage of three to four orders of magnitude over [cloud storage](https://vonng.com/cloud/ebs/). Self-hosting can use this advantage.

**Functionality** is another reason. Multi-tenant security and licensing constraints exclude many PostgreSQL extensions from cloud services. Although [extensions are a core PostgreSQL feature](https://vonng.com/pg/pg-eat-db-world), Supabase promises [more than 50 preconfigured extensions](https://supabase.com/docs/guides/database/extensions). The exact list changes with platform releases. Self-hosting with Pigsty provides up to [**{{< param pgext_count >}}**](/ext/list) ready-to-use extensions.

Self-hosting gives users control and helps avoid vendor lock-in. Supabase aims to provide an open-source Firebase alternative without vendor lock-in, but enterprise self-hosting still requires work. Supabase develops and maintains PostgreSQL extensions. It acquired the Oriole team in 2024 and offers [**OrioleDB**](/docs/pgsql/kernel/orioledb) as an optional Public Alpha. OrioleDB is not the production default or a confirmed replacement for native PostgreSQL. Some Supabase extensions and patched kernels are absent from the official PGDG repository.

Missing packages create a dependency on the supabase/postgres Docker image for self-hosting. Pigsty provides these packages for other deployment methods. The 10 missing Supabase extensions are available as RPM/DEB packages for the `supabase` template matrix. This covers EL 8/9, Debian 12, and Ubuntu 22.04/24.04/26.04 on x86_64 and aarch64. See [supported Linux distributions](/docs/ref/linux).

| Extension | Description |
|---|---|
| [`pg_graphql`](/ext/e/pg_graphql/) | GraphQL support in PostgreSQL (Rust), provided by PIGSTY, enabled on demand |
| [`pg_jsonschema`](/ext/e/pg_jsonschema/) | JSON Schema validation (Rust), provided by PIGSTY |
| [`wrappers`](/ext/e/wrappers/) | Supabase foreign data wrapper bundle (Rust), provided by PIGSTY |
| [`index_advisor`](/ext/e/index_advisor/) | Query index advisor (SQL), provided by PIGSTY |
| [`pg_net`](/ext/e/pg_net/) | Async non-blocking HTTP/HTTPS requests (C), provided by PIGSTY |
| [`vault`](/ext/e/supabase_vault/) | Store encrypted credentials in Vault (C), provided by PIGSTY |
| [`pgjwt`](/ext/e/pgjwt/) | JSON Web Token API implementation (SQL), provided by PIGSTY |
| [`pgsodium`](/ext/e/pgsodium/) | Table data encryption TDE, provided by PIGSTY |
| [`supautils`](/ext/e/supautils/) | Security utilities for cloud environments (C), provided by PIGSTY |
| [`pg_plan_filter`](/ext/e/plan_filter/) | Filter queries by execution plan cost (C), provided by PIGSTY |

Supabase deployments [install](/docs/pgsql/ext/install) most extensions by default. [Enable](/docs/pgsql/ext/create) them as needed. Newer templates install the `pg_graphql` package without creating its extension object. For GraphQL APIs, run `CREATE EXTENSION IF NOT EXISTS pg_graphql;` in the target database. The template event trigger rebuilds `graphql_public.graphql` and its permissions.

Pigsty manages the [highly available](/docs/concept/ha/) [PostgreSQL](/docs/pgsql/) and [Silo](/docs/minio/) object storage clusters. It also manages [Docker](/docs/docker/), the [Nginx](/docs/infra/admin/portal) reverse proxy, [domains](/docs/infra/admin/domain), and [HTTPS certificates](/docs/infra/admin/cert). Run any number of stateless Supabase container clusters with Docker Compose. Store their state in external Pigsty-managed database services.

The current template supports PostgreSQL 15-18, with 18 as the default. You can install [**{{< param pgext_count >}}**](/ext/list/) extensions and scale Supabase, PostgreSQL, and Silo independently. You are responsible for operating and securing this infrastructure.


------

## Single-Node Quick Start

Start with single-node deployment. Multi-node high availability is covered later.

[Prepare](/docs/deploy/prepare) a fresh [Linux server](/docs/deploy/prepare), use the Pigsty [`supabase`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml) configuration template for [standard installation](/docs/setup/install),
then run [`docker.yml`](/docs/docker/playbook#dockeryml) and `app.yml` to start stateless Supabase containers (Envoy uses HTTP port `8000` by default; the Nginx portal provides HTTPS).

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./configure -c supabase    # Use supabase config (change credentials in pigsty.yml)
vi pigsty.yml              # Edit domain, passwords, keys...
./deploy.yml               # Install Pigsty
./docker.yml -l supabase   # Install Docker on the supabase group
./app.yml -l supabase      # Start stateless containers on the supabase group
```

Before deploying Supabase, modify the auto-generated `pigsty.yml` configuration file (domain and passwords) according to your needs.
For local development/testing, you can skip this and customize later.

If configured correctly, after about ten minutes, you can access the Supabase Studio GUI at `http://<your_ip_address>:8000` on your local network.
Default username and password are `supabase` and `pigsty`.

![Supabase](/img/pigsty/supabase.webp)

**Notes:**

- In mainland China, Pigsty uses 1Panel and 1ms DockerHub mirrors by default, which may be slow.
- You can configure your own [proxy](/docs/docker/usage#proxy) and [registry mirror](/docs/docker/usage#registry-mirror), then manually pull images with `cd /opt/supabase; make pull`. Before exporting offline images, run `make pull` and then `make save`. The complete bundle includes both the default Envoy and optional Kong gateways. We also offer expert consulting services including complete offline installation packages.
- If you need object storage functionality, you must access Supabase via domain and HTTPS, otherwise errors will occur.
- For serious production deployments, **always** change all default passwords!




------

## Key Technical Decisions

Here are some key technical decisions for self-hosting Supabase:

**Single-node deployment** does not provide PostgreSQL/Silo high availability. Compared with the official Docker Compose setup, it provides monitoring, extension installation, independent component scaling, and point-in-time recovery.

Pigsty's Supabase template does not start the upstream Compose `db` or `supavisor` containers, and does not use Supabase's bundled connection pooler.
Stateless containers connect directly to the PostgreSQL service managed by Pigsty; the single-node template uses service port `5436` by default, which always routes to the current primary.

Logflare / Analytics uses `_analytics` in the separate `_supabase` database instead of `postgres._analytics` in the application database. This keeps internal tables such as `oban_jobs` and `oban_peers` out of the project database's `public` schema. It prevents Supabase Advisor RLS warnings about those tables. `LOGFLARE_DB` and `LOGFLARE_SCHEMA` control these locations.

The Query Performance page in Supabase Studio accesses `pg_stat_statements` with a `public, extensions` search path.
Pigsty keeps the `pg_stat_statements` extension objects in the `monitor` schema for compatibility with `pg_exporter` and existing monitoring dashboards. The template creates a compatibility view and functions in the `extensions` schema for Studio.

Envoy is the default gateway, under the Compose service name `api-gw`. Kong `3.9.3` remains available as a transition option. To enable Kong, run this combination from the application directory:

```bash
docker compose -f docker-compose.yml -f docker-compose.kong.yml up -d
```

Both gateways use `API_GW_HTTP_PORT` for their HTTP port, defaulting to `8000`. Only the Kong configuration also exposes `KONG_HTTPS_PORT` (default `8443`).

For one server or cloud-hosted servers, Pigsty recommends external S3 instead of local Silo for PostgreSQL backups and Supabase Storage. This supports recovery on an hour scale after single-node failure. Actual RPO depends on the latest recoverable backup, WAL archives, and object-storage availability. The topology does not guarantee a fixed RPO.

For production, Pigsty recommends at least 3-4 nodes with multi-node high availability for Silo and PostgreSQL. This requires more nodes and disks. Update `pigsty.yml` and Supabase configuration to use high-availability endpoints.

Some Supabase features require sending emails, so SMTP service is needed. Unless purely for internal use, production deployments should use SMTP cloud services. Self-hosted mail servers' emails are often marked as spam.

If your service is directly exposed to the public internet, we strongly recommend using real domain names and HTTPS certificates via [Nginx Portal](/docs/infra/admin/portal).

Next, we'll discuss advanced topics for improving Supabase security, availability, and performance beyond single-node deployment.


------

## Upgrading Existing Deployments

Back up PostgreSQL, object storage, and application volumes, and review local customizations before upgrading. The old gateway service was named `kong`; the new service is `api-gw`. **Before replacing the old Compose files**, run `docker compose down` in the old application directory, without `-v`. This stops the old gateway and releases its ports while preserving volumes and external data. Running only `up -d` with the new files can leave the old `kong` container behind and cause port or container-name conflicts.

`files/supabase.sql` is a fresh-install baseline. **Do not replay it over an existing database.** Updating containers alone does not apply new SQL grants or remove old database settings. Version `0.8.2` removes the SQL-visible `app.settings.jwt_secret` and PostgREST's `PGRST_APP_SETTINGS_JWT_SECRET`. Application-level JWT verification settings and `app.settings.jwt_exp` remain in place.

First review custom SQL functions that depend on `current_setting('app.settings.jwt_secret')`. If they still need a signing key, migrate them to a restricted Vault secret as described in the [upstream migration guidance](https://github.com/supabase/supabase/pull/45003). Allow only the function owner to read it, and avoid exposing the decrypted key through a public RPC.

After handling these dependencies and backing up the database, run from the Pigsty installation root, connect to the target Supabase database as an administrator, and apply the idempotent [narrow upgrade script](https://github.com/pgsty/pigsty/blob/main/files/supabase-0.8.2.sql):

```bash
psql -X -v ON_ERROR_STOP=1 -d '<target-supabase-database>' -f files/supabase-0.8.2.sql
```

The script resets only the old database-level secret setting in the current database and grants the webhook owner `supabase_functions_admin` `USAGE` on the `extensions` schema. It preserves JWT expiration and existing data. Also remove the old parameter from the deployment inventory, update Compose, and recreate PostgREST. If you injected the same secret through `ALTER ROLE`, server settings, or session SQL, review and remove those sources separately. Existing connections may retain the old value. Reconnect and verify as an ordinary application role in a new session without printing the secret:

```sql
SELECT nullif(current_setting('app.settings.jwt_secret', true), '') IS NULL
       AS jwt_secret_removed;
SELECT has_schema_privilege('supabase_functions_admin', 'extensions', 'USAGE')
       AS webhook_extensions_usage;
```

For older deployments, also check that `supabase_storage_admin` has `CREATE` on the target database and that the upstream [2026-07-30 pg_cron privilege migration](https://github.com/supabase/postgres/blob/develop/migrations/db/migrations/20260730000000_revoke_trigger_on_cron_tables_from_postgres.sql) has been applied. See the [template upgrade notes](https://github.com/pgsty/pigsty/tree/main/app/supabase#existing-deployments) for the checks and remedies. Fresh-install and same-version container recreation tests do not replace an upgrade rehearsal for an existing application database.


------

## Advanced: Security Hardening

**Pigsty Components**

For production, changing Pigsty component passwords is strongly recommended. These defaults are public:

- [`grafana_admin_password`](/docs/infra/param/#grafana_admin_password): `pigsty`, Grafana admin password
- [`pg_admin_password`](/docs/pgsql/param/#pg_admin_password): `DBUser.DBA`, PostgreSQL superuser password
- [`pg_monitor_password`](/docs/pgsql/param/#pg_monitor_password): `DBUser.Monitor`, PostgreSQL monitoring user password
- [`pg_replication_password`](/docs/pgsql/param/#pg_replication_password): `DBUser.Replicator`, PostgreSQL replication user password
- [`patroni_password`](/docs/pgsql/param/#patroni_password): `Patroni.API`, Patroni HA component password
- [`haproxy_admin_password`](/docs/node/param/#haproxy_admin_password): `pigsty`, Load balancer admin password
- [`minio_secret_key`](/docs/minio/param/#minio_secret_key): `S3User.MinIO`, Silo root user secret
- [`etcd_root_password`](/docs/etcd/param/#etcd_root_password): `Etcd.Root`, ETCD root user password
- Additionally, strongly recommend changing the [PostgreSQL business user](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L72) password for Supabase, default is `DBUser.Supa`

These are Pigsty component passwords. Strongly recommended to set before installation.

**Supabase Keys**

Besides Pigsty component passwords, you need to [change Supabase keys](https://supabase.com/docs/guides/self-hosting/docker#securing-your-services), including:

- [`JWT_SECRET`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L143): JWT signing key, at least 32 characters
- [`ANON_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L144): Anonymous user JWT credential
- [`SERVICE_ROLE_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L145): Service role JWT credential
- [`SUPABASE_PUBLISHABLE_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L146) / [`SUPABASE_SECRET_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L147): New opaque API keys, can be left empty if not enabled
- [`JWT_KEYS`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L148) / [`JWT_JWKS`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L149): Asymmetric JWT keys and JWKS, can be left empty if not enabled
- [`ANON_KEY_ASYMMETRIC`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L150) / [`SERVICE_ROLE_KEY_ASYMMETRIC`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L151): Asymmetric signing JWTs, can be left empty if not enabled
- [`PG_META_CRYPTO_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L152): PostgreSQL Meta service encryption key, at least 32 characters
- [`SECRET_KEY_BASE`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L153): Random secret used by Realtime
- [`REALTIME_DB_ENC_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L154): Realtime database encryption key
- [`DASHBOARD_USERNAME`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L156): Supabase Studio web UI default username, default `supabase`
- [`DASHBOARD_PASSWORD`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L157): Supabase Studio web UI default password, default `pigsty`
- [`LOGFLARE_PUBLIC_ACCESS_TOKEN`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L160): Logflare public access token, at least 32 random characters
- [`LOGFLARE_PRIVATE_ACCESS_TOKEN`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L161): Logflare private access token, at least 32 random characters
- [`LOGFLARE_DB`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L162) / [`LOGFLARE_SCHEMA`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L163): Internal database and schema used by Logflare / Analytics, defaulting to `_supabase` / `_analytics`

Please follow the [Supabase tutorial: Securing your services](https://supabase.com/docs/guides/self-hosting/docker#generate-api-keys):

- Generate a `JWT_SECRET` with at least 40 characters, then use the tutorial tools to issue `ANON_KEY` and `SERVICE_ROLE_KEY` JWTs.
- Use the tutorial tools to generate an `ANON_KEY` JWT based on `JWT_SECRET` and expiration time — this is the anonymous user credential.
- Use the tutorial tools to generate a `SERVICE_ROLE_KEY` — this is the higher-privilege service role credential.
- If you use newer opaque API keys or asymmetric JWTs, also generate and fill `SUPABASE_PUBLISHABLE_KEY`, `SUPABASE_SECRET_KEY`, `JWT_KEYS`, `JWT_JWKS`, and the corresponding asymmetric `ANON_KEY` / `SERVICE_ROLE_KEY`.
- Specify a random string of at least 32 characters for `PG_META_CRYPTO_KEY` to encrypt Studio UI and meta service interactions.
- `SECRET_KEY_BASE` must be at least 64 characters; `REALTIME_DB_ENC_KEY` must be exactly 16 characters.
- Generate separate random credentials for `S3_PROTOCOL_ACCESS_KEY_ID` and `S3_PROTOCOL_ACCESS_KEY_SECRET`; do not reuse an object-storage administrator password.
- If using different PostgreSQL business user passwords, modify [`POSTGRES_PASSWORD`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L169) accordingly.
- If your object storage uses different passwords, modify [`S3_ACCESS_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L180) and [`S3_SECRET_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L181) accordingly.
- If Edge Functions are exposed to untrusted clients, set [`FUNCTIONS_VERIFY_JWT`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L194) to `true` as needed.
- [`API_EXTERNAL_URL`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L173) should now be the external Auth service URL, retaining the `/auth/v1` suffix, for example `https://supa.pigsty.io/auth/v1`; keep `SITE_URL` and `SUPABASE_PUBLIC_URL` at the site root URL.
- The current template defaults [`PGRST_DB_SCHEMAS`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L190) to `public,graphql_public`; the `storage` schema is used by the Storage API and is no longer exposed through PostgREST by default.

To enable asymmetric authentication, configure `JWT_KEYS`, `JWT_JWKS`, and all four opaque/asymmetric API-key variables together, then enable the corresponding Compose override. Without the override, the default remains HS256:

```bash
docker compose -f docker-compose.yml -f docker-compose.asymmetric.yml up -d
```

If you also select Kong, insert `-f docker-compose.kong.yml` before `-f docker-compose.asymmetric.yml`. Use the same override combination for subsequent starts and updates. Edge Functions receive `JWT_JWKS` through `SUPABASE_JWKS` and fall back to HS256 when it is empty. Update the worker together with the shared `volumes/functions/deno.jsonc` import map to support `@supabase/functions-js`, `@supabase/server`, and the per-request `SUPABASE_FUNCTION_SLUG`. See the [pinned source notes](https://github.com/pgsty/pigsty/blob/main/app/supabase/volumes/functions/SOURCE.md).

After changing Supabase credentials, update configuration and recreate the containers. The commands below and later startup examples without Compose overrides apply only to the default **Envoy + HS256** stack:

```bash
./app.yml -l supabase -t app_config,app_launch   # Using playbook
cd /opt/supabase; make up            # Manual execution
```

For Kong or asymmetric JWTs, first update configuration with `./app.yml -l supabase -t app_config`, then enter `/opt/supabase` and run `up -d` with the same `-f` file combination shown above to retain the gateway and JWT overrides.


------

## Advanced: Domain Configuration

If using Supabase locally or on LAN, you can directly connect to the API gateway's HTTP port 8000 via IP:Port.

An internally resolved static domain is possible. For production, a real domain and HTTPS are recommended. Use a server with a public IP and a domain that you own. Point the domain to the public IP through your cloud, DNS, or CDN provider. Local `/etc/hosts` resolution is an optional fallback.

The simple approach is to batch-replace the placeholder domain (`supa.pigsty`) with your actual domain, e.g., `supa.pigsty.io`:

```bash
sed -ie 's/supa.pigsty/supa.pigsty.io/g' ~/pigsty/pigsty.yml
```

If not configured beforehand, reload Nginx and Supabase configuration:

```bash
make cert       # Request certbot free HTTPS certificate
./app.yml -l supabase -t app_config,app_launch  # Reload Supabase configuration
```

The modified configuration should look like:

```yaml
all:
  vars:
    certbot_sign: true                # Use certbot to sign real certificates
    infra_portal:
      home: { domain: i.pigsty.io }   # Replace with your domain!
      supa:
        domain: supa.pigsty.io        # Replace with your domain!
        endpoint: "10.10.10.10:8000"
        websocket: true
        certbot: supa.pigsty.io       # Certificate name, usually same as domain

  children:
    supabase:
      vars:
        apps:
          supabase:                                         # Supabase app definition
            conf:                                           # Override /opt/supabase/.env
              SITE_URL: https://supa.pigsty.io              # <------- Change to your external domain name
              API_EXTERNAL_URL: https://supa.pigsty.io/auth/v1 # <--- Auth external URL; keep /auth/v1
              SUPABASE_PUBLIC_URL: https://supa.pigsty.io   # <------- Don't forget to set this in infra_portal!
```

For complete domain/HTTPS configuration, see [Certificate Management](/docs/infra/admin/cert). You can also use Pigsty's built-in local static resolution and self-signed HTTPS certificates as fallback.




------

## Advanced: External Object Storage

You can use S3 or S3-compatible services for PostgreSQL backups and Supabase object storage. Here we use Alibaba Cloud OSS as an example.

> Pigsty provides a [`terraform/spec/aliyun-s3.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-s3.tf) template for provisioning a server and OSS bucket on Alibaba Cloud.

First, modify the S3 configuration in `all.children.supabase.vars.apps.supabase.conf` to point to Alibaba Cloud OSS:

```yaml
# if using s3/minio as file storage
S3_BUCKET: pigsty-supa                     # Legacy compatibility; keep aligned with GLOBAL_S3_BUCKET
GLOBAL_S3_BUCKET: pigsty-supa              # Bucket actually used by Supabase Storage
S3_ENDPOINT: https://oss-cn-beijing.aliyuncs.com
S3_ACCESS_KEY: <your_access_key>
S3_SECRET_KEY: <your_secret_key>
S3_FORCE_PATH_STYLE: false                 # Alibaba Cloud OSS uses host-style URIs
S3_PROTOCOL: https
S3_REGION: oss-cn-beijing                  # Legacy compatibility; keep aligned with REGION
REGION: oss-cn-beijing                     # Region actually used by Supabase Storage
STORAGE_TENANT_ID: pigsty                  # Supabase Storage tenant id
S3_PROTOCOL_ACCESS_KEY_ID: <independent_access_key>
S3_PROTOCOL_ACCESS_KEY_SECRET: <independent_secret_key>
```

Reload Supabase configuration:

```bash
./app.yml -l supabase -t app_config,app_launch
```

You can also use S3 as PostgreSQL backup repository. Add an `aliyun` backup repository definition in `all.vars.pgbackrest_repo`:

```yaml
all:
  vars:
    pgbackrest_method: aliyun          # pgbackrest backup method: local,minio,[user-defined repos...]
    pgbackrest_repo:                   # pgbackrest backup repo: https://pgbackrest.org/configuration.html#section-repository
      aliyun:                          # Define new backup repo 'aliyun'
        type: s3                       # Alibaba Cloud OSS is S3-compatible
        s3_endpoint: oss-cn-beijing-internal.aliyuncs.com
        s3_region: oss-cn-beijing
        s3_bucket: pigsty-oss
        s3_key: xxxxxxxxxxxxxx
        s3_key_secret: xxxxxxxx
        s3_uri_style: host
        path: /pgbackrest
        bundle: y                         # bundle small files into a single file
        bundle_limit: 20MiB               # Limit for file bundles, 20MiB for object storage
        bundle_size: 128MiB               # Target size for file bundles, 128MiB for object storage
        cipher_type: aes-256-cbc          # enable AES encryption for remote backup repo
        cipher_pass: pgBackRest.MyPass    # Set encryption password for pgBackRest backup repo
        retention_full_type: time         # retention full backup by time on minio repo
        retention_full: 14                # keep full backup for the last 14 days
```

Select `aliyun` with `all.vars.pgbackrest_method`. Check the current backup and run check mode first. After explicit authorization, regenerate pgBackRest configuration on the named cluster, initialize the stanza, and create a new full recovery point:

```bash
pig pb info
./pgsql.yml -t pg_backup -l pg-meta
pg-backup full
```

The new repository does not automatically receive old backups. A recovery-window gap remains until its first full backup succeeds. See [Switching Repositories](/docs/pgsql/backup/repository/#switch-repositories) for the complete procedure.



------

## Advanced: Using SMTP

You can use SMTP for sending emails. Modify the supabase app configuration with SMTP information:

```yaml
all:
  children:
    supabase:        # supa group
      vars:          # supa group vars
        apps:        # supa group app list
          supabase:  # the supabase app
            conf:    # the supabase app conf entries
              SMTP_HOST: smtpdm.aliyun.com
              SMTP_PORT: 80
              SMTP_USER: no_reply@mail.your.domain.com
              SMTP_PASS: your_email_user_password
              SMTP_SENDER_NAME: MySupabase
              SMTP_ADMIN_EMAIL: adminxxx@mail.your.domain.com
              ENABLE_ANONYMOUS_USERS: false
```

Reload the configuration with `./app.yml -l supabase -t app_config,app_launch`.


------

## Advanced: True High Availability

These steps provide a single-node Supabase setup with a public domain, HTTPS, SMTP, PITR backups, monitoring, and IaC. It can use {{< param pgext_count >}} PostgreSQL extensions. See other Pigsty documentation for high availability. Hands-on Supabase self-hosting consulting is available for $400 USD.

Single-node RTO/RPO depends on external object storage for recovery. After node failure, redeploy Supabase on a new node and restore from external S3 backups. This provides an hour-scale [recovery fallback](/docs/pgsql/backup). RPO depends on actual backups and WAL archives and must be verified with restore drills. “MB-level” is not a fixed guarantee.

For RTO below 30 seconds with acknowledged transactions preserved, use [multiple nodes](/docs/deploy/install). Explicitly select the `fast` RTO preset and `crit.yml` strict-synchronous policy. Validate them with failure drills. The default `norm` preset targets RTO below 45 seconds. Asynchronous replication does not promise RPO=0:

- [ETCD](/docs/etcd/): DCS needs three or more nodes to tolerate one node failure.
- [PGSQL](/docs/pgsql/): PostgreSQL synchronous commit (no data loss) mode recommends at least three nodes.
- [INFRA](/docs/infra/): Monitoring infrastructure failure has less impact; production recommends dual replicas.
- Supabase stateless containers can also be multi-node replicas for high availability.

In this case, you also need to modify PostgreSQL and Silo endpoints to use DNS / L2 VIP / HAProxy [high availability endpoints](/docs/pgsql/service#access-service).
For these parts, follow the documentation for each Pigsty module.
Reference [`conf/ha/trio.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/trio.yml) and [`conf/ha/safe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/safe.yml) for upgrading to three or more nodes.
