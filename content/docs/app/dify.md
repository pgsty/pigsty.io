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
- [File Backup](#file-backup)

> Current Pigsty v4.0 supported Dify version: v1.8.1

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

Pigsty elegantly solves these issues for Dify, deploying all components with a single command based on configuration files and using mirrors to address China region access challenges. This makes Dify deployment and delivery very smooth. It handles PostgreSQL primary database, PGVector vector database, MinIO object storage, Redis, Prometheus monitoring, Grafana visualization, Nginx reverse proxy, and free HTTPS certificates all at once.

Pigsty ensures all Dify state is stored in externally managed services, including metadata in PostgreSQL and other data in the file system. Dify instances launched via Docker Compose become stateless applications that can be destroyed and rebuilt at any time, greatly simplifying operations.

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
./docker.yml              # Install Docker and Docker Compose
./app.yml                 # Deploy Dify stateless components with Docker
```

You can access the Dify Web admin interface at `http://<your_ip_address>:5001` on your local network.

The first login will prompt you to set up default username, email, and password.

You can also use the locally resolved placeholder domain `dify.pigsty`, or follow the configuration below to use a real domain with an HTTPS certificate.

------

## Configuration

When you use the `./configure -c app/dify` command for configuration, Pigsty automatically generates a configuration file based on the [`conf/app/dify.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/dify.yml) template and your current environment. Here's a detailed explanation of the default configuration:

{{< readfile file="/docs/conf/yaml/app/dify.yml" code="true" lang="yaml" >}}

------

## Checklist

Here's a checklist of configuration items you need to pay attention to:

- Hardware/Software: [Prepare required machine resources](/docs/deploy/prepare): Linux `x86_64/arm64` server, fresh installation of a [mainstream Linux OS](/docs/deploy/prepare)
- Network/Permissions: [SSH](/docs/deploy/prepare#ssh) passwordless login access, user with [sudo privileges without password](/docs/deploy/prepare#user)
- Ensure the machine has a static IPv4 network address on the internal network and can access the internet
- If accessing via public network, ensure you have a domain pointing to the node's **public IP address**
- Ensure you use the `app/dify` configuration template and modify parameters as needed
  - `configure -c app/dify`, enter the node's internal primary IP address, or specify via `-i <primary_ip>` command line parameter
- Have you changed all password-related configuration parameters? [Optional]
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
- Have you changed the domain used by Dify?
  - Replace placeholder domain `dify.pigsty` with your actual domain, e.g., `dify.pigsty.cc`
  - You can use `sed -ie 's/dify.pigsty/dify.pigsty.cc/g' pigsty.yml` to modify Dify's domain

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
# Request certificate, can also manually run /etc/nginx/sign-cert script
make cert

# The above Makefile shortcut actually runs the following playbook task:
./infra.yml -t nginx_certbot,nginx_reload -e certbot_sign=true
```

Run the `app.yml` playbook to redeploy Dify service for the `NGINX_SERVER_NAME` configuration to take effect:

```bash
./app.yml
```

------

## File Backup

You can use `restic` to backup Dify's file storage (default location `/data/dify`):

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

restic backup /data/dify                      # Backup /dify data directory to repository
restic snapshots                              # View backup snapshot list
restic restore -t /data/dify 0b11f778         # Restore snapshot xxxxxx to /data/dify
restic check                                  # Periodically check repository integrity
```

Another more reliable method is using JuiceFS to mount MinIO object storage to the `/data/dify` directory, allowing you to use MinIO/S3 for file state storage.

If you want to store all data in PostgreSQL, consider "storing file system data in PostgreSQL using JuiceFS".

For example, you can create another `dify_fs` database and use it as JuiceFS metadata storage:

```bash
METAURL=postgres://dify:difyai123456@:5432/dify_fs
OPTIONS=(
  --storage postgres
  --bucket :5432/dify_fs
  --access-key dify
  --secret-key difyai123456
  ${METAURL}
  jfs
)
juicefs format "${OPTIONS[@]}"         # Create PG file system
juicefs mount ${METAURL} /data/dify -d # Mount to /data/dify directory in background
juicefs bench /data/dify               # Test performance
juicefs umount /data/dify              # Unmount
```

------

## Reference

[Dify Self-Hosting FAQ](https://docs.dify.ai/learn-more/faq/install-faq)
