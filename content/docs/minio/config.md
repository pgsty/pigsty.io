---
title: Configuration
weight: 3620
description: Choose the appropriate MinIO deployment type based on your requirements
  and provide reliable access.
icon: fa-solid fa-code
module: [MINIO]
categories: [Reference]
---

Before deploying MinIO, you need to define a MinIO cluster in the [config inventory](/docs/setup/config). MinIO has three classic deployment modes:

- [Single-Node Single-Disk: SNSD](#single-node-single-disk): Single-node single-disk mode, can use any directory as a data disk, for development, testing, and demo only.
- [Single-Node Multi-Disk: SNMD](#single-node-multi-disk): Compromise mode, using multiple disks (>=2) on a single server, only when resources are extremely limited.
- [Multi-Node Multi-Disk: MNMD](#multi-node-multi-disk): Multi-node multi-disk mode, standard production deployment with the best reliability, but requires multiple servers.

We recommend using SNSD and MNMD modes - the former for development and testing, the latter for production deployment. SNMD should only be used when resources are limited (only one server).

Additionally, you can use [multi-pool deployment](#multi-pool) to scale existing MinIO clusters, or directly deploy [multiple clusters](#multiple-clusters).

When using a multi-node MinIO cluster, you can access the service from any node, so the best practice is to use load balancing with [high availability service access](#expose-service) in front of the MinIO cluster.



----------------

## Core Parameters

In MinIO deployment, [`MINIO_VOLUMES`](https://min.io/docs/minio/linux/reference/minio-server/settings/core.html#envvar.MINIO_VOLUMES) is a core configuration parameter that specifies the MinIO deployment mode.
Pigsty provides convenient parameters to automatically generate `MINIO_VOLUMES` and other configuration values based on the config inventory, but you can also specify them directly.

- Single-Node Single-Disk: `MINIO_VOLUMES` points to a regular directory on the local machine, specified by [`minio_data`](/docs/minio/param#minio_data), defaulting to `/data/minio`.
- Single-Node Multi-Disk: `MINIO_VOLUMES` points to a series of mount points on the local machine, also specified by [`minio_data`](/docs/minio/param#minio_data), but requires special syntax to explicitly specify real mount points, e.g., `/data{1...4}`.
- Multi-Node Multi-Disk: `MINIO_VOLUMES` points to mount points across multiple servers, automatically generated from two parts:
  - First, use [`minio_data`](/docs/minio/param#minio_data) to specify the disk mount point sequence for each cluster member `/data{1...4}`
  - Also use [`minio_node`](/docs/minio/param#minio_node) to specify the node naming pattern `${minio_cluster}-${minio_seq}.pigsty`
- Multi-Pool: You need to explicitly specify the [`minio_volumes`](/docs/minio/param#minio_volumes) parameter to allocate nodes for each storage pool


----------------

## Single-Node Single-Disk

SNSD mode, deployment reference: [MinIO Single-Node Single-Drive](https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-single-node-single-drive.html)

In Pigsty, defining a singleton MinIO instance is straightforward:

```yaml
# 1 Node 1 Driver (DEFAULT)
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }
```

In single-node mode, the only required parameters are [`minio_seq`](/docs/minio/param#minio_seq) and [`minio_cluster`](/docs/minio/param#minio_cluster), which uniquely identify each MinIO instance.

Single-node single-disk mode is for development purposes only, so you can use a regular directory as the data directory, specified by [`minio_data`](/docs/minio/param#minio_data), defaulting to `/data/minio`.

When using MinIO, we strongly recommend accessing it via a statically resolved domain name. For example, if [`minio_domain`](/docs/minio/param#minio_domain) uses the default `sss.pigsty`,
you can add a static resolution on all nodes to facilitate access to this service.

```yaml
node_etc_hosts: ["10.10.10.10 sss.pigsty"] # domain name to access minio from all nodes (required)
```


{{% alert title="SNSD is for Development Only" color="warning" %}}
Single-node single-disk mode should only be used for development, testing, and demo purposes, as it cannot tolerate any hardware failure and does not benefit from multi-disk performance improvements. For production, use [Multi-Node Multi-Disk](#multi-node-multi-disk) mode.
{{% /alert %}}



----------------

## Single-Node Multi-Disk

SNMD mode, deployment reference: [MinIO Single-Node Multi-Drive](https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-single-node-multi-drive.html)

To use multiple disks on a single node, the operation is similar to [Single-Node Single-Disk](#single-node-single-disk), but you need to specify [`minio_data`](/docs/minio/param#minio_data) in the format `{{ prefix }}{x...y}`, which defines a series of disk mount points.

```yaml
minio:
  hosts: { 10.10.10.10: { minio_seq: 1 } }
  vars:
    minio_cluster: minio         # minio cluster name, minio by default
    minio_data: '/data{1...4}'   # minio data dir(s), use {x...y} to specify multi drivers
```

{{% alert title="Use Real Disk Mount Points" color="warning" %}}
Note that SNMD mode does not support using regular directories as data directories. If you start MinIO in SNMD mode but the data directory is not a valid disk mount point, MinIO will refuse to start. Ensure you use real disks formatted with XFS.
{{% /alert %}}



For example, the Vagrant MinIO [sandbox](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/minio.rb) defines a single-node MinIO cluster with 4 disks: `/data1`, `/data2`, `/data3`, and `/data4`. Before starting MinIO, you need to mount them properly (be sure to format disks with `xfs`):

```bash
mkfs.xfs /dev/vdb; mkdir /data1; mount -t xfs /dev/sdb /data1;   # mount disk 1...
mkfs.xfs /dev/vdc; mkdir /data2; mount -t xfs /dev/sdb /data2;   # mount disk 2...
mkfs.xfs /dev/vdd; mkdir /data3; mount -t xfs /dev/sdb /data3;   # mount disk 3...
mkfs.xfs /dev/vde; mkdir /data4; mount -t xfs /dev/sdb /data4;   # mount disk 4...
```

Disk mounting is part of server provisioning and beyond Pigsty's scope. Mounted disks should be written to `/etc/fstab` for auto-mounting after server restart.

```bash
/dev/vdb /data1 xfs defaults,noatime,nodiratime 0 0
/dev/vdc /data2 xfs defaults,noatime,nodiratime 0 0
/dev/vdd /data3 xfs defaults,noatime,nodiratime 0 0
/dev/vde /data4 xfs defaults,noatime,nodiratime 0 0
```

SNMD mode can utilize multiple disks on a single machine to provide higher performance and capacity, and tolerate partial disk failures.
However, single-node mode cannot tolerate entire node failure, and you cannot add new nodes at runtime, so we do not recommend using SNMD mode in production unless you have special reasons.






----------------

## Multi-Node Multi-Disk

MNMD mode, deployment reference: [MinIO Multi-Node Multi-Drive](https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-multi-node-multi-drive.html)

In addition to [`minio_data`](/docs/minio/param#minio_data) for specifying disk drives as in [Single-Node Multi-Disk](#single-node-multi-disk) mode, multi-node MinIO deployment requires an additional [`minio_node`](/docs/minio/param#minio_node) parameter.

For example, the following configuration defines a MinIO cluster with four nodes, each with four disks:

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 }  # actual nodename: minio-1.pigsty
    10.10.10.11: { minio_seq: 2 }  # actual nodename: minio-2.pigsty
    10.10.10.12: { minio_seq: 3 }  # actual nodename: minio-3.pigsty
    10.10.10.13: { minio_seq: 4 }  # actual nodename: minio-4.pigsty
  vars:
    minio_cluster: minio
    minio_data: '/data{1...4}'                         # 4-disk per node
    minio_node: '${minio_cluster}-${minio_seq}.pigsty' # minio node name pattern
```

The [`minio_node`](param#minio_node) parameter specifies the MinIO node name pattern, used to generate a unique name for each node.
By default, the node name is `${minio_cluster}-${minio_seq}.pigsty`, where `${minio_cluster}` is the cluster name and `${minio_seq}` is the node sequence number.
The MinIO instance name is crucial and will be automatically written to `/etc/hosts` on MinIO nodes for static resolution. MinIO relies on these names to identify and access other nodes in the cluster.

In this case, `MINIO_VOLUMES` will be set to `https://minio-{1...4}.pigsty/data{1...4}` to identify the four disks on four nodes.
You can directly specify the [`minio_volumes`](param#minio_volumes) parameter in the MinIO cluster to override the automatically generated value.
However, this is usually not necessary as Pigsty will automatically generate it based on the config inventory.





----------------

## Multi-Pool

MinIO's architecture allows scaling by adding new storage pools. In Pigsty, you can achieve cluster scaling by explicitly specifying the [`minio_volumes`](param#minio_volumes) parameter to allocate nodes for each storage pool.

For example, suppose you have already created the MinIO cluster defined in the [Multi-Node Multi-Disk](#multi-node-multi-disk) example, and now you want to add a new storage pool with four more nodes.

You need to directly override the [`minio_volumes`](param#minio_volumes) parameter:

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 }
    10.10.10.11: { minio_seq: 2 }
    10.10.10.12: { minio_seq: 3 }
    10.10.10.13: { minio_seq: 4 }

    10.10.10.14: { minio_seq: 5 }
    10.10.10.15: { minio_seq: 6 }
    10.10.10.16: { minio_seq: 7 }
    10.10.10.17: { minio_seq: 8 }
  vars:
    minio_cluster: minio
    minio_data: "/data{1...4}"
    minio_node: '${minio_cluster}-${minio_seq}.pigsty' # minio node name pattern
    minio_volumes: 'https://minio-{1...4}.pigsty:9000/data{1...4} https://minio-{5...8}.pigsty:9000/data{1...4}'
```

Here, the two space-separated parameters represent two storage pools, each with four nodes and four disks per node. For more information on storage pools, refer to [Administration: MinIO Cluster Expansion](admin)



----------------

## Multiple Clusters

You can deploy new MinIO nodes as a completely new MinIO cluster by defining a new group with a different cluster name. The following configuration declares two independent MinIO clusters:

```yaml
minio1:
  hosts:
    10.10.10.10: { minio_seq: 1 }
    10.10.10.11: { minio_seq: 2 }
    10.10.10.12: { minio_seq: 3 }
    10.10.10.13: { minio_seq: 4 }
  vars:
    minio_cluster: minio2
    minio_data: "/data{1...4}"

minio2:
  hosts:
    10.10.10.14: { minio_seq: 5 }
    10.10.10.15: { minio_seq: 6 }
    10.10.10.16: { minio_seq: 7 }
    10.10.10.17: { minio_seq: 8 }
  vars:
    minio_cluster: minio2
    minio_data: "/data{1...4}"
    minio_alias: sss2
    minio_domain: sss2.pigsty
    minio_endpoint: sss2.pigsty:9000
```

Note that Pigsty defaults to having only one MinIO cluster per deployment. If you need to deploy multiple MinIO clusters, some parameters with default values must be explicitly set and cannot be omitted, otherwise naming conflicts will occur, as shown above.




----------------

## Expose Service

MinIO serves on port `9000` by default. A multi-node MinIO cluster can be accessed by connecting to **any one of its nodes**.

Service access falls under the scope of the [NODE](/docs/node) module, and we'll provide only a basic introduction here.

High-availability access to a multi-node MinIO cluster can be achieved using L2 VIP or HAProxy. For example, you can use keepalived to bind an L2 [VIP](/docs/node/param#node_vip) to the MinIO cluster,
or use the [`haproxy`](/docs/node/param#haproxy) component provided by the [`NODE`](/docs/node) module to expose MinIO services through a load balancer.

```yaml
# minio cluster with 4 nodes and 4 drivers per node
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 , nodename: minio-1 }
    10.10.10.11: { minio_seq: 2 , nodename: minio-2 }
    10.10.10.12: { minio_seq: 3 , nodename: minio-3 }
    10.10.10.13: { minio_seq: 4 , nodename: minio-4 }
  vars:
    minio_cluster: minio
    minio_data: '/data{1...4}'
    minio_buckets: [ { name: pgsql }, { name: infra }, { name: redis } ]
    minio_users:
      - { access_key: dba , secret_key: S3User.DBA, policy: consoleAdmin }
      - { access_key: pgbackrest , secret_key: S3User.SomeNewPassWord , policy: readwrite }

    # bind a node l2 vip (10.10.10.9) to minio cluster (optional)
    node_cluster: minio
    vip_enabled: true
    vip_vrid: 128
    vip_address: 10.10.10.9
    vip_interface: eth1

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
```

For example, the configuration above enables HAProxy on all nodes of the MinIO cluster, exposing MinIO services on port `9002`, and binds a Layer 2 VIP to the cluster.
When in use, users should point the `sss.pigsty` domain name to the VIP address `10.10.10.9` and access MinIO services using port `9002`. This ensures high availability, as the VIP will automatically switch to another node if any node fails.

In this scenario, you may also need to globally modify the domain name resolution destination and the [`minio_endpoint`](param#minio_endpoint) parameter to change the endpoint address for the MinIO alias on the admin node:

```yaml
minio_endpoint: https://sss.pigsty:9002   # Override the default: https://sss.pigsty:9000
node_etc_hosts: ["10.10.10.9 sss.pigsty"] # Other nodes will use sss.pigsty domain to access MinIO
```


----------------

## Dedicated Load Balancer

Pigsty allows using a dedicated load balancer server group instead of the cluster itself to run VIP and HAProxy. For example, the [`prod`](/docs/conf/pro) template uses this approach.

```yaml
proxy:
  hosts:
    10.10.10.18 : { nodename: proxy1 ,node_cluster: proxy ,vip_interface: eth1 ,vip_role: master }
    10.10.10.19 : { nodename: proxy2 ,node_cluster: proxy ,vip_interface: eth1 ,vip_role: backup }
  vars:
    vip_enabled: true
    vip_address: 10.10.10.20
    vip_vrid: 20

    haproxy_services:      # expose minio service : sss.pigsty:9000
      - name: minio        # [REQUIRED] service name, unique
        port: 9000         # [REQUIRED] service port, unique
        balance: leastconn # Use leastconn algorithm and minio health check
        options: [ "option httpchk", "option http-keep-alive", "http-check send meth OPTIONS uri /minio/health/live", "http-check expect status 200" ]
        servers:           # reload service with ./node.yml -t haproxy_config,haproxy_reload
          - { name: minio-1 ,ip: 10.10.10.21 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
          - { name: minio-2 ,ip: 10.10.10.22 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
          - { name: minio-3 ,ip: 10.10.10.23 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
          - { name: minio-4 ,ip: 10.10.10.24 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
          - { name: minio-5 ,ip: 10.10.10.25 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
```

In this case, you typically need to globally modify the MinIO domain resolution to point `sss.pigsty` to the load balancer address, and modify the [`minio_endpoint`](param#minio_endpoint) parameter to change the endpoint address for the MinIO alias on the admin node:

```yaml
minio_endpoint: https://sss.pigsty:9002    # overwrite the defaults: https://sss.pigsty:9000
node_etc_hosts: ["10.10.10.20 sss.pigsty"] # domain name to access minio from all nodes (required)
```




----------------

## Access Service

To access MinIO exposed via HAProxy, taking PGSQL backup configuration as an example, you can modify the configuration in [`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo) to add a new backup repository definition:

```yaml
# This is the newly added HA MinIO Repo definition, USE THIS INSTEAD!
minio_ha:
  type: s3
  s3_endpoint: minio-1.pigsty   # s3_endpoint can be any load balancer: 10.10.10.1{0,1,2}, or domain names pointing to any of the nodes
  s3_region: us-east-1          # you can use external domain name: sss.pigsty, which resolves to any member (`minio_domain`)
  s3_bucket: pgsql              # instance & nodename can be used: minio-1.pigsty minio-1.pigsty minio-1.pigsty minio-1 minio-2 minio-3
  s3_key: pgbackrest            # Better using a dedicated password for MinIO pgbackrest user
  s3_key_secret: S3User.SomeNewPassWord
  s3_uri_style: path
  path: /pgbackrest
  storage_port: 9002            # Use load balancer port 9002 instead of default 9000 (direct access)
  storage_ca_file: /etc/pki/ca.crt
  bundle: y
  cipher_type: aes-256-cbc      # Better using a new cipher password for your production environment
  cipher_pass: pgBackRest.With.Some.Extra.PassWord.And.Salt.${pg_cluster}
  retention_full_type: time
  retention_full: 14
```



----------------

## Expose Console

MinIO provides a Web console interface on port `9001` by default (specified by the [`minio_admin_port`](param#minio_admin_port) parameter).

Exposing the admin interface to external networks may pose security risks. If you want to do this, add MinIO to [`infra_portal`](/docs/infra/param#infra_portal) and refresh the Nginx configuration.

```yaml
# ./infra.yml -t nginx
infra_portal:
  home         : { domain: h.pigsty }
  # MinIO console requires HTTPS / Websocket to work
  minio        : { domain: m.pigsty     ,endpoint: "10.10.10.10:9001" ,scheme: https ,websocket: true }
  minio10      : { domain: m10.pigsty   ,endpoint: "10.10.10.10:9001" ,scheme: https ,websocket: true }
  minio11      : { domain: m11.pigsty   ,endpoint: "10.10.10.11:9001" ,scheme: https ,websocket: true }
  minio12      : { domain: m12.pigsty   ,endpoint: "10.10.10.12:9001" ,scheme: https ,websocket: true }
  minio13      : { domain: m13.pigsty   ,endpoint: "10.10.10.13:9001" ,scheme: https ,websocket: true }
```

Note that the MinIO console requires HTTPS. Please **DO NOT** expose an unencrypted MinIO console in production.

This means you typically need to add a resolution record for `m.pigsty` in your DNS server or local `/etc/hosts` file to access the MinIO console.

Meanwhile, if you are using Pigsty's self-signed CA rather than a proper public CA, you usually need to manually trust the CA or certificate to skip the "insecure" warning in the browser.

<br>

--------

<br>

