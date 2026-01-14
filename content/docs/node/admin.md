---
title: Administration
weight: 3250
description: Node cluster management SOP - create, destroy, expand, shrink, and handle
  node/disk failures
icon: fa-solid fa-building-columns
categories: [Task]
---

Here are common administration operations for the NODE module:

- [Add Node](#add-node)
- [Remove Node](#remove-node)
- [Create Admin](#create-admin)
- [Bind VIP](#bind-vip)
- [Add Node Monitoring](#add-node-monitoring)
- [Other Tasks](#other-tasks)

For more questions, see [FAQ: NODE](faq/)


----------------

## Add Node

To add a node to Pigsty, you need passwordless ssh/sudo access to that node.

You can also add an entire cluster at once, or use wildcards to match nodes in the inventory to add to Pigsty.

```bash
# ./node.yml -l <cls|ip|group>        # actual playbook to add nodes to Pigsty
# bin/node-add <selector|ip...>       # add node to Pigsty
bin/node-add node-test                # init node cluster 'node-test'
bin/node-add 10.10.10.10              # init node '10.10.10.10'
```

**Example: Add three nodes of PG cluster `pg-test` to Pigsty management**

{{< asciinema file="demo/node-add.cast" markers="4:Execute" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Remove Node

To remove a node from Pigsty, you can use the following commands:

```bash
# ./node-rm.yml -l <cls|ip|group>    # actual playbook to remove node from Pigsty
# bin/node-rm <cls|ip|selector> ...  # remove node from Pigsty
bin/node-rm node-test                # remove node cluster 'node-test'
bin/node-rm 10.10.10.10              # remove node '10.10.10.10'
```

You can also remove an entire cluster at once, or use wildcards to match nodes in the inventory to remove from Pigsty.

{{< asciinema file="demo/node-rm.cast" speed="1.2" autoplay="true" loop="true" >}}


----------------

## Create Admin

If the current user doesn't have passwordless ssh/sudo access to the node, you can use another admin user to bootstrap it:

```bash
node.yml -t node_admin -k -K -e ansible_user=<another admin>   # enter ssh/sudo password for another admin to complete this task
```


----------------

## Bind VIP

You can bind an optional L2 VIP on a node cluster using the [`vip_enabled`](param/#vip_enabled) parameter.

```yaml
proxy:
  hosts:
    10.10.10.29: { nodename: proxy-1 }   # you can explicitly specify initial VIP role: MASTER / BACKUP
    10.10.10.30: { nodename: proxy-2 }   # , vip_role: master }
  vars:
    node_cluster: proxy
    vip_enabled: true
    vip_vrid: 128
    vip_address: 10.10.10.99
    vip_interface: eth1
```

```bash
./node.yml -l proxy -t node_vip     # enable VIP for the first time
./node.yml -l proxy -t vip_refresh  # refresh VIP config (e.g., designate master)
```


----------------

## Add Node Monitoring

If you want to add or reconfigure monitoring on existing nodes, use the following commands:

```bash
./node.yml -t node_exporter,node_register  # configure monitoring and register
./node.yml -t vector                        # configure log collection
```


----------------

## Other Tasks

```bash
# Play
./node.yml -t node                            # complete node initialization (excludes haproxy, monitoring)
./node.yml -t haproxy                         # setup haproxy on node
./node.yml -t monitor                         # configure node monitoring: node_exporter & vector
./node.yml -t node_vip                        # install, configure, enable L2 VIP for clusters without VIP
./node.yml -t vip_config,vip_reload           # refresh node L2 VIP configuration
./node.yml -t haproxy_config,haproxy_reload   # refresh service definitions on node
./node.yml -t register_prometheus             # re-register node with Prometheus
./node.yml -t register_nginx                  # re-register node haproxy admin page with Nginx

# Task
./node.yml -t node-id        # generate node identity
./node.yml -t node_name      # setup hostname
./node.yml -t node_hosts     # configure node /etc/hosts records
./node.yml -t node_resolv    # configure node DNS resolver /etc/resolv.conf
./node.yml -t node_firewall  # configure firewall & selinux
./node.yml -t node_ca        # configure node CA certificate
./node.yml -t node_repo      # configure node upstream software repository
./node.yml -t node_pkg       # install yum packages on node
./node.yml -t node_feature   # configure numa, grub, static network, etc.
./node.yml -t node_kernel    # configure OS kernel modules
./node.yml -t node_tune      # configure tuned profile
./node.yml -t node_sysctl    # set additional sysctl parameters
./node.yml -t node_profile   # configure node environment variables: /etc/profile.d/node.sh
./node.yml -t node_ulimit    # configure node resource limits
./node.yml -t node_data      # configure node primary data directory
./node.yml -t node_admin     # configure admin user and ssh keys
./node.yml -t node_timezone  # configure node timezone
./node.yml -t node_ntp       # configure node NTP server/client
./node.yml -t node_crontab   # add/overwrite crontab entries
./node.yml -t node_vip       # setup optional L2 VIP for node cluster
```
