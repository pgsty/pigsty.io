---
title: Parameters
description: ETCD module provides 13 configuration parameters for fine-grained control
  over cluster behavior.
weight: 3420
icon: fa-solid fa-sliders
categories: [Reference]
---

The ETCD module has **13** parameters, divided into two sections:

- [**`ETCD`**](#etcd): 10 parameters for etcd cluster deployment and configuration
- [**`ETCD_REMOVE`**](#etcd_remove): 3 parameters for controlling etcd cluster removal

{{% alert title="Architecture Change: Pigsty v3.6+" color="info" %}}
Since Pigsty v3.6, the `etcd.yml` playbook no longer includes removal functionality—removal parameters have been migrated to a standalone `etcd_remove` role. Starting from v4.0, RBAC authentication is enabled by default, with a new `etcd_root_password` parameter.
{{% /alert %}}


----------------

## Parameter Overview

The [`ETCD`](#etcd) parameter group is used for etcd cluster deployment and configuration, including instance identification, cluster name, data directory, ports, and authentication password.

| Parameter                                             |    Type    | Level | Description                                      |
|:------------------------------------------------------|:----------:|:-----:|:-------------------------------------------------|
| [`etcd_seq`](#etcd_seq)                               |   `int`    |  `I`  | etcd instance identifier, REQUIRED               |
| [`etcd_cluster`](#etcd_cluster)                       |  `string`  |  `C`  | etcd cluster name, fixed to etcd by default      |
| [`etcd_learner`](#etcd_learner)                       |   `bool`   | `I/A` | initialize etcd instance as learner?             |
| [`etcd_data`](#etcd_data)                             |   `path`   |  `C`  | etcd data directory, /data/etcd by default       |
| [`etcd_port`](#etcd_port)                             |   `port`   |  `C`  | etcd client port, 2379 by default                |
| [`etcd_peer_port`](#etcd_peer_port)                   |   `port`   |  `C`  | etcd peer port, 2380 by default                  |
| [`etcd_init`](#etcd_init)                             |   `enum`   |  `C`  | etcd initial cluster state, new or existing      |
| [`etcd_election_timeout`](#etcd_election_timeout)     |   `int`    |  `C`  | etcd election timeout, 1000ms by default         |
| [`etcd_heartbeat_interval`](#etcd_heartbeat_interval) |   `int`    |  `C`  | etcd heartbeat interval, 100ms by default        |
| [`etcd_root_password`](#etcd_root_password)           | `password` |  `G`  | etcd root user password for RBAC authentication  |

The [`ETCD_REMOVE`](#etcd_remove) parameter group controls etcd cluster removal behavior, including safeguard protection, data cleanup, and package uninstallation.

| Parameter                               |  Type  |  Level  | Description                                              |
|:----------------------------------------|:------:|:-------:|:---------------------------------------------------------|
| [`etcd_safeguard`](#etcd_safeguard)     | `bool` | `G/C/A` | safeguard to prevent purging running etcd instances?     |
| [`etcd_rm_data`](#etcd_rm_data)         | `bool` | `G/C/A` | remove etcd data during removal? default is true         |
| [`etcd_rm_pkg`](#etcd_rm_pkg)           | `bool` | `G/C/A` | uninstall etcd packages during removal? default is false |



--------

## `ETCD`

This section contains parameters for the [`etcd`](https://github.com/pgsty/pigsty/blob/main/roles/etcd/defaults/main.yml) role,
which are used by the [`etcd.yml`](/docs/etcd/playbook#etcdyml) playbook.

Parameters are defined in [`roles/etcd/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/etcd/defaults/main.yml)

```yaml
#etcd_seq: 1                      # etcd instance identifier, explicitly required
etcd_cluster: etcd                # etcd cluster & group name, etcd by default
etcd_learner: false               # run etcd instance as learner? default is false
etcd_data: /data/etcd             # etcd data directory, /data/etcd by default
etcd_port: 2379                   # etcd client port, 2379 by default
etcd_peer_port: 2380              # etcd peer port, 2380 by default
etcd_init: new                    # etcd initial cluster state, new or existing
etcd_election_timeout: 1000       # etcd election timeout, 1000ms by default
etcd_heartbeat_interval: 100      # etcd heartbeat interval, 100ms by default
etcd_root_password: Etcd.Root     # etcd root user password for RBAC authentication (please change!)
```



### `etcd_seq`

Parameter: `etcd_seq`, Type: `int`, Level: `I`

etcd instance identifier. This is a **required** parameter—you must assign a unique identifier to each etcd instance.

Here is an example of a 3-node etcd cluster with identifiers 1 through 3:

```yaml
etcd: # dcs service for postgres/patroni ha consensus
  hosts:  # 1 node for testing, 3 or 5 for production
    10.10.10.10: { etcd_seq: 1 }  # etcd_seq required
    10.10.10.11: { etcd_seq: 2 }  # assign from 1 ~ n
    10.10.10.12: { etcd_seq: 3 }  # use odd numbers
  vars: # cluster level parameter override roles/etcd
    etcd_cluster: etcd  # mark etcd cluster name etcd
    etcd_safeguard: false # safeguard against purging
```



### `etcd_cluster`

Parameter: `etcd_cluster`, Type: `string`, Level: `C`

etcd cluster & group name, default value is the hard-coded `etcd`.

You can modify this parameter when you want to deploy an additional etcd cluster for backup purposes.




### `etcd_learner`

Parameter: `etcd_learner`, Type: `bool`, Level: `I/A`

Initialize etcd instance as learner? Default value is `false`.

When set to `true`, the etcd instance will be initialized as a learner, meaning it cannot participate in voting elections within the etcd cluster.

**Use Cases**:

- **Cluster Expansion**: When adding new members to an existing cluster, using learner mode prevents affecting cluster quorum before data synchronization completes
- **Safe Migration**: In rolling upgrade or migration scenarios, join as a learner first, then promote after confirming data synchronization

**Workflow**:

1. Set `etcd_learner: true` to initialize the new member as a learner
2. Wait for data synchronization to complete (check with `etcdctl endpoint status`)
3. Use `etcdctl member promote <member_id>` to promote it to a full member

{{% alert title="Note" color="info" %}}
Learner instances do not count toward cluster quorum. For example, in a 3-node cluster with 1 learner, the actual voting members are 2, which cannot tolerate any node failure.
{{% /alert %}}






### `etcd_data`

Parameter: `etcd_data`, Type: `path`, Level: `C`

etcd data directory, default is `/data/etcd`.






### `etcd_port`

Parameter: `etcd_port`, Type: `port`, Level: `C`

etcd client port, default is `2379`.





### `etcd_peer_port`

Parameter: `etcd_peer_port`, Type: `port`, Level: `C`

etcd peer port, default is `2380`.





### `etcd_init`

Parameter: `etcd_init`, Type: `enum`, Level: `C`

etcd initial cluster state, can be `new` or `existing`, default value: `new`.

**Option Values**:

| Value      | Description                  | Use Case                               |
|:-----------|:-----------------------------|:---------------------------------------|
| `new`      | Create a new etcd cluster    | Initial deployment, cluster rebuild    |
| `existing` | Join an existing etcd cluster | Cluster expansion, adding new members  |

**Important Notes**:

{{% alert title="Must use existing when expanding" color="warning" %}}
When adding new members to an existing etcd cluster, you **must** set `etcd_init=existing`. Otherwise, the new instance will attempt to create an independent new cluster, causing split-brain or initialization failure.
{{% /alert %}}

**Usage Examples**:

```bash
# Create new cluster (default behavior)
./etcd.yml

# Add new member to existing cluster
./etcd.yml -l <new_ip> -e etcd_init=existing

# Or use the convenience script (automatically sets etcd_init=existing)
bin/etcd-add <new_ip>
```





### `etcd_election_timeout`

Parameter: `etcd_election_timeout`, Type: `int`, Level: `C`

etcd election timeout, default is `1000` (milliseconds), i.e., 1 second.





### `etcd_heartbeat_interval`

Parameter: `etcd_heartbeat_interval`, Type: `int`, Level: `C`

etcd heartbeat interval, default is `100` (milliseconds).




### `etcd_root_password`

Parameter: `etcd_root_password`, Type: `password`, Level: `G`

etcd root user password for RBAC authentication, default value is `Etcd.Root`.

Pigsty v4.0 enables etcd RBAC (Role-Based Access Control) authentication by default. During cluster initialization, the `etcd_auth` task automatically creates the root user and enables authentication.

**Password Storage Location**:

- Password is stored in `/etc/etcd/etcd.pass` file
- File permissions are `0640` (owned by root, readable by etcd group)
- The etcdctl environment script `/etc/profile.d/etcdctl.sh` automatically reads this file

**Integration with Other Components**:

- Patroni uses the [`pg_etcd_password`](/docs/pgsql/param#pg_etcd_password) parameter to configure the password for connecting to etcd
- If `pg_etcd_password` is empty, Patroni will use the cluster name as password (not recommended)
- VIP-Manager also requires the same authentication credentials to connect to etcd

**Security Recommendations**:

{{% alert title="Production Security" color="warning" %}}
In production environments, it is **strongly recommended to change the default password** `Etcd.Root`. Set it in global or cluster configuration:

```yaml
etcd_root_password: 'YourSecurePassword'
```

Using `configure -g` will automatically generate and replace `etcd_root_password`

{{% /alert %}}





--------

## `ETCD_REMOVE`

This section contains parameters for the [`etcd_remove`](https://github.com/pgsty/pigsty/blob/main/roles/etcd_remove/defaults/main.yml) role,
which are action flags used by the [`etcd-rm.yml`](/docs/etcd/playbook#etcd-rmyml) playbook.

Parameters are defined in [`roles/etcd_remove/defaults/main.yml`](https://github.com/pgsty/pigsty/blob/main/roles/etcd_remove/defaults/main.yml)

```yaml
etcd_safeguard: false             # prevent purging running etcd instances?
etcd_rm_data: true                # remove etcd data and config files during removal?
etcd_rm_pkg: false                # uninstall etcd packages during removal?
```



### `etcd_safeguard`

Parameter: `etcd_safeguard`, Type: `bool`, Level: `G/C/A`

Safeguard to prevent purging running etcd instances? Default value is `false`.

When enabled, the [`etcd-rm.yml`](/docs/etcd/playbook#etcd-rmyml) playbook will abort when detecting running etcd instances, preventing accidental deletion of active etcd clusters.

**Recommended Settings**:

| Environment | Recommended | Description                                   |
|:------------|:------------|:----------------------------------------------|
| Dev/Test    | `false`     | Convenient for rapid rebuilding and testing   |
| Production  | `true`      | Prevents service interruption from accidental operations |

In emergencies, you can override the configuration with command-line parameters:

```bash
./etcd-rm.yml -e etcd_safeguard=false
```




### `etcd_rm_data`

Parameter: `etcd_rm_data`, Type: `bool`, Level: `G/C/A`

Remove etcd data and configuration files during removal? Default value is `true`.

When enabled, the [`etcd-rm.yml`](/docs/etcd/playbook#etcd-rmyml) playbook will delete the following contents when removing a cluster or member:

- `/etc/etcd/` - Configuration directory (including certificates and password files)
- `/var/lib/etcd/` - Alternate data directory
- `{{ etcd_data }}` - Primary data directory (default `/data/etcd`)
- `{{ systemd_dir }}/etcd.service` - Systemd service unit file
- `/etc/profile.d/etcdctl.sh` - Client environment script
- `/etc/vector/etcd.yaml` - Vector log collection config

**Use Cases**:

| Scenario        | Recommended     | Description                                  |
|:----------------|:----------------|:---------------------------------------------|
| Complete removal | `true` (default) | Full cleanup, free disk space               |
| Stop service only | `false`        | Preserve data for troubleshooting or recovery |

```bash
# Stop service only, preserve data
./etcd-rm.yml -e etcd_rm_data=false
```




### `etcd_rm_pkg`

Parameter: `etcd_rm_pkg`, Type: `bool`, Level: `G/C/A`

Uninstall etcd packages during removal? Default value is `false`.

When enabled, the [`etcd-rm.yml`](/docs/etcd/playbook#etcd-rmyml) playbook will uninstall etcd packages when removing a cluster or member.

**Use Cases**:

| Scenario         | Recommended      | Description                            |
|:-----------------|:-----------------|:---------------------------------------|
| Normal removal   | `false` (default) | Keep packages for quick redeployment  |
| Complete cleanup | `true`           | Full uninstall, save disk space        |

```bash
# Uninstall packages during removal
./etcd-rm.yml -e etcd_rm_pkg=true
```

{{% alert title="Tip" color="info" %}}
Usually there's no need to uninstall etcd packages. Keeping the packages speeds up subsequent redeployments since no re-download or installation is required.
{{% /alert %}}


