# pg19

> Single-node PostgreSQL 19 Beta evaluation template with the PGDG Beta repository and default backup capabilities

---

LLMS index: [llms.txt](/llms.txt)

---

`pg19` is the single-node PostgreSQL 19 Beta evaluation template. It follows the `meta` topology, enables the `beta` repository, and limits the local repository's additional cache to core PGSQL packages without preinstalling extensions.


--------

## Overview

- Config Name: `pg19`
- Node Count: Single node
- PostgreSQL Version: `19` Beta
- Use Cases: New-version evaluation and compatibility testing
- Related: [`meta`](/docs/conf/meta/), [`pgsql`](/docs/conf/pgsql/)

Usage:

```bash
./configure -c pg19 [-i <primary_ip>]
```


--------

## Content

Source: [`pigsty/conf/pg19.yml`](https://github.com/pgsty/pigsty/blob/main/conf/pg19.yml)

```yaml
---
#==============================================================#
# File      :   pg19.yml
# Desc      :   Pigsty 1-node PostgreSQL 19 beta config
# Ctime     :   2026-06-11
# Mtime     :   2026-06-11
# Docs      :   https://pigsty.io/docs/conf/pg19
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# This is the PostgreSQL 19 beta variant of meta.yml.
# It enables the PGDG beta repository and installs a minimal PG19 runtime.
#
# Usage:
#   curl https://repo.pigsty.io/get | bash
#   ./configure -c pg19
#   ./deploy.yml

all:

  #==============================================================#
  # Clusters, Nodes, and Modules
  #==============================================================#
  children:

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql
    #----------------------------------------------#
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
        #x.xx.xx.xx: { pg_seq: 2, pg_role: replica }
        #x.xx.xx.xy: { pg_seq: 3, pg_role: offline }
      vars:
        pg_cluster: pg-meta

        # PG19 is beta; extension packages are intentionally not installed here.
        pg_extensions: []

        # define business users/roles : https://pigsty.io/docs/pgsql/config/user
        pg_users:
          - { name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin   ] ,comment: pigsty admin user }
          - { name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer  }

        # define business databases : https://pigsty.io/docs/pgsql/config/db
        pg_databases:
          - { name: meta, baseline: cmdb.sql, comment: "pigsty meta database", schemas: [pigsty] }

        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }

        pg_crontab:     # make a full backup every day at 1am
          - '00 01 * * * /pg/bin/pg-backup full'

        # define (OPTIONAL) L2 VIP that bind to primary
        #pg_vip_enabled: true
        #pg_vip_address: 10.10.10.2/24


    #----------------------------------------------#
    # INFRA : https://pigsty.io/docs/infra
    #----------------------------------------------#
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }
      vars:
        repo_enabled: false   # disable local repo in 1-node mode
        #repo_extra_packages: [ pgsql-core ]  # if local repo is enabled, mirror PG19 beta core packages

    #----------------------------------------------#
    # ETCD : https://pigsty.io/docs/etcd
    #----------------------------------------------#
    etcd:
      hosts:
        10.10.10.10: { etcd_seq: 1 }
      vars:
        etcd_cluster: etcd
        etcd_safeguard: false

    #----------------------------------------------#
    # MINIO : https://pigsty.io/docs/minio
    #----------------------------------------------#
    #minio:
    #  hosts:
    #    10.10.10.10: { minio_seq: 1 }
    #  vars:
    #    minio_cluster: minio
    #    minio_users:
    #      - { access_key: pgbackrest  ,secret_key: S3User.Backup ,policy: pgsql }
    #      - { access_key: s3user_meta ,secret_key: S3User.Meta   ,policy: meta  }
    #      - { access_key: s3user_data ,secret_key: S3User.Data   ,policy: data  }

    #----------------------------------------------#
    # DOCKER : https://pigsty.io/docs/docker
    # APP    : https://pigsty.io/docs/app
    #----------------------------------------------#
    app:
      hosts: { 10.10.10.10: {} }
      vars:
        docker_enabled: true
        #docker_registry_mirrors: ["https://docker.1panel.live","https://docker.1ms.run","https://docker.xuanyuan.me","https://registry-1.docker.io"]
        app: pgadmin
        apps:
          pgadmin:
            conf:
              PGADMIN_DEFAULT_EMAIL: admin@pigsty.cc
              PGADMIN_DEFAULT_PASSWORD: pigsty


  #==============================================================#
  # Global Parameters
  #==============================================================#
  vars:

    #----------------------------------------------#
    # INFRA : https://pigsty.io/docs/infra
    #----------------------------------------------#
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default|china|europe
    proxy_env:
      no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.*,*.myqcloud.com,*.tsinghua.edu.cn"
      # http_proxy:  # set your proxy here: e.g http://user:pass@proxy.xxx.com
      # https_proxy: # set your proxy here: e.g http://user:pass@proxy.xxx.com
      # all_proxy:   # set your proxy here: e.g http://user:pass@proxy.xxx.com
    infra_portal:
      home : { domain: i.pigsty }
      pgadmin : { domain: adm.pigsty ,endpoint: "${admin_ip}:8885" }
      #minio  : { domain: m.pigsty ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }

    #----------------------------------------------#
    # NODE : https://pigsty.io/docs/node/param
    #----------------------------------------------#
    nodename_overwrite: false             # do not overwrite node hostname on single node mode
    node_tune: oltp                       # node tuning specs: oltp,olap,tiny,crit
    node_etc_hosts: [ '${admin_ip} i.pigsty sss.pigsty' ]
    node_repo_modules: 'node,infra,pgsql,beta' # PG19 beta packages come from PGDG testing repo
    #node_repo_modules: local             # use this if you want to build & use local repo
    node_repo_remove: true                # remove existing node repo for node managed by pigsty
    node_firewall_public_port: [22, 80, 443, 5432]

    #----------------------------------------------#
    # PGSQL : https://pigsty.io/docs/pgsql/param
    #----------------------------------------------#
    pg_version: 19                      # PostgreSQL 19 beta
    pg_conf: oltp.yml                   # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    pg_safeguard: false                 # prevent purging running postgres instance?
    pg_extensions: []                   # do not install extension packages during PG19 beta trial
    repo_modules: node,infra,pgsql,beta # add PGDG testing repo when building a local repo
    repo_extra_packages: [ pgsql-core ] # only mirror PG19 beta core packages

    #----------------------------------------------#
    # BACKUP : https://pigsty.io/docs/pgsql/backup
    #----------------------------------------------#
    pgbackrest_enabled: true            # pgBackRest 2.59 supports PostgreSQL 19 beta2
    pgbackrest_exporter_enabled: true   # expose pgBackRest metrics to the monitoring system
    #pgbackrest_method: minio
    #pgbackrest_repo:
    #  minio:
    #    type: s3
    #    s3_endpoint: sss.pigsty
    #    s3_region: us-east-1
    #    s3_bucket: pgsql
    #    s3_key: pgbackrest
    #    s3_key_secret: S3User.Backup
    #    s3_uri_style: path
    #    path: /pgbackrest
    #    storage_port: 9000
    #    storage_ca_file: /etc/pki/ca.crt
    #    bundle: y
    #    bundle_limit: 20MiB
    #    bundle_size: 128MiB
    #    cipher_type: aes-256-cbc
    #    cipher_pass: pgBackRest
    #    retention_full_type: time
    #    retention_full: 14

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

Important defaults and limitations:

- `node_repo_modules: node,infra,pgsql,beta` obtains PG19 packages from the PGDG Beta repository
- `repo_extra_packages: [pgsql-core]` limits the local repository's additional cache to core PGSQL packages; instances still use the role's default `pgsql-main pgsql-common` installation set
- `pg_extensions: []` installs no extension packages
- `pgbackrest_enabled: true` and `pgbackrest_exporter_enabled: true`; `pg-meta` retains its daily 01:00 full-backup job
- INFRA, ETCD, PGSQL, and optional pgAdmin remain available for a single-node evaluation

This is a Beta evaluation configuration, not a production template. Do not treat `-v 19` on an ordinary template as a production-ready PG19 deployment; validate extension compatibility, backup and recovery, and upgrade procedures separately.
