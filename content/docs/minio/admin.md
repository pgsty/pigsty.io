---
title: Administration
weight: 3650
description: Create, remove, upgrade, and recover Silo, MinIO, and RustFS object-storage clusters while distinguishing engine upgrades from data migration.
icon: fa-solid fa-building-columns
module: [MINIO]
categories: [Task]
---


------

## Create Cluster

To create a cluster, define it in the config inventory and run the [`minio.yml`](/docs/minio/playbook#minioyml) playbook.

```yaml
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio, minio_type: silo } }
```

The configuration above defines an SNSD [Single-Node Single-Disk](/docs/minio/config#single-node-single-disk) Silo cluster. Use this command to create the selected object-storage cluster:

```bash
./minio.yml -l minio  # Install the engine selected by the MINIO module on the minio group
```


------

## Remove Cluster

To destroy a cluster, run the dedicated [`minio-rm.yml`](/docs/minio/playbook#minio-rmyml) playbook:

```bash
./minio-rm.yml -l minio -e minio_type=silo                         # Remove a Silo cluster
./minio-rm.yml -l minio -e minio_type=silo -e minio_rm_data=false  # Remove cluster but keep data
./minio-rm.yml -l minio -e minio_type=silo -e minio_rm_pkg=true    # Remove cluster and uninstall packages
```

The removal role has no default for `minio_type`. If the inventory does not explicitly define the engine, pass `-e minio_type=silo|minio|rustfs` as above. The value must match the backend actually used by the target cluster.

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Starting from Pigsty v3.6, cluster removal has been migrated from `minio.yml` playbook to the dedicated `minio-rm.yml` playbook. The old `minio_clean` task has been deprecated.
{{% /alert %}}

The removal playbook automatically performs the following:
- Deregisters object-storage targets from VictoriaMetrics monitoring
- Removes records from the DNS service on INFRA nodes
- Stops and disables the systemd service selected by `minio_type`
- Deletes data directories and configuration for the selected engine (`minio_rm_data`, enabled by default)
- Uninstalls the selected engine and `mcli` packages (`minio_rm_pkg`, disabled by default)



--------

## Expand Cluster

The storage-pool expansion, shrink, and failed-drive recovery commands in this section describe MinIO/Silo-compatible behavior. RustFS is a separate implementation with its own data format; verify the upstream documentation for the exact version and rehearse the operation before applying an equivalent change.

- [Expand Cluster Tutorial](https://min.io/docs/minio/linux/operations/install-deploy-manage/expand-minio-deployment.html)

MinIO cannot scale at the node/disk level, but can scale at the storage pool (multiple nodes) level.

Assume you have a [four-node](/docs/minio/config#multi-node-multi-disk) MinIO cluster and want to double the capacity by adding a new four-node storage pool.

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 , nodename: minio-1 }
    10.10.10.11: { minio_seq: 2 , nodename: minio-2 }
    10.10.10.12: { minio_seq: 3 , nodename: minio-3 }
    10.10.10.13: { minio_seq: 4 , nodename: minio-4 }
  vars:
    minio_cluster: minio
    minio_type: silo
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

First, modify the MinIO cluster definition to add four new nodes, assigning sequence numbers 5 to 8.
The key step is to modify the [`minio_volumes`](/docs/minio/param#minio_volumes) parameter to designate the new four nodes as a new **storage pool**.

```yaml
minio:
  hosts:
    10.10.10.10: { minio_seq: 1 , nodename: minio-1 }
    10.10.10.11: { minio_seq: 2 , nodename: minio-2 }
    10.10.10.12: { minio_seq: 3 , nodename: minio-3 }
    10.10.10.13: { minio_seq: 4 , nodename: minio-4 }
    # new nodes
    10.10.10.14: { minio_seq: 5 , nodename: minio-5 }
    10.10.10.15: { minio_seq: 6 , nodename: minio-6 }
    10.10.10.16: { minio_seq: 7 , nodename: minio-7 }
    10.10.10.17: { minio_seq: 8 , nodename: minio-8 }

  vars:
    minio_cluster: minio
    minio_type: silo
    minio_data: '/data{1...4}'
    minio_volumes: 'https://minio-{1...4}.pigsty:9000/data{1...4} https://minio-{5...8}.pigsty:9000/data{1...4}'  # new cluster config
    # ... other configs omitted
```

Step 2: Add these nodes to Pigsty:

```bash
./node.yml -l 10.10.10.14,10.10.10.15,10.10.10.16,10.10.10.17
```

Step 3: On the new nodes, use the Ansible [playbook](/docs/minio/playbook/) to install and prepare MinIO software:

```bash
./minio.yml -l 10.10.10.14,10.10.10.15,10.10.10.16,10.10.10.17 -t minio_install
```

Step 4: On the **entire cluster**, use the Ansible [playbook](/docs/minio/playbook/) to reconfigure the MinIO cluster:

```bash
./minio.yml -l minio -t minio_config
```

> This step updates the `MINIO_VOLUMES` configuration on the existing four nodes

Step 5: Restart the entire MinIO cluster at once (be careful, do not rolling restart!):

```bash
./minio.yml -l minio -t minio_launch -f 10   # 8 parallel, ensure simultaneous restart
```

Step 6 (optional): If you are using a load balancer, make sure the load balancer configuration is updated. For example, add the new four nodes to the load balancer configuration:

```yaml
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

      - { name: minio-5 ,ip: 10.10.10.14 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
      - { name: minio-6 ,ip: 10.10.10.15 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
      - { name: minio-7 ,ip: 10.10.10.16 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
      - { name: minio-8 ,ip: 10.10.10.17 ,port: 9000 ,options: 'check-ssl ca-file /etc/pki/ca.crt check port 9000' }
```

Then, run the `haproxy` subtask of the `node.yml` playbook to update the load balancer configuration:

```bash
./node.yml -l minio -t haproxy_config,haproxy_reload   # Update and reload load balancer config
```

If you use L2 VIP for reliable load balancer access, you also need to add new nodes (if any) to the existing NODE VIP group:

```bash
./node.yml -l minio -t node_vip  # Refresh cluster L2 VIP configuration
```


--------

## Shrink Cluster

MinIO cannot shrink at the node/disk level, but can retire at the storage pool (multiple nodes) level — add a new storage pool, drain the old storage pool to the new one, then retire the old storage pool.

- [Shrink Cluster Tutorial](https://min.io/docs/minio/linux/operations/install-deploy-manage/decommission-server-pool.html)





--------

## Upgrade Cluster

- [Upgrade Cluster Tutorial](https://min.io/docs/minio/linux/operations/install-deploy-manage/upgrade-minio-deployment.html)

First, download the new package for the selected engine to the local repository on the INFRA node, then rebuild repository metadata with SOW. Silo, MinIO, RustFS, and `mcli` are all available from the Pigsty INFRA repository.

```bash
./infra.yml -t repo_create
```

Next, upgrade only the package actually selected in the inventory and `mcli`. Choose exactly one of the first three server commands:

```bash
ansible minio -m package -b -a 'name=silo state=latest'    # minio_type: silo
ansible minio -m package -b -a 'name=minio state=latest'   # minio_type: minio
ansible minio -m package -b -a 'name=rustfs state=latest'  # minio_type: rustfs
ansible minio -m package -b -a 'name=mcli state=latest'    # Shared client
```

Finally, have the role restart the complete cluster according to the selected engine:

```bash
./minio.yml -l minio -t minio_config,minio_launch
```

A package upgrade and an engine migration are different operations. Do not change `minio_type` as part of an upgrade. Any MinIO-to-Silo or MinIO/Silo-to-RustFS switch needs separate data validation, a maintenance window, and a rollback plan.



--------

## Node Failure Recovery

- [Node Failure Tutorial](https://min.io/docs/minio/linux/operations/data-recovery/recover-after-node-failure.html#minio-restore-hardware-failure-node)

```bash
# 1. Remove the failed node from the cluster
bin/node-rm <your_old_node_ip>

# 2. Replace the failed node with the same node name (if IP changes, modify the MinIO cluster definition)
bin/node-add <your_new_node_ip>

# 3. Install and configure MinIO on the new node
./minio.yml -l <your_new_node_ip>

# 4. Instruct MinIO to perform heal action
mcli admin heal
```



--------

## Disk Failure Recovery

- [Disk Failure Tutorial](https://min.io/docs/minio/linux/operations/data-recovery/recover-after-drive-failure.html#minio-restore-hardware-failure-drive)

```bash
# 1. Unmount the failed disk from the cluster
umount /dev/<your_disk_device>

# 2. Replace the failed disk, format with xfs
mkfs.xfs /dev/sdb -L DRIVE1

# 3. Don't forget to setup fstab for auto-mount
vi /etc/fstab
# LABEL=DRIVE1     /mnt/drive1    xfs     defaults,noatime  0       2

# 4. Remount
mount -a

# 5. Instruct MinIO to perform heal action
mcli admin heal
```


--------

## Manage Object-Storage Passwords

[**`minio_secret_key`**](/docs/minio/param#minio_secret_key), which defaults to `S3User.MinIO`, is the object-storage root password. It is rendered to `/etc/default/<minio_type>`, for example `/etc/default/silo`.

After changing it, refresh configuration and restart the entire cluster:

```bash
./minio.yml -l minio -t minio_config,minio_launch,minio_alias -f 30
```

To change a regular user password, such as `pgbackrest`, run this on a node that can access the object-storage service:

```bash
set +o history
mcli admin user passwd sss pgbackrest <YOUR_NEW_PASSWORD>
set -o history
```

Then update every consumer of that password. If pgBackRest uses the MINIO S3 repository, refresh its configuration with:

```bash
./pgsql.yml -t pgbackrest_config
```
