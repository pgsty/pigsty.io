# app/odoo

> Deploy Odoo open-source ERP system using Pigsty-managed PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

The `app/odoo` template provides a reference configuration to self-host Odoo Community 19. It uses PostgreSQL managed by Pigsty.

For more details, see **[Odoo Deployment Tutorial](/docs/app/odoo)**


--------

## Overview

- Config Name: `app/odoo`
- Node Count: Single node
- Description: Deploy Odoo ERP using Pigsty-managed PostgreSQL
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c app/odoo [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/app/odoo.yml`](https://github.com/pgsty/pigsty/blob/main/conf/app/odoo.yml)

```yaml
---
#==============================================================#
# File      :   odoo.yml
# Desc      :   pigsty config for running 1-node odoo app
# Ctime     :   2025-01-11
# Mtime     :   2026-10-08
# Docs      :   https://pigsty.io/docs/app/odoo
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# tutorial: https://pigsty.io/docs/app/odoo
# how to use this template:
#
#  curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty
# ./bootstrap               # prepare local repo & ansible
# ./configure -c app/odoo   # Use this odoo config template
# vi pigsty.yml             # IMPORTANT: CHANGE CREDENTIALS!!
# ./deploy.yml              # install Pigsty, PostgreSQL, and optional Silo
# ./docker.yml              # install docker & docker-compose
# ./app.yml                 # install odoo
# Access through http://<ip>:8069 or http://odoo.pigsty after configuring DNS.
# Odoo 19 is retained for addon compatibility.

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
...
```


--------

## Explanation

This single-node template runs Odoo Community 19 in Docker and uses Pigsty-managed PostgreSQL.

**Key Features**:

- Uses the Odoo `19.0` image and PostgreSQL 18, with a dedicated role, database, and `unaccent` / `pg_trgm` extensions
- Publishes port 8069 on all host interfaces, supporting direct access and the Nginx portal
- Stores filestore data in `/data/odoo/webdata` and addons in `/data/odoo/addons`

**Access**:

```bash
http://<ip>:8069
http://odoo.pigsty
```

Point `odoo.pigsty` to the Nginx host. The initial application login is `admin` / `admin`; change the password at first login.

**Notes**:

- Change the database password and `ODOO_ADMIN_PASSWORD` before deployment; the master password is separate from the application login
- `./app.yml` initializes the existing empty database before starting the web container; the database manager is disabled
- Set `ODOO_PORT` to the published port number; update the Nginx `endpoint` port if you change it
- Use `ODOO_PROXY_MODE=true` for proxy access and `false` for direct access only; use HTTPS in production
- Set data directory ownership to uid=100, gid=101
- Manage filestore and addon backups yourself with Restic or PGFS
