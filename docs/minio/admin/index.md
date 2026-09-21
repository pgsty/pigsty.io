# Administration

> Create, remove, upgrade, expand, shrink, and recover Silo object-storage clusters.

---

LLMS index: [llms.txt](/llms.txt)

---

------

## Create Cluster

To create a cluster, define it in the config inventory and run the [`minio.yml`](/docs/minio/playbook#minioyml) playbook.

```yaml
minio: { hosts: { 10.10.10.10: { minio_seq: 1 } }, vars: { minio_cluster: minio, minio_type: silo } }
```

The configuration above defines an SNSD [Single-Node Single-Disk](/docs/minio/config#single-node-single-disk) Silo cluster. Create it with:

```bash
./minio.yml -l minio  # Install Silo on the minio group
```


------

## Remove Cluster

To destroy a cluster, run the dedicated [`minio-rm.yml`](/docs/minio/playbook#minio-rmyml) playbook:

```bash
./minio-rm.yml -l minio -e minio_type=silo
./minio-rm.yml -l minio -e minio_type=silo -e minio_rm_data=false
./minio-rm.yml -l minio -e minio_type=silo -e minio_rm_pkg=true
```

The removal role also defaults `minio_type` to `silo`; other values are rejected. The examples still spell it out so the backend, cluster identity, and paths are visible during review.

> [!NOTE] Architecture Change: Pigsty v3.6+
> Starting from Pigsty v3.6, cluster removal has been migrated from `minio.yml` playbook to the dedicated `minio-rm.yml` playbook. The old `minio_clean` task has been deprecated.

The removal playbook attempts these operations in order:
- Deregisters object-storage targets from VictoriaMetrics monitoring
- Removes records from the DNS service on INFRA nodes
- Stops and disables `silo.service`
- Deletes data directories and Silo configuration (`minio_rm_data`, enabled by default)
- Uninstalls Silo and `mcli` packages (`minio_rm_pkg`, disabled by default)

The playbook tolerates errors. Its return status alone does not prove that the service, data, DNS records, and monitoring targets were all handled as intended; inspect each item after a real run.



--------

## Expand Cluster

This section uses the MinIO-compatible administration interfaces retained by Silo. Before a production operation, verify the constraints of the exact Silo version and complete a dedicated rehearsal.

- [Expand Cluster Tutorial](https://min.io/docs/minio/linux/operations/install-deploy-manage/expand-minio-deployment.html)

Silo cannot directly change the node or disk count of an existing storage pool, but it can expand by adding a new pool.

Assume you have a [four-node](/docs/minio/config#multi-node-multi-disk) Silo cluster and want to double capacity by adding a new four-node storage pool.

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

First, modify the Silo cluster definition to add four new nodes, assigning sequence numbers 5 to 8.
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

Step 3: On the new nodes, use the Ansible [playbook](/docs/minio/playbook/) to install and prepare Silo:

```bash
./minio.yml -l 10.10.10.14,10.10.10.15,10.10.10.16,10.10.10.17 -t minio_install
```

Step 4: On the **entire cluster**, use the Ansible [playbook](/docs/minio/playbook/) to reconfigure Silo:

```bash
./minio.yml -l minio -t minio_config
```

> This step updates the `MINIO_VOLUMES` configuration on the existing four nodes

Step 5: Restart the entire Silo cluster at once (do not use a rolling restart):

```bash
./minio.yml -l minio -t minio_launch -f 10   # Up to 10 forks; restart all 8 nodes together
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

Silo cannot directly reduce the node or disk count of an existing storage pool. To shrink at the pool level, add a new pool, drain the old pool into it, and then retire the old pool.

- [Shrink Cluster Tutorial](https://min.io/docs/minio/linux/operations/install-deploy-manage/decommission-server-pool.html)





--------

## Upgrade Cluster

- [Upgrade Cluster Tutorial](https://min.io/docs/minio/linux/operations/install-deploy-manage/upgrade-minio-deployment.html)

First, download the new `silo` and `mcli` packages to the local repository on the INFRA node, then rebuild repository metadata with SOW:

```bash
./infra.yml -t repo_create
```

Next, upgrade the Silo server and compatible `mcli` client:

```bash
ansible minio -m package -b -a 'name=silo state=latest'  # Server
ansible minio -m package -b -a 'name=mcli state=latest'  # Compatible client
```

Finally, have the role restart the complete Silo cluster:

```bash
./minio.yml -l minio -t minio_config,minio_launch
```

A package upgrade and migration from legacy MinIO to Silo are different operations. The former applies to a cluster already running Silo; the latter requires separate data-compatibility validation, backups, a maintenance window, and a rehearsed rollback plan. Do not reuse this upgrade procedure for migration.



--------

## Node Failure Recovery

- [Node Failure Tutorial](https://min.io/docs/minio/linux/operations/data-recovery/recover-after-node-failure.html#minio-restore-hardware-failure-node)

```bash
# 1. Remove the failed node from the cluster
bin/node-rm <your_old_node_ip>

# 2. Replace the failed node and keep its original name (if the IP changes, update the Silo cluster definition)
bin/node-add <your_new_node_ip>

# 3. Install and configure Silo on the new node
./minio.yml -l <your_new_node_ip>

# 4. Instruct Silo to heal
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

# 5. Instruct Silo to heal
mcli admin heal
```


--------

## Manage Silo Passwords

[**`minio_secret_key`**](/docs/minio/param#minio_secret_key), which defaults to `S3User.MinIO`, is the Silo root password. It is rendered to `/etc/default/silo`.

After changing it, refresh configuration and restart the entire cluster:

```bash
./minio.yml -l minio -t minio_config,minio_launch,minio_alias -f 30
```

To change a regular Silo user password, such as `pgbackrest`, run this on a node that can access Silo:

```bash
set +o history
mcli admin user passwd sss pgbackrest <YOUR_NEW_PASSWORD>
set -o history
```

Then update every consumer of that password. For example, if pgBackRest uses the `minio` S3-compatible repository preset, refresh its configuration with:

```bash
./pgsql.yml -t pgbackrest_config
```
