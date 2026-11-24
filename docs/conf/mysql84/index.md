# demo/mysql

> Native MySQL 8.4 pilot template with a standalone instance and a three-node InnoDB Cluster

---

LLMS index: [llms.txt](/llms.txt)

---

`demo/mysql` provides a four-node example for the native MySQL 8.4 LTS module. The separate [`conf/fork/halo.yml`](/docs/conf/mysql/) template provides MySQL protocol compatibility through the OpenHalo PostgreSQL kernel.

Both `./configure -c mysql` and `./configure -c demo/mysql` select this template. Use `-c halo` for OpenHalo.

--------

## Overview

- Config name: `demo/mysql` (bare alias: `mysql`)
- Node Count: 4
- `my-meta`: Standalone MySQL 8.4 instance
- `my-test`: Three-node, single-primary InnoDB Cluster with MySQL Router on every member
- Module: MYSQL, limited to native MySQL 8.4
- Supported platforms: EL8/9/10, Debian 12/13, and Ubuntu 22/24 on `x86_64`, plus EL9/EL10 on `aarch64`. Preflight checks reject Ubuntu 26 and Debian/Ubuntu ARM.

Replace every `CHANGE_ME` value (`./configure -c mysql -g` generates random `mysql_root_password`, `mysql_monitor_password`, and `mysql_cluster_password` values). Explicit approval is required for a live deployment. Start with read-only preflight checks:

```bash
ansible-playbook -i conf/demo/mysql.yml mysql.yml -l my-meta --check
ansible-playbook -i conf/demo/mysql.yml mysql.yml -l my-test --check
```

When ready to write the active inventory, run `./configure -c demo/mysql`, then run `node.yml` and `mysql.yml` in check mode and for actual convergence over the full cluster. Normal convergence requires all members of a three-node cluster. Only the allowlisted tags `-t mysql_provision` (which must include the current running PRIMARY), `-t mysql_backup`, and `-t mysql_monitor` permit a partial `-l` scope.

--------

## Content

Source: [`pigsty/conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml)

```yaml
---
#==============================================================#
# File      :   mysql.yml
# Desc      :   MySQL 8.4 LTS standalone and three-node HA template
# Ctime     :   2026-07-16
# Mtime     :   2026-11-10
# Docs      :   https://pigsty.io/docs/mysql
# License   :   Apache-2.0 @ https://pigsty.io/docs/about/license/
# Copyright :   2018-2026  Ruohang Feng / Vonng (rh@vonng.com)
#==============================================================#

# Canonical four-node MySQL platform example:
#   my-meta: one standalone member
#   my-test: three-member InnoDB Cluster in single-primary mode
#
# This file is a template, not the active deployment inventory. Replace every
# CHANGE_ME value and review the target addresses before configure or playbooks;
# MySQL preflight rejects any canonical CHANGE_ME credential left in place.
# Native Oracle 8.4 packages are admitted on EL8/9/10, Debian 12/13 and Ubuntu
# 22/24 x86_64, plus EL9/EL10 aarch64. Ubuntu 26 and Debian/Ubuntu ARM are rejected.
#
# Read-only template preview (does not rewrite active pigsty.yml):
#   ansible-playbook -i conf/demo/mysql.yml mysql.yml -l my-meta --check
#   ansible-playbook -i conf/demo/mysql.yml mysql.yml -l my-test --check
# Each limit must include every declared member of the selected cluster group;
# partial HA member limits are rejected before any package or service change.
# After explicit approval to update active inventory, run ./configure -c demo/mysql,
# then repeat node.yml/mysql.yml --check with the same explicit limits.
# node.yml owns the shared trusted CA at /etc/pki/ca.crt; mysql.yml installs
# only MySQL/Router leaf certificates and requires node_ca to be complete.
#
# Real playbooks install/start services and require explicit approval.

all:
  children:
    infra:
      hosts:
        10.10.10.10: { infra_seq: 1 }

    my-meta:
      hosts:
        10.10.10.10: { mysql_seq: 1 }
      vars: { mysql_cluster: my-meta, node_cluster: my-meta }

    my-test:
      hosts:
        10.10.10.11: { mysql_seq: 1 }
        10.10.10.12: { mysql_seq: 2 }
        10.10.10.13: { mysql_seq: 3 }
      vars: { mysql_cluster: my-test, node_cluster: my-test }

  vars:
    version: v4.6.0
    admin_ip: 10.10.10.10
    region: default                    # default | china; china uses USTC for MySQL

    repo_enabled: false               # use signed upstream repositories directly
    node_repo_modules: node,infra,mysql
    # For a Pigsty local/offline repository, enable repo, include the mysql
    # upstream module, cache the platform package set, and point nodes at local:
    # repo_enabled: true
    # repo_modules: node,infra,mysql
    # repo_extra_packages: [mysql]
    # node_repo_modules: local

    nodename_overwrite: false
    node_tune: oltp

    mysql_root_password: CHANGE_ME_MYSQL_ROOT
    mysql_monitor_password: CHANGE_ME_MYSQL_MONITOR
    mysql_cluster_password: CHANGE_ME_MYSQL_CLUSTER
    # Fixed MySQL 8.4, auto-tuned memory, daily local backup, and exporter are defaults.
    # Data lives in mysql_data (/data/mysql); enable the node vip (vip_enabled,
    # vip_address, vip_vrid) on my-test for one router entry at <vip>:6446/6447.

    # Pigsty infrastructure credentials; replace before deployment.
    grafana_admin_password: CHANGE_ME_GRAFANA_ADMIN
    grafana_view_password: CHANGE_ME_GRAFANA_VIEW
    haproxy_admin_password: CHANGE_ME_HAPROXY
...
```


--------

## Explanation

- MySQL Server, Client, Shell, Router, and XtraBackup use the fixed 8.4 platform. The default `mysql_data: /data/mysql` also holds binlogs and temporary files.
- A single node uses `3306`. A three-node cluster also uses Group Replication port `33061` and provides Router RW `6446` and RO `6447` on every member. Enable a Layer 2 VIP (`vip_enabled`, `vip_address`, `vip_vrid`) on the `my-test` node cluster for shared `<vip>:6446` read/write and `<vip>:6447` read-only endpoints. The VIP is automatically included in node TLS certificate SANs.
- When all three declared members are reachable, normal `mysql.yml` convergence supports two deterministic recovery paths: clearing stale registration and cloning a replacement node at the same address back into the cluster, and safely rebootstrapping a completely stopped cluster from the most advanced member through AdminAPI (`rebootClusterFromCompleteOutage`). If any member is unreachable, automatic recovery stops for operator review.
- `mysqld_exporter` (`9104`) and a daily local full physical backup are enabled by default (`mysql_backup_dir: /data/backups/mysql`, retaining the latest `mysql_backup_retention: 3` prepared full backups). Continuous binlog archiving and PITR are not currently available.
- `node.yml` installs the shared trust anchor at `/etc/pki/ca.crt`. The MySQL role only issues and installs leaf certificates.
- Remove a cluster or member with `mysql-rm.yml`. The default `mysql_safeguard: true` requires an explicit `-e mysql_safeguard=false` override. `mysql_rm_data: true` controls data and state cleanup; backups under `mysql_backup_dir` are not automatically deleted.

See the [native MySQL pilot documentation](/docs/mysql/) for the full constraints and removal procedure.
