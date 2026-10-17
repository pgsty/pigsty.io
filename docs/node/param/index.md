# Parameters

> NODE module provides 11 sections with 74 parameters

---

LLMS index: [llms.txt](/llms.txt)

---

The [NODE](/docs/node) module configures target nodes to the required state. It also adds them to the Pigsty monitoring system.

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

[`NODE_PACKAGE`](#node_package) section configures node software repositories, package installation, and uv Python virtual environment.

| Parameter                                         |    Type    | Level | Description                                         |
|:--------------------------------------------------|:----------:|:-----:|:----------------------------------------------------|
| [`node_repo_modules`](#node_repo_modules)         |   `enum`   |  `C`  | which repo modules to enable on node? local default |
| [`node_repo_remove`](#node_repo_remove)           |   `bool`   |  `C`  | remove existing repo on node when configuring?      |
| [`node_packages`](#node_packages)                 | `string[]` |  `C`  | packages to be installed on current nodes           |
| [`node_default_packages`](#node_default_packages) | `string[]` |  `G`  | default packages to be installed on all nodes       |
| [`node_uv_env`](#node_uv_env)                     |   `path`   |  `C`  | uv venv path, /data/venv by default, empty to skip  |
| [`node_pip_packages`](#node_pip_packages)         |  `string`  |  `C`  | pip packages to install in uv venv                  |

[`NODE_TUNE`](#node_tune) section configures node kernel parameters, feature toggles, and tuning templates.

| Parameter                                               |    Type     |  Level  | Description                                              |
|:--------------------------------------------------------|:-----------:|:-------:|:---------------------------------------------------------|
| [`node_disable_numa`](#node_disable_numa)               |   `bool`    |   `C`   | disable node numa, reboot required                       |
| [`node_disable_swap`](#node_disable_swap)               |   `bool`    |   `C`   | disable node swap, use with caution                      |
| [`node_static_network`](#node_static_network)           |   `bool`    |   `C`   | preserve dns resolver settings after reboot              |
| [`node_disk_prefetch`](#node_disk_prefetch)             |   `bool`    |   `C`   | setup disk prefetch on HDD to increase performance       |
| [`node_kernel_modules`](#node_kernel_modules)           | `string[]`  |   `C`   | kernel modules to be enabled on this node                |
| [`node_hugepage_count`](#node_hugepage_count)           |    `int`    |   `C`   | number of 2MB hugepage, take precedence over ratio       |
| [`node_hugepage_ratio`](#node_hugepage_ratio)           |   `float`   |   `C`   | node mem hugepage ratio, 0 disable it by default         |
| [`node_overcommit_ratio`](#node_overcommit_ratio)       |   `float`   |   `C`   | node mem overcommit ratio (50-100), 0 disable it         |
| [`node_tune`](#node_tune)                               |   `enum`    |   `C`   | node tuned profile: none,oltp,olap,crit,tiny             |
| [`node_tuned_profile_dir`](#node_tuned_profile_dir)     |   `path`    |   `C`   | tuned profile directory selected by platform mapping     |
| [`node_sysctl_params`](#node_sysctl_params)             |   `dict`    |   `C`   | extra sysctl parameters in k:v format                    |

[`NODE_SEC`](#node_sec) section configures node security options, including SELinux and firewall.

| Parameter                                                 |   Type   | Level | Description                                                                |
|:----------------------------------------------------------|:--------:|:-----:|:---------------------------------------------------------------------------|
| [`node_selinux_mode`](#node_selinux_mode)                 |  `enum`  |  `C`  | SELinux mode: disabled, permissive, enforcing                              |
| [`node_firewall_mode`](#node_firewall_mode)               |  `enum`  |  `C`  | firewall mode: zone (default, enabled), off (disable), none (self-managed) |
| [`node_firewall_intranet`](#node_firewall_intranet)       | `cidr[]` |  `C`  | intranet CIDR list for firewall rules                                      |
| [`node_firewall_public_port`](#node_firewall_public_port) | `port[]` |  `C`  | public exposed port list, default [22, 80, 443]                            |

[`NODE_ADMIN`](#node_admin) section configures admin user, data directory, and shell aliases.

| Parameter                                                   |    Type     |  Level  | Description                                            |
|:------------------------------------------------------------|:-----------:|:-------:|:-------------------------------------------------------|
| [`node_data`](#node_data)                                   |   `path`    |   `C`   | node main data directory, `/data` by default           |
| [`node_admin_enabled`](#node_admin_enabled)                 |   `bool`    |   `C`   | create a admin user on target node?                    |
| [`node_admin_uid`](#node_admin_uid)                         |    `int`    |   `C`   | uid and gid for node admin user                        |
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

| Parameter                                 |    Type    | Level | Description                                           |
|:------------------------------------------|:----------:|:-----:|:------------------------------------------------------|
| [`vip_enabled`](#vip_enabled)             |   `bool`   |  `C`  | enable L2 vip on this node cluster?                   |
| [`vip_address`](#vip_address)             |    `ip`    |  `C`  | node vip address in ipv4 format, required if enabled  |
| [`vip_vrid`](#vip_vrid)                   |   `int`    |  `C`  | integer 1-254, should be unique in same VLAN          |
| [`vip_role`](#vip_role)                   |   `enum`   |  `I`  | optional, master/backup, backup by default            |
| [`vip_preempt`](#vip_preempt)             |   `bool`   | `C/I` | optional, true/false, enable vip preemption           |
| [`vip_interface`](#vip_interface)         |  `string`  | `C/I` | node vip network interface, `auto` by default         |
| [`vip_dns_suffix`](#vip_dns_suffix)       |  `string`  |  `C`  | node vip dns name suffix, empty string by default     |
| [`vip_auth_pass`](#vip_auth_pass)         | `password` |  `C`  | vrrp authentication password, auto-generated if empty |
| [`vip_exporter_port`](#vip_exporter_port) |   `port`   |  `C`  | keepalived exporter listen port, 9650 by default      |

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

| Parameter                                         |  Type  | Level | Description                             |
|:--------------------------------------------------|:------:|:-----:|:----------------------------------------|
| [`node_exporter_enabled`](#node_exporter_enabled) | `bool` |  `C`  | setup node_exporter on this node?       |
| [`node_exporter_port`](#node_exporter_port)       | `port` |  `C`  | node exporter listen port, 9100 default |
| [`node_exporter_options`](#node_exporter_options) | `arg`  |  `C`  | extra server options for node_exporter  |

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

Pigsty uses the **IP address** as the unique **database node** identifier. **Use the address on which the database instance listens and provides services.** This should not be a public IP address.

Users do not have to connect through this address. You can also manage nodes through SSH tunnels or jump servers. The primary IPv4 address remains the node identifier. **Check this address carefully during configuration.**

This IP address is `inventory_hostname` in the inventory. It is the `key` in the `<cluster>.hosts` object.

```yaml
node-test:
  hosts:
    10.10.10.11: { nodename: node-test-1 }
    10.10.10.12: { nodename: node-test-2 }
    10.10.10.13: { nodename: node-test-3 }
  vars:
    node_cluster: node-test
```

Pigsty monitoring also uses two node identity parameters. [`nodename`](#nodename) supplies the **instance identity** (`ins`). [`node_cluster`](#node_cluster) supplies the **cluster identity** (`cls`).

```yaml
node_load1{cls="pg-meta", ins="pg-meta-1", ip="10.10.10.10", job="nodes"}
node_load1{cls="pg-test", ins="pg-test-1", ip="10.10.10.11", job="nodes"}
node_load1{cls="pg-test", ins="pg-test-2", ip="10.10.10.12", job="nodes"}
node_load1{cls="pg-test", ins="pg-test-3", ip="10.10.10.13", job="nodes"}
```

Pigsty defaults to one exclusive PostgreSQL instance per node. Enable [`node_id_from_pg`](#node_id_from_pg) to derive the node's `ins` and `cls` labels from database identity parameters such as [`pg_cluster`](/docs/pgsql/param#pg_cluster).

|              Name               |   Type   | Level | Required     | Description           |
|:-------------------------------:|:--------:|:-----:|:-------------|:----------------------|
|      `inventory_hostname`       |   `ip`   | **-** | **Required** | **Node IP Address**   |
|     [`nodename`](#nodename)     | `string` | **I** | Optional     | **Node Name**         |
| [`node_cluster`](#node_cluster) | `string` | **C** | Optional     | **Node Cluster Name** |


```yaml
#nodename:                # [instance] # node instance identity, use hostname if missing, optional
node_cluster: nodes       # [cluster] # node cluster identity, use 'nodes' if missing, optional
nodename_overwrite: true          # overwrite node's hostname with nodename?
nodename_exchange: false          # exchange nodename among play hosts?
node_id_from_pg: true             # use postgres identity as node identity if applicable?
```




### `nodename`

name: `nodename`, type: `string`, level: `I`

Node instance identity. This parameter is optional. If unset, it defaults to the existing hostname, subject to the PostgreSQL identity rule below.

If [`node_id_from_pg`](#node_id_from_pg) is enabled and `nodename` is unset, [`nodename`](#nodename) tries to use `${pg_cluster}-${pg_seq}` as the instance identity. This behavior is enabled by default. If the cluster has no PGSQL module, it uses the node's HOSTNAME.




### `node_cluster`

name: `node_cluster`, type: `string`, level: `C`

Explicit node cluster name. Set this parameter at the node cluster level. The default empty value uses `nodes` as the cluster identity, subject to the PostgreSQL identity rule below.

If [`node_id_from_pg`](#node_id_from_pg) is enabled and `node_cluster` is unset, [`node_cluster`](#node_cluster) tries to use `${pg_cluster}`. This behavior is enabled by default. If the cluster has no PGSQL module, it uses `nodes`.







### `nodename_overwrite`

name: `nodename_overwrite`, type: `bool`, level: `C`

Specifies whether to replace the hostname with nodename. The default is `true`. When enabled, Pigsty uses a non-empty [`nodename`](#nodename) as the host's HOSTNAME.

If `nodename` is empty and [`node_id_from_pg`](#node_id_from_pg) is `true`, Pigsty tries to derive the node name from its exclusive PostgreSQL instance. The name is `{{ pg_cluster }}-{{ pg_seq }}`. This behavior is enabled by default. If the node has no PGSQL module, Pigsty leaves the hostname unchanged.

If [`nodename`](#nodename) is empty and [`node_id_from_pg`](#node_id_from_pg) is disabled, Pigsty preserves the existing hostname.






### `nodename_exchange`

name: `nodename_exchange`, type: `bool`, level: `C`

Specifies whether playbook hosts exchange node names. The default is `false`.

If enabled, hosts in the same [`node.yml`](/docs/node/playbook#nodeyml) batch exchange node names. They write these names to `/etc/hosts`.





### `node_id_from_pg`

name: `node_id_from_pg`, type: `bool`, level: `C`

Specifies whether node identity comes from the PostgreSQL instance or cluster deployed 1:1 on the node. The default is `true`.

Pigsty defaults to one PostgreSQL instance per node. Unless the PostgreSQL cluster has explicit overrides, node cluster and instance identities match the database identities. This simplifies problem analysis and monitoring data processing.





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




### `node_write_etc_hosts`

name: `node_write_etc_hosts`, type: `bool`, level: `G|C|I`

Specifies whether to modify `/etc/hosts` on the target node. The default is `true`. Container environments often prohibit changes to this file. Set this parameter to `false` to skip the change.




### `node_default_etc_hosts`

name: `node_default_etc_hosts`, type: `string[]`, level: `G`

Static DNS records to be written to all nodes' `/etc/hosts`. Default value:

```yaml
["${admin_ip} i.pigsty"]
```

[`node_default_etc_hosts`](#node_default_etc_hosts) is an array. Each element is a DNS record with format `<ip> <name>`. You can specify multiple domain names separated by spaces.

Use this parameter for global static DNS records. For records specific to a cluster or instance, use [`node_etc_hosts`](#node_etc_hosts).






### `node_etc_hosts`

name: `node_etc_hosts`, type: `string[]`, level: `C`

Extra static DNS records to write to node's `/etc/hosts`. Default is `[]` (empty array).

Same format as [`node_default_etc_hosts`](#node_default_etc_hosts), but suitable for configuration at the cluster/instance level.




### `node_dns_method`

name: `node_dns_method`, type: `enum`, level: `C`

DNS server configuration method. The options are `add`, `none`, and `overwrite`. The default is `add`.

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

If [`node_dns_method`](#node_dns_method) is `add` or `overwrite`, Pigsty writes these options to `/etc/resolv.conf` first. Refer to Linux documentation for `/etc/resolv.conf` format details.












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

Software repository modules to add to the node. Use the same format as [`repo_modules`](/docs/infra/param#repo_modules). The default is `local`, which selects the local repository in [`repo_upstream`](/docs/infra/param#repo_upstream).

When Pigsty manages nodes, it filters entries in [`repo_upstream`](/docs/infra/param#repo_upstream) based on this parameter value. Only entries whose `module` field matches this parameter value will be added to the node's software sources.






### `node_repo_remove`

name: `node_repo_remove`, type: `bool`, level: `C/A`

Specifies whether to remove existing repository definitions on the node. The default is `true`.

When enabled, Pigsty will **remove** existing configuration files in `/etc/yum.repos.d` on the node and back them up to `/etc/yum.repos.d/backup`.
On Debian/Ubuntu systems, it backs up `/etc/apt/sources.list(.d)` to `/etc/apt/backup`.






### `node_packages`

name: `node_packages`, type: `string[]`, level: `C`

Packages to install and upgrade on the current node. The default is `[openssh-server]`. During installation, this upgrades sshd to the latest version to avoid security vulnerabilities.

Each array element is a string of comma-separated package names. Same format as [`node_default_packages`](#node_default_packages). This parameter is usually used to specify additional packages to install at the node/cluster level.

Pigsty **upgrades these packages to the latest available version**. To preserve installed versions and only ensure that packages exist, use [`node_default_packages`](#node_default_packages).






### `node_default_packages`

name: `node_default_packages`, type: `string[]`, level: `G`

Default packages to install on every node. The default varies by platform. If unset, the `node_id` role loads `node_packages_default` from the matching `<os>.<arch>.yml` file under [`roles/node_id/vars`](https://github.com/pgsty/pigsty/tree/main/roles/node_id/vars). It selects the file by operating-system version and CPU architecture.

This is a string array in which each line is a **comma-separated** package list. Mappings vary by distribution, release, and architecture. No single EL or Debian list is the default for the whole family.

These packages only need to **exist**. They do not need to be the **latest** version. To install the latest version, use [`node_packages`](#node_packages).

For example, the current mapping for `EL 9 x86_64` is:

```yaml
- bash,python3,sudo,acl,ca-certificates,openssl,curl,wget,lz4,zstd,unzip,bzip2,gzip,tar,tzdata,chrony,openssh-server,util-linux,rsync,psmisc,logrotate
- pv,jq,git,make,patch,lsof,less,ncdu,htop,iotop,socat,net-tools,telnet,ipvsadm,tuned,numactl,nvme-cli,sysstat,keepalived,etcd,haproxy,vector,pig,uv
- zlib,readline,xz,glibc-langpack-en,cronie,openssh-clients,node-exporter,bind-utils,iproute,iputils,nmap-ncat,procps-ng,vim-minimal,yum,audit,grubby,chkconfig
```

The current mapping for `Debian 13 x86_64` is:

```yaml
- bash,python3,sudo,acl,ca-certificates,openssl,curl,wget,lz4,zstd,unzip,bzip2,gzip,tar,tzdata,chrony,openssh-server,util-linux,rsync,psmisc,logrotate
- pv,jq,git,make,patch,lsof,less,ncdu,htop,iotop,socat,net-tools,telnet,ipvsadm,tuned,numactl,nvme-cli,sysstat,keepalived,etcd,haproxy,vector,pig,uv
- zlib1g,libreadline-dev,xz-utils,locales,cron,openssh-client,node-exporter,bind9-dnsutils,iproute2,iputils-ping,netcat-openbsd,procps,vim-tiny
```

This parameter uses the same format as [`node_packages`](#node_packages).
It normally overrides the platform mapping globally for packages required on every node.




### `node_uv_env`

name: `node_uv_env`, type: `path`, level: `C`

uv virtual environment path, default is `/data/venv`. Set to empty string `''` to skip uv venv configuration.

If non-empty, Pigsty creates a Python virtual environment with `uv venv`. It installs the pip packages from [`node_pip_packages`](#node_pip_packages).

If `region: china`, Pigsty configures `/etc/uv/uv.toml` to use the Tencent Cloud PyPI mirror at `https://mirrors.cloud.tencent.com/pypi/simple/`.




### `node_pip_packages`

name: `node_pip_packages`, type: `string`, level: `C`

Pip packages to install in uv virtual environment, default is empty string `''`.

Use space-separated package names, e.g.: `'ansible pgcli requests pandas'`.

Only takes effect when [`node_uv_env`](#node_uv_env) is non-empty.




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
node_tuned_profile_dir: /etc/tuned # node tuned profile directory
node_sysctl_params:               # sysctl parameters in k:v format in addition to tuned
  fs.nr_open: 8388608
```





### `node_disable_numa`

name: `node_disable_numa`, type: `bool`, level: `C`

Specifies whether to disable NUMA. The default is `false`, which keeps NUMA enabled.

A NUMA disable operation requires a reboot to take effect. If you cannot configure CPU affinity, we recommend that you disable NUMA for production databases.







### `node_disable_swap`

name: `node_disable_swap`, type: `bool`, level: `C`

Specifies whether to disable SWAP. The default is `false`, which keeps SWAP enabled.

We generally recommend that you keep SWAP enabled. If a node runs only PostgreSQL and has sufficient memory, you can disable SWAP for better performance.

For Kubernetes deployments, you should disable SWAP.






### `node_static_network`

name: `node_static_network`, type: `bool`, level: `C`

Specifies whether to use static DNS servers. The default is `true`.

Static networking preserves DNS Resolv configuration across reboots and NIC changes. We recommend that you enable it or have network engineers manage the configuration.





### `node_disk_prefetch`

name: `node_disk_prefetch`, type: `bool`, level: `C`

Specifies whether to enable disk prefetch. The default is `false`.

Disk prefetch can improve performance for instances on HDDs. We recommend it for mechanical hard drives.





### `node_kernel_modules`

name: `node_kernel_modules`, type: `string[]`, level: `C`

Kernel modules to enable. The default enables these modules:

```yaml
node_kernel_modules: [ softdog, ip_vs, ip_vs_rr, ip_vs_wrr, ip_vs_sh ]
```

An array of kernel module names declaring the kernel modules that need to be installed on the node.






### `node_hugepage_count`

name: `node_hugepage_count`, type: `int`, level: `C`

Number of 2MB hugepages to allocate on the node. Default is `0`. Related parameter is [`node_hugepage_ratio`](#node_hugepage_ratio).

If both `node_hugepage_count` and `node_hugepage_ratio` are `0`, hugepages are completely disabled. This is the default. This parameter takes priority over [`node_hugepage_ratio`](#node_hugepage_ratio) because it is more precise.

Pigsty writes a non-zero value to `/etc/sysctl.d/hugepage.conf` to apply it. Negative values do not work. Values above 90% of node memory are capped at 90%.

For a non-zero setting, allocate slightly more memory than [`pg_shared_buffer_ratio`](/docs/pgsql/param#pg_shared_buffer_ratio) requires. This lets PostgreSQL use hugepages.





### `node_hugepage_ratio`

name: `node_hugepage_ratio`, type: `float`, level: `C`

Ratio of node memory for hugepages. Default is `0`. Valid range: `0` ~ `0.40`.

This memory ratio will be allocated as hugepages and reserved for PostgreSQL. [`node_hugepage_count`](#node_hugepage_count) is the higher priority and more precise version of this parameter.

Default: `0`, which sets `vm.nr_hugepages=0` and completely disables hugepages.

This parameter should equal or be slightly larger than [`pg_shared_buffer_ratio`](/docs/pgsql/param#pg_shared_buffer_ratio) if not zero.

For example, with 25% of memory allocated to PostgreSQL shared buffers, set this value to 0.27 ~ 0.30. After initialization, use `/pg/bin/pg-tune-hugepage` to reclaim unused hugepages precisely.





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







### `node_tuned_profile_dir`

name: `node_tuned_profile_dir`, type: `path`, level: `C`

Directory for the `tiny`, `oltp`, `olap`, and `crit` tuned profiles. The role default is `/etc/tuned`. Platform variables adjust it for the distribution.

EL 10, Debian 13, and Ubuntu 26 use `/etc/tuned/profiles`. EL 8/9, Debian 12, and Ubuntu 22/24 use `/etc/tuned`.

Normally leave this unchanged. Override it only when the target system's tuned profile directory differs from Pigsty's known platform mapping.



### `node_sysctl_params`

name: `node_sysctl_params`, type: `dict`, level: `C`

Kernel parameters in K:V format that supplement the `tuned` profile. The Ansible `sysctl` module writes and applies them immediately.

Default:

```yaml
node_sysctl_params:
  fs.nr_open: 8388608
```

This default keeps the kernel per-process FD ceiling at least as high as `LimitNOFILE=8388608`, used by several Pigsty systemd units. It prevents `setrlimit` failures on some distribution/systemd combinations.

This is a KV dictionary parameter where Key is the kernel `sysctl` parameter name and Value is the parameter value. You can also consider defining extra sysctl parameters directly in the tuned templates in `roles/node/templates`.







------------------------------

## `NODE_SEC`

Node security related parameters, including SELinux and firewall configuration.

```yaml
node_selinux_mode: permissive             # selinux mode: disabled, permissive, enforcing
node_firewall_mode: zone                  # firewall mode: zone (default, enabled), off (disable), none (skip & self-managed)
node_firewall_intranet:           # which intranet cidr considered as internal network
  - 10.0.0.0/8
  - 192.168.0.0/16
  - 172.16.0.0/12
node_firewall_public_port:        # expose these ports to public network in zone mode
  - 22                            # enable ssh access
  - 80                            # enable http access
  - 443                           # enable https access
```




### `node_selinux_mode`

name: `node_selinux_mode`, type: `enum`, level: `C`

SELinux running mode. Default is `permissive`.

Options:

* `disabled`: Completely disable SELinux (equivalent to old version's `node_disable_selinux: true`)
* `permissive`: Permissive mode, logs violations but doesn't block (recommended, default)
* `enforcing`: Enforcing mode, strictly enforces SELinux policies

If you do not have operating-system or security specialists, we recommend `permissive` or `disabled` mode.

Only EL-based systems enable SELinux by default. On Debian/Ubuntu, install and enable SELinux yourself if needed. SELinux mode changes can require a reboot to take full effect.





### `node_firewall_mode`

name: `node_firewall_mode`, type: `enum`, level: `C`

Firewall running mode. Default is `zone` (firewall enabled and zone-managed).
Since v4.1, the default changed from `none` to `zone`.

Options:

* `zone`: Enable firewall and configure rules: trust intranet, only open specified ports to public (default)
* `off`: Turn off and disable firewall (equivalent to old version's `node_disable_firewall: true`)
* `none`: Do not manage firewall state/rules; fully self-managed by user

Pigsty uses `firewalld` on EL and `ufw` on Debian/Ubuntu. The default `zone` mode provides consistent behavior across distributions. It enables the firewall, trusts intranet traffic, and limits public access to [`node_firewall_public_port`](#node_firewall_public_port).

For full manual firewall control, set `node_firewall_mode` to `none`. For example, use this when relying only on cloud security groups or enterprise firewall policies. Use `off` only when you explicitly want to disable the system firewall.

For production environments exposed to public networks, use `zone` mode. Set [`node_firewall_intranet`](#node_firewall_intranet) and [`node_firewall_public_port`](#node_firewall_public_port) to control access precisely. The `zone` mode will enable the firewall if not already running.




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

Hosts within these CIDR ranges are treated as trusted intranet hosts with more permissive firewall rules. The same ranges are treated as "intranet" by [**PG/PGB HBA rules**](/docs/concept/sec/auth).
Because the default firewall mode is `zone`, this list is active by default.





### `node_firewall_public_port`

name: `node_firewall_public_port`, type: `port[]`, level: `C`

Public exposed port list. Default is `[22, 80, 443]`.

This parameter defines ports exposed to public network (non-intranet CIDR). Default exposed ports include:

* `22`: SSH service port
* `80`: HTTP service port
* `443`: HTTPS service port

You can adjust this list according to actual needs. For example, if you need to expose PostgreSQL to public network, explicitly add `5432`:

```yaml
node_firewall_public_port: [22, 80, 443, 5432]
```

PostgreSQL default security policy in Pigsty only allows administrators to access the database port from public networks.
If you want other users to access the database from public networks, make sure to correctly configure corresponding access permissions in PG/PGB HBA rules.

If you want to expose other service ports to public networks, you can add them to this list.
Always keep the minimum-exposure principle and open only ports you really need.

This parameter applies only if [`node_firewall_mode`](#node_firewall_mode) is `zone`. It does not apply in `none` or `off` mode.






------------------------------

## `NODE_ADMIN`

These parameters control administrator accounts and login access on host nodes.

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

Pigsty creates this directory if it does not exist. The directory should belong to `root` with `777` permissions.






### `node_admin_enabled`

name: `node_admin_enabled`, type: `bool`, level: `C`

Specifies whether to create a dedicated admin user on this node. The default is `true`.

Pigsty creates an admin user on each node with passwordless sudo and SSH. The default identity is `dba (uid=88)`. This user can connect from the admin node to other nodes through passwordless SSH and run passwordless sudo.




### `node_admin_uid`

name: `node_admin_uid`, type: `int`, level: `C`

Admin user UID. Default is `88`.

Where possible, use the same UID on all nodes to prevent permission problems.

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

Pigsty defaults to `nopass` mode. This lets admin users run any sudo command without a password and simplifies automation.

In production environments with high security requirements, you may need to adjust this parameter to `limited` or `all` to restrict admin privileges.





### `node_admin_ssh_exchange`

name: `node_admin_ssh_exchange`, type: `bool`, level: `C`

Exchange node admin SSH keys between node clusters. Default is `true`.

If enabled, Pigsty exchanges SSH public keys between members during playbook execution. The [`node_admin_username`](#node_admin_username) user can then connect between nodes.





### `node_admin_pk_current`

name: `node_admin_pk_current`, type: `bool`, level: `C`

Specifies whether to add the current user's public key to the admin account. The default is `true`.

If enabled, Pigsty copies the current playbook user's SSH public key (`~/.ssh/id_rsa.pub`) to the target admin user's `authorized_keys`.

Review this setting for production. It installs the current command user's default public key in the admin account on all target machines.








### `node_admin_pk_list`

name: `node_admin_pk_list`, type: `string[]`, level: `C`

List of public keys for admins who can log in. Default is `[]` (empty array).

Each array element is a string containing the public key to be written to the admin user's `~/.ssh/authorized_keys`. Users with the corresponding private key can log in as admin.

For production deployments, review this list and add only trusted keys.




### `node_aliases`

name: `node_aliases`, type: `dict`, level: `C`

Shell aliases to be written to host's `/etc/profile.d/node.alias.sh`. Default is `{}` (empty dict).

Use this parameter to define host shell aliases. Pigsty writes the K:V dictionary to the target node's `profile.d` file as `alias k=v`.

For example, the following declares an alias named `dp` for quickly executing `docker compose pull`:

```yaml
node_aliases:
  dp: 'docker compose pull'
```







------------------------------

## `NODE_TIME`

Configuration related to host time/timezone/NTP/scheduled tasks.

Database services require accurate time synchronization. Make sure that the system `chronyd` service is running correctly.

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

Node timezone. The default empty string skips timezone configuration and preserves the system timezone, usually UTC.

For China, we recommend `Asia/Hong_Kong` / `Asia/Shanghai`.




### `node_ntp_enabled`

name: `node_ntp_enabled`, type: `bool`, level: `C`

Specifies whether to enable chronyd time synchronization. The default is `true`.

Pigsty will override the node's `/etc/chrony.conf` with the NTP server list specified in [`node_ntp_servers`](#node_ntp_servers).

If your node already has NTP servers configured, you can set this parameter to `false` to skip time sync configuration.




### `node_ntp_servers`

name: `node_ntp_servers`, type: `string[]`, level: `C`

NTP server list used in `/etc/chrony.conf`. Default: `["pool pool.ntp.org iburst"]`

This parameter is an array where each element is a string representing one line of NTP server configuration. Only takes effect when [`node_ntp_enabled`](#node_ntp_enabled) is enabled.

Pigsty uses the global NTP server `pool.ntp.org` by default. Select a service suitable for your network, such as `cn.pool.ntp.org iburst` or an internal time service.

You can also use the `${admin_ip}` placeholder in the configuration to use the time server on the admin node.

```yaml
node_ntp_servers: [ 'pool ${admin_ip} iburst' ]
```





### `node_crontab_overwrite`

name: `node_crontab_overwrite`, type: `bool`, level: `C`

Specifies whether [`node_crontab`](#node_crontab) overwrites scheduled tasks. The default is `true`, which **overwrites all** tasks in the node crontab.

To **append** tasks, set this parameter to `false`.






### `node_crontab`

name: `node_crontab`, type: `string[]`, level: `C`

Scheduled tasks defined in node's `/etc/crontab`. Default is `[]` (empty array).

Each array element is a string representing one scheduled task line. Use standard cron format for definition.

For example, the following configuration will execute a system task as root at 3am every day:

```yaml
node_crontab:
  - '00 03 * * * root /usr/bin/some-system-task'
```

> **Note**: For PostgreSQL backups and other postgres user cron jobs, use [`pg_crontab`](/docs/pgsql/param#pg_crontab) instead of `node_crontab`.
> NODE initialization writes `node_crontab` to `/etc/crontab`. The `postgres` user might not exist yet.
> In that case, cron reports `bad username` and ignores the entire crontab file.

When [`node_crontab_overwrite`](#node_crontab_overwrite) is `true` (default), the default `/etc/crontab` will be restored when removing the node.




------------------------------

## `NODE_VIP`

You can bind an L2 VIP to a node cluster. This optional feature is disabled by default and applies to a group of nodes. The VIP moves between cluster nodes according to configured priorities. This provides high availability for node services.

An L2 VIP works **only** within the same L2 network segment. This can restrict your network topology. To avoid that restriction, consider DNS LB or HAProxy for similar functions.

To enable this feature, explicitly assign available [`vip_address`](#vip_address) and [`vip_vrid`](#vip_vrid) values. Both must be unique in the network segment.

NODE VIP and PG VIP have different roles. The vip-manager service manages PG VIP and binds it to the PostgreSQL cluster primary.

Keepalived manages NODE VIP for node clusters. It supports master-backup mode or load-balanced mode. Both modes can coexist.


```yaml
vip_enabled: false                # enable vip on this node cluster?
# vip_address:         [IDENTITY] # node vip address in ipv4 format, required if vip is enabled
# vip_vrid:            [IDENTITY] # required, integer, 1-254, should be unique among same VLAN
vip_role: backup                  # optional, `master/backup`, backup by default, use as init role
vip_preempt: false                # optional, `true/false`, false by default, enable vip preemption
vip_interface: auto               # node vip network interface to listen, `auto` by default
vip_dns_suffix: ''                # node vip dns name suffix, empty string by default
vip_auth_pass: ''                 # vrrp auth password, empty to use `<cls>-<vrid>` as default
vip_exporter_port: 9650           # keepalived exporter listen port, 9650 by default
```




### `vip_enabled`

name: `vip_enabled`, type: `bool`, level: `C`

Specifies whether Keepalived manages an L2 VIP for this node cluster. The default is `false`.







### `vip_address`

name: `vip_address`, type: `ip`, level: `C`

Node VIP address in IPv4 format (without CIDR suffix). This is a **required** parameter when [`vip_enabled`](#vip_enabled) is enabled.

This parameter has no default. You must explicitly assign a unique VIP address for the node cluster.




### `vip_vrid`

name: `vip_vrid`, type: `int`, level: `C`

VRID identifies a VIP in the network. Use an integer from `1` to `254`. This parameter is **required** if [`vip_enabled`](#vip_enabled) is enabled.

This parameter has no default. You must assign the node cluster an ID that is unique in the network segment.







### `vip_role`

name: `vip_role`, type: `enum`, level: `I`

Node VIP role. Options are `master` or `backup`. Default is `backup`.

This parameter value will be set as keepalived's initial state.




### `vip_preempt`

name: `vip_preempt`, type: `bool`, level: `C/I`

Specifies whether to enable VIP preemption. This parameter is optional. The default is `false`, which disables preemption.

With preemption enabled, a `backup` node can take the VIP from a running `master` if the backup has higher priority.






### `vip_interface`

name: `vip_interface`, type: `string`, level: `C/I`

Network interface for the node VIP. The default is `auto`. Pigsty detects the interface associated with the inventory node IP.

Automatic detection might be unsuitable for non-standard routing, policy routing, or other unusual networks. In these cases, override the interface name at the instance or node level.

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

Pigsty installs and enables HAProxy on all nodes by default. It exposes services in a similar way to Kubernetes NodePort.

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

Specifies whether to enable HAProxy on this node. The default is `true`.





### `haproxy_clean`

name: `haproxy_clean`, type: `bool`, level: `G/C/A`

Specifies whether to delete all existing HAProxy configuration. The default is `false`.




### `haproxy_reload`

name: `haproxy_reload`, type: `bool`, level: `A`

Specifies whether to reload HAProxy after configuration changes. The default is `true`.

To review changes first, disable this option with command arguments. Check the configuration, then apply it.




### `haproxy_auth_enabled`

name: `haproxy_auth_enabled`, type: `bool`, level: `G`

Enable authentication for haproxy admin page. Default is `true`, which requires HTTP basic auth for the admin page.

We recommend that you keep authentication enabled. Without it, the traffic control page is exposed.




### `haproxy_admin_username`

name: `haproxy_admin_username`, type: `username`, level: `G`

HAProxy admin username. Default is `admin`.






### `haproxy_admin_password`

name: `haproxy_admin_password`, type: `password`, level: `G`

HAProxy admin password. Default is `pigsty`.

> Change this password in production.




### `haproxy_exporter_port`

name: `haproxy_exporter_port`, type: `port`, level: `C`

HAProxy traffic management/metrics exposed port. Default is `9101`.







### `haproxy_client_timeout`

name: `haproxy_client_timeout`, type: `interval`, level: `C`

Client connection timeout. Default is `24h`.

A timeout can help avoid long-lived connections that are difficult to clean up. If you need longer connections, increase the timeout.







### `haproxy_server_timeout`

name: `haproxy_server_timeout`, type: `interval`, level: `C`

Server connection timeout. Default is `24h`.

A timeout can help avoid long-lived connections that are difficult to clean up. If you need longer connections, increase the timeout.





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

Each service definition is rendered as `/etc/haproxy/conf.d/<service.name>.cfg` and takes effect after HAProxy reload. The main configuration remains `/etc/haproxy/haproxy.cfg`.

Pigsty writes the HAProxy unit to `/etc/systemd/system/haproxy.service`. The optional environment file is `/etc/default/haproxy`. It recognizes only `EXTRAOPTS`. Do not repeat `-f` there because it conflicts with the main configuration and configuration directory fixed in the unit. If you override `EXTRAOPTS`, keep `-S /run/haproxy-master.sock` to preserve seamless reload. Restart the service after this change.









------------------------------

## `NODE_EXPORTER`

```yaml
node_exporter_enabled: true       # setup node_exporter on this node?
node_exporter_port: 9100          # node exporter listen port, 9100 by default
node_exporter_options: '--no-collector.softnet --no-collector.nvme --collector.tcpstat --collector.processes'
```



### `node_exporter_enabled`

name: `node_exporter_enabled`, type: `bool`, level: `C`

Specifies whether to enable the node metrics collector. The default is `true`.




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

Vector is the log collection component used by Pigsty since v4. It collects logs from various modules and sends them to VictoriaLogs service on infrastructure nodes.

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
    * `patroni`: `/pg/log/patroni/patroni.log` (`job=patroni`)
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

Specifies whether to enable Vector log collection. The default is `true`.

Vector is the log collection agent used by Pigsty since v4, replacing Promtail from previous versions. It collects node and service logs and sends them to VictoriaLogs.




### `vector_clean`

name: `vector_clean`, type: `bool`, level: `G/A`

Specifies whether to delete the existing data directory during Vector installation. The default is `false`, which preserves the directory.

If enabled, Pigsty deletes [`vector_data`](#vector_data) during Vector deployment. Vector then collects all logs on the node again and sends them to VictoriaLogs.




### `vector_data`

name: `vector_data`, type: `path`, level: `C`

Vector data directory path. Default is `/data/vector`.

Vector stores log read offsets and buffered data in this directory.





### `vector_port`

name: `vector_port`, type: `port`, level: `C`

Vector metrics listen port. Default is `9598`.

Vector exposes its own monitoring metrics on this port. VictoriaMetrics can scrape them.




### `vector_read_from`

name: `vector_read_from`, type: `enum`, level: `C`

Vector log reading start position. Default is `beginning`.

The options are `beginning` and `end`. The `beginning` option reads all content in existing log files. The `end` option reads only new logs.




### `vector_log_endpoint`

name: `vector_log_endpoint`, type: `string[]`, level: `C`

Log destination endpoint list. Default is `[ infra ]`.

Specifies which node group's VictoriaLogs service to send logs to. Default sends to nodes in the `infra` group.
