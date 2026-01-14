---
title: Playbook
description: How to use built-in Ansible playbooks to manage the INFRA module, with
  a quick reference for common commands.
weight: 3040
icon: fa-solid fa-scroll
categories: [Task]
---

Pigsty provides four playbooks related to the INFRA module:

- [`deploy.yml`](#deployyml): Deploy all components on all nodes in one pass
- [`infra.yml`](#infrayml): Initialize Pigsty infrastructure on infra nodes
- [`infra-rm.yml`](#infra-rmyml): Remove infrastructure components from infra nodes
- [`deploy.yml`](#deployyml): Perform a complete one-time installation of Pigsty on all nodes


----------------

## `deploy.yml`

Deploy all components on all nodes in one pass, resolving INFRA/NODE circular dependency issues.

This playbook interleaves subtasks from `infra.yml` and `node.yml`, completing deployment of all components in the following order:

1. **id**: Generate node and PostgreSQL identities
2. **ca**: Create self-signed CA on localhost
3. **repo**: Create local software repository on infra nodes
4. **node-init**: Initialize nodes, HAProxy, and Docker
5. **infra**: Initialize Nginx, DNS, VictoriaMetrics, Grafana, etc.
6. **node-monitor**: Initialize node-exporter, vector
7. **etcd**: Initialize etcd (required for PostgreSQL HA)
8. **minio**: Initialize MinIO (optional)
9. **pgsql**: Initialize PostgreSQL clusters
10. **pgsql-monitor**: Initialize PostgreSQL monitoring

This playbook is equivalent to executing the following four playbooks sequentially:

```bash
./infra.yml -l infra    # Deploy infrastructure on infra group
./node.yml              # Initialize all nodes
./etcd.yml              # Initialize etcd cluster
./pgsql.yml             # Initialize PostgreSQL clusters
```


----------------

## `infra.yml`

Initialize the infrastructure module on Infra nodes defined in the `infra` group of your configuration file.

This playbook performs the following tasks:

- Configures directories and environment variables on Infra nodes
- Downloads and creates a local software repository to accelerate subsequent installations
- Incorporates the current Infra node as a common node managed by Pigsty
- Deploys infrastructure components (VictoriaMetrics/Logs/Traces, VMAlert, Grafana, Alertmanager, Blackbox Exporter, etc.)

**Playbook notes:**

- This is an idempotent playbook - repeated execution will overwrite infrastructure components on Infra nodes
- To preserve historical monitoring data, set `vmetrics_clean`, `vlogs_clean`, `vtraces_clean` to `false` beforehand
- Unless `grafana_clean` is set to `false`, Grafana dashboards and configuration changes will be lost
- When the local software repository `/www/pigsty/repo_complete` exists, this playbook skips downloading software from the internet
- Complete execution takes approximately 1-3 minutes, depending on machine configuration and network conditions


### Available Tasks

```
# ca: create self-signed CA on localhost files/pki
#   - ca_dir        : create CA directory
#   - ca_private    : generate ca private key: files/pki/ca/ca.key
#   - ca_cert       : signing ca cert: files/pki/ca/ca.crt
#
# id: generate node identity
#
# repo: bootstrap a local yum repo from internet or offline packages
#   - repo_dir      : create repo directory
#   - repo_check    : check repo exists
#   - repo_prepare  : use existing repo if exists
#   - repo_build    : build repo from upstream if not exists
#     - repo_upstream    : handle upstream repo files in /etc/yum.repos.d
#       - repo_remove    : remove existing repo file if repo_remove == true
#       - repo_add       : add upstream repo files to /etc/yum.repos.d
#     - repo_url_pkg     : download packages from internet defined by repo_url_packages
#     - repo_cache       : make upstream yum cache with yum makecache
#     - repo_boot_pkg    : install bootstrap pkg such as createrepo_c,yum-utils,...
#     - repo_pkg         : download packages & dependencies from upstream repo
#     - repo_create      : create a local yum repo with createrepo_c & modifyrepo_c
#     - repo_use         : add newly built repo into /etc/yum.repos.d
#   - repo_nginx    : launch a nginx for repo if no nginx is serving
#
# node/haproxy/docker/monitor: setup infra node as a common node
#   - node_name, node_hosts, node_resolv, node_firewall, node_ca, node_repo, node_pkg
#   - node_feature, node_kernel, node_tune, node_sysctl, node_profile, node_ulimit
#   - node_data, node_admin, node_timezone, node_ntp, node_crontab, node_vip
#   - haproxy_install, haproxy_config, haproxy_launch, haproxy_reload
#   - docker_install, docker_admin, docker_config, docker_launch, docker_image
#   - haproxy_register, node_exporter, node_register, vector
#
# infra: setup infra components
#   - infra_env      : env_dir, env_pg, env_pgadmin, env_var
#   - infra_pkg      : infra_pkg_yum, infra_pkg_pip
#   - infra_user     : setup infra os user group
#   - infra_cert     : issue cert for infra components
#   - dns            : dns_config, dns_record, dns_launch
#   - nginx          : nginx_config, nginx_cert, nginx_static, nginx_launch, nginx_certbot, nginx_reload, nginx_exporter
#   - victoria       : vmetrics_config, vmetrics_launch, vlogs_config, vlogs_launch, vtraces_config, vtraces_launch, vmalert_config, vmalert_launch
#   - alertmanager   : alertmanager_config, alertmanager_launch
#   - blackbox       : blackbox_config, blackbox_launch
#   - grafana        : grafana_clean, grafana_config, grafana_launch, grafana_provision
#   - infra_register : register infra components to victoria
```


----------------

## `infra-rm.yml`

Remove Pigsty infrastructure from Infra nodes defined in the `infra` group of your configuration file.

Common subtasks include:

```bash
./infra-rm.yml               # Remove the INFRA module
./infra-rm.yml -t service    # Stop infrastructure services on INFRA
./infra-rm.yml -t data       # Remove retained data on INFRA
./infra-rm.yml -t package    # Uninstall packages installed on INFRA
```


----------------

## `deploy.yml`

Perform a complete one-time installation of Pigsty on all nodes.

This playbook is described in more detail in [Playbook: One-Pass Installation](/docs/setup/playbook/#installyml).
