# Configuration

> Deploy Silo with the MINIO module and configure reliable S3 access in single-node, multi-drive, or multi-node modes.

---

LLMS index: [llms.txt](/llms.txt)

---

Before deploying the MINIO module, define a Silo object-storage cluster in the [config inventory](/docs/setup/config). The current role requires [`minio_type: silo`](/docs/minio/param#minio_type) and supports these inventory deployment modes:

- [Single-Node Single-Disk: SNSD](#single-node-single-disk): Single-node single-disk mode, can use any directory as a data disk, for development, testing, and demo only.
- [Single-Node Multi-Disk: SNMD](#single-node-multi-disk): Compromise mode, using multiple disks (>=2) on a single server, only when resources are extremely limited.
- [Multi-Node Single-Disk: MNSD](#multi-node-single-disk): Multiple servers with one independent data drive each, providing compact node-level high availability.
- [Multi-Node Multi-Disk: MNMD](#multi-node-multi-disk): Multi-node multi-disk mode, standard production deployment with the best reliability, but requires multiple servers.

Use SNSD for development and testing. Three-node MNSD provides compact HA with limited resources. Use MNMD for production environments that need more capacity, throughput, and drive redundancy. SNMD handles drive failures within one server but cannot tolerate losing the server.

Silo can also use [multi-pool deployment](#multi-pool) for expansion, or you can deploy [multiple clusters](#multiple-clusters).

In a multi-node cluster, any member can serve the S3 API. We recommend load balancing and [high-availability service access](#expose-service) in front of the cluster.


----------------

## Backend Selection

```yaml
minio_type: silo   # the only valid value
```

`minio_type` remains as a selector for future backends. The current deployment and removal roles accept only `silo`. This value maps to the `silo` package, `silo.service`, `/etc/default/silo`, and `~/.minio/certs/`.

To support migration in place, `silo.service` first reads the legacy `/etc/default/minio` file. It then reads `/etc/default/silo`, which has higher priority. It also conflicts with the old `minio.service`. New deployments should maintain only the Silo configuration file.

Legacy inventories with `minio_type: minio` or `minio_type: rustfs` fail identity validation. Before upgrading an existing MinIO deployment, validate MinIO-to-Silo data compatibility, backups, and rollback. The MinIO topology terms and upstream links below describe interfaces that Silo retains. The current role does not install the `minio` package.



----------------

## Core Parameters

Pigsty uses [`minio_volumes`](/docs/minio/param#minio_volumes) to describe members and disks. It renders this value as Silo's `MINIO_VOLUMES`. The role derives this value from inventory by default and also allows an explicit override.

- Single-Node Single-Disk: `minio_volumes` points to a regular local directory derived from [`minio_data`](/docs/minio/param#minio_data), defaulting to `/data/minio`.
- Single-Node Multi-Disk: `minio_volumes` points to a sequence of local mount points derived from `minio_data`, for example `/data{1...4}`.
- Multi-Node Single-Disk: `minio_volumes` points to one data path on each server, for example `https://minio-{1...3}.pigsty:9000/data/minio`.
- Multi-Node Multi-Disk: `minio_volumes` points to mount points across multiple servers, automatically generated from two parts:
  - First, use [`minio_data`](/docs/minio/param#minio_data) to specify the disk mount point sequence for each cluster member `/data{1...4}`
  - Also use [`minio_node`](/docs/minio/param#minio_node) to specify the node naming pattern `${minio_cluster}-${minio_seq}.pigsty`
- Multi-Pool: Explicitly set `minio_volumes` to assign nodes to each storage pool.


----------------

## Storage Paths and Mounts

[`minio_data`](/docs/minio/param#minio_data) is a filesystem directory, not a raw block device. First, format and mount a local disk, cloud volume, separate partition, or LVM logical volume. Give Silo the mount point or a directory under it. Do not put `/dev/sdb` in `minio_data`.

The MINIO role creates data directories and sets ownership and permissions. It does not format production storage or configure persistent mounts. Topologies impose different requirements on the backing filesystem:

- Single-node single-disk may use a regular directory on the root filesystem, but only for development, testing, and demos.
- Every path in a single-node multi-disk deployment should map to a separate filesystem. Multiple directories on one drive do not create multiple drive failure domains.
- Multi-node distributed Silo detects and rejects data paths on the root filesystem with `drive is part of root drive, will not be used`.

Therefore, `/data/minio` may be a regular subdirectory when `/data` is a separately mounted persistent filesystem. If `/data` is merely a directory under `/`, it does not satisfy the distributed-storage requirement. A bind mount backed by the root filesystem does not create a new drive failure domain either.

Inspect the actual mounts before deployment:

```bash
findmnt -T /
findmnt -T /data/minio
```

The second command should report a separate `/data` or `/data/minio` mount rather than `/`. Configure persistent production mounts in `/etc/fstab` or with an equivalent mechanism. Drives in the same storage pool should have similar capacities.


----------------

## Single-Node Single-Disk

SNSD mode, compatible topology reference: [MinIO Single-Node Single-Drive](https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-single-node-single-drive.html)

In Pigsty, defining a singleton Silo instance is straightforward:

```yaml
# 1 node, 1 data directory
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio, minio_type: silo } }
```

Single-node mode requires [`minio_seq`](/docs/minio/param#minio_seq) and [`minio_cluster`](/docs/minio/param#minio_cluster). Together, these parameters uniquely identify each object-storage instance.

Single-node single-disk mode is for development only. You can use a regular data directory. Set its path with [`minio_data`](/docs/minio/param#minio_data). The default is `/data/minio`.

We strongly recommend that you access Silo through a domain name with static resolution. For example, [`minio_domain`](/docs/minio/param#minio_domain) defaults to `sss.pigsty`. Add static resolution for this name on all nodes to access the service.

```yaml
node_etc_hosts: ["10.10.10.10 sss.pigsty"] # domain name for accessing Silo from all nodes (required)
```


> [!WARNING] SNSD is for Development Only
> Use single-node single-disk mode only for development, testing, and demos. It cannot tolerate hardware failure or provide multi-disk performance improvements. For production, use [Multi-Node Multi-Disk](#multi-node-multi-disk) mode.



----------------

## Single-Node Multi-Disk

SNMD mode, compatible topology reference: [MinIO Single-Node Multi-Drive](https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-single-node-multi-drive.html)

For multiple disks on one node, follow a procedure similar to [Single-Node Single-Disk](#single-node-single-disk). Set [`minio_data`](/docs/minio/param#minio_data) to `{{ prefix }}{x...y}`. This pattern defines a series of disk mount points.

```yaml
minio:
  hosts: { 10.10.10.10: { minio_seq: 1 } }
  vars:
    minio_cluster: minio         # required object-storage cluster identity
    minio_data: '/data{1...4}'   # minio data dir(s), use {x...y} to specify multi drivers
```

> [!WARNING] Use Real Disk Mount Points
> Every SNMD data path must reside on a separate filesystem. If multiple paths resolve to the same filesystem, Silo refuses to treat them as separate drives. We recommend XFS for production. If XFS tools are unavailable, the Vagrant test setup can prepare ext4 data drives.



For example, the Vagrant object-storage [sandbox](https://github.com/pgsty/pigsty/blob/main/vagrant/spec/minio.rb) defines a single-node Silo cluster with four disks: `/data1`, `/data2`, `/data3`, and `/data4`. Before starting Silo, mount them correctly and format them with `xfs`:

```bash
mkfs.xfs /dev/vdb; mkdir /data1; mount -t xfs /dev/vdb /data1;   # mount disk 1...
mkfs.xfs /dev/vdc; mkdir /data2; mount -t xfs /dev/vdc /data2;   # mount disk 2...
mkfs.xfs /dev/vdd; mkdir /data3; mount -t xfs /dev/vdd /data3;   # mount disk 3...
mkfs.xfs /dev/vde; mkdir /data4; mount -t xfs /dev/vde /data4;   # mount disk 4...
```

Disk mounting is part of server provisioning and beyond Pigsty's scope. Mounted disks should be written to `/etc/fstab` for auto-mounting after server restart.

```bash
/dev/vdb /data1 xfs defaults,noatime,nodiratime 0 0
/dev/vdc /data2 xfs defaults,noatime,nodiratime 0 0
/dev/vdd /data3 xfs defaults,noatime,nodiratime 0 0
/dev/vde /data4 xfs defaults,noatime,nodiratime 0 0
```

SNMD uses multiple disks on one machine to increase performance and capacity. It can tolerate some disk failures.

However, SNMD cannot tolerate failure of the entire node. You also cannot add nodes at runtime. We do not recommend SNMD for production unless you have a specific reason.






----------------

## Multi-Node Single-Disk

MNSD uses one data drive on each of several servers. The following inventory defines a three-node, single-drive Silo cluster. The [`ha/trio`](/docs/conf/trio/) template uses the same storage topology:

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 }
    10.10.10.11: { minio_seq: 2 }
    10.10.10.12: { minio_seq: 3 }
  vars:
    minio_cluster: minio
    minio_type: silo
    minio_data: /data/minio
```

The role generates `https://minio-{1...3}.pigsty:9000/data/minio`. The three paths reside on different servers. On each server, `/data/minio` must use a non-root, persistent filesystem.

A three-drive set uses `EC:1` by default. Silo splits each object into two data shards and one parity shard. Both read and write quorum are two. Thus, one node or one data drive can be unavailable.

With equal-size drives, usable capacity is about two-thirds of raw capacity before filesystem and metadata overhead. The smallest drive limits capacity.

This compact HA topology uses resources efficiently. It removes the single object-storage node as a failure point. Each node still has only one data drive. Use [Multi-Node Multi-Disk](#multi-node-multi-disk) when capacity, throughput, or per-node drive redundancy requirements are higher.

An existing single-node storage pool cannot be converted in place by adding two members. Create a new three-node cluster. Migrate the objects and change the client endpoints.


----------------

## Multi-Node Multi-Disk

MNMD mode, compatible topology reference: [MinIO Multi-Node Multi-Drive](https://min.io/docs/minio/linux/operations/install-deploy-manage/deploy-minio-multi-node-multi-drive.html)

Set [`minio_data`](/docs/minio/param#minio_data) to specify disks, as in [Single-Node Multi-Disk](#single-node-multi-disk) mode. Also set [`minio_node`](/docs/minio/param#minio_node) to specify the node naming pattern.

For example, the following configuration defines a four-node Silo cluster with four disks per node:

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

The [`minio_node`](/docs/minio/param#minio_node) parameter specifies the internal node-name pattern. The MINIO module uses it to generate a unique name for each node. The default is `${minio_cluster}-${minio_seq}.pigsty`. Here, `${minio_cluster}` is the cluster name, and `${minio_seq}` is the node sequence number.

Pigsty automatically writes instance names to `/etc/hosts` on each Silo node. Cluster members use these names to identify and reach each other.

Here, the derived `minio_volumes` is `https://minio-{1...4}.pigsty:9000/data{1...4}`. It identifies four drives on each of four nodes. The role writes it to Silo's compatible environment variable.
You can set [`minio_volumes`](/docs/minio/param#minio_volumes) directly on the object-storage cluster to override the automatically generated value.
However, this is usually not necessary as Pigsty will automatically generate it based on the config inventory.





----------------

## Multi-Pool

Silo retains the compatible ability to scale by adding new storage pools. In Pigsty, explicitly set [`minio_volumes`](/docs/minio/param#minio_volumes) to assign nodes to each pool.

For example, start with the Silo cluster from the [Multi-Node Multi-Disk](#multi-node-multi-disk) example. Add another four-node storage pool.

You need to directly override the [`minio_volumes`](/docs/minio/param#minio_volumes) parameter:

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

Here, the two space-separated values represent two storage pools, each with four nodes and four disks per node. For details, see [Administration: Cluster Expansion](/docs/minio/admin/).



----------------

## Multiple Clusters

You can deploy new nodes as an independent Silo cluster. The following configuration declares two object-storage clusters with different identities:

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

`minio_cluster` has no default and must be defined for every cluster. Each cluster must use distinct `minio_alias`, `minio_domain`, and `minio_endpoint` values. Otherwise, shared client aliases and domains on INFRA nodes overwrite each other.

The Ansible group name can differ from `minio_cluster`. Roles find members across the inventory by identity.




----------------

## Expose Service

Silo serves the S3 API on port `9000` by default. A multi-node cluster can be accessed through **any member**.

The [NODE](/docs/node) module manages service access. This section provides a basic introduction.

High-availability access to a multi-node object-storage cluster can use L2 VIP or HAProxy. For example, bind an L2 [VIP](/docs/node/param#node_vip) with keepalived. You can also use the [`haproxy`](/docs/node/param#haproxy) component from [`NODE`](/docs/node) to expose the S3 service.

```yaml
# object-storage cluster with 4 nodes and 4 drives per node
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

The configuration above enables HAProxy on every Silo node. It exposes S3 on port `9002` and binds a Layer 2 VIP to the cluster.

Resolve `sss.pigsty` to VIP `10.10.10.9` and access port `9002`. If a node fails, the VIP moves to another node.

Also update global domain resolution and [`minio_endpoint`](/docs/minio/param#minio_endpoint). This makes the `mcli` alias on management nodes use the new endpoint:

```yaml
minio_endpoint: https://sss.pigsty:9002   # Override the default: https://sss.pigsty:9000
node_etc_hosts: ["10.10.10.9 sss.pigsty"] # Other nodes will use the sss.pigsty domain to access Silo
```


----------------

## Dedicated Load Balancer

Pigsty allows using a dedicated load balancer server group instead of the cluster itself to run VIP and HAProxy. For example, the [`ha/simu`](/docs/conf/simu) template uses this approach.

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

Point `sss.pigsty` to the load balancer. Update [`minio_endpoint`](/docs/minio/param#minio_endpoint) so the `mcli` alias on management nodes uses that endpoint:

```yaml
minio_endpoint: https://sss.pigsty:9002    # overwrite the defaults: https://sss.pigsty:9000
node_etc_hosts: ["10.10.10.20 sss.pigsty"] # domain name for accessing Silo from all nodes (required)
```




----------------

## Access Service

To access the Silo service exposed through HAProxy from PGSQL, add a repository definition to [`pgbackrest_repo`](/docs/pgsql/param#pgbackrest_repo):

```yaml
# New HA S3 repository definition, replacing the previous single-node configuration
minio_ha:
  type: s3
  s3_endpoint: minio-1.pigsty   # endpoint can be any load balancer or a domain pointing to one of the nodes
  s3_region: us-east-1          # you can use external domain name: sss.pigsty, which resolves to any member (`minio_domain`)
  s3_bucket: pgsql              # backup bucket name
  s3_key: pgbackrest            # use a dedicated password for Silo's pgbackrest user
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

Silo provides an administration UI on port `9001` by default, controlled by [`minio_admin_port`](/docs/minio/param#minio_admin_port).

Exposing the administration interface externally may pose security risks. If required, add Silo to [`infra_portal`](/docs/infra/param#infra_portal) and refresh the Nginx configuration.

```yaml
# ./infra.yml -t nginx
infra_portal:
  home         : { domain: h.pigsty }
  # Object-storage administration UI requires HTTPS / WebSocket
  minio        : { domain: m.pigsty     ,endpoint: "10.10.10.10:9001" ,scheme: https ,websocket: true }
  minio10      : { domain: m10.pigsty   ,endpoint: "10.10.10.10:9001" ,scheme: https ,websocket: true }
  minio11      : { domain: m11.pigsty   ,endpoint: "10.10.10.11:9001" ,scheme: https ,websocket: true }
  minio12      : { domain: m12.pigsty   ,endpoint: "10.10.10.12:9001" ,scheme: https ,websocket: true }
  minio13      : { domain: m13.pigsty   ,endpoint: "10.10.10.13:9001" ,scheme: https ,websocket: true }
```

**DO NOT** expose an unencrypted object-storage administration UI in production.

You will usually need an `m.pigsty` record in DNS or local `/etc/hosts` to access the Silo administration page.

If you use Pigsty's self-signed CA instead of a public CA, you usually need to trust the CA or certificate manually. This removes the browser's "insecure" warning.

<br>

--------

<br>
