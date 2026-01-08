---
title: Playbook
weight: 3240
description: How to use built-in Ansible playbooks to manage NODE clusters, with a
  quick reference for common commands.
icon: fa-solid fa-scroll
categories: [Task]
---

Pigsty provides two playbooks related to the NODE module:

- [`node.yml`](#nodeyml): Add nodes to Pigsty and configure them to the desired state
- [`node-rm.yml`](#node-rmyml): Remove managed nodes from Pigsty

Two wrapper scripts are also provided: `bin/node-add` and `bin/node-rm`, for quickly invoking these playbooks.


----------------

## `node.yml`

The [`node.yml`](https://github.com/pgsty/pigsty/blob/main/node.yml) playbook for adding nodes to Pigsty contains the following subtasks:

```
node-id       : generate node identity
node_name     : setup hostname
node_hosts    : setup /etc/hosts records
node_resolv   : setup DNS resolver /etc/resolv.conf
node_firewall : setup firewall & selinux
node_ca       : add & trust CA certificate
node_repo     : add upstream software repository
node_pkg      : install rpm/deb packages
node_feature  : setup numa, grub, static network
node_kernel   : enable kernel modules
node_tune     : setup tuned profile
node_sysctl   : setup additional sysctl parameters
node_profile  : write /etc/profile.d/node.sh
node_ulimit   : setup resource limits
node_data     : setup data directory
node_admin    : setup admin user and ssh key
node_timezone : setup timezone
node_ntp      : setup NTP server/client
node_crontab  : add/overwrite crontab tasks
node_vip      : setup optional L2 VIP for node cluster
haproxy       : setup haproxy on node to expose services
monitor       : setup node monitoring: node_exporter & vector
```


----------------

## `node-rm.yml`

The [`node-rm.yml`](https://github.com/pgsty/pigsty/blob/main/node-rm.yml) playbook for removing nodes from Pigsty contains the following subtasks:

```
register       : remove registration from prometheus & nginx
  - prometheus : remove registered prometheus monitoring target
  - nginx      : remove nginx proxy record for haproxy admin
vip            : remove keepalived & L2 VIP (if VIP enabled)
haproxy        : remove haproxy load balancer
node_exporter  : remove node monitoring: Node Exporter
vip_exporter   : remove keepalived_exporter (if VIP enabled)
vector         : remove log collection agent vector
profile        : remove /etc/profile.d/node.sh
```


----------------

## Quick Reference

```bash
# Basic node management
./node.yml -l <cls|ip|group>          # Add node to Pigsty
./node-rm.yml -l <cls|ip|group>       # Remove node from Pigsty

# Node management shortcuts
bin/node-add node-test                 # Initialize node cluster 'node-test'
bin/node-add 10.10.10.10               # Initialize node '10.10.10.10'
bin/node-rm node-test                  # Remove node cluster 'node-test'
bin/node-rm 10.10.10.10                # Remove node '10.10.10.10'

# Node main initialization
./node.yml -t node                     # Complete node main init (excludes haproxy, monitor)
./node.yml -t haproxy                  # Setup haproxy on node
./node.yml -t monitor                  # Setup node monitoring: node_exporter & vector

# VIP management
./node.yml -t node_vip                 # Setup optional L2 VIP for node cluster
./node.yml -t vip_config,vip_reload    # Refresh node L2 VIP configuration

# HAProxy management
./node.yml -t haproxy_config,haproxy_reload   # Refresh service definitions on node

# Registration management
./node.yml -t register_prometheus      # Re-register node to Prometheus
./node.yml -t register_nginx           # Re-register node haproxy admin to Nginx

# Specific tasks
./node.yml -t node-id                  # Generate node identity
./node.yml -t node_name                # Setup hostname
./node.yml -t node_hosts               # Setup node /etc/hosts records
./node.yml -t node_resolv              # Setup node DNS resolver /etc/resolv.conf
./node.yml -t node_firewall            # Setup firewall & selinux
./node.yml -t node_ca                  # Setup node CA certificate
./node.yml -t node_repo                # Setup node upstream software repository
./node.yml -t node_pkg                 # Install yum packages on node
./node.yml -t node_feature             # Setup numa, grub, static network
./node.yml -t node_kernel              # Enable kernel modules
./node.yml -t node_tune                # Setup tuned profile
./node.yml -t node_sysctl              # Setup additional sysctl parameters
./node.yml -t node_profile             # Setup node environment: /etc/profile.d/node.sh
./node.yml -t node_ulimit              # Setup node resource limits
./node.yml -t node_data                # Setup node primary data directory
./node.yml -t node_admin               # Setup admin user and ssh key
./node.yml -t node_timezone            # Setup node timezone
./node.yml -t node_ntp                 # Setup node NTP server/client
./node.yml -t node_crontab             # Add/overwrite crontab tasks
```
