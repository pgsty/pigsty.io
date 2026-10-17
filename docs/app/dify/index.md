# Dify: AI Workflow Platform

> Self-host Dify with Pigsty, external PostgreSQL, pgvector, and Redis storage.

---

LLMS index: [llms.txt](/llms.txt)

---

[**Dify**](https://dify.ai/) is an open-source platform for developing generative AI and LLM applications. It supports agent creation, AI workflows, RAG retrieval, and model management. These features help users build and operate generative AI applications.

Pigsty supports self-hosted Dify with single-command deployment. Critical state resides in externally managed PostgreSQL. You can use pgvector in the same PostgreSQL instance as the vector database to simplify deployment.

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

After Dify starts, install extensions and configure system models to begin using it.

------

## Why Self-Host

Data security is a primary reason to self-host Dify. Dify's Docker Compose template uses basic database images. It lacks enterprise features such as high availability, disaster recovery, monitoring, IaC, and PITR.

Pigsty provides declarative Dify deployment and image mirrors for access in China. The template places PostgreSQL and pgvector under Pigsty management. It deploys Compose Redis, VictoriaMetrics/Grafana monitoring, and an Nginx reverse proxy. After public DNS, ports, and Certbot are configured, it can request a Let's Encrypt certificate. Files use `DIFY_DATA` (`/data/dify`) by default, with optional Silo/S3 object storage.

The template places PostgreSQL/pgvector in an externally managed Pigsty database. API files and plugin data use `DIFY_DATA`, which defaults to `/data/dify`. Compose Redis data remains in `/opt/dify/volumes/redis/data`. Sandbox dependencies and Certbot data also use `/opt/dify/volumes/`. The Agent local sandbox also stores `/home/dify` and `/workspace` in separate named volumes. Backups must include these volumes as well as the database and host directories.

------

## Installation

Start with a single-node Dify deployment. Production high-availability deployment is covered later.

First, use Pigsty's [standard installation process](/docs/setup/install) to install the PostgreSQL instance required by Dify:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap               # Prepare Pigsty dependencies
./configure -c app/dify   # Use Dify application template
vi pigsty.yml             # Edit configuration file, modify domains and passwords
./deploy.yml              # Install Pigsty and various databases
```

The `./configure -c app/dify` command generates configuration from [`conf/app/dify.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/dify.yml) and your current environment. Edit passwords, domains, and other required settings in `pigsty.yml`. Then run `./deploy.yml` to perform the standard installation.

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

