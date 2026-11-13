---
title: demo/mysql
weight: 1047
description: Native MySQL 8.4 pilot template with a standalone instance and a three-node InnoDB Cluster
icon: fa-solid fa-database
categories: [Reference]
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

{{< include file="yaml/demo/mysql.yml" code=true lang="yaml" >}}


--------

## Explanation

- MySQL Server, Client, Shell, Router, and XtraBackup use the fixed 8.4 platform. The default `mysql_data: /data/mysql` also holds binlogs and temporary files.
- A single node uses `3306`. A three-node cluster also uses Group Replication port `33061` and provides Router RW `6446` and RO `6447` on every member. Enable a Layer 2 VIP (`vip_enabled`, `vip_address`, `vip_vrid`) on the `my-test` node cluster for shared `<vip>:6446` read/write and `<vip>:6447` read-only endpoints. The VIP is automatically included in node TLS certificate SANs.
- When all three declared members are reachable, normal `mysql.yml` convergence supports two deterministic recovery paths: clearing stale registration and cloning a replacement node at the same address back into the cluster, and safely rebootstrapping a completely stopped cluster from the most advanced member through AdminAPI (`rebootClusterFromCompleteOutage`). If any member is unreachable, automatic recovery stops for operator review.
- `mysqld_exporter` (`9104`) and a daily local full physical backup are enabled by default (`mysql_backup_dir: /data/backups/mysql`, retaining the latest `mysql_backup_retention: 3` prepared full backups). Continuous binlog archiving and PITR are not currently available.
- `node.yml` installs the shared trust anchor at `/etc/pki/ca.crt`. The MySQL role only issues and installs leaf certificates.
- Remove a cluster or member with `mysql-rm.yml`. The default `mysql_safeguard: true` requires an explicit `-e mysql_safeguard=false` override. `mysql_rm_data: true` controls data and state cleanup; backups under `mysql_backup_dir` are not automatically deleted.

See the [native MySQL pilot documentation](/docs/mysql/) for the full constraints and removal procedure.
