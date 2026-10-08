---
title: 'Odoo: Self-Hosted Open Source ERP'
weight: 560
date: 2024-06-23
description: Deploy Odoo Community 19 with Pigsty-managed PostgreSQL.
module: [SOFTWARE]
categories: [Reference]
---

[Odoo](https://www.odoo.com/) is open-source ERP software with CRM, sales, inventory, and other business applications. The template stays on Odoo Community `19.0` for addon compatibility and uses PostgreSQL 18.

Odoo 19 requires PostgreSQL 13 or later and Python 3.10 or later; the official Docker image provides Python.

## Quick Start

On a fresh Linux x86_64 / ARM64 server running a compatible operating system:

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
./bootstrap                # Install Ansible
./configure -c app/odoo    # Generate the Odoo configuration
vi pigsty.yml              # Change default passwords
./deploy.yml               # Install Pigsty and PostgreSQL
./docker.yml               # Install Docker Compose
./app.yml                  # Initialize the Odoo database and start the web container
```

Port 8069 is published on all host interfaces by default. Open `http://<ip>:8069`. The initial application login is `admin` / `admin`; change the password at first login.

The template pre-creates the `odoo` database and disables the database manager. `ODOO_ADMIN_PASSWORD` is the database-management master password, separate from the application login password.

## Configuration Template

Source: [`conf/app/odoo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/odoo.yml).

```yaml
all:
  children:

    # the odoo application (default username & password: admin/admin)
    odoo:
      hosts: { 10.10.10.10: {} }
      vars:
        app: odoo   # specify app name to be installed (in the apps)
        apps:       # define all applications
          odoo:     # app name, should have corresponding ~/pigsty/app/odoo folder
            file:   # optional directory to be created
              - { path: /data/odoo         ,state: directory, owner: 100, group: 101 }
              - { path: /data/odoo/webdata ,state: directory, owner: 100, group: 101 }
              - { path: /data/odoo/addons  ,state: directory, owner: 100, group: 101 }
            conf:   # override /opt/<app>/.env config file
              PG_HOST: 10.10.10.10            # postgres host
              PG_PORT: 5432                   # postgres port
              PG_USERNAME: odoo               # postgres user
              PG_PASSWORD: DBUser.Odoo        # postgres password
              ODOO_PORT: 8069                 # published HTTP port on all host interfaces
              ODOO_PROXY_MODE: true           # trust this node's Nginx forwarded headers
              ODOO_DATA: /data/odoo/webdata    # filestore and sessions
              ODOO_ADDONS: /data/odoo/addons   # Odoo 19 addons
              ODOO_DBNAME: odoo               # odoo database name
              ODOO_ADMIN_PASSWORD: change-this-master-password # CHANGE ME: database manager master password
              ODOO_VERSION: "19.0"            # stay on Odoo 19 for addon compatibility

    # the odoo database
    pg-odoo:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-odoo
        pg_users:
          - { name: odoo    ,password: DBUser.Odoo ,pgbouncer: true ,roles: [ dbrole_admin ] ,comment: admin user for odoo service }
          - { name: odoo_ro ,password: DBUser.Odoo ,pgbouncer: true ,roles: [ dbrole_readonly ]  ,comment: read only user for odoo service  }
          - { name: odoo_rw ,password: DBUser.Odoo ,pgbouncer: true ,roles: [ dbrole_readwrite ] ,comment: read write user for odoo service }
        pg_databases:
          - { name: odoo ,owner: odoo ,revokeconn: true ,extensions: [unaccent, pg_trgm] ,comment: odoo main database }
        pg_hba_rules:
          - { user: odoo ,db: odoo ,addr: 172.16.0.0/12 ,auth: pwd ,title: 'allow odoo access from local docker networks' }
          - { user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes' }
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
      home  : { domain: i.pigsty }
      minio : { domain: m.pigsty ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }
      odoo:                           # nginx server config for odoo
        domain: odoo.pigsty           # REPLACE WITH YOUR OWN DOMAIN!
        endpoint: "10.10.10.10:8069"  # Odoo host IP and published HTTP port
        websocket: true               # HTTP and WebSocket share 8069 with the default workers=0
        certbot: odoo.pigsty          # cert name; use your real domain for public certificates

    repo_enabled: false
    node_repo_modules: node,infra,pgsql
    pg_version: 18                    # Odoo 19 requires PostgreSQL 13 or later

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
```

## Basics

The deployed configuration is in `/opt/odoo/.env`:

```bash
PG_HOST=10.10.10.10
PG_PORT=5432
PG_USERNAME=odoo
ODOO_DBNAME=odoo
PG_PASSWORD=DBUser.Odoo
ODOO_PORT=8069
ODOO_PROXY_MODE=true
ODOO_DATA=/data/odoo/webdata
ODOO_ADDONS=/data/odoo/addons
ODOO_ADMIN_PASSWORD=change-this-master-password
ODOO_VERSION=19.0
```

`ODOO_PORT` is the published host port number. Compose maps it to the fixed container port 8069 with `"${ODOO_PORT}:8069"`. `ODOO_DBNAME` selects one database; its name must not contain commas.

For manual deployment, create the PostgreSQL role, database, and extensions first, then run these commands on the Docker host. The Make helpers require Docker Compose, `jq`, and permission to set directory ownership.

```bash
cd /opt/odoo
make init  # Initialize the existing empty database
make up    # Start the web service
```

## Makefile

```bash
make            # Initialize, start the service, and print its access point
make init       # Prepare directories and initialize the existing empty database
make up         # Start or recreate the web container
make view       # Print the access point
make logs       # Follow container logs
make info       # Inspect the container
make stop       # Stop containers
make down       # Remove Compose containers and networks
make pull       # Pull the image selected by ODOO_VERSION
make restart    # Restart existing containers
make port       # Show the published port
make save       # Save the image to /tmp/docker/odoo.tgz
make load       # Load the image from /tmp/docker/odoo.tgz
```

## Using External PostgreSQL

PostgreSQL 13 or later is supported. Create a dedicated role, database, and the `unaccent` / `pg_trgm` extensions:

```yaml
pg_users: [ { name: odoo ,password: DBUser.Odoo ,roles: [ dbrole_admin ] ,comment: admin user for odoo service } ]
pg_databases: [ { name: odoo ,owner: odoo ,revokeconn: true ,extensions: [unaccent, pg_trgm] ,comment: odoo main database } ]
```

Replace `pg-meta` below with the actual database cluster name:

```bash
bin/pgsql-user  pg-meta  odoo
bin/pgsql-db    pg-meta  odoo
```

Point `PG_HOST`, `PG_PORT`, `PG_USERNAME`, and `PG_PASSWORD` in `.env` to that database, and configure HBA to allow the application. This single-database template does not require `CREATEDB` or `SUPERUSER` for the Odoo role.

Check connectivity, entering the password at the prompt:

```bash
psql -h 10.10.10.10 -p 5432 -U odoo -d odoo -W -c 'SELECT version();'
```

## Expose Odoo Service

You can also access Odoo through the Nginx [portal](/docs/infra/admin/portal/). Use `ODOO_PROXY_MODE=true` for proxy access and `false` for direct access only. Run `make up` after changing `.env`.

```yaml
infra_portal:
  odoo:
    domain: odoo.pigsty
    endpoint: "10.10.10.10:8069"
    websocket: true
    certbot: odoo.pigsty  # Use a real domain for public certificates
```

Point `domain` to the Nginx host and `endpoint` to the Odoo host and published port. Update this port if you change `ODOO_PORT`.

```bash
./infra.yml -t nginx   # Update the Nginx portal configuration
```

With the default `workers=0`, HTTP and WebSocket share port 8069. Multiple workers require separate port 8072 and `/websocket` routing; see the [Odoo 19 deployment guide](https://www.odoo.com/documentation/19.0/administration/on_premise/deploy.html).

Use HTTPS in production. Trust Pigsty's `files/pki/ca/ca.crt` on the client or configure a publicly trusted certificate.

## Odoo Addons

Use addons compatible with Odoo 19. Extract them into `/data/odoo/addons` (mounted at `/mnt/extra-addons` in the container) and install their dependencies. Set directory ownership to uid=100, gid=101.

Run `make restart` after changing addon code. Enable [Developer mode](https://www.odoo.com/documentation/19.0/applications/general/developer_mode.html), then refresh and install addons in Apps → Update Apps List. Find more addons in [Odoo Apps](https://apps.odoo.com/apps/modules/browse?order=Downloads).

## Updates and Backups

To update the Odoo 19 image, run `make pull`, then `make up`. `make restart` does not apply a new image or environment. For a fixed version, set `ODOO_VERSION` to a published dated 19.0 tag. A major-version upgrade requires database migration and compatible addons.

Use Pigsty/pgBackRest for database backups. Manage filestore and addon backups yourself with Restic or PGFS.

## Demo

Public demo (availability varies): [http://odoo.pigsty.io](http://odoo.pigsty.io/), username `test@pigsty.io`, password `pigsty`.