```yaml
---
#==============================================================#
# File      :   dify.yml
# Desc      :   pigsty config for running 1-node dify app
# Ctime     :   2025-02-24
# Mtime     :   2026-08-27
# Docs      :   https://pigsty.io/docs/app/dify
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#
# Last Verified Dify Version: v1.17.0 on 2026-08-27 (Pigsty PG18, arm64)
# tutorial: https://pigsty.io/docs/app/dify
# how to use this template:
#
#  curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
# ./bootstrap               # prepare local repo & ansible
# ./configure -c app/dify   # use this dify config template
# vi pigsty.yml             # IMPORTANT: CHANGE CREDENTIALS!!
# ./deploy.yml              # install pigsty & pgsql
# ./docker.yml              # install docker & docker-compose
# ./app.yml                 # install dify with docker-compose
#
# To replace domain name:
#   sed -ie 's/dify.pigsty/dify.pigsty.cc/g' pigsty.yml


all:
  children:

    # the dify application
    dify:
      hosts: { 10.10.10.10: {} }
      vars:
        app: dify   # specify app name to be installed (in the apps)
        apps:       # define all applications
          dify:     # app name, should have corresponding ~/pigsty/app/dify folder
            file:   # data directory to be created
              - { path: /data/dify ,state: directory ,mode: 0755 }
            conf:   # override /opt/dify/.env config file

              # change domain, mirror, proxy, secret key
              NGINX_SERVER_NAME: dify.pigsty
              # A secret key for signing and encryption, gen with `openssl rand -base64 42` (CHANGE PASSWORD!)
              SECRET_KEY: sk-somerandomkey
              # Dify Agent secrets (CHANGE ALL THREE; generate independent random values)
              DIFY_AGENT_API_TOKEN: change-this-agent-api-token
              # Valid 32-byte development key encoded as base64url; CHANGE ME.
              DIFY_AGENT_SERVER_SECRET_KEY: MDEyMzQ1Njc4OWFiY2RlZjAxMjM0NTY3ODlhYmNkZWY
              DIFY_AGENT_LOCAL_SANDBOX_AUTH_TOKEN: change-this-local-sandbox-auth-token
              # expose DIFY nginx service with port 5001 by default
              DIFY_PORT: 5001
              # where to store dify files? the default is ./volume, we'll use another volume created above
              DIFY_DATA: /data/dify
              # enable the upstream websocket sidecar, while keeping PostgreSQL/pgvector external
              COMPOSE_PROFILES: collaboration
              NEXT_PUBLIC_SOCKET_URL: ws://dify.pigsty
              TRIGGER_URL: http://dify.pigsty
              ENDPOINT_URL_TEMPLATE: http://dify.pigsty/e/{hook_id}

              # proxy and mirror settings
              #PIP_MIRROR_URL: https://pypi.tuna.tsinghua.edu.cn/simple
              #SANDBOX_HTTP_PROXY: http://10.10.10.10:12345
              #SANDBOX_HTTPS_PROXY: http://10.10.10.10:12345

              # database credentials
              DB_TYPE: postgresql
              DB_USERNAME: dify
              DB_PASSWORD: difyai123456
              DB_HOST: 10.10.10.10
              DB_PORT: 5432
              DB_DATABASE: dify
              DB_SSL_MODE: disable
              VECTOR_STORE: pgvector
              PGVECTOR_HOST: 10.10.10.10
              PGVECTOR_PORT: 5432
              PGVECTOR_USER: dify
              PGVECTOR_PASSWORD: difyai123456
              PGVECTOR_DATABASE: dify
              PGVECTOR_MIN_CONNECTION: 2
              PGVECTOR_MAX_CONNECTION: 10

              # optional Silo/S3 storage, disabled by default to avoid touching the backup repository
              #STORAGE_TYPE: s3
              #S3_ENDPOINT: http://10.10.10.10:9000
              #S3_BUCKET_NAME: dify
              #S3_ACCESS_KEY: dify
              #S3_SECRET_KEY: S3User.Dify
              #S3_REGION: us-east-1
              #S3_ADDRESS_STYLE: path

    pg-meta:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-meta
        pg_extensions: [ pgvector ]
        pg_users:
          - { name: dify ,password: difyai123456 ,pgbouncer: true ,roles: [ dbrole_admin ] ,superuser: true ,comment: dify superuser }
        pg_databases:
          - { name: dify        ,owner: dify ,extensions: [ { name: vector } ] ,comment: dify main database  }
          - { name: dify_plugin ,owner: dify ,comment: dify plugin daemon database }
        pg_hba_rules:
          - { user: dify ,db: all ,addr: 172.16.0.0/12  ,auth: pwd ,title: 'allow dify access from local docker networks' }
        pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ] # make a full backup every 1am

    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }
    etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1 } }, vars: { etcd_cluster: etcd } }
    #minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }

  vars:                               # global variables
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default|china|europe
    node_tune: oltp                   # node tuning specs: oltp,olap,tiny,crit
    pg_conf: oltp.yml                 # pgsql tuning specs: {oltp,olap,tiny,crit}.yml

    docker_enabled: true              # enable docker on app group
    #docker_registry_mirrors: ["https://docker.1panel.live","https://docker.1ms.run","https://docker.xuanyuan.me","https://registry-1.docker.io"]

    proxy_env:                        # global proxy env when downloading packages & pull docker images
      no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.*,*.tsinghua.edu.cn"
      #http_proxy:  127.0.0.1:12345 # add your proxy env here for downloading packages or pull images
      #https_proxy: 127.0.0.1:12345 # usually the proxy is format as http://user:pass@proxy.xxx.com
      #all_proxy:   127.0.0.1:12345

    infra_portal:                     # domain names and upstream servers
      home   :  { domain: i.pigsty }
      #minio :  { domain: m.pigsty    ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }
      dify:                            # nginx server config for dify
        domain: dify.pigsty            # REPLACE WITH YOUR OWN DOMAIN!
        endpoint: "10.10.10.10:5001"   # dify service endpoint: IP:PORT
        websocket: true                # add websocket support
        certbot: dify.pigsty           # certbot cert name, apply with `make cert`

    repo_enabled: false
    node_repo_modules: node,infra,pgsql
    # Dify v1.16+ natively handles PostgreSQL 18's built-in uuidv7().
    pg_version: 18

    #----------------------------------------------#
    # PASSWORD : https://pigsty.io/docs/setup/security/
    #----------------------------------------------#
    grafana_admin_password: pigsty
    grafana_view_password: DBUser.Viewer
    pg_admin_password: DBUser.DBA
    pg_monitor_password: DBUser.Monitor
    pg_replication_password: DBUser.Replicator
    patroni_password: Patroni.API
    haproxy_admin_password: pigsty
    minio_secret_key: S3User.MinIO
    etcd_root_password: Etcd.Root
...
```

