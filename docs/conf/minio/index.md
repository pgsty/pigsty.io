# demo/minio

> Four-node x four-drive HA S3 object-storage cluster demo; current source defaults to Silo.

---

LLMS index: [llms.txt](/llms.txt)

---

`demo/minio` demonstrates a highly available S3 object-storage cluster with four nodes and four drives per node, for 16 drives total. The template retains MINIO module compatibility naming and explicitly sets `minio_type: silo`; the current v4.5.0 source accepts only this value, and both deployment and removal roles default to `silo`. Still verify it together with the exact target, cluster identity, and data paths before removal.

For more tutorials, see the **[MINIO](/docs/minio/)** module documentation.


--------

## Overview

- Config Name: `demo/minio`
- Node Count: Four nodes
- Description: High-availability multi-node multi-drive S3 object-storage demo (currently defaults to Silo)
- OS Distro: `el8`, `el9`, `el10`, `d12`, `d13`, `u22`, `u24`, `u26`
- OS Arch: `x86_64`, `aarch64`
- Related: [`meta`](/docs/conf/meta/)

Usage:

```bash
./configure -c demo/minio
```

> Note: This is a four-node template. You need to modify the IP addresses of the other three nodes after generating the configuration.


--------

## Content

Source: [`pigsty/conf/demo/minio.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/minio.yml)

```yaml
---
#==============================================================#
# File      :   minio.yml
# Desc      :   pigsty: 4 node x 4 disk MNMD minio clusters
# Ctime     :   2023-01-07
# Mtime     :   2026-08-09
# Docs      :   https://pigsty.io/docs/minio
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# One pass installation with:
# ./deploy.yml
#==============================================================#
# 1.  minio-1 @ 10.10.10.10:9000 -  - (9002) svc <-x  10.10.10.9:9002
# 2.  minio-2 @ 10.10.10.11:9000 -xx- (9002) svc <-x <----------------
# 3.  minio-3 @ 10.10.10.12:9000 -xx- (9002) svc <-x  sss.pigsty:9002
# 4.  minio-4 @ 10.10.10.13:9000 -  - (9002) svc <-x  (intranet dns)
#==============================================================#
# use minio load balancer service (9002) instead of direct access (9000)
# mcli alias set sss https://sss.pigsty:9002 minioadmin S3User.MinIO
#==============================================================#
# https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-multi-node-multi-drive.html
# MINIO_VOLUMES="https://minio-{1...4}.pigsty:9000/data{1...4}/minio"


all:
  children:

    # infra cluster for proxy, monitor, alert, etc...
    infra: { hosts: { 10.10.10.10: { infra_seq: 1 } } }

    # minio cluster with 4 nodes and 4 drivers per node
    minio:
      hosts:
        10.10.10.10: { minio_seq: 1 , nodename: minio-1 }
        10.10.10.11: { minio_seq: 2 , nodename: minio-2 }
        10.10.10.12: { minio_seq: 3 , nodename: minio-3 }
        10.10.10.13: { minio_seq: 4 , nodename: minio-4 }
      vars:
        minio_type: silo
        minio_cluster: minio
        minio_data: '/data{1...4}'
        minio_buckets:                    # list of minio bucket to be created
          - { name: pgsql }
          - { name: meta ,versioning: true }
          - { name: data }
        minio_users:                      # list of minio user to be created
          - { access_key: pgbackrest  ,secret_key: S3User.Backup ,policy: pgsql }
          - { access_key: s3user_meta ,secret_key: S3User.Meta   ,policy: meta  }
          - { access_key: s3user_data ,secret_key: S3User.Data   ,policy: data  }

        # bind a node l2 vip (10.10.10.9) to minio cluster (optional)
        node_cluster: minio
        vip_enabled: true
        vip_vrid: 128
        vip_address: 10.10.10.9

        # expose minio service with haproxy on all nodes
        haproxy_services:
          - name: minio                    # [REQUIRED] service name, unique
            port: 9002                     # [REQUIRED] service port, unique
            balance: leastconn             # [OPTIONAL] load balancer algorithm
            options:                       # [OPTIONAL] minio health check
              - option httpchk
              - option http-keep-alive
              - http-check send meth OPTIONS uri /minio/health/live
              - http-check expect status 200
            servers:
              - { name: minio-1 ,ip: 10.10.10.10 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
              - { name: minio-2 ,ip: 10.10.10.11 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
              - { name: minio-3 ,ip: 10.10.10.12 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
              - { name: minio-4 ,ip: 10.10.10.13 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }

    #etcd:  { hosts: { 10.10.10.10: { etcd_seq: 1 } } }
    #pgsql:
    #  hosts:
    #    10.10.10.10: { pg_seq: 1 , pg_role: primary }
    #    10.10.10.11: { pg_seq: 2 , pg_role: replica }
    #    10.10.10.12: { pg_seq: 3 , pg_role: replica }
    #    10.10.10.13: { pg_seq: 4 , pg_role: replica }
    #  vars:
    #    pg_cluster: pgsql
    #    pgbackrest_method: minio

  vars:
    version: v4.5.0                   # pigsty version string
    admin_ip: 10.10.10.10             # admin node ip address
    region: default                   # upstream mirror region: default|china|europe

    # build a local repo without PostgreSQL packages
    repo_modules: infra,node
    repo_packages: "{{ repo_packages_default | reject('equalto', 'pgsql-utility') | list }}"
    repo_extra_packages: []

    infra_portal:                     # infra services exposed via portal
      home : { domain: i.pigsty }     # default domain name

      # domain names to access minio web console via nginx web portal (optional)
      minio        : { domain: m.pigsty     ,endpoint: "10.10.10.10:9001" ,scheme: https ,websocket: true }
      minio10      : { domain: m10.pigsty   ,endpoint: "10.10.10.10:9001" ,scheme: https ,websocket: true }
      minio11      : { domain: m11.pigsty   ,endpoint: "10.10.10.11:9001" ,scheme: https ,websocket: true }
      minio12      : { domain: m12.pigsty   ,endpoint: "10.10.10.12:9001" ,scheme: https ,websocket: true }
      minio13      : { domain: m13.pigsty   ,endpoint: "10.10.10.13:9001" ,scheme: https ,websocket: true }

    minio_endpoint: https://sss.pigsty:9002   # explicit overwrite minio endpoint with haproxy port
    node_etc_hosts: ["10.10.10.9 sss.pigsty"] # domain name to access minio from all nodes (required)

    #----------------------------------------------#
    # PASSWORD : https://pigsty.io/docs/setup/security/
    #----------------------------------------------#
    grafana_admin_password: pigsty
    haproxy_admin_password: pigsty
    minio_secret_key: S3User.MinIO
...
```


--------

## Explanation

`demo/minio` is a reference configuration for production object storage using the Multi-Node Multi-Drive (MNMD) architecture. Its volume layout, HAProxy health checks, and clients retain MinIO-compatible interfaces.

**Key Features**:
- **Multi-Node Multi-Drive Architecture**: 4 nodes × 4 drives = 16-drive erasure coding group
- **L2 VIP High Availability**: Virtual IP binding via Keepalived
- **HAProxy Load Balancing**: Unified access endpoint on port 9002
- **Fine-grained Permissions**: Separate users and buckets for different applications

**Access**:

```bash
# Configure the S3 alias with mcli (via HAProxy load balancing)
mcli alias set sss https://sss.pigsty:9002 minioadmin S3User.MinIO

# List buckets
mcli ls sss/

# Use console
# Visit https://m.pigsty or https://m10-m13.pigsty
```

**Use Cases**:
- Environments requiring S3-compatible object storage
- PostgreSQL backup storage (pgBackRest remote repository)
- Data lake for big data and AI workloads
- Production environments requiring high-availability object storage

**Notes**:
- Each node requires 4 independent disks mounted at `/data1` - `/data4`
- Production environments recommend at least 4 nodes for erasure coding redundancy
- VIP requires proper network interface configuration (`vip_interface`)
