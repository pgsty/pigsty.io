---
title: Playbook
weight: 3830
description: Manage Redis clusters with Ansible playbooks and quick command reference.
icon: fa-solid fa-scroll
module: [REDIS]
categories: [Task]
---



The REDIS module provides two playbooks for deploying/removing Redis clusters/nodes/instances:

- [`redis.yml`](#redisyml): Deploy Redis cluster/node/instance
- [`redis-rm.yml`](#redis-rmyml): Remove Redis cluster/node/instance



--------

## `redis.yml`

The [`redis.yml`](https://github.com/pgsty/pigsty/blob/main/redis.yml) playbook for deploying Redis contains the following subtasks:

```bash
redis_node        : Init redis node
  - redis_install : Install Redis and the `redis-exporter` package
  - redis_user    : Create OS user redis
  - redis_dir     : Configure redis FHS directory structure
redis_exporter    : Configure redis_exporter monitoring
  - redis_exporter_config  : Generate redis_exporter config
  - redis_exporter_launch  : Launch redis_exporter
redis_instance    : Init and restart redis cluster/node/instance
  - redis_config  : Generate redis instance config
  - redis_launch  : Launch redis instance
redis_register    : Register redis to infrastructure
redis_ha          : Configure redis sentinel (sentinel mode only)
redis_join        : Join redis native cluster (cluster mode only)
```


### Operation Levels

`redis.yml` supports three operation levels, controlled by `-l` to limit target scope and `-e redis_port=<port>` to specify a single instance:

| Level | Parameters | Description |
|:------|:-----------|:------------|
| **Cluster** | `-l <cluster>` | Deploy all nodes and instances of the entire Redis cluster |
| **Node** | `-l <ip>` | Deploy all Redis instances on the specified node |
| **Instance** | `-l <ip> -e redis_port=<port>` | Deploy only a single instance on the specified node |


### Cluster-Level Operations

Deploy an entire Redis cluster, including all instances on all nodes:

```bash
./redis.yml -l redis-ms           # deploy the entire redis-ms cluster
./redis.yml -l redis-test         # deploy the entire redis-test cluster
./redis.yml -l redis-sentinel     # deploy sentinel cluster
```

Cluster-level operations will:
- Install Redis or Valkey according to `redis_type`, plus `redis-exporter`, on all nodes
- Create redis user and directory structure on all nodes
- Start redis_exporter on all nodes
- Deploy and start all defined Redis instances
- Register all instances to the monitoring system
- If `sentinel` mode, configure sentinel monitoring targets
- If `cluster` mode, form the native cluster


### Node-Level Operations

Deploy only all Redis instances on the specified node:

```bash
./redis.yml -l 10.10.10.10        # deploy all instances on this node
./redis.yml -l 10.10.10.11        # deploy another node
```

Node-level operations are useful for:
- **Scaling up** by adding new nodes to an existing cluster
- Redeploying all instances on a specific node
- Reinitializing after node failure recovery

> **Note**: Node-level commands still enter the `redis-ha` / `redis-join` mode checks. Sentinel mode refreshes managed targets. In cluster mode, the playbook first uses the selected CLI to check the seed instance for `cluster_state:ok`; it exits for a healthy cluster and otherwise runs `--cluster create`. This guard does not replace scale-out: use `redis-cli` / `valkey-cli --cluster add-node` and `reshard` manually for an existing native cluster.


### Instance-Level Operations

Use the `-e redis_port=<port>` parameter to operate on a single instance:

```bash
# Deploy only the 6379 port instance on 10.10.10.10
./redis.yml -l 10.10.10.10 -e redis_port=6379

# Deploy only the 6380 port instance on 10.10.10.11
./redis.yml -l 10.10.10.11 -e redis_port=6380
```

Instance-level operations are useful for:
- **Adding new instances** to an existing node
- Redeploying a single failed instance
- Updating a single instance's configuration

When `redis_port` is specified:
- Only renders the config file for that port
- Only starts/restarts the systemd service for that port
- Rewrites the node's monitoring registration file (content comes from the full `redis_instances` definition)
- **Does not** start/stop `redis_exporter` or reload Vector log config
- **Does not** affect other Redis instance processes on the same node


### Common Tags

Use the `-t <tag>` parameter to selectively execute certain tasks:

```bash
# Install packages only, don't start services
./redis.yml -l redis-ms -t redis_node

# Update config and restart instances only
./redis.yml -l redis-ms -t redis_config,redis_launch

# Update monitoring registration only
./redis.yml -l redis-ms -t redis_register

# Configure sentinel monitoring targets only (sentinel mode)
./redis.yml -l redis-sentinel -t redis-ha

# Form native cluster only (cluster mode, auto-runs after first deployment)
./redis.yml -l redis-cluster -t redis-join
```


### Idempotency

Most tasks in `redis.yml` can be run repeatedly, but native-cluster initialization still requires attention to topology state:

- Re-running `redis_node` / `redis_exporter` / `redis_instance` / `redis_register` overwrites config and restarts instances
- Re-running `redis-ha` reapplies `SENTINEL REMOVE/MONITOR` based on `redis_sentinel_monitor`
- `redis-join` first checks whether the seed instance has reached `cluster_state:ok` and exits for a healthy cluster. The check does not repair incomplete or damaged topologies or perform scale-out, so do not treat it as a general add-node/reshard operation.

> **Tip**: If you only want to update configs without restarting all instances, use `-t redis_config` to render configs only, then manually restart the instances you need.

Redis/Valkey units use `Type=notify`. During startup, systemd waits up to `1800s` for readiness so large RDB/AOF loads and recovery can finish. A timeout is not a reason to broaden data deletion or use a forced stop; inspect instance logs, data size, disk I/O, and memory first.



--------

## `redis-rm.yml`

The [`redis-rm.yml`](https://github.com/pgsty/pigsty/blob/main/redis-rm.yml) playbook for removing Redis contains the following subtasks:

```bash
redis_safeguard  : Safety check, abort if redis_safeguard=true
redis_deregister : Remove registration from monitoring system
  - rm_metrics   : Delete /infra/targets/redis/*.yml
  - rm_logs      : Revoke /etc/vector/redis.yaml
redis_exporter   : Stop and disable redis_exporter
redis            : Stop and disable redis instances
redis_data       : Delete data directories (when redis_rm_data=true)
redis_pkg        : Uninstall selected engine and redis-exporter (when redis_rm_pkg=true)
```

Tag-scoped execution follows the data/package switches. `-t redis` always enters the instance-stop phase; `-t redis_data` stops instances only when `redis_rm_data=true`, and `-t redis_pkg` stops them only when `redis_rm_pkg=true`. Thus `-t redis_data -e redis_rm_data=false` and `-t redis_pkg -e redis_rm_pkg=false` do not stop Redis merely because the tag was selected. Before any real removal, verify the exact same `-l`, tags, and extra variables.


### Operation Levels

`redis-rm.yml` also supports three operation levels:

| Level | Parameters | Description |
|:------|:-----------|:------------|
| **Cluster** | `-l <cluster>` | Remove all nodes and instances of the entire Redis cluster |
| **Node** | `-l <ip>` | Remove all Redis instances on the specified node |
| **Instance** | `-l <ip> -e redis_port=<port>` | Remove only a single instance on the specified node |


### Cluster-Level Removal

Remove an entire Redis cluster:

```bash
./redis-rm.yml -l redis-ms        # remove the entire redis-ms cluster
./redis-rm.yml -l redis-test      # remove the entire redis-test cluster
```

Cluster-level removal will:
- Deregister all instances on all nodes from the monitoring system
- Stop redis_exporter on all nodes
- Stop and disable all Redis instances
- Delete all data directories (if `redis_rm_data=true`)
- Uninstall the engine selected by `redis_type` and `redis-exporter` (if `redis_rm_pkg=true`)


### Node-Level Removal

Remove only all Redis instances on the specified node:

```bash
./redis-rm.yml -l 10.10.10.10     # remove all instances on this node
./redis-rm.yml -l 10.10.10.11     # remove another node
```

Node-level removal is useful for:
- **Scaling down** by removing an entire node
- Cleanup before node decommission
- Preparation before node migration

Node-level removal will:
- Deregister all instances on that node from the monitoring system
- Stop redis_exporter on that node
- Stop all Redis instances on that node
- Delete all data directories on that node
- Delete Vector logging config on that node


### Instance-Level Removal

Use the `-e redis_port=<port>` parameter to remove a single instance:

```bash
# Remove only the 6379 port instance on 10.10.10.10
./redis-rm.yml -l 10.10.10.10 -e redis_port=6379

# Remove only the 6380 port instance on 10.10.10.11
./redis-rm.yml -l 10.10.10.11 -e redis_port=6380
```

Instance-level removal is useful for:
- Removing a **single replica** from a node
- Removing instances no longer needed
- Removing the original primary after failover

Behavioral differences when `redis_port` is specified:

| Component | Node-Level (no redis_port) | Instance-Level (with redis_port) |
|:----------|:---------------------------|:---------------------------------|
| Monitoring registration | Delete entire node's registration file | Only remove that instance from registration file |
| redis_exporter | Stop and disable | **No operation** (other instances still need it) |
| Redis instances | Stop all instances | Only stop the specified port's instance |
| Data directory | Delete entire `redis_fs_main` (default: `/data/redis/`) | Only delete `redis_fs_main/<cluster>-<node>-<port>/` (if `redis_fs_main=/data`, removal is compat-mapped to `/data/redis`) |
| Vector config | Delete `/etc/vector/redis.yaml` | **No operation** (other instances still need it) |
| Packages | Optionally uninstall | **No operation** |


### Control Parameters

`redis-rm.yml` provides the following control parameters:

| Parameter | Default | Description |
|:----------|:--------|:------------|
| `redis_safeguard` | `false` | Safety guard; when `true`, refuses to execute removal |
| `redis_rm_data` | `true` | Whether to delete data directories (RDB/AOF files) |
| `redis_rm_pkg` | `false` | Whether to uninstall the selected engine and redis-exporter |

Usage examples:

```bash
# Remove cluster but keep data directories
./redis-rm.yml -l redis-ms -e redis_rm_data=false

# Remove cluster and uninstall packages
./redis-rm.yml -l redis-ms -e redis_rm_pkg=true

# Override only after verifying the target and backups when the inventory enables the safeguard
./redis-rm.yml -l redis-ms -e redis_safeguard=false
```

{{% alert title="Destructive Operation" color="danger" %}}
`redis_safeguard` defaults to `false`, while `redis_rm_data` defaults to `true`. The removal playbook also tolerates several service-stop, deregistration, data-deletion, and package-removal errors. After a real run, inspect the target processes, data directories, and monitoring registration; do not treat the playbook return status alone as proof of completion.
{{% /alert %}}


### Safeguard Mechanism

When a cluster has `redis_safeguard: true` configured, `redis-rm.yml` will refuse to execute:

```yaml
redis-production:
  vars:
    redis_safeguard: true    # enable protection for production
```

```bash
$ ./redis-rm.yml -l redis-production
TASK [ABORT due to redis_safeguard enabled] ***
fatal: [10.10.10.10]: FAILED! => {"msg": "Abort due to redis_safeguard..."}
```

Explicit override is required to execute:

```bash
./redis-rm.yml -l redis-production -e redis_safeguard=false
```



--------

## Quick Reference

### Deployment Quick Reference

```bash
# Deploy entire cluster
./redis.yml -l <cluster>

# Scale up: deploy new node (then manually add-node in cluster mode)
./redis.yml -l <new-node-ip>

# Scale up: add new instance to existing node (add definition to config first)
./redis.yml -l <ip> -e redis_port=<new-port>

# Update config and restart
./redis.yml -l <cluster> -t redis_config,redis_launch

# Update single instance config only
./redis.yml -l <ip> -e redis_port=<port> -t redis_config,redis_launch
```

### Removal Quick Reference

```bash
# Remove entire cluster
./redis-rm.yml -l <cluster>

# Scale down: remove entire node
./redis-rm.yml -l <ip>

# Scale down: remove single instance
./redis-rm.yml -l <ip> -e redis_port=<port>

# Remove but keep data
./redis-rm.yml -l <cluster> -e redis_rm_data=false

# Complete cleanup (including packages)
./redis-rm.yml -l <cluster> -e redis_rm_pkg=true
```

### Wrapper Scripts

Pigsty provides convenient wrapper scripts:

```bash
# Deploy
bin/redis-add <cluster>           # deploy cluster
bin/redis-add <ip>                # deploy node
bin/redis-add <ip> <port>         # deploy instance

# Remove
bin/redis-rm <cluster>            # remove cluster
bin/redis-rm <ip>                 # remove node
bin/redis-rm <ip> <port>          # remove instance
```


--------

## Demo

Initialize Redis cluster with Redis playbook:

[![asciicast](https://asciinema.org/a/568808.svg)](https://asciinema.org/a/568808)