------

## Checklist

Check these configuration items:

- Hardware/Software: [Prepare required machine resources](/docs/deploy/prepare): Linux `x86_64/arm64` server, fresh installation of a [mainstream Linux OS](/docs/deploy/prepare)
- Network/Permissions: [SSH](/docs/deploy/admin/#ssh) passwordless login access, user with [sudo privileges without password](/docs/deploy/admin/#user)
- Ensure the machine has a static IPv4 network address on the internal network and can access the internet
- If accessing via public network, ensure you have a domain pointing to the node's **public IP address**
- Ensure you use the `app/dify` configuration template and modify parameters as needed
  - `configure -c app/dify`, enter the node's internal primary IP address, or specify via `-i <primary_ip>` command line parameter
- In production, change every example password, application secret, and database credential. [Required]
  - [`grafana_admin_password`](/docs/infra/param/#grafana_admin_password): `pigsty`, Grafana admin password
  - [`pg_admin_password`](/docs/pgsql/param/#pg_admin_password): `DBUser.DBA`, PG superuser password
  - [`pg_monitor_password`](/docs/pgsql/param/#pg_monitor_password): `DBUser.Monitor`, PG monitoring user password
  - [`pg_replication_password`](/docs/pgsql/param/#pg_replication_password): `DBUser.Replicator`, PG replication user password
  - [`patroni_password`](/docs/pgsql/param/#patroni_password): `Patroni.API`, Patroni HA component password
  - [`haproxy_admin_password`](/docs/node/param/#haproxy_admin_password): `pigsty`, Load balancer admin password
- Change the PostgreSQL business user password and the application settings that use it.
  - Default username `dify` and password `difyai123456` are generated by Pigsty for Dify; modify according to your needs
  - In the Dify configuration block, modify `DB_USERNAME`, `DB_PASSWORD`, `PGVECTOR_USER`, `PGVECTOR_PASSWORD` accordingly
- Change Dify's default encryption key.
  - You can randomly generate a password string with `openssl rand -base64 42` and fill in the `SECRET_KEY` parameter
  - Also replace the three Agent development secrets: `DIFY_AGENT_API_TOKEN`, `DIFY_AGENT_SERVER_SECRET_KEY`, and `DIFY_AGENT_LOCAL_SANDBOX_AUTH_TOKEN`. Generate independent random values; use the format produced by `secrets.token_urlsafe(32)` for the server secret.
- Change the domain used by Dify.
  - Replace placeholder domain `dify.pigsty` with your actual domain, e.g., `dify.pigsty.io`
  - You can use `sed -ie 's/dify.pigsty/dify.pigsty.io/g' pigsty.yml` to modify Dify's domain

------

## Domain and SSL

To use a real domain with HTTPS, update these settings in `pigsty.yml`:

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

Use `restic` to back up Dify file state. Include at least `/data/dify`, `/opt/dify/.env`, and `/opt/dify/volumes/`. The last directory contains Compose Redis, Sandbox dependencies, and any Certbot data. Back up PostgreSQL separately with Pigsty/pgBackRest. Also back up the `dify_agent_local_sandbox_home` and `dify_agent_local_sandbox_workspace` named volumes, whose actual names include the Compose project prefix. The Restic commands below do not include these two volumes.

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

To store JuiceFS metadata and file data in PostgreSQL, declare a dedicated database and least-privilege user in `pg_databases`. Then declare the instance on the Dify node. The example passwords are placeholders. Do not use them in production.

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

Database creation, initial filesystem formatting, and mounting change the target environment. Confirm the backup, database name, and host group before execution. Start Dify only after the mount is ready. See [JUICE configuration](/docs/juice/config/) and its [PITR consistency boundary](/docs/juice/admin/#pitr-recovery). Before mounting over a nonempty `/data/dify`, stop Dify and plan migration of existing files.

------

## Reference

[Dify Self-Hosting FAQ](https://docs.dify.ai/learn-more/faq/install-faq)
