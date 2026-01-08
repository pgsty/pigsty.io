---
title: Parameters
description: NODE module provides 11 sections with 83 parameters
weight: 3230
icon: fa-solid fa-sliders
categories: [Reference]
---

The [NODE](/docs/node) module tunes target nodes into the desired state and integrates them into the Pigsty monitoring system.

------------------------------

| Parameter Section                   | Description                     |
|:------------------------------------|:--------------------------------|
| [`NODE_ID`](#node_id)               | Node identity parameters        |
| [`NODE_DNS`](#node_dns)             | Node DNS resolution             |
| [`NODE_PACKAGE`](#node_package)     | Upstream repo & package install |
| [`NODE_TUNE`](#node_tune)           | Node tuning & kernel features   |
| [`NODE_SEC`](#node_sec)             | Node security configurations    |
| [`NODE_ADMIN`](#node_admin)         | Admin user & SSH keys           |
| [`NODE_TIME`](#node_time)           | Timezone, NTP, crontab          |
| [`NODE_VIP`](#node_vip)             | Optional L2 VIP for cluster     |
| [`HAPROXY`](#haproxy)               | HAProxy load balancer           |
| [`NODE_EXPORTER`](#node_exporter)   | Node monitoring exporter        |
| [`VECTOR`](#vector)                 | Vector log collector            |

----------------

## Parameters Overview

[`NODE_ID`](#node_id) section defines node identity parameters, including node name, cluster name, and whether to borrow identity from PostgreSQL.

| Parameter                                           |    Type     |  Level  | Description                                           |
|:----------------------------------------------------|:-----------:|:-------:|:------------------------------------------------------|
| [`nodename`](#nodename)                             |  `string`   |   `I`   | node instance identity, use hostname if missing       |
| [`node_cluster`](#node_cluster)                     |  `string`   |   `C`   | node cluster identity, use 'nodes' if missing         |
| [`nodename_overwrite`](#nodename_overwrite)         |   `bool`    |   `C`   | overwrite node's hostname with nodename?              |
| [`nodename_exchange`](#nodename_exchange)           |   `bool`    |   `C`   | exchange nodename among play hosts?                   |
| [`node_id_from_pg`](#node_id_from_pg)               |   `bool`    |   `C`   | use postgres identity as node identity if applicable? |

[`NODE_DNS`](#node_dns) section configures node DNS resolution, including static hosts records and dynamic DNS servers.

| Parameter                                               |    Type     |   Level   | Description                                      |
|:--------------------------------------------------------|:-----------:|:---------:|:-------------------------------------------------|
| [`node_write_etc_hosts`](#node_write_etc_hosts)         |   `bool`    | `G/C/I`   | modify `/etc/hosts` on target node?              |
| [`node_default_etc_hosts`](#node_default_etc_hosts)     | `string[]`  |    `G`    | static dns records in `/etc/hosts`               |
| [`node_etc_hosts`](#node_etc_hosts)                     | `string[]`  |    `C`    | extra static dns records in `/etc/hosts`         |
| [`node_dns_method`](#node_dns_method)                   |   `enum`    |    `C`    | how to handle dns servers: add,none,overwrite    |
| [`node_dns_servers`](#node_dns_servers)                 | `string[]`  |    `C`    | dynamic nameserver in `/etc/resolv.conf`         |
| [`node_dns_options`](#node_dns_options)                 | `string[]`  |    `C`    | dns resolv options in `/etc/resolv.conf`         |

[`NODE_PACKAGE`](#node_package) section configures node software repositories and package installation.

| Parameter                                             |    Type     |  Level  | Description                                        |
|:------------------------------------------------------|:-----------:|:-------:|:---------------------------------------------------|
| [`node_repo_modules`](#node_repo_modules)             |   `enum`    |   `C`   | which repo modules to enable on node? local default|
| [`node_repo_remove`](#node_repo_remove)               |   `bool`    |   `C`   | remove existing repo on node when configuring?     |
| [`node_packages`](#node_packages)                     | `string[]`  |   `C`   | packages to be installed on current nodes          |
| [`node_default_packages`](#node_default_packages)     | `string[]`  |   `G`   | default packages to be installed on all nodes      |

[`NODE_TUNE`](#node_tune) section configures node kernel parameters, feature toggles, and tuning templates.

| Parameter                                               |    Type     |  Level  | Description                                              |
|:--------------------------------------------------------|:-----------:|:-------:|:---------------------------------------------------------|
| [`node_disable_numa`](#node_disable_numa)               |   `bool`    |   `C`   | disable node numa, reboot required                       |
| [`node_disable_swap`](#node_disable_swap)               |   `bool`    |   `C`   | disable node swap, use with caution                      |
| [`node_static_network`](#node_static_network)           |   `bool`    |   `C`   | preserve dns resolver settings after reboot              |
| [`node_disk_prefetch`](#node_disk_prefetch)             |   `bool`    |   `C`   | setup disk prefetch on HDD to increase performance       |
| [`node_kernel_modules`](#node_kernel_modules)           | `string[]`  |   `C`   | kernel modules to be enabled on this node                |
| [`node_hugepage_count`](#node_hugepage_count)           |   `int`     |   `C`   | number of 2MB hugepage, take precedence over ratio       |
| [`node_hugepage_ratio`](#node_hugepage_ratio)           |  `float`    |   `C`   | node mem hugepage ratio, 0 disable it by default         |
| [`node_overcommit_ratio`](#node_overcommit_ratio)       |  `float`    |   `C`   | node mem overcommit ratio (50-100), 0 disable it         |
| [`node_tune`](#node_tune)                               |   `enum`    |   `C`   | node tuned profile: none,oltp,olap,crit,tiny             |
| [`node_sysctl_params`](#node_sysctl_params)             |   `dict`    |   `C`   | extra sysctl parameters in k:v format                    |

[`NODE_SEC`](#node_sec) section configures node security options, including SELinux and firewall.

| Parameter                                                       |    Type     |  Level  | Description                                          |
|:----------------------------------------------------------------|:-----------:|:-------:|:-----------------------------------------------------|
| [`node_selinux_mode`](#node_selinux_mode)                       |   `enum`    |   `C`   | SELinux mode: disabled, permissive, enforcing        |
| [`node_firewall_mode`](#node_firewall_mode)                     |   `enum`    |   `C`   | firewall mode: off, none, zone                       |
| [`node_firewall_intranet`](#node_firewall_intranet)             |  `cidr[]`   |   `C`   | intranet CIDR list for firewall rules                |
| [`node_firewall_public_port`](#node_firewall_public_port)       |  `port[]`   |   `C`   | public exposed port list, default [22, 80, 443, 5432]|

[`NODE_ADMIN`](#node_admin) section configures admin user, data directory, and shell aliases.

| Parameter                                                   |    Type     |  Level  | Description                                            |
|:------------------------------------------------------------|:-----------:|:-------:|:-------------------------------------------------------|
| [`node_data`](#node_data)                                   |   `path`    |   `C`   | node main data directory, `/data` by default           |
| [`node_admin_enabled`](#node_admin_enabled)                 |   `bool`    |   `C`   | create a admin user on target node?                    |
| [`node_admin_uid`](#node_admin_uid)                         |   `int`     |   `C`   | uid and gid for node admin user                        |
| [`node_admin_username`](#node_admin_username)               | `username`  |   `C`   | name of node admin user, `dba` by default              |
| [`node_admin_sudo`](#node_admin_sudo)                       |   `enum`    |   `C`   | admin sudo privilege: limited, nopass, all, none       |
| [`node_admin_ssh_exchange`](#node_admin_ssh_exchange)       |   `bool`    |   `C`   | exchange admin ssh key among node cluster              |
| [`node_admin_pk_current`](#node_admin_pk_current)           |   `bool`    |   `C`   | add current user's ssh pk to admin authorized_keys     |
| [`node_admin_pk_list`](#node_admin_pk_list)                 | `string[]`  |   `C`   | ssh public keys to be added to admin user              |
| [`node_aliases`](#node_aliases)                             |   `dict`    |   `C`   | shell aliases in K:V dict format                       |

[`NODE_TIME`](#node_time) section configures timezone, NTP time sync, and crontab.

| Parameter                                                 |    Type     |  Level  | Description                                |
|:----------------------------------------------------------|:-----------:|:-------:|:-------------------------------------------|
| [`node_timezone`](#node_timezone)                         |  `string`   |   `C`   | setup node timezone, empty string to skip  |
| [`node_ntp_enabled`](#node_ntp_enabled)                   |   `bool`    |   `C`   | enable chronyd time sync service?          |
| [`node_ntp_servers`](#node_ntp_servers)                   | `string[]`  |   `C`   | ntp servers in `/etc/chrony.conf`          |
| [`node_crontab_overwrite`](#node_crontab_overwrite)       |   `bool`    |   `C`   | overwrite or append to `/etc/crontab`?     |
| [`node_crontab`](#node_crontab)                           | `string[]`  |   `C`   | crontab entries in `/etc/crontab`          |

[`NODE_VIP`](#node_vip) section configures L2 VIP for node cluster, implemented by keepalived.

| Parameter                                     |    Type     |  Level  | Description                                        |
|:----------------------------------------------|:-----------:|:-------:|:---------------------------------------------------|
| [`vip_enabled`](#vip_enabled)                 |   `bool`    |   `C`   | enable L2 vip on this node cluster?                |
| [`vip_address`](#vip_address)                 |    `ip`     |   `C`   | node vip address in ipv4 format, required if enabled|
| [`vip_vrid`](#vip_vrid)                       |   `int`     |   `C`   | integer 1-254, should be unique in same VLAN       |
| [`vip_role`](#vip_role)                       |   `enum`    |   `I`   | optional, master/backup, backup by default         |
| [`vip_preempt`](#vip_preempt)                 |   `bool`    |  `C/I`  | optional, true/false, enable vip preemption        |
| [`vip_interface`](#vip_interface)             |  `string`   |  `C/I`  | node vip network interface, `eth0` by default      |
| [`vip_dns_suffix`](#vip_dns_suffix)           |  `string`   |   `C`   | node vip dns name suffix, empty string by default  |
| [`vip_auth_pass`](#vip_auth_pass)             | `password`  |   `C`   | vrrp authentication password, auto-generated if empty |
| [`vip_exporter_port`](#vip_exporter_port)     |   `port`    |   `C`   | keepalived exporter listen port, 9650 by default   |

[`HAPROXY`](#haproxy) section configures HAProxy load balancer and service exposure.

| Parameter                                                 |    Type     |   Level   | Description                              |
|:----------------------------------------------------------|:-----------:|:---------:|:-----------------------------------------|
| [`haproxy_enabled`](#haproxy_enabled)                     |   `bool`    |    `C`    | enable haproxy on this node?             |
| [`haproxy_clean`](#haproxy_clean)                         |   `bool`    |  `G/C/A`  | cleanup all existing haproxy config?     |
| [`haproxy_reload`](#haproxy_reload)                       |   `bool`    |    `A`    | reload haproxy after config?             |
| [`haproxy_auth_enabled`](#haproxy_auth_enabled)           |   `bool`    |    `G`    | enable authentication for admin page     |
| [`haproxy_admin_username`](#haproxy_admin_username)       | `username`  |    `G`    | haproxy admin username, `admin` default  |
| [`haproxy_admin_password`](#haproxy_admin_password)       | `password`  |    `G`    | haproxy admin password, `pigsty` default |
| [`haproxy_exporter_port`](#haproxy_exporter_port)         |   `port`    |    `C`    | haproxy exporter port, 9101 by default   |
| [`haproxy_client_timeout`](#haproxy_client_timeout)       | `interval`  |    `C`    | client connection timeout, 24h default   |
| [`haproxy_server_timeout`](#haproxy_server_timeout)       | `interval`  |    `C`    | server connection timeout, 24h default   |
| [`haproxy_services`](#haproxy_services)                   | `service[]` |    `C`    | list of haproxy services to expose       |

[`NODE_EXPORTER`](#node_exporter) section configures node monitoring exporter.

| Parameter                                               |    Type     |  Level  | Description                            |
|:--------------------------------------------------------|:-----------:|:-------:|:---------------------------------------|
| [`node_exporter_enabled`](#node_exporter_enabled)       |   `bool`    |   `C`   | setup node_exporter on this node?      |
| [`node_exporter_port`](#node_exporter_port)             |   `port`    |   `C`   | node exporter listen port, 9100 default|
| [`node_exporter_options`](#node_exporter_options)       |   `arg`     |   `C`   | extra server options for node_exporter |

[`VECTOR`](#vector) section configures Vector log collector.

| Parameter                                       |    Type     |  Level  | Description                                  |
|:------------------------------------------------|:-----------:|:-------:|:---------------------------------------------|
| [`vector_enabled`](#vector_enabled)             |   `bool`    |   `C`   | enable vector log collector?                 |
| [`vector_clean`](#vector_clean)                 |   `bool`    |  `G/A`  | purge vector data dir during init?           |
| [`vector_data`](#vector_data)                   |   `path`    |   `C`   | vector data directory, /data/vector default  |
| [`vector_port`](#vector_port)                   |   `port`    |   `C`   | vector metrics listen port, 9598 default     |
| [`vector_read_from`](#vector_read_from)         |   `enum`    |   `C`   | read log from beginning or end               |
| [`vector_log_endpoint`](#vector_log_endpoint)   | `string[]`  |   `C`   | log endpoint, default send to infra group    |


------------------------------

## `NODE_ID`

Each node has **identity parameters** that are configured through the parameters in `<cluster>.hosts` and `<cluster>.vars`.

Pigsty uses **IP address** as the unique identifier for **database nodes**. **This IP address must be the one that the database instance listens on and provides services**, but should not be a public IP address.
However, users don't have to connect to the database via this IP address. For example, managing target nodes indirectly through SSH tunnels or jump servers is feasible.
When identifying database nodes, the primary IPv4 address remains the core identifier. **This is very important, and users should ensure this when configuring**.
The IP address is the `inventory_hostname` in the inventory, which is the `key` of the `<cluster>.hosts` object.

```yaml
node-test:
  hosts:
    10.10.10.11: { nodename: node-test-1 }
    10.10.10.12: { nodename: node-test-2 }
    10.10.10.13: { nodename: node-test-3 }
  vars:
    node_cluster: node-test
```

In addition, nodes have two important identity parameters in the Pigsty monitoring system: [`nodename`](#nodename) and [`node_cluster`](#node_cluster), which are used as the **instance identity** (`ins`) and **cluster identity** (`cls`) in the monitoring system.

```yaml
node_load1{cls="pg-meta", ins="pg-meta-1", ip="10.10.10.10", job="nodes"}
node_load1{cls="pg-test", ins="pg-test-1", ip="10.10.10.11", job="nodes"}
node_load1{cls="pg-test", ins="pg-test-2", ip="10.10.10.12", job="nodes"}
node_load1{cls="pg-test", ins="pg-test-3", ip="10.10.10.13", job="nodes"}
```

When executing the default PostgreSQL deployment, since Pigsty uses exclusive 1:1 deployment by default, you can borrow the database instance's identity parameters ([`pg_cluster`](#pg_cluster)) to the node's `ins` and `cls` labels through the [`node_id_from_pg`](#node_id_from_pg) parameter.

|             Name              |   Type   | Level | Required   | Description            |
|:-----------------------------:|:--------:|:-----:|:-----------|:-----------------------|
|     `inventory_hostname`      |   `ip`   | **-** | **Required** | **Node IP Address**    |
|    [`nodename`](#nodename)    | `string` | **I** | Optional   | **Node Name**          |
| [`node_cluster`](#node_cluster) | `string` | **C** | Optional   | **Node Cluster Name**  |


```yaml
#nodename:                # [instance] # node instance identity, use hostname if missing, optional
node_cluster: nodes       # [cluster] # node cluster identity, use 'nodes' if missing, optional
nodename_overwrite: true          # overwrite node's hostname with nodename?
nodename_exchange: false          # exchange nodename among play hosts?
node_id_from_pg: true             # use postgres identity as node identity if applicable?
```




### `nodename`

name: `nodename`, type: `string`, level: `I`

Node instance identity parameter. If not explicitly set, the existing hostname will be used as the node name. This parameter is optional since it has a reasonable default value.

If [`node_id_from_pg`](#node_id_from_pg) is enabled (default), and `nodename` is not explicitly specified, [`nodename`](#nodename) will try to use `${pg_cluster}-${pg_seq}` as the instance identity. If the PGSQL module is not defined on this cluster, it will fall back to the default, which is the node's HOSTNAME.




### `node_cluster`

name: `node_cluster`, type: `string`, level: `C`

This option allows explicitly specifying a cluster name for the node, which is only meaningful when defined at the node cluster level. Using the default empty value will use the fixed value `nodes` as the node cluster identity.

If [`node_id_from_pg`](#node_id_from_pg) is enabled (default), and `node_cluster` is not explicitly specified, [`node_cluster`](#node_cluster) will try to use `${pg_cluster}` as the cluster identity. If the PGSQL module is not defined on this cluster, it will fall back to the default `nodes`.







### `nodename_overwrite`

name: `nodename_overwrite`, type: `bool`, level: `C`

Overwrite node's hostname with nodename? Default is `true`. In this case, if you set a non-empty [`nodename`](#nodename), it will be used as the current host's HOSTNAME.

When `nodename` is empty, if [`node_id_from_pg`](#node_id_from_pg) is `true` (default), Pigsty will try to borrow the identity parameters of the PostgreSQL instance defined 1:1 on the node as the node name, i.e., `{{ pg_cluster }}-{{ pg_seq }}`. If the PGSQL module is not installed on this node, it will fall back to not doing anything.

Therefore, if you leave [`nodename`](#nodename) empty and don't enable [`node_id_from_pg`](#node_id_from_pg), Pigsty will not make any changes to the existing hostname.






### `nodename_exchange`

name: `nodename_exchange`, type: `bool`, level: `C`

Exchange nodename among play hosts? Default is `false`.

When enabled, nodes executing the [`node.yml`](/docs/node#nodeyml) playbook in the same batch will exchange node names with each other, writing them to `/etc/hosts`.





### `node_id_from_pg`

name: `node_id_from_pg`, type: `bool`, level: `C`

Borrow identity parameters from the PostgreSQL instance/cluster deployed 1:1 on the node? Default is `true`.

PostgreSQL instances and nodes in Pigsty use 1:1 deployment by default, so you can "borrow" identity parameters from the database instance.
This parameter is enabled by default, meaning that if a PostgreSQL cluster has no special configuration, the host node cluster and instance identity parameters will default to matching the database identity parameters. This provides extra convenience for problem analysis and monitoring data processing.





------------------------------

## `NODE_DNS`

Pigsty configures static DNS records and dynamic DNS servers for nodes.

If your node provider has already configured DNS servers for you, you can set [`node_dns_method`](#node_dns_method) to `none` to skip DNS setup.

```yaml
node_write_etc_hosts: true        # modify `/etc/hosts` on target node?
node_default_etc_hosts:           # static dns records in `/etc/hosts`
  - "${admin_ip} i.pigsty"
node_etc_hosts: []                # extra static dns records in `/etc/hosts`
node_dns_method: add              # how to handle dns servers: add,none,overwrite
node_dns_servers: ['${admin_ip}'] # dynamic nameserver in `/etc/resolv.conf`
node_dns_options:                 # dns resolv options in `/etc/resolv.conf`
  - options single-request-reopen timeout:1
```




### node_write_etc_hosts

name: `node_write_etc_hosts`, type: `bool`, level: `G|C|I`

Modify `/etc/hosts` on target node? For example, in container environments, this file usually cannot be modified.




### `node_default_etc_hosts`

name: `node_default_etc_hosts`, type: `string[]`, level: `G`

Static DNS records to be written to all nodes' `/etc/hosts`. Default value:

```yaml
["${admin_ip} i.pigsty"]
```

[`node_default_etc_hosts`](#node_default_etc_hosts) is an array. Each element is a DNS record with format `<ip> <name>`. You can specify multiple domain names separated by spaces.

This parameter is used to configure global static DNS records. If you want to configure specific static DNS records for individual clusters and instances, use the [`node_etc_hosts`](#node_etc_hosts) parameter.






### `node_etc_hosts`

name: `node_etc_hosts`, type: `string[]`, level: `C`

Extra static DNS records to write to node's `/etc/hosts`. Default is `[]` (empty array).

Same format as [`node_default_etc_hosts`](#node_default_etc_hosts), but suitable for configuration at the cluster/instance level.




### `node_dns_method`

name: `node_dns_method`, type: `enum`, level: `C`

How to configure DNS servers? Three options: `add`, `none`, `overwrite`. Default is `add`.

* `add`: **Append** the records in [`node_dns_servers`](#node_dns_servers) to `/etc/resolv.conf` and keep existing DNS servers. (default)
* `overwrite`: Overwrite `/etc/resolv.conf` with the records in [`node_dns_servers`](#node_dns_servers)
* `none`: Skip DNS server configuration. If your environment already has DNS servers configured, you can skip DNS configuration directly.




### `node_dns_servers`

name: `node_dns_servers`, type: `string[]`, level: `C`

Configure the dynamic DNS server list in `/etc/resolv.conf`. Default is `["${admin_ip}"]`, using the admin node as the primary DNS server.





### `node_dns_options`

name: `node_dns_options`, type: `string[]`, level: `C`

DNS resolution options in `/etc/resolv.conf`. Default value:

```yaml
- "options single-request-reopen timeout:1"
```

If [`node_dns_method`](#node_dns_method) is configured as `add` or `overwrite`, the records in this configuration will be written to `/etc/resolv.conf` first. Refer to Linux documentation for `/etc/resolv.conf` format details.












------------------------------

## `NODE_PACKAGE`

Pigsty configures software repositories and installs packages on managed nodes.

```yaml
node_repo_modules: local          # upstream repo to be added on node, local by default.
node_repo_remove: true            # remove existing repo on node?
node_packages: [openssh-server]   # packages to be installed current nodes with latest version
#node_default_packages:           # default packages to be installed on all nodes
```




### `node_repo_modules`

name: `node_repo_modules`, type: `string`, level: `C/A`

List of software repository modules to be added on the node, same format as [`repo_modules`](#repo_modules). Default is `local`, using the local software repository specified in [`repo_upstream`](#repo_upstream).

When Pigsty manages nodes, it filters entries in [`repo_upstream`](#repo_upstream) based on this parameter value. Only entries whose `module` field matches this parameter value will be added to the node's software sources.






### `node_repo_remove`

name: `node_repo_remove`, type: `bool`, level: `C/A`

Remove existing software repository definitions on the node? Default is `true`.

When enabled, Pigsty will **remove** existing configuration files in `/etc/yum.repos.d` on the node and back them up to `/etc/yum.repos.d/backup`.
On Debian/Ubuntu systems, it backs up `/etc/apt/sources.list(.d)` to `/etc/apt/backup`.






### `node_packages`

name: `node_packages`, type: `string[]`, level: `C`

List of software packages to install and upgrade on the current node. Default is `[openssh-server]`, which upgrades sshd to the latest version during installation (to avoid security vulnerabilities).

Each array element is a string of comma-separated package names. Same format as [`node_default_packages`](#node_default_packages). This parameter is usually used to specify additional packages to install at the node/cluster level.

Packages specified in this parameter will be **upgraded to the latest available version**. If you need to keep existing node software versions unchanged (just ensure they exist), use the [`node_default_packages`](#node_default_packages) parameter.






### `node_default_packages`

name: `node_default_packages`, type: `string[]`, level: `G`

Default packages to be installed on all nodes. Default value is a common RPM package list for EL 7/8/9. Array where each element is a **space-separated** package list string.

Packages specified in this variable only require **existence**, not **latest**. If you need to install the latest version, use the [`node_packages`](#node_packages) parameter.

This parameter has no default value (undefined state). If users don't explicitly specify this parameter in the configuration file, Pigsty will load default values from the `node_packages_default` variable defined in [`roles/node_id/vars`](https://github.com/Vonng/pigsty/blob/main/roles/node_id/vars/) based on the current node's OS family.

Default value (EL-based systems):

```yaml
- lz4,unzip,bzip2,pv,jq,git,ncdu,make,patch,bash,lsof,wget,uuid,tuned,nvme-cli,numactl,sysstat,iotop,htop,rsync,tcpdump
- python3,python3-pip,socat,lrzsz,net-tools,ipvsadm,telnet,ca-certificates,openssl,keepalived,etcd,haproxy,chrony,pig
- zlib,yum,audit,bind-utils,readline,vim-minimal,node_exporter,grubby,openssh-server,openssh-clients,chkconfig,vector
```

Default value (Debian/Ubuntu):

```yaml
- lz4,unzip,bzip2,pv,jq,git,ncdu,make,patch,bash,lsof,wget,uuid,tuned,nvme-cli,numactl,sysstat,iotop,htop,rsync
- python3,python3-pip,socat,lrzsz,net-tools,ipvsadm,telnet,ca-certificates,openssl,keepalived,etcd,haproxy,chrony,pig
- zlib1g,acl,dnsutils,libreadline-dev,vim-tiny,node-exporter,openssh-server,openssh-client,vector
```

Same format as [`node_packages`](#node_packages), but this parameter is usually used to specify default packages that must be installed on all nodes at the global level.






------------------------------

## `NODE_TUNE`

Host node features, kernel modules, and tuning templates.


```yaml
node_disable_numa: false          # disable node numa, reboot required
node_disable_swap: false          # disable node swap, use with caution
node_static_network: true         # preserve dns resolver settings after reboot
node_disk_prefetch: false         # setup disk prefetch on HDD to increase performance
node_kernel_modules: [ softdog, ip_vs, ip_vs_rr, ip_vs_wrr, ip_vs_sh ]
node_hugepage_count: 0            # number of 2MB hugepage, take precedence over ratio
node_hugepage_ratio: 0            # node mem hugepage ratio, 0 disable it by default
node_overcommit_ratio: 0          # node mem overcommit ratio, 0 disable it by default
node_tune: oltp                   # node tuned profile: none,oltp,olap,crit,tiny
node_sysctl_params: { }           # sysctl parameters in k:v format in addition to tuned
```





### `node_disable_numa`

name: `node_disable_numa`, type: `bool`, level: `C`

Disable NUMA? Default is `false` (NUMA not disabled).

Note that disabling NUMA requires a machine reboot to take effect! If you don't know how to set CPU affinity, it's recommended to disable NUMA when using databases in production environments.







### `node_disable_swap`

name: `node_disable_swap`, type: `bool`, level: `C`

Disable SWAP? Default is `false` (SWAP not disabled).

Disabling SWAP is generally not recommended. The exception is if you have enough memory for exclusive PostgreSQL deployment, you can disable SWAP to improve performance.

Exception: SWAP should be disabled when your node is used for Kubernetes deployments.






### `node_static_network`

name: `node_static_network`, type: `bool`, level: `C`

Use static DNS servers? Default is `true` (enabled).

Enabling static networking means your DNS Resolv configuration won't be overwritten by machine reboots or NIC changes. Recommended to enable, or have network engineers handle the configuration.





### `node_disk_prefetch`

name: `node_disk_prefetch`, type: `bool`, level: `C`

Enable disk prefetch? Default is `false` (not enabled).

Can optimize performance for HDD-deployed instances. Recommended to enable when using mechanical hard drives.





### `node_kernel_modules`

name: `node_kernel_modules`, type: `string[]`, level: `C`

Which kernel modules to enable? Default enables the following kernel modules:

```yaml
node_kernel_modules: [ softdog, ip_vs, ip_vs_rr, ip_vs_wrr, ip_vs_sh ]
```

An array of kernel module names declaring the kernel modules that need to be installed on the node.






### `node_hugepage_count`

name: `node_hugepage_count`, type: `int`, level: `C`

Number of 2MB hugepages to allocate on the node. Default is `0`. Related parameter is [`node_hugepage_ratio`](#node_hugepage_ratio).

If both `node_hugepage_count` and `node_hugepage_ratio` are `0` (default), hugepages will be completely disabled. This parameter has higher priority than [`node_hugepage_ratio`](#node_hugepage_ratio) because it's more precise.

If a non-zero value is set, it will be written to `/etc/sysctl.d/hugepage.conf` to take effect. Negative values won't work, and numbers higher than 90% of node memory will be capped at 90% of node memory.

If not zero, it should be slightly larger than the corresponding [`pg_shared_buffer_ratio`](#pg_shared_buffer_ratio) value so PostgreSQL can use hugepages.





### `node_hugepage_ratio`

name: `node_hugepage_ratio`, type: `float`, level: `C`

Ratio of node memory for hugepages. Default is `0`. Valid range: `0` ~ `0.40`.

This memory ratio will be allocated as hugepages and reserved for PostgreSQL. [`node_hugepage_count`](#node_hugepage_count) is the higher priority and more precise version of this parameter.

Default: `0`, which sets `vm.nr_hugepages=0` and completely disables hugepages.

This parameter should equal or be slightly larger than [`pg_shared_buffer_ratio`](#pg_shared_buffer_ratio) if not zero.

For example, if you allocate 25% of memory for Postgres shared buffers by default, you can set this value to 0.27 ~ 0.30, and use `/pg/bin/pg-tune-hugepage` after initialization to precisely reclaim wasted hugepages.





### `node_overcommit_ratio`

name: `node_overcommit_ratio`, type: `int`, level: `C`

Node memory overcommit ratio. Default is `0`. This is an integer from `0` to `100+`.

Default: `0`, which sets `vm.overcommit_memory=0`. Otherwise, `vm.overcommit_memory=2` will be used with this value as `vm.overcommit_ratio`.

Recommended to set `vm.overcommit_ratio` on dedicated pgsql nodes to avoid memory overcommit.





### `node_tune`

name: `node_tune`, type: `enum`, level: `C`

Preset tuning profiles for machines, provided through `tuned`. Four preset modes:

* `tiny`: Micro virtual machine
* `oltp`: Regular OLTP template, optimizes latency (default)
* `olap`: Regular OLAP template, optimizes throughput
* `crit`: Core financial business template, optimizes dirty page count

Typically, the database tuning template [`pg_conf`](/docs/pgsql/param#pg_conf) should match the machine tuning template.







### `node_sysctl_params`

name: `node_sysctl_params`, type: `dict`, level: `C`

Sysctl kernel parameters in K:V format, added to the `tuned` profile. Default is `{}` (empty object).

This is a KV dictionary parameter where Key is the kernel `sysctl` parameter name and Value is the parameter value. You can also consider defining extra sysctl parameters directly in the tuned templates in `roles/node/templates`.







------------------------------

## `NODE_SEC`

Node security related parameters, including SELinux and firewall configuration.

```yaml
node_selinux_mode: permissive             # selinux mode: disabled, permissive, enforcing
node_firewall_mode: zone                  # firewall mode: disabled, zone, rules
node_firewall_intranet:           # which intranet cidr considered as internal network
  - 10.0.0.0/8
  - 192.168.0.0/16
  - 172.16.0.0/12
node_firewall_public_port:        # expose these ports to public network in (zone, strict) mode
  - 22                            # enable ssh access
  - 80                            # enable http access
  - 443                           # enable https access
  - 5432                          # enable postgresql access (think twice before exposing it!)
```




### `node_selinux_mode`

name: `node_selinux_mode`, type: `enum`, level: `C`

SELinux running mode. Default is `permissive`.

Options:

* `disabled`: Completely disable SELinux (equivalent to old version's `node_disable_selinux: true`)
* `permissive`: Permissive mode, logs violations but doesn't block (recommended, default)
* `enforcing`: Enforcing mode, strictly enforces SELinux policies

If you don't have professional OS/security experts, it's recommended to use `permissive` or `disabled` mode.

Note that SELinux is only enabled by default on EL-based systems. If you want to enable SELinux on Debian/Ubuntu systems, you need to install and enable SELinux configuration yourself.
Also, SELinux mode changes may require a system reboot to fully take effect.





### `node_firewall_mode`

name: `node_firewall_mode`, type: `enum`, level: `C`

Firewall running mode. Default is `zone`.

Options:

* `off`: Turn off and disable firewall (equivalent to old version's `node_disable_firewall: true`)
* `none`: Do nothing, maintain existing firewall rules unchanged
* `zone`: Use firewalld / ufw to configure firewall rules: trust intranet, only open specified ports to public

Uses `firewalld` service on EL systems, `ufw` service on Debian/Ubuntu systems.

If you're deploying in a completely trusted intranet environment, or using cloud provider security groups for access control, you can choose `none` mode to keep existing firewall configuration, or set to `off` to completely disable the firewall.

Production environments recommend using `zone` mode with [`node_firewall_intranet`](#node_firewall_intranet) and [`node_firewall_public_port`](#node_firewall_public_port) for fine-grained access control.

Note that `zone` mode won't automatically enable the firewall for you.




### `node_firewall_intranet`

name: `node_firewall_intranet`, type: `cidr[]`, level: `C`

Intranet CIDR address list. Introduced in v4.0. Default value:

```yaml
node_firewall_intranet:
  - 10.0.0.0/8
  - 172.16.0.0/12
  - 192.168.0.0/16
```

This parameter defines IP address ranges considered as "internal network". Traffic from these networks will be allowed to access all service ports without separate open rules.

Hosts within these CIDR ranges will be treated as trusted intranet hosts with more relaxed firewall rules. Also, in PG/PGB HBA rules, the intranet ranges defined here will be treated as "intranet".





### `node_firewall_public_port`

name: `node_firewall_public_port`, type: `port[]`, level: `C`

Public exposed port list. Default is `[22, 80, 443, 5432]`.

This parameter defines ports exposed to public network (non-intranet CIDR). Default exposed ports include:

* `22`: SSH service port
* `80`: HTTP service port
* `443`: HTTPS service port
* `5432`: PostgreSQL database port

You can adjust this list according to actual needs. For example, if you don't need to expose the database port externally, remove `5432`:

```yaml
node_firewall_public_port: [22, 80, 443]
```

PostgreSQL default security policy in Pigsty only allows administrators to access the database port from public networks.
If you want other users to access the database from public networks, make sure to correctly configure corresponding access permissions in PG/PGB HBA rules.

If you want to expose other service ports to public networks, you can also add them to this list.
If you want to tighten firewall rules, you can remove the 5432 database port to ensure only truly needed service ports are exposed.

Note that this parameter only takes effect when [`node_firewall_mode`](#node_firewall_mode) is set to `zone`.






------------------------------

## `NODE_ADMIN`

This section is about administrators on host nodes - who can log in and how.

```yaml
node_data: /data                  # node main data directory, `/data` by default
node_admin_enabled: true          # create a admin user on target node?
node_admin_uid: 88                # uid and gid for node admin user
node_admin_username: dba          # name of node admin user, `dba` by default
node_admin_sudo: nopass           # admin user's sudo privilege: limited, nopass, all, none
node_admin_ssh_exchange: true     # exchange admin ssh key among node cluster
node_admin_pk_current: true       # add current user's ssh pk to admin authorized_keys
node_admin_pk_list: []            # ssh public keys to be added to admin user
node_aliases: {}                  # alias name -> IP address dict for `/etc/hosts`
```





### `node_data`

name: `node_data`, type: `path`, level: `C`

Node's main data directory. Default is `/data`.

If this directory doesn't exist, it will be created. This directory should be owned by `root` with `777` permissions.






### `node_admin_enabled`

name: `node_admin_enabled`, type: `bool`, level: `C`

Create a dedicated admin user on this node? Default is `true`.

Pigsty creates an admin user on each node by default (with password-free sudo and ssh). The default admin is named `dba (uid=88)`, which can access other nodes in the environment from the admin node via password-free SSH and execute password-free sudo.




### `node_admin_uid`

name: `node_admin_uid`, type: `int`, level: `C`

Admin user UID. Default is `88`.

Please ensure the UID is the same across all nodes whenever possible to avoid unnecessary permission issues.

If the default UID 88 is already taken, you can choose another UID. Be careful about UID namespace conflicts when manually assigning.







### `node_admin_username`

name: `node_admin_username`, type: `username`, level: `C`

Admin username. Default is `dba`.




### `node_admin_sudo`

name: `node_admin_sudo`, type: `enum`, level: `C`

Admin user's sudo privilege level. Default is `nopass` (password-free sudo).

Options:

* `none`: No sudo privileges
* `limited`: Limited sudo privileges (only allowed to execute specific commands)
* `nopass`: Password-free sudo privileges (default, allows all commands without password)
* `all`: Full sudo privileges (requires password)

Pigsty uses `nopass` mode by default, allowing admin users to execute any sudo command without password, which is very convenient for automated operations.

In production environments with high security requirements, you may need to adjust this parameter to `limited` or `all` to restrict admin privileges.





### `node_admin_ssh_exchange`

name: `node_admin_ssh_exchange`, type: `bool`, level: `C`

Exchange node admin SSH keys between node clusters. Default is `true`.

When enabled, Pigsty will exchange SSH public keys between members during playbook execution, allowing admin [`node_admin_username`](#node_admin_username) to access each other from different nodes.





### `node_admin_pk_current`

name: `node_admin_pk_current`, type: `bool`, level: `C`

Add current node & user's public key to admin account? Default is `true`.

When enabled, the SSH public key (`~/.ssh/id_rsa.pub`) of the admin user executing this playbook on the current node will be copied to the target node admin user's `authorized_keys`.

When deploying in production environments, please pay attention to this parameter, as it will install the default public key of the user currently executing the command to the admin user on all machines.








### `node_admin_pk_list`

name: `node_admin_pk_list`, type: `string[]`, level: `C`

List of public keys for admins who can log in. Default is `[]` (empty array).

Each array element is a string containing the public key to be written to the admin user's `~/.ssh/authorized_keys`. Users with the corresponding private key can log in as admin.

When deploying in production environments, please pay attention to this parameter and only add trusted keys to this list.




### `node_aliases`

name: `node_aliases`, type: `dict`, level: `C`

Shell aliases to be written to host's `/etc/profile.d/node.alias.sh`. Default is `{}` (empty dict).

This parameter allows you to configure convenient shell aliases for the host's shell environment. The K:V dict defined here will be written to the target node's `profile.d` file in the format `alias k=v`.

For example, the following declares an alias named `dp` for quickly executing `docker compose pull`:

```yaml
node_alias:
  dp: 'docker compose pull'
```







------------------------------

## `NODE_TIME`

Configuration related to host time/timezone/NTP/scheduled tasks.

Time synchronization is very important for database services. Please ensure the system `chronyd` time service is running properly.

```yaml
node_timezone: ''                 # setup node timezone, empty string to skip
node_ntp_enabled: true            # enable chronyd time sync service?
node_ntp_servers:                 # ntp servers in `/etc/chrony.conf`
  - pool pool.ntp.org iburst
node_crontab_overwrite: true      # overwrite or append to `/etc/crontab`?
node_crontab: [ ]                 # crontab entries in `/etc/crontab`
```


### `node_timezone`

name: `node_timezone`, type: `string`, level: `C`

Set node timezone. Empty string means skip. Default is empty string, which won't modify the default timezone (usually UTC).

When using in China region, it's recommended to set to `Asia/Hong_Kong` / `Asia/Shanghai`.




### `node_ntp_enabled`

name: `node_ntp_enabled`, type: `bool`, level: `C`

Enable chronyd time sync service? Default is `true`.

Pigsty will override the node's `/etc/chrony.conf` with the NTP server list specified in [`node_ntp_servers`](#node_ntp_servers).

If your node already has NTP servers configured, you can set this parameter to `false` to skip time sync configuration.




### `node_ntp_servers`

name: `node_ntp_servers`, type: `string[]`, level: `C`

NTP server list used in `/etc/chrony.conf`. Default: `["pool pool.ntp.org iburst"]`

This parameter is an array where each element is a string representing one line of NTP server configuration. Only takes effect when [`node_ntp_enabled`](#node_ntp_enabled) is enabled.

Pigsty uses the global NTP server `pool.ntp.org` by default. You can modify this parameter according to your network environment, e.g., `cn.pool.ntp.org iburst`, or internal time services.

You can also use the `${admin_ip}` placeholder in the configuration to use the time server on the admin node.

```yaml
node_ntp_servers: [ 'pool ${admin_ip} iburst' ]
```





### `node_crontab_overwrite`

name: `node_crontab_overwrite`, type: `bool`, level: `C`

When handling scheduled tasks in [`node_crontab`](#node_crontab), append or overwrite? Default is `true` (overwrite).

If you want to append scheduled tasks on the node, set this parameter to `false`, and Pigsty will **append** rather than **overwrite all** scheduled tasks on the node's crontab.






### `node_crontab`

name: `node_crontab`, type: `string[]`, level: `C`

Scheduled tasks defined in node's `/etc/crontab`. Default is `[]` (empty array).

Each array element is a string representing one scheduled task line. Use standard cron format for definition.

For example, the following configuration will execute a full backup task as the postgres user at 1am every day:

```yaml
node_crontab:
  - '00 01 * * * postgres /pg/bin/pg-backup full' ] # make a full backup every 1am
```




------------------------------

## `NODE_VIP`

You can bind an optional L2 VIP to a node cluster. This feature is disabled by default. L2 VIP only makes sense for a group of node clusters. The VIP will switch between nodes in the cluster according to configured priorities, ensuring high availability of node services.

Note that L2 VIP can **only** be used within the same L2 network segment, which may impose additional restrictions on your network topology. If you don't want this restriction, you can consider using DNS LB or HAProxy for similar functionality.

When enabling this feature, you need to explicitly assign available [`vip_address`](#vip_address) and [`vip_vrid`](#vip_vrid) for this L2 VIP. Users should ensure both are unique within the same network segment.

Note that NODE VIP is different from PG VIP. PG VIP is a VIP serving PostgreSQL instances, managed by vip-manager and bound to the PG cluster primary.
NODE VIP is managed by Keepalived and bound to node clusters. It can be in master-backup mode or load-balanced mode, and both can coexist.


```yaml
vip_enabled: false                # enable vip on this node cluster?
# vip_address:         [IDENTITY] # node vip address in ipv4 format, required if vip is enabled
# vip_vrid:            [IDENTITY] # required, integer, 1-254, should be unique among same VLAN
vip_role: backup                  # optional, `master/backup`, backup by default, use as init role
vip_preempt: false                # optional, `true/false`, false by default, enable vip preemption
vip_interface: eth0               # node vip network interface to listen, `eth0` by default
vip_dns_suffix: ''                # node vip dns name suffix, empty string by default
vip_auth_pass: ''                 # vrrp auth password, empty to use `<cls>-<vrid>` as default
vip_exporter_port: 9650           # keepalived exporter listen port, 9650 by default
```




### `vip_enabled`

name: `vip_enabled`, type: `bool`, level: `C`

Enable an L2 VIP managed by Keepalived on this node cluster? Default is `false`.







### `vip_address`

name: `vip_address`, type: `ip`, level: `C`

Node VIP address in IPv4 format (without CIDR suffix). This is a **required** parameter when [`vip_enabled`](#vip_enabled) is enabled.

This parameter has no default value, meaning you must explicitly assign a unique VIP address for the node cluster.




### `vip_vrid`

name: `vip_vrid`, type: `int`, level: `C`

VRID is a positive integer from `1` to `254` used to identify a VIP in the network. This is a **required** parameter when [`vip_enabled`](#vip_enabled) is enabled.

This parameter has no default value, meaning you must explicitly assign a unique ID within the network segment for the node cluster.







### `vip_role`

name: `vip_role`, type: `enum`, level: `I`

Node VIP role. Options are `master` or `backup`. Default is `backup`.

This parameter value will be set as keepalived's initial state.




### `vip_preempt`

name: `vip_preempt`, type: `bool`, level: `C/I`

Enable VIP preemption? Optional parameter. Default is `false` (no preemption).

Preemption means when a `backup` node has higher priority than the currently alive and working `master` node, should it preempt the VIP?






### `vip_interface`

name: `vip_interface`, type: `string`, level: `C/I`

Network interface for node VIP to listen on. Default is `eth0`.

You should use the same interface name as the node's primary IP address (the IP address you put in the inventory).

If your nodes have different interface names, you can override it at the instance/node level.




### `vip_dns_suffix`

name: `vip_dns_suffix`, type: `string`, level: `C/I`

DNS name for node cluster L2 VIP. Default is empty string, meaning the cluster name itself is used as the DNS name.



### `vip_auth_pass`

name: `vip_auth_pass`, type: `password`, level: `C`

VRRP authentication password for keepalived. Default is empty string.

When empty, Pigsty will auto-generate a password using the pattern `<cluster_name>-<vrid>`.
For production environments with security requirements, set an explicit strong password.




### `vip_exporter_port`

name: `vip_exporter_port`, type: `port`, level: `C/I`

Keepalived exporter listen port. Default is `9650`.






------------------------------

## `HAPROXY`

HAProxy is installed and enabled on all nodes by default, exposing services in a manner similar to Kubernetes NodePort.

The [`PGSQL`](/docs/pgsql) module uses HAProxy for [services](/docs/pgsql/service).


```yaml
haproxy_enabled: true             # enable haproxy on this node?
haproxy_clean: false              # cleanup all existing haproxy config?
haproxy_reload: true              # reload haproxy after config?
haproxy_auth_enabled: true        # enable authentication for haproxy admin page
haproxy_admin_username: admin     # haproxy admin username, `admin` by default
haproxy_admin_password: pigsty    # haproxy admin password, `pigsty` by default
haproxy_exporter_port: 9101       # haproxy admin/exporter port, 9101 by default
haproxy_client_timeout: 24h       # client connection timeout, 24h by default
haproxy_server_timeout: 24h       # server connection timeout, 24h by default
haproxy_services: []              # list of haproxy services to be exposed on node
```



### `haproxy_enabled`

name: `haproxy_enabled`, type: `bool`, level: `C`

Enable haproxy on this node? Default is `true`.





### `haproxy_clean`

name: `haproxy_clean`, type: `bool`, level: `G/C/A`

Cleanup all existing haproxy config? Default is `false`.




### `haproxy_reload`

name: `haproxy_reload`, type: `bool`, level: `A`

Reload haproxy after config? Default is `true`, will reload haproxy after config changes.

If you want to check before applying, you can disable this option with command arguments, check, then apply.




### `haproxy_auth_enabled`

name: `haproxy_auth_enabled`, type: `bool`, level: `G`

Enable authentication for haproxy admin page. Default is `true`, which requires HTTP basic auth for the admin page.

Not recommended to disable authentication, as your traffic control page will be exposed, which is risky.




### `haproxy_admin_username`

name: `haproxy_admin_username`, type: `username`, level: `G`

HAProxy admin username. Default is `admin`.






### `haproxy_admin_password`

name: `haproxy_admin_password`, type: `password`, level: `G`

HAProxy admin password. Default is `pigsty`.

> PLEASE CHANGE THIS PASSWORD IN YOUR PRODUCTION ENVIRONMENT!




### `haproxy_exporter_port`

name: `haproxy_exporter_port`, type: `port`, level: `C`

HAProxy traffic management/metrics exposed port. Default is `9101`.







### `haproxy_client_timeout`

name: `haproxy_client_timeout`, type: `interval`, level: `C`

Client connection timeout. Default is `24h`.

Setting a timeout can avoid long-lived connections that are difficult to clean up. If you really need long connections, you can set it to a longer time.







### `haproxy_server_timeout`

name: `haproxy_server_timeout`, type: `interval`, level: `C`

Server connection timeout. Default is `24h`.

Setting a timeout can avoid long-lived connections that are difficult to clean up. If you really need long connections, you can set it to a longer time.





### `haproxy_services`

name: `haproxy_services`, type: `service[]`, level: `C`

List of services to expose via HAProxy on this node. Default is `[]` (empty array).

Each array element is a service definition. Here's an example service definition:

```yaml
haproxy_services:                   # list of haproxy service

  # expose pg-test read only replicas
  - name: pg-test-ro                # [REQUIRED] service name, unique
    port: 5440                      # [REQUIRED] service port, unique
    ip: "*"                         # [OPTIONAL] service listen addr, "*" by default
    protocol: tcp                   # [OPTIONAL] service protocol, 'tcp' by default
    balance: leastconn              # [OPTIONAL] load balance algorithm, roundrobin by default (or leastconn)
    maxconn: 20000                  # [OPTIONAL] max allowed front-end connection, 20000 by default
    default: 'inter 3s fastinter 1s downinter 5s rise 3 fall 3 on-marked-down shutdown-sessions slowstart 30s maxconn 3000 maxqueue 128 weight 100'
    options:
      - option httpchk
      - option http-keep-alive
      - http-check send meth OPTIONS uri /read-only
      - http-check expect status 200
    servers:
      - { name: pg-test-1 ,ip: 10.10.10.11 , port: 5432 , options: check port 8008 , backup: true }
      - { name: pg-test-2 ,ip: 10.10.10.12 , port: 5432 , options: check port 8008 }
      - { name: pg-test-3 ,ip: 10.10.10.13 , port: 5432 , options: check port 8008 }

```

Each service definition will be rendered to `/etc/haproxy/<service.name>.cfg` configuration file and take effect after HAProxy reload.









------------------------------

## `NODE_EXPORTER`

```yaml
node_exporter_enabled: true       # setup node_exporter on this node?
node_exporter_port: 9100          # node exporter listen port, 9100 by default
node_exporter_options: '--no-collector.softnet --no-collector.nvme --collector.tcpstat --collector.processes'
```



### `node_exporter_enabled`

name: `node_exporter_enabled`, type: `bool`, level: `C`

Enable node metrics collector on current node? Default is `true`.




### `node_exporter_port`

name: `node_exporter_port`, type: `port`, level: `C`

Port used to expose node metrics. Default is `9100`.





### `node_exporter_options`

name: `node_exporter_options`, type: `arg`, level: `C`

Command line arguments for node metrics collector. Default value:

`--no-collector.softnet --no-collector.nvme --collector.tcpstat --collector.processes`

This option enables/disables some metrics collectors. Please adjust according to your needs.






------------------------------

## `VECTOR`

Vector is the log collection component used in Pigsty v4.0. It collects logs from various modules and sends them to VictoriaLogs service on infrastructure nodes.

* `INFRA`: Infrastructure component logs, collected only on Infra nodes.
    * `nginx-access`: `/var/log/nginx/access.log`
    * `nginx-error`: `/var/log/nginx/error.log`
    * `grafana`: `/var/log/grafana/grafana.log`

* `NODES`: Host-related logs, collection enabled on all nodes.
    * `syslog`: `/var/log/messages` (`/var/log/syslog` on Debian)
    * `dmesg`: `/var/log/dmesg`
    * `cron`: `/var/log/cron`

* `PGSQL`: PostgreSQL-related logs, collection enabled only when node has [PGSQL](/docs/pgsql) module configured.
    * `postgres`: `/pg/log/postgres/*`
    * `patroni`: `/pg/log/patroni.log`
    * `pgbouncer`: `/pg/log/pgbouncer/pgbouncer.log`
    * `pgbackrest`: `/pg/log/pgbackrest/*.log`

* `REDIS`: Redis-related logs, collection enabled only when node has [REDIS](/docs/redis) module configured.
    * `redis`: `/var/log/redis/*.log`

> Log directories are automatically adjusted according to these parameter configurations: [`pg_log_dir`](/docs/pgsql/param#pg_log_dir), [`patroni_log_dir`](/docs/pgsql/param#patroni_log_dir), [`pgbouncer_log_dir`](/docs/pgsql/param#pgbouncer_log_dir), [`pgbackrest_log_dir`](/docs/pgsql/param#pgbackrest_log_dir)


```yaml
vector_enabled: true              # enable vector log collector?
vector_clean: false               # purge vector data dir during init?
vector_data: /data/vector         # vector data directory, /data/vector by default
vector_port: 9598                 # vector metrics port, 9598 by default
vector_read_from: beginning       # read log from beginning or end
vector_log_endpoint: [ infra ]    # log endpoint, default send to infra group
```



### `vector_enabled`

name: `vector_enabled`, type: `bool`, level: `C`

Enable Vector log collection service? Default is `true`.

Vector is the log collection agent used in Pigsty v4.0, replacing Promtail from previous versions. It collects node and service logs and sends them to VictoriaLogs.




### `vector_clean`

name: `vector_clean`, type: `bool`, level: `G/A`

Clean existing data directory when installing Vector? Default is `false`.

By default, it won't clean. When you choose to clean, Pigsty will remove the existing data directory [`vector_data`](#vector_data) when deploying Vector. This means Vector will re-collect all logs on the current node and send them to VictoriaLogs.




### `vector_data`

name: `vector_data`, type: `path`, level: `C`

Vector data directory path. Default is `/data/vector`.

Vector stores log read offsets and buffered data in this directory.





### `vector_port`

name: `vector_port`, type: `port`, level: `C`

Vector metrics listen port. Default is `9598`.

This port is used to expose Vector's own monitoring metrics, which can be scraped by VictoriaMetrics.




### `vector_read_from`

name: `vector_read_from`, type: `enum`, level: `C`

Vector log reading start position. Default is `beginning`.

Options are `beginning` (start from beginning) or `end` (start from end). `beginning` reads the entire content of existing log files, `end` only reads newly generated logs.




### `vector_log_endpoint`

name: `vector_log_endpoint`, type: `string[]`, level: `C`

Log destination endpoint list. Default is `[ infra ]`.

Specifies which node group's VictoriaLogs service to send logs to. Default sends to nodes in the `infra` group.
