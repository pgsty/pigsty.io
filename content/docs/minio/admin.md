---
title: Administration
weight: 3650
description: 'MinIO cluster management SOP: create, destroy, expand, shrink, and handle
  node and disk failures.'
icon: fa-solid fa-building-columns
module: [MINIO]
categories: [Task]
---


------

## Create Cluster

To create a cluster, define it in the config inventory and run the [`minio.yml`](playbook#minioyml) playbook.

```yaml
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio } }
```

For example, the above configuration defines an SNSD [Single-Node Single-Disk](config#single-node-single-disk) MinIO cluster. Use the following command to create this MinIO cluster:

```bash
./minio.yml -l minio  # Install MinIO module on the minio group
```


------

## Remove Cluster

To destroy a cluster, run the dedicated [`minio-rm.yml`](playbook#minio-rmyml) playbook:

```bash
./minio-rm.yml -l minio                   # Remove MinIO cluster
./minio-rm.yml -l minio -e minio_rm_data=false  # Remove cluster but keep data
./minio-rm.yml -l minio -e minio_rm_pkg=true    # Remove cluster and uninstall packages
```

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Starting from Pigsty v3.6, cluster removal has been migrated from `minio.yml` playbook to the dedicated `minio-rm.yml` playbook. The old `minio_clean` task has been deprecated.
{{% /alert %}}

The removal playbook automatically performs the following:
- Deregisters MinIO targets from Victoria/Prometheus monitoring
- Removes records from the DNS service on INFRA nodes
- Stops and disables MinIO systemd service
- Deletes MinIO data directory and configuration files (optional)
- Uninstalls MinIO packages (optional)



--------

## Expand Cluster

- [Expand Cluster Tutorial](https://min.io/docs/minio/linux/operations/install-deploy-manage/expand-minio-deployment.html)

MinIO cannot scale at the node/disk level, but can scale at the storage pool (multiple nodes) level.

Assume you have a [four-node](config#multi-node-multi-disk) MinIO cluster and want to double the capacity by adding a new four-node storage pool.

```yaml
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

First, modify the MinIO cluster definition to add four new nodes, assigning sequence numbers 5 to 8.
The key step is to modify the [`minio_volumes`](param#minio_volumes) parameter to designate the new four nodes as a new **storage pool**.

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
    minio_data: '/data{1...4}'
    minio_volumes: 'https://minio-{1...4}.pigsty:9000/data{1...4} https://minio-{5...8}.pigsty:9000/data{1...4}'  # new cluster config
    # ... other configs omitted
```

Step 2: Add these nodes to Pigsty:

```bash
./node.yml -l 10.10.10.14,10.10.10.15,10.10.10.16,10.10.10.17
```

Step 3: On the new nodes, use the Ansible [playbook](playbook) to install and prepare MinIO software:

```bash
./minio.yml -l 10.10.10.14,10.10.10.15,10.10.10.16,10.10.10.17 -t minio_install
```

Step 4: On the **entire cluster**, use the Ansible [playbook](playbook) to reconfigure the MinIO cluster:

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

First, download the new version of MinIO packages to the local software repository on the INFRA node, then rebuild the repository index:

- [minio](https://github.com/minio/minio):
    - amd64: https://dl.min.io/server/minio/release/linux-amd64/
    - arm64: https://dl.min.io/server/minio/release/linux-arm64/
- [mcli](https://github.com/minio/mc):
    - amd64: https://dl.min.io/client/mc/release/linux-amd64/
    - arm64: https://dl.min.io/client/mc/release/linux-arm64/

```bash
./infra.yml -t repo_create
```

Next, use Ansible to batch upgrade MinIO packages:

```bash
ansible minio -m package -b -a 'name=minio state=latest'  # Upgrade MinIO server
ansible minio -m package -b -a 'name=mcli state=latest'   # Upgrade MinIO client
```

Finally, use the mc command line tool to instruct the MinIO cluster to restart:

```bash
mc admin service restart sss
```



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
mc admin heal
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
mc admin heal
```
