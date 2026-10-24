# FAQ

> Frequently asked questions about Pigsty NODE module

---

LLMS index: [llms.txt](/llms.txt)

---

----------------

## How to configure NTP service?

> NTP is critical for production services. If it is not configured, use public NTP services or Chronyd on the admin node as the time source.

If the nodes already have NTP configured, set `node_ntp_enabled` to `false` to preserve that configuration.

Otherwise, if you have Internet access, you can use public NTP services such as `pool.ntp.org`.

Without Internet access, use the configuration below to synchronize all nodes with the admin node. You can also use another internal NTP service.

```bash
node_ntp_servers:                 # NTP servers in /etc/chrony.conf
  - pool cn.pool.ntp.org iburst
  - pool ${admin_ip} iburst       # assume non-admin nodes do not have internet access, at least sync with admin node
```

----------------

## How to force sync time on nodes?

Use `chronyc` to sync time. You must configure the NTP service first.

```bash
ansible all -b -a 'chronyc -a makestep'     # sync time
```

You can replace `all` with any group or host IP address to limit the execution scope.



----------------

## Remote nodes are not accessible via SSH?

A target can require an SSH jump host or other settings that prevent direct `ssh ip` access. Use [Ansible connection parameters](https://docs.ansible.com/ansible/latest/inventory_guide/connection_details.html) to specify the required SSH options. For example:

```bash
pg-test:
  vars: { pg_cluster: pg-test }
  hosts:
    10.10.10.11: {pg_seq: 1, pg_role: primary, ansible_host: node-1 }
    10.10.10.12: {pg_seq: 2, pg_role: replica, ansible_port: 22223, ansible_user: admin }
    10.10.10.13: {pg_seq: 3, pg_role: offline, ansible_port: 22224 }
```



----------------

## Password required for remote node SSH and SUDO?

**When performing deployments and changes**, the admin user used **must** have `ssh` and `sudo` privileges for all nodes. Passwordless login is not required.

Pass SSH and sudo passwords with the `-k|-K` parameters when you run playbooks. To run a playbook as another user, use `-e`[`ansible_user`](/docs/deploy/admin/#user)`=<another_user>`.

However, Pigsty strongly recommends configuring SSH **passwordless login** with passwordless `sudo` for the admin user.



----------------

## How to create a dedicated admin user with an existing admin user?

Use an existing admin user on the node to run this command. It creates the standard admin user specified by [`node_admin_username`](/docs/node/param#node_admin_username).

```bash
./node.yml -k -K -e ansible_user=<another_admin> -t node_admin
```

----------------

## How to expose services using HAProxy on nodes?

Use [`haproxy_services`](/docs/node/param#haproxy_services) to define exposed services. Run `node.yml -t haproxy_config,haproxy_reload` to update the configuration.

Here's an example of exposing Silo: [Silo Service Access](/docs/minio/config#expose-service)



----------------

## Why are all my /etc/yum.repos.d/* files gone?

Pigsty builds a local software repository on infra nodes that includes all dependencies. By default, [`node_repo_modules`](/docs/node/param#node_repo_modules) is `local`. Regular nodes use the local software repository on Infra nodes.

This design avoids Internet access and enhances installation stability and reliability. Pigsty moves all original repository definition files to `/etc/yum.repos.d/backup`. Copy them back as needed.

If you want to preserve the original repo definition files during regular node installation, set [`node_repo_remove`](/docs/node/param#node_repo_remove) to `false`.

If you want to preserve the original repo definition files during Infra node local repo construction, set [`repo_remove`](/docs/infra/param#repo_remove) to `false`.



----------------

## Why did my command line prompt change? How to restore it?

The `PS1` environment variable defines the Pigsty shell prompt. Pigsty sets it in `/etc/profile.d/node.sh`.

If you don't like it and want to modify or restore it, you can remove this file and log in again.




----------------

## Why did my hostname change?

Pigsty will modify your node hostname in two situations:

* [`nodename`](/docs/node/param#nodename_overwrite) value is explicitly defined (default is empty)
* The [**`PGSQL`**](/docs/pgsql) module is declared on the node and the [**`node_id_from_pg`**](/docs/node/param#node_id_from_pg) parameter is enabled (default is `true`)

If you don't want the hostname to be modified, you can set [**`nodename_overwrite`**](/docs/node/param#nodename_overwrite) to `false` at the global/cluster/instance level (default is `true`).

For details, see the [**`NODE_ID`**](/docs/node/param#node_id) section.




----------------

## What compatibility issues exist with Tencent OpenCloudOS?

OpenCloudOS does not provide the `softdog` kernel module. Remove it from `node_kernel_modules`. Add this override to the global configuration variables:

```yaml
node_kernel_modules: [ ip_vs, ip_vs_rr, ip_vs_wrr, ip_vs_sh ]
```


----------------

## What common issues exist on Debian systems?

When using Pigsty on Debian/Ubuntu systems, you may encounter the following issues:

**Missing locale**

If the system reports locale-related errors, you can fix them with the following command:

```bash
localedef -i en_US -f UTF-8 en_US.UTF-8
```

**Missing rsync tool**

Pigsty relies on rsync for file synchronization. If the system doesn't have it installed, you can install it with:

```bash
apt-get install rsync
```
