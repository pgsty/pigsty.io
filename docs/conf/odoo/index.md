# app/odoo

> Deploy Odoo open-source ERP system using Pigsty-managed PostgreSQL

---

LLMS index: [llms.txt](/llms.txt)

---

The `app/odoo` configuration template provides a reference configuration for self-hosting Odoo open-source ERP system, using Pigsty-managed PostgreSQL as the database.

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
# Mtime     :   2025-12-12
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
# ./deploy.yml              # install pigsty & pgsql & minio
# ./docker.yml              # install docker & docker-compose
# ./app.yml                 # install odoo

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
              ODOO_PORT: 8069                 # odoo app port
              ODOO_DATA: /data/odoo/webdata   # odoo webdata
              ODOO_ADDONS: /data/odoo/addons  # odoo plugins
              ODOO_DBNAME: odoo               # odoo database name
              ODOO_VERSION: 19.0              # odoo image version

    # the odoo database
    pg-odoo:
      hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
      vars:
        pg_cluster: pg-odoo
        pg_users:
          - { name: odoo    ,password: DBUser.Odoo ,pgbouncer: true ,roles: [ dbrole_admin ] ,createdb: true ,comment: admin user for odoo service }
          - { name: odoo_ro ,password: DBUser.Odoo ,pgbouncer: true ,roles: [ dbrole_readonly ]  ,comment: read only user for odoo service  }
          - { name: odoo_rw ,password: DBUser.Odoo ,pgbouncer: true ,roles: [ dbrole_readwrite ] ,comment: read write user for odoo service }
        pg_databases:
          - { name: odoo ,owner: odoo ,revokeconn: true ,comment: odoo main database  }
        pg_hba_rules:
          - { user: all ,db: all ,addr: 172.17.0.0/16  ,auth: pwd ,title: 'allow access from local docker network' }
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
        endpoint: "10.10.10.10:8069"  # odoo service endpoint: IP:PORT
        websocket: true               # add websocket support
        certbot: odoo.pigsty          # certbot cert name, apply with `make cert`

    repo_enabled: false
    node_repo_modules: node,infra,pgsql
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


--------

## Explanation

The `app/odoo` template provides a one-click deployment solution for Odoo open-source ERP system.

**What is Odoo**:
- World's most popular open-source ERP system
- Covers CRM, Sales, Purchasing, Inventory, Finance, HR, and other enterprise management modules
- Supports thousands of community and official application extensions
- Provides web interface and mobile support

**Key Features**:
- Uses Pigsty-managed PostgreSQL instead of Odoo's built-in database
- Supports Odoo 19.0 latest version
- Data persisted to independent directory `/data/odoo`
- Supports custom plugin directory `/data/odoo/addons`

**Access**:

```bash
# Odoo Web interface
http://<IP>:8069
http://odoo.pigsty

# Create or set the administrator account on first access
```

**Use Cases**:
- SMB ERP systems
- Alternative to SAP, Oracle ERP and other commercial solutions
- Enterprise applications requiring customized business processes

**Notes**:
- Odoo container runs as uid=100, gid=101, data directory needs correct permissions
- First access requires creating database and setting admin password
- Production environments should enable HTTPS
- Custom modules can be installed via `/data/odoo/addons`
