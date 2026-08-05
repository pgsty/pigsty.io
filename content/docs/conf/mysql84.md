---
title: demo/mysql
weight: 1047
description: Native MySQL 8.4 pilot template with a standalone instance and a three-node InnoDB Cluster
icon: fa-solid fa-database
categories: [Reference]
---

`demo/mysql` is the four-node example for the native MySQL 8.4 LTS pilot module. It is distinct from [`conf/mysql.yml`](/docs/conf/mysql/), which provides MySQL protocol compatibility through the OpenHalo PostgreSQL kernel.


--------

## Overview

- Config Name: `demo/mysql`
- Node Count: 4
- `my-meta`: Standalone MySQL 8.4 instance
- `my-test`: Three-node, single-primary InnoDB Cluster with MySQL Router on every member
- Module Status: MYSQL PILOT; not included in the stable module count
- Platform Boundary: Supported declared x86_64 RPM/DEB platforms and EL9/EL10 aarch64. Oracle APT currently has no arm64 component, so preflight rejects Debian/Ubuntu ARM.

Replace every `CHANGE_ME` value in the template. Real deployment also requires explicit approval. Start with read-only preflight checks:

```bash
ansible-playbook -i conf/demo/mysql.yml mysql.yml -l my-meta --check
ansible-playbook -i conf/demo/mysql.yml mysql.yml -l my-test --check
```

After explicitly approving an active-inventory update, run `./configure -c demo/mysql`, then run both `node.yml` and `mysql.yml` with `--check` and real convergence against the same complete cluster scope. The three-node cluster does not accept a partial-member scope.


--------

## Content

Source: [`pigsty/conf/demo/mysql.yml`](https://github.com/pgsty/pigsty/blob/main/conf/demo/mysql.yml)

{{< readfile file="yaml/demo/mysql.yml" code="true" lang="yaml" >}}


--------

## Explanation

- MySQL server, client, Shell, Router, and XtraBackup are fixed to the 8.4 platform; this is not an arbitrary-version installer.
- The standalone instance uses `3306`. The three-node cluster also uses Group Replication on `33061`, with Router RW on `6446` and RO on `6447` on each member.
- A daily local full XtraBackup and `mysqld_exporter` are enabled by default. The current pilot does not provide continuous binlog archiving, PITR, or automatic recovery.
- `node.yml` installs the shared trust anchor at `/etc/pki/ca.crt`; the MySQL role only issues and installs leaf certificates.

See the [native MySQL pilot documentation](/docs/pilot/mysql/) for complete constraints and the confirmed removal workflow.
