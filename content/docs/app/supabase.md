---
title: "Enterprise Self-Hosted Supabase"
weight: 555
description: Self-host enterprise-grade Supabase with Pigsty, featuring monitoring, high availability, PITR, IaC, and 440+ PostgreSQL extensions.
module: [SOFTWARE]
categories: [Reference]
---

Supabase is great, but having your own Supabase is even better.
Pigsty can help you deploy enterprise-grade Supabase on your own servers (physical, virtual, or cloud) with a single command — more extensions, better performance, deeper control, and more cost-effective.

> Pigsty is one of three self-hosting approaches listed on the Supabase official documentation: [Self-hosting: Third-Party Guides](https://supabase.com/docs/guides/self-hosting#third-party-guides)


--------

## TL;DR

[Prepare](/docs/deploy/prepare) a [**Linux**](/docs/deploy/prepare) server, follow the Pigsty [standard installation](/docs/setup/install) process with the `supabase` configuration template:

```bash
curl -fsSL https://repo.pigsty.cc/get | bash; cd ~/pigsty
./configure -c supabase    # Use supabase config (change credentials in pigsty.yml)
vi pigsty.yml              # Edit domain, passwords, keys...
./deploy.yml               # Install Pigsty
./docker.yml               # Install Docker Compose components
./app.yml                  # Start Supabase stateless components with Docker (may take time)
```

After installation, access Supa Studio on port `8000` with username `supabase` and password `pigsty`.

![](/img/docs/supabase-login.png)

{{< asciinema file="demo/supabase.cast" markers="0:Check,11:Install,43:Config,307:Docker,321:Domain,340:App,350:Verify" theme="solarized-light" speed="1.3" autoplay="true" loop="true" >}}




------

## Table of Contents

- [What is Supabase?](#what-is-supabase)
- [Why Self-Host?](#why-self-host)
- [Single-Node Quick Start](#single-node-quick-start)
- [Advanced: Security Hardening](#advanced-security-hardening)
- [Advanced: Domain Configuration](#advanced-domain-configuration)
- [Advanced: External Object Storage](#advanced-external-object-storage)
- [Advanced: Using SMTP](#advanced-using-smtp)
- [Advanced: True High Availability](#advanced-true-high-availability)

------

## What is Supabase?

[Supabase](https://supabase.com/) is a BaaS (Backend as a Service), an open-source Firebase alternative, and the most popular database + backend solution in the AI Agent era.
Supabase wraps PostgreSQL and provides authentication, messaging, edge functions, object storage, and automatically generates REST and GraphQL APIs based on your database schema.

Supabase aims to provide developers with a one-stop backend solution, reducing the complexity of developing and maintaining backend infrastructure.
It allows developers to skip most backend development work — **you only need to understand database design and frontend to ship quickly!**
Developers can use vibe coding to create a frontend and database schema to rapidly build complete applications.

Currently, Supabase is the most popular open-source project in the [PostgreSQL ecosystem](https://ossrank.com/cat/368-postgresql-ecosystem), with over [90,000](https://github.com/supabase/supabase/) GitHub stars.
Supabase also offers a "generous" free tier for small startups — free 500 MB storage, more than enough for storing user tables and analytics data.

------

## Why Self-Host?

If Supabase cloud is so attractive, why self-host?

The most obvious reason is what we discussed in "[Is Cloud Database an IQ Tax?](https://vonng.com/cloud/rds/)": when your data/compute scale exceeds the cloud computing sweet spot (Supabase: 4C/8G/500MB free storage), costs can explode.
And nowadays, reliable [local enterprise NVMe SSDs](https://vonng.com/cloud/bonus/) have three to four orders of magnitude cost advantage over [cloud storage](https://vonng.com/cloud/ebs/), and self-hosting can better leverage this.

Another important reason is **functionality** — Supabase cloud features are limited. Many powerful PostgreSQL extensions aren't available in cloud services due to multi-tenant security challenges and licensing.
Despite [extensions being PostgreSQL's core feature](https://vonng.com/pg/pg-eat-db-world), only **64** extensions are available on Supabase cloud.
Self-hosted Supabase with Pigsty provides up to [**440**](https://pgext.cloud/list) ready-to-use PostgreSQL extensions.

Additionally, self-control and vendor lock-in avoidance are important reasons for self-hosting. Although Supabase aims to provide a vendor-lock-free open-source Google Firebase alternative, self-hosting enterprise-grade Supabase is not trivial.
Supabase includes a series of PostgreSQL extensions they develop and maintain, and plans to replace the native PostgreSQL kernel with [**OrioleDB**](/docs/pgsql/kernel/orioledb) (which they acquired). These kernels and extensions are not available in the official PGDG repository.

This is implicit vendor lock-in, preventing users from self-hosting in ways other than the supabase/postgres Docker image. Pigsty provides an open, transparent, and universal solution.
We package all 10 missing Supabase extensions into ready-to-use RPM/DEB packages, ensuring they work on all [major Linux distributions](/docs/ref/linux):

| Extension | Description |
|---|---|
| [`pg_graphql`](https://pgext.cloud/e/pg_graphql/) | GraphQL support in PostgreSQL (Rust), provided by PIGSTY |
| [`pg_jsonschema`](https://pgext.cloud/e/pg_jsonschema/) | JSON Schema validation (Rust), provided by PIGSTY |
| [`wrappers`](https://pgext.cloud/e/wrappers/) | Supabase foreign data wrapper bundle (Rust), provided by PIGSTY |
| [`index_advisor`](https://pgext.cloud/e/index_advisor/) | Query index advisor (SQL), provided by PIGSTY |
| [`pg_net`](https://pgext.cloud/e/pg_net/) | Async non-blocking HTTP/HTTPS requests (C), provided by PIGSTY |
| [`vault`](https://pgext.cloud/e/supabase_vault/) | Store encrypted credentials in Vault (C), provided by PIGSTY |
| [`pgjwt`](https://pgext.cloud/e/pgjwt/) | JSON Web Token API implementation (SQL), provided by PIGSTY |
| [`pgsodium`](https://pgext.cloud/e/pgsodium/) | Table data encryption TDE, provided by PIGSTY |
| [`supautils`](https://pgext.cloud/e/supautils/) | Security utilities for cloud environments (C), provided by PIGSTY |
| [`pg_plan_filter`](https://pgext.cloud/e/plan_filter/) | Filter queries by execution plan cost (C), provided by PIGSTY |

We also [install](/docs/pgsql/ext/install) most extensions by default in Supabase deployments. You can [enable](/docs/pgsql/ext/create) them as needed.

Pigsty also handles the underlying [highly available](/docs/concept/ha/) [PostgreSQL](/docs/pgsql/) cluster, highly available [MinIO](/docs/minio/) object storage cluster, and even [Docker](/docs/docker/) deployment, [Nginx](/docs/infra/admin/portal) reverse proxy, [domain configuration](/docs/infra/admin/domain), and [HTTPS certificate issuance](/docs/infra/admin/cert). You can spin up any number of stateless Supabase container clusters using Docker Compose and store state in external Pigsty-managed database services.

With this self-hosted architecture, you gain the freedom to use different kernels (PG 15-18, OrioleDB), install [**437**](https://pgext.cloud/list/) extensions, scale Supabase/Postgres/MinIO, freedom from database operations, and freedom from vendor lock-in — running locally forever. Compared to cloud service costs, you only need to prepare servers and run a few commands.


------

## Single-Node Quick Start

Let's start with single-node Supabase deployment. We'll cover multi-node high availability later.

[Prepare](/docs/deploy/prepare) a fresh [Linux server](/docs/deploy/prepare), use the Pigsty [`supabase`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml) configuration template for [standard installation](/docs/setup/install),
then run [`docker.yml`](/docs/docker/playbook#dockeryml) and `app.yml` to start stateless Supabase containers (default ports `8000`/`8433`).

```bash
curl -fsSL https://repo.pigsty.cc/get | bash; cd ~/pigsty
./configure -c supabase    # Use supabase config (change credentials in pigsty.yml)
vi pigsty.yml              # Edit domain, passwords, keys...
./deploy.yml               # Install Pigsty
./docker.yml               # Install Docker Compose components
./app.yml                  # Start Supabase stateless components with Docker
```

Before deploying Supabase, modify the auto-generated `pigsty.yml` configuration file (domain and passwords) according to your needs.
For local development/testing, you can skip this and customize later.

If configured correctly, after about ten minutes, you can access the Supabase Studio GUI at `http://<your_ip_address>:8000` on your local network.
Default username and password are `supabase` and `pigsty`.

![](/img/docs/supabase-home.png)

**Notes:**

- In mainland China, Pigsty uses 1Panel and 1ms DockerHub mirrors by default, which may be slow.
- You can configure your own [proxy](/docs/docker/usage#proxy) and [registry mirror](/docs/docker/usage#registry-mirror), then manually pull images with `cd /opt/supabase; docker compose pull`. We also offer expert consulting services including complete offline installation packages.
- If you need object storage functionality, you must access Supabase via domain and HTTPS, otherwise errors will occur.
- For serious production deployments, **always** change all default passwords!




------

## Key Technical Decisions

Here are some key technical decisions for self-hosting Supabase:

**Single-node deployment** doesn't provide PostgreSQL/MinIO high availability.
However, single-node deployment still has significant advantages over the official pure Docker Compose approach: out-of-the-box monitoring, freedom to install extensions, component scaling capabilities, and point-in-time recovery as a safety net.

If you only have one server or choose to self-host on cloud servers, Pigsty recommends using external S3 instead of local MinIO for object storage to hold PostgreSQL backups and Supabase Storage.
This deployment provides a minimum safety net RTO (hour-level recovery time) / RPO (MB-level data loss) disaster recovery in single-node conditions.

For serious production deployments, Pigsty recommends at least 3-4 nodes, ensuring both MinIO and PostgreSQL use enterprise-grade multi-node high availability deployments.
You'll need more nodes and disks, adjusting cluster configuration in `pigsty.yml` and Supabase cluster configuration to use high availability endpoints.

Some Supabase features require sending emails, so SMTP service is needed. Unless purely for internal use, production deployments should use SMTP cloud services. Self-hosted mail servers' emails are often marked as spam.

If your service is directly exposed to the public internet, we strongly recommend using real domain names and HTTPS certificates via [Nginx Portal](/docs/infra/admin/portal).

Next, we'll discuss advanced topics for improving Supabase security, availability, and performance beyond single-node deployment.


------

## Advanced: Security Hardening

**Pigsty Components**

For serious production deployments, we strongly recommend changing Pigsty component passwords. These defaults are public and well-known — going to production without changing passwords is like running naked:

- [`grafana_admin_password`](/docs/infra/param/#grafana_admin_password): `pigsty`, Grafana admin password
- [`pg_admin_password`](/docs/pgsql/param/#pg_admin_password): `DBUser.DBA`, PostgreSQL superuser password
- [`pg_monitor_password`](/docs/pgsql/param/#pg_monitor_password): `DBUser.Monitor`, PostgreSQL monitoring user password
- [`pg_replication_password`](/docs/pgsql/param/#pg_replication_password): `DBUser.Replicator`, PostgreSQL replication user password
- [`patroni_password`](/docs/pgsql/param/#patroni_password): `Patroni.API`, Patroni HA component password
- [`haproxy_admin_password`](/docs/node/param/#haproxy_admin_password): `pigsty`, Load balancer admin password
- [`minio_secret_key`](/docs/minio/param/#minio_secret_key): `S3User.MinIO`, MinIO root user secret
- [`etcd_root_password`](/docs/etcd/param/#etcd_root_password): `Etcd.Root`, ETCD root user password
- Additionally, strongly recommend changing the [PostgreSQL business user](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L72) password for Supabase, default is `DBUser.Supa`

These are Pigsty component passwords. Strongly recommended to set before installation.

**Supabase Keys**

Besides Pigsty component passwords, you need to [change Supabase keys](https://supabase.com/docs/guides/self-hosting/docker#securing-your-services), including:

- [`JWT_SECRET`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#131)
- [`ANON_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L132)
- [`SERVICE_ROLE_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L133)
- [`PG_META_CRYPTO_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L134)
- [`DASHBOARD_USERNAME`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L136): Supabase Studio web UI default username, default `supabase`
- [`DASHBOARD_PASSWORD`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L137): Supabase Studio web UI default password, default `pigsty`

Please follow the [Supabase tutorial: Securing your services](https://supabase.com/docs/guides/self-hosting/docker#generate-api-keys):

- Generate a `JWT_SECRET` with at least 40 characters, then use the tutorial tools to issue `ANON_KEY` and `SERVICE_ROLE_KEY` JWTs.
- Use the tutorial tools to generate an `ANON_KEY` JWT based on `JWT_SECRET` and expiration time — this is the anonymous user credential.
- Use the tutorial tools to generate a `SERVICE_ROLE_KEY` — this is the higher-privilege service role credential.
- Specify a random string of at least 32 characters for `PG_META_CRYPTO_KEY` to encrypt Studio UI and meta service interactions.
- If using different PostgreSQL business user passwords, modify [`POSTGRES_PASSWORD`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L144) accordingly.
- If your object storage uses different passwords, modify [`S3_ACCESS_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L154) and [`S3_SECRET_KEY`](https://github.com/pgsty/pigsty/blob/main/conf/supabase.yml#L155) accordingly.

After modifying Supabase credentials, restart Docker Compose to apply:

```bash
./app.yml -t app_config,app_launch   # Using playbook
cd /opt/supabase; make up            # Manual execution
```


------

## Advanced: Domain Configuration

If using Supabase locally or on LAN, you can directly connect to Kong's HTTP port 8000 via IP:Port.

You can use an internal static-resolved domain, but for serious production deployments, we recommend using a real domain + HTTPS to access Supabase.
In this case, your server should have a public IP, you should own a domain, use cloud/DNS/CDN provider's DNS resolution to point to the node's public IP (optional fallback: local `/etc/hosts` static resolution).

The simple approach is to batch-replace the placeholder domain (`supa.pigsty`) with your actual domain, e.g., `supa.pigsty.cc`:

```bash
sed -ie 's/supa.pigsty/supa.pigsty.cc/g' ~/pigsty/pigsty.yml
```

If not configured beforehand, reload Nginx and Supabase configuration:

```bash
make cert       # Request certbot free HTTPS certificate
./app.yml       # Reload Supabase configuration
```

The modified configuration should look like:

```yaml
all:
  vars:
    certbot_sign: true                # Use certbot to sign real certificates
    infra_portal:
      home: i.pigsty.cc               # Replace with your domain!
      supa:
        domain: supa.pigsty.cc        # Replace with your domain!
        endpoint: "10.10.10.10:8000"
        websocket: true
        certbot: supa.pigsty.cc       # Certificate name, usually same as domain

  children:
    supabase:
      vars:
        apps:
          supabase:                                         # Supabase app definition
            conf:                                           # Override /opt/supabase/.env
              SITE_URL: https://supa.pigsty.cc              # <------- Change to your external domain name
              API_EXTERNAL_URL: https://supa.pigsty.cc      # <------- Otherwise the storage API may not work!
              SUPABASE_PUBLIC_URL: https://supa.pigsty.cc   # <------- Don't forget to set this in infra_portal!
```

For complete domain/HTTPS configuration, see [Certificate Management](/docs/infra/admin/cert). You can also use Pigsty's built-in local static resolution and self-signed HTTPS certificates as fallback.




------

## Advanced: External Object Storage

You can use S3 or S3-compatible services for PostgreSQL backups and Supabase object storage. Here we use Alibaba Cloud OSS as an example.

> Pigsty provides a [`terraform/spec/aliyun-s3.tf`](https://github.com/pgsty/pigsty/blob/main/terraform/spec/aliyun-s3.tf) template for provisioning a server and OSS bucket on Alibaba Cloud.

First, modify the S3 configuration in `all.children.supa.vars.apps.[supabase].conf` to point to Alibaba Cloud OSS:

```yaml
# if using s3/minio as file storage
S3_BUCKET: data                       # Replace with S3-compatible service info
S3_ENDPOINT: https://sss.pigsty:9000  # Replace with S3-compatible service info
S3_ACCESS_KEY: s3user_data            # Replace with S3-compatible service info
S3_SECRET_KEY: S3User.Data            # Replace with S3-compatible service info
S3_FORCE_PATH_STYLE: true             # Replace with S3-compatible service info
S3_REGION: stub                       # Replace with S3-compatible service info
S3_PROTOCOL: https                    # Replace with S3-compatible service info
```

Reload Supabase configuration:

```bash
./app.yml -t app_config,app_launch
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

Then specify `aliyun` backup repository in `all.vars.pgbackrest_method` and reset pgBackrest:

```bash
./pgsql.yml -t pgbackrest
```

Pigsty will switch the backup repository to external object storage. For more backup configuration, see [PostgreSQL Backup](/docs/pgsql/backup).



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
              SMTP_HOST: smtpdm.aliyun.com:80
              SMTP_PORT: 80
              SMTP_USER: no_reply@mail.your.domain.com
              SMTP_PASS: your_email_user_password
              SMTP_SENDER_NAME: MySupabase
              SMTP_ADMIN_EMAIL: adminxxx@mail.your.domain.com
              ENABLE_ANONYMOUS_USERS: false
```

Don't forget to reload configuration with `app.yml`.


------

## Advanced: True High Availability

After these configurations, you have enterprise-grade Supabase with public domain, HTTPS certificate, SMTP, PITR backup, monitoring, IaC, and 400+ extensions (basic single-node version).
For high availability configuration, see other Pigsty documentation. We offer expert consulting services for hands-on Supabase self-hosting — $400 USD to save you the hassle.

Single-node RTO/RPO relies on external object storage as a safety net. If your node fails, backups in external S3 storage let you redeploy Supabase on a new node and restore from backup.
This provides minimum safety net RTO (hour-level recovery) / RPO (MB-level data loss) [disaster recovery](/docs/pgsql/backup).

For RTO < 30s with zero data loss on failover, use [multi-node](/docs/deploy/install) high availability deployment:

- [ETCD](/docs/etcd/): DCS needs three or more nodes to tolerate one node failure.
- [PGSQL](/docs/pgsql/): PostgreSQL synchronous commit (no data loss) mode recommends at least three nodes.
- [INFRA](/docs/infra/): Monitoring infrastructure failure has less impact; production recommends dual replicas.
- Supabase stateless containers can also be multi-node replicas for high availability.

In this case, you also need to modify PostgreSQL and MinIO endpoints to use DNS / L2 VIP / HAProxy [high availability endpoints](/docs/pgsql/service#access).
For these parts, follow the documentation for each Pigsty module.
Reference [`conf/ha/trio.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/trio.yml) and [`conf/ha/safe.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/trio.yml) for upgrading to three or more nodes.
