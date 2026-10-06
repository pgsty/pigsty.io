# ha/trio

> Three-node standard HA configuration where PostgreSQL, ETCD, and Silo tolerate one node failure

---

LLMS index: [llms.txt](/llms.txt)

---

Three nodes is the minimum scale for majority-based high availability. The `ha/trio` template distributes INFRA, ETCD, PGSQL, and Silo across three servers. PostgreSQL, ETCD, and object storage continue serving when one server is unavailable.


--------

## Overview

- Config Name: `ha/trio`
- Node Count: Three nodes
- Description: Three-node standard HA architecture with a three-node, single-drive Silo cluster and one HA S3 endpoint
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`ha/dual`](/docs/conf/dual/), [`ha/full`](/docs/conf/full/), [`ha/safe`](/docs/conf/safe/)

Usage:

```bash
./configure -c ha/trio [-i <primary_ip>]
```

After configuration, modify placeholder IPs `10.10.10.11` and `10.10.10.12` to actual node IP addresses.


--------

## Content

Source: [`pigsty/conf/ha/trio.yml`](https://github.com/pgsty/pigsty/blob/main/conf/ha/trio.yml)

```yaml
---
#==============================================================#
# File      :   trio.yml
# Desc      :   Pigsty 3-node security enhance template
# Ctime     :   2020-05-23
# Mtime     :   2026-08-14
# Docs      :   https://pigsty.io/docs/conf/trio
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# 3 infra node, 3 etcd node, 3 pgsql node, and 3 minio nodes
all:  # top level object
  #==============================================================#
  # Clusters, Nodes, and Modules
  #==============================================================#
  children:
    #----------------------------------#
    # infra: monitor, alert, repo, etc..
    #----------------------------------#
    infra: # infra cluster for proxy, monitor, alert, etc
      hosts: # 1 for common usage, 3 nodes for production
        10.10.10.10: { infra_seq: 1 } # identity required
        10.10.10.11: { infra_seq: 2, repo_enabled: false }
        10.10.10.12: { infra_seq: 3, repo_enabled: false }
      vars:
        patroni_watchdog_mode: 'off' # do not fencing infra

    etcd: # dcs service for postgres/patroni ha consensus
      hosts: # 1 node for testing, 3 or 5 for production
        10.10.10.10: { etcd_seq: 1 }  # etcd_seq required
        10.10.10.11: { etcd_seq: 2 }  # assign from 1 ~ n
        10.10.10.12: { etcd_seq: 3 }  # three-member cluster keeps an odd voter count
      vars: # cluster level parameter override roles/etcd
        etcd_cluster: etcd  # mark etcd cluster name etcd
        etcd_safeguard: false # safeguard against purging

    # compact 3-node x 1-drive Silo cluster: EC:1, tolerates one node failure
    # use a dedicated local mount for /data/minio; do not expand a 1-node cluster in place
    minio: # minio cluster, s3 compatible object storage
      hosts:
        10.10.10.10: { minio_seq: 1, vip_role: master }
        10.10.10.11: { minio_seq: 2 }
        10.10.10.12: { minio_seq: 3 }
      vars:
        minio_cluster: minio
        minio_data: /data/minio
        minio_users:
          - { access_key: pgbackrest  ,secret_key: S3User.Backup ,policy: pgsql }
          - { access_key: s3user_meta ,secret_key: S3User.Meta   ,policy: meta  }
          - { access_key: s3user_data ,secret_key: S3User.Data   ,policy: data  }
        vip_enabled: true
        vip_vrid: 128
        vip_address: 10.10.10.9
        haproxy_services:
          - name: minio
            port: 9002
            balance: leastconn
            options:
              - option httpchk
              - option http-keep-alive
              - http-check send meth OPTIONS uri /minio/health/live
              - http-check expect status 200
            servers:
              - { name: minio-1, ip: 10.10.10.10, port: 9000, options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
              - { name: minio-2, ip: 10.10.10.11, port: 9000, options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
              - { name: minio-3, ip: 10.10.10.12, port: 9000, options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }

    pg-meta:  # 3 instance postgres cluster `pg-meta`
      hosts:  # pg-meta-3 is marked as offline readable replica
        10.10.10.10: { pg_seq: 1, pg_role: primary }
        10.10.10.11: { pg_seq: 2, pg_role: replica }
        10.10.10.12: { pg_seq: 3, pg_role: replica , pg_offline_query: true }
      vars:   # cluster level parameters
        pg_cluster: pg-meta
        pg_users: # https://pigsty.io/docs/pgsql/config/user
          - { name: dbuser_meta , password: DBUser.Meta ,pgbouncer: true   ,roles: [ dbrole_admin ]    ,comment: pigsty admin user }
          - { name: dbuser_view , password: DBUser.Viewer ,pgbouncer: true ,roles: [ dbrole_readonly ] ,comment: read-only viewer for meta database }
        pg_databases:
          - { name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [ pigsty ] ,extensions: [ { name: vector } ] }
        pg_hba_rules:   # https://pigsty.io/docs/pgsql/config/hba
          - { user: all ,db: all ,addr: intra ,auth: pwd ,title: 'everyone intranet access with password' ,order: 800 }
        pg_crontab:     # https://pigsty.io/docs/pgsql/admin/crontab
          - '00 01 * * * /pg/bin/pg-backup full'
        pg_vip_enabled: true
        pg_vip_address: 10.10.10.2/24


  #==============================================================#
  # Global Parameters
  #==============================================================#
  vars:
    #----------------------------------#
    # Meta Data
    #----------------------------------#
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default|china|europe
    node_tune: oltp                   # node tuning specs: oltp,olap,tiny,crit
    pg_conf: oltp.yml                 # pgsql tuning specs: {oltp,olap,tiny,crit}.yml
    #docker_registry_mirrors: ["https://docker.1panel.live","https://docker.1ms.run","https://docker.xuanyuan.me","https://registry-1.docker.io"]
    proxy_env:                        # global proxy env when downloading packages
      no_proxy: "localhost,127.0.0.1,10.0.0.0/8,192.168.0.0/16,*.pigsty,*.aliyun.com,mirrors.*,*.myqcloud.com,*.tsinghua.edu.cn"
      # http_proxy:  # set your proxy here: e.g http://user:pass@proxy.xxx.com
      # https_proxy: # set your proxy here: e.g http://user:pass@proxy.xxx.com
      # all_proxy:   # set your proxy here: e.g http://user:pass@proxy.xxx.com
    infra_portal:                     # infra services exposed via portal
      home         : { domain: i.pigsty }     # default domain name
      minio        : { domain: m.pigsty ,endpoint: "${admin_ip}:9001" ,scheme: https ,websocket: true }

    #----------------------------------#
    # Repo, Node, Packages
    #----------------------------------#
    repo_remove: true                 # remove existing repo on admin node during repo bootstrap
    node_repo_remove: true            # remove existing node repo for node managed by pigsty
    repo_extra_packages: [ pg18-main ] #,pg18-core ,pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]
    pg_version: 18                    # default postgres version
    #pg_extensions: [ pg18-time ,pg18-gis ,pg18-rag ,pg18-fts ,pg18-olap ,pg18-feat ,pg18-lang ,pg18-type ,pg18-util ,pg18-func ,pg18-admin ,pg18-stat ,pg18-sec ,pg18-fdw ,pg18-sim ,pg18-etl]

    #----------------------------------#
    # MinIO Related Options
    #----------------------------------#
    minio_endpoint: https://sss.pigsty:9002
    node_etc_hosts:
      - '${admin_ip} i.pigsty'        # static dns record that point to repo node
      - '10.10.10.9 sss.pigsty'       # static dns record that point to minio vip
    pgbackrest_method: minio          # if you want to use minio as backup repo instead of 'local' fs, uncomment this
    pgbackrest_repo:                  # pgbackrest repo: https://pgbackrest.org/configuration.html#section-repository
      local:                          # default pgbackrest repo with local posix fs
        path: /pg/backup              # local backup directory, `/pg/backup` by default
        retention_full_type: count    # retention full backups by count
        retention_full: 2             # keep 2, at most 3 full backup when using local fs repo
      minio:                          # optional minio repo for pgbackrest
        type: s3                      # minio is s3-compatible, so s3 is used
        s3_endpoint: sss.pigsty       # minio endpoint domain name, `sss.pigsty` by default
        s3_region: us-east-1          # minio region, us-east-1 by default, useless for minio
        s3_bucket: pgsql              # minio bucket name, `pgsql` by default
        s3_key: pgbackrest            # minio user access key for pgbackrest
        s3_key_secret: S3User.Backup  # minio user secret key for pgbackrest
        s3_uri_style: path            # use path style uri for minio rather than host style
        path: /pgbackrest             # minio backup path, default is `/pgbackrest`
        storage_port: 9002            # minio ha endpoint exposed by haproxy
        storage_ca_file: /etc/pki/ca.crt  # minio ca file path, `/etc/pki/ca.crt` by default
        block: y                      # Enable block incremental backup
        bundle: y                     # bundle small files into a single file
        bundle_limit: 20MiB           # Limit for file bundles, 20MiB for object storage
        bundle_size: 128MiB           # Target size for file bundles, 128MiB for object storage
        cipher_type: aes-256-cbc      # enable AES encryption for remote backup repo
        cipher_pass: pgBackRest       # AES encryption password, default is 'pgBackRest'
        retention_full_type: time     # retention full backup by time on minio repo
        retention_full: 14            # keep full backup for last 14 days

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

The `ha/trio` template is Pigsty's **standard HA configuration**, providing true automatic failover capability.

**Architecture**:
- Three-node INFRA: Distributed deployment of VictoriaMetrics/Grafana/Nginx
- Three-node ETCD: DCS majority election, tolerates single-point failure
- Three-node PostgreSQL: One primary, two replicas, automatic failover
- Three-node Silo: One data path per node, using EC:1 by default (two data shards and one parity shard)
- HA S3 endpoint: Keepalived VIP `10.10.10.9` with HAProxy listening on `9002` on all three nodes

**HA Guarantees**:
- Three-node ETCD tolerates one node failure, maintains majority
- PostgreSQL primary failure triggers automatic Patroni election for new primary
- L2 VIP follows primary, applications don't need to modify connection config
- Silo retains read and write quorum while one node or one data drive is unavailable
- `sss.pigsty` resolves to the object-storage VIP; pgBackRest and `mcli` use `https://sss.pigsty:9002`

**Object Storage**:

- `minio_data: /data/minio` is a filesystem directory, not a raw device such as `/dev/sdb`.
- Distributed Silo rejects data paths on the root filesystem. `/data/minio` must reside on a separately mounted `/data` filesystem or be a mount point itself.
- The backing storage may be a local disk, cloud volume, separate partition, or LVM logical volume. For production, prefer dedicated persistent drives of similar capacity on all three nodes.
- Use `findmnt -T /data/minio` to inspect the actual mount. A result that still points to `/` means the path is only a directory on the root drive.
- The three-node, single-drive topology provides about two-thirds raw capacity efficiency. It is compact HA; use a multi-node, multi-drive topology for greater capacity, throughput, and drive redundancy.
- A single-node object-storage pool cannot be converted in place by adding two members. Create a new three-node cluster and migrate the objects instead.

The template's S3 API endpoint is highly available. The Portal administration UI still connects to port `9001` on the first node and is outside this API HA path.

**Use Cases**:
- Minimum HA deployment for production environments
- Critical business requiring automatic failover
- Foundation architecture for larger scale deployments

**Extension Suggestions**:
- For stronger data security, refer to [`ha/safe`](/docs/conf/safe/) template
- For more demo features, refer to [`ha/full`](/docs/conf/full/) template
- Use a multi-drive Silo cluster when object-storage capacity or performance requirements are higher
