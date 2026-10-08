---
title: 'Dify: AI Workflow Platform'
weight: 565
date: 2024-06-23
description: How to self-host the AI Workflow LLMOps platform — Dify, using external PostgreSQL, PGVector, and Redis for storage with Pigsty?
module: [SOFTWARE]
categories: [Reference]
---

[**Dify**](https://dify.ai/) is a Generative AI Application Innovation Engine and open-source LLM application development platform. It provides capabilities from Agent building to AI workflow orchestration, RAG retrieval, and model management, helping users easily build and operate generative AI native applications.

Pigsty provides support for self-hosted Dify, allowing you to deploy Dify with a single command while storing critical state in externally managed PostgreSQL. You can use pgvector as a vector database in the same PostgreSQL instance, further simplifying deployment.

- [Quick Start](#quick-start)
- [Why Self-Host](#why-self-host)
- [Installation](#installation)
- [Configuration](#configuration)
- [Checklist](#checklist)
- [Domain and SSL](#domain-and-ssl)
- [Upgrading](#upgrading)
- [File Backup](#file-backup)

> The template uses Dify `v1.17.1` with plugin daemon `v0.6.10-local` and sandbox `v0.2.15`. Validation on 2026-10-08 covered login, an existing Code workflow, and service connections on Linux amd64 with PostgreSQL 18.6. Dify v1.16 and later handle PostgreSQL 18's built-in `uuidv7()` without a local migration patch.

------

## Quick Start

On a fresh Linux x86/ARM server running a [**compatible operating system**](/docs/deploy/prepare):

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap                # Install Pigsty dependencies
./configure -c app/dify    # Use Dify configuration template
vi pigsty.yml              # Edit passwords, domains, keys, etc.

./deploy.yml               # Install Pigsty
./docker.yml               # Install Docker and Compose
./app.yml                  # Install Dify
```

Dify listens on port `5001` by default. Access `http://<ip>:5001` in your browser and set up your initial user credentials to log in.

Once Dify starts, you can install various extensions, configure system models, and start using it!

------

## Why Self-Host

There are many reasons to self-host Dify, but the primary motivation is data security. The Docker Compose template provided by Dify uses basic default database images, lacking enterprise features like high availability, disaster recovery, monitoring, IaC, and PITR capabilities.

Pigsty provides declarative Dify deployment and can use mirrors to address image access in China. The template puts PostgreSQL and pgvector under Pigsty management and deploys Compose Redis, VictoriaMetrics/Grafana monitoring, and an Nginx reverse proxy. It can request a Let's Encrypt certificate after public DNS, ports, and Certbot are configured. Files are stored in `DIFY_DATA` (`/data/dify`) by default, with optional Silo/S3 object storage.

The current template places PostgreSQL/pgvector in an externally managed Pigsty database and directs API files and plugin data to `DIFY_DATA` (`/data/dify` by default). However, the built-in Compose Redis data remains under `/opt/dify/volumes/redis/data`, while Sandbox dependencies and Certbot data are also stored under `/opt/dify/volumes/`. The Agent local sandbox also stores `/home/dify` and `/workspace` in separate named volumes. Backups must include these volumes as well as the database and host directories.

------

## Installation

Let's start with single-node Dify deployment. We'll cover production high-availability deployment methods later.

First, use Pigsty's [standard installation process](/docs/setup/install) to install the PostgreSQL instance required by Dify:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap               # Prepare Pigsty dependencies
./configure -c app/dify   # Use Dify application template
vi pigsty.yml             # Edit configuration file, modify domains and passwords
./deploy.yml              # Install Pigsty and various databases
```

When you use the `./configure -c app/dify` command, Pigsty automatically generates a configuration file based on the [`conf/app/dify.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/dify.yml) template and your current environment.
You should modify passwords, domains, and other relevant parameters in the generated `pigsty.yml` configuration file according to your needs, then run `./deploy.yml` to execute the standard installation process.

Next, run [`docker.yml`](https://github.com/pgsty/pigsty/blob/main/docker.yml) to install Docker and Docker Compose, then use [`app.yml`](https://github.com/pgsty/pigsty/blob/main/app.yml) to complete Dify deployment:

```bash
./docker.yml -l dify      # Install Docker and Docker Compose on Dify nodes
./app.yml -l dify         # Deploy Dify application components with Docker
```

You can access the Dify Web admin interface at `http://<your_ip_address>:5001` on your local network.

The first login will prompt you to set up default username, email, and password.

You can also use the locally resolved placeholder domain `dify.pigsty`, or follow the configuration below to use a real domain with an HTTPS certificate.

------

## Configuration

When you run `./configure -c app/dify`, Pigsty generates a configuration file from the [`conf/app/dify.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/dify.yml) template and the current environment. The snapshot below matches the v4.5.0 source template:

{{< include file="/docs/conf/yaml/app/dify.yml" code=true lang="yaml" >}}

------

## Checklist

Here's a checklist of configuration items you need to pay attention to:

- Hardware/Software: [Prepare required machine resources](/docs/deploy/prepare): Linux `x86_64/arm64` server, fresh installation of a [mainstream Linux OS](/docs/deploy/prepare)
- Network/Permissions: [SSH](/docs/deploy/prepare#ssh) passwordless login access, user with [sudo privileges without password](/docs/deploy/prepare#user)
- Ensure the machine has a static IPv4 network address on the internal network and can access the internet
- If accessing via public network, ensure you have a domain pointing to the node's **public IP address**
- Ensure you use the `app/dify` configuration template and modify parameters as needed
  - `configure -c app/dify`, enter the node's internal primary IP address, or specify via `-i <primary_ip>` command line parameter
- In production, have you changed every example password, application secret, and database credential? [Required]
  - [`grafana_admin_password`](/docs/infra/param/#grafana_admin_password): `pigsty`, Grafana admin password
  - [`pg_admin_password`](/docs/pgsql/param/#pg_admin_password): `DBUser.DBA`, PG superuser password
  - [`pg_monitor_password`](/docs/pgsql/param/#pg_monitor_password): `DBUser.Monitor`, PG monitoring user password
  - [`pg_replication_password`](/docs/pgsql/param/#pg_replication_password): `DBUser.Replicator`, PG replication user password
  - [`patroni_password`](/docs/pgsql/param/#patroni_password): `Patroni.API`, Patroni HA component password
  - [`haproxy_admin_password`](/docs/node/param/#haproxy_admin_password): `pigsty`, Load balancer admin password
- Have you changed the PostgreSQL cluster business user password and application configurations using these passwords?
  - Default username `dify` and password `difyai123456` are generated by Pigsty for Dify; modify according to your needs
  - In the Dify configuration block, modify `DB_USERNAME`, `DB_PASSWORD`, `PGVECTOR_USER`, `PGVECTOR_PASSWORD` accordingly
- Have you changed Dify's default encryption key?
  - You can randomly generate a password string with `openssl rand -base64 42` and fill in the `SECRET_KEY` parameter
  - Also replace the three Agent development secrets: `DIFY_AGENT_API_TOKEN`, `DIFY_AGENT_SERVER_SECRET_KEY`, and `DIFY_AGENT_LOCAL_SANDBOX_AUTH_TOKEN`. Generate independent random values; use the format produced by `secrets.token_urlsafe(32)` for the server secret.
- Have you changed the domain used by Dify?
  - Replace placeholder domain `dify.pigsty` with your actual domain, e.g., `dify.pigsty.io`
  - You can use `sed -ie 's/dify.pigsty/dify.pigsty.io/g' pigsty.yml` to modify Dify's domain

------

## Domain and SSL

If you want to use a real domain with an HTTPS certificate, you need to modify the `pigsty.yml` configuration file:

- The `dify` domain in the [`infra_portal`](/docs/infra/param/#infra_portal) parameter
- It's best to specify an email address [`certbot_email`](/docs/infra/param/#certbot_email) for certificate expiration notifications
- Configure Dify's `NGINX_SERVER_NAME` parameter to specify your actual domain

```yaml
all:
  children:                            # Cluster definitions
    dify:                              # Dify group
      vars:                            # Dify group variables
        apps:                          # Application configuration
          dify:                        # Dify application definition
            conf:                      # Dify application configuration
              NGINX_SERVER_NAME: dify.pigsty

  vars:                                # Global parameters
    #certbot_sign: true                # Use Certbot for free HTTPS certificate
    certbot_email: your@email.com      # Email for certificate requests, for expiration notifications, optional
    infra_portal:                      # Configure Nginx servers
      dify:                            # Dify server definition
        domain: dify.pigsty            # Replace with your own domain here!
        endpoint: "10.10.10.10:5001"   # Specify Dify's IP and port here (auto-configured by default)
        websocket: true                # Dify requires websocket enabled
        certbot: dify.pigsty           # Specify Certbot certificate name
```

Use the following commands to request Nginx certificates:

```bash
# Request and load the certificate on the explicitly limited infra group
./infra.yml -l infra -t nginx_certbot,nginx_reload -e certbot_sign=true
```

Run the `app.yml` playbook to redeploy Dify service for the `NGINX_SERVER_NAME` configuration to take effect:

```bash
./app.yml -l dify -t app_config,app_launch
```

------

## Upgrading

Before upgrading, verify the PostgreSQL backup and back up the files and named volumes listed below. With `MIGRATION_ENABLED=true`, the API container runs database migrations at startup. After updating configuration, pulling the new images, and recreating the API container, confirm that it runs the new version before invoking migrations explicitly:

```bash
docker compose exec api flask db upgrade
```

Dify 1.17.1 includes the pre-1.15 legacy model type migration in this process. The separate `flask data-migrate legacy-model-types` command is no longer needed. Deployments upgrading from before 1.15 that have not completed the plugin auto-upgrade backfill must still run it once:

```bash
docker compose exec api flask backfill-plugin-auto-upgrade
```

When upgrading from 1.16, rename `EDITION` to `DEPLOYMENT_EDITION`, `DIFY_AGENT_SHELLCTL_AUTH_TOKEN` to `DIFY_AGENT_LOCAL_SANDBOX_AUTH_TOKEN`, `DIFY_AGENT_SHELLCTL_ENTRYPOINT` to `DIFY_AGENT_LOCAL_SANDBOX_ENDPOINT`, and `AGENT_BACKEND_RUN_TIMEOUT_SECONDS` to `DIFY_AGENT_RUN_TIMEOUT_SECONDS` in deployment overrides. Use `DIFY_AGENT_RUNTIME_BACKEND=local` for the bundled self-hosted sandbox.

Version 1.17.1 fixes document extraction, Human Input workflows, collaboration, and Agent behavior. Re-import CSV, Notion, and XLS documents that were previously extracted incorrectly; replacing the image does not repair indexed text. See the [1.17.1 release notes](https://github.com/langgenius/dify/releases/tag/1.17.1).

The Agent feature remains Beta and should be exposed only to trusted users. `SSRF_PROXY_ALLOW_PRIVATE_IPS` and `SSRF_PROXY_ALLOW_PRIVATE_DOMAINS` apply to both workflow and Agent proxies. Leave them empty for the default private-network deny policy. Explicitly allowlisting `api`, `agent_backend`, or a network covering their addresses also allows their other ordinary paths; use precise targets. The Agent shellctl control network still permits direct access from the local sandbox to `agent_backend`.

------

## File Backup

You can use `restic` to back up Dify's file state. The current template requires at least `/data/dify`, `/opt/dify/.env`, and `/opt/dify/volumes/`; the latter contains Compose Redis, Sandbox dependencies, and any Certbot data. Dify data in PostgreSQL should still be backed up separately with Pigsty/pgBackRest. Also back up the `dify_agent_local_sandbox_home` and `dify_agent_local_sandbox_workspace` named volumes, whose actual names include the Compose project prefix. The Restic commands below do not include these two volumes.

```bash
export RESTIC_REPOSITORY=/data/backups/dify   # Specify dify backup directory
export RESTIC_PASSWORD=some-strong-password   # Specify backup encryption password
mkdir -p ${RESTIC_REPOSITORY}                 # Create dify backup directory
restic init
```

After creating the Restic backup repository, you can backup Dify with:

```bash
export RESTIC_REPOSITORY=/data/backups/dify   # Specify dify backup directory
export RESTIC_PASSWORD=some-strong-password   # Specify backup encryption password

restic backup /data/dify /opt/dify/.env /opt/dify/volumes
restic snapshots                              # View backup snapshot list
restic restore 0b11f778 --target /tmp/dify-restore  # Restore to a temporary directory first, verify, then copy back
restic check                                  # Periodically check repository integrity
```

Another option is to place `/data/dify` on a shared filesystem managed by the [`JUICE`](/docs/juice/) module. File data can live in Silo/S3 or in a PostgreSQL `jfs_blob` table; the latter is not PostgreSQL large-object storage.

To use PostgreSQL for both JuiceFS metadata and file data, first declare a dedicated database and least-privilege user in `pg_databases`, then declare the instance on the Dify node. Passwords below are placeholders and must not be used in production:

```yaml
pg_databases:
  - { name: dify_fs, owner: dify, comment: JuiceFS metadata and data for Dify }

juice_instances:
  dify:
    path: /data/dify
    meta: postgres://dify:<password>@10.10.10.10:5432/dify_fs
    data: --storage postgres --bucket 10.10.10.10:5432/dify_fs --access-key dify --secret-key <password>
    owner: 1001
    group: 1001
    port: 9567
```

Handle database creation and JUICE deployment separately. After confirming the exact targets, run the playbooks:

```bash
./pgsql-db.yml -l pg-meta -e dbname=dify_fs
./juice.yml -l dify -e fsname=dify
```

Database creation, initial filesystem formatting, and mounting all change the target environment. Confirm the backup, database name, and host group before executing them. Start Dify only after the mount is ready; see [JUICE configuration](/docs/juice/config/) and its [PITR consistency boundary](/docs/juice/admin/#pitr-recovery). Before mounting over a nonempty `/data/dify`, stop Dify and plan migration of the existing files.

------

## Reference

[Dify Self-Hosting FAQ](https://docs.dify.ai/learn-more/faq/install-faq)
