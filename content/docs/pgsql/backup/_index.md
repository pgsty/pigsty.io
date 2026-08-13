---
title: Backup & Restore
description: Point-in-Time Recovery (PITR) Backup and Restore
icon: fa-solid fa-clock-rotate-left
weight: 1600
categories: [Task, Reference]
---

Pigsty uses [pgBackRest](https://pgbackrest.org/) to manage PostgreSQL backups, arguably the most powerful open-source backup tool in the ecosystem.
It supports incremental/parallel backup and restore, encryption, [Silo](/docs/minio)/S3, and many other features. Pigsty configures backup functionality by default for each [PGSQL](/docs/pgsql) cluster.

| Section                                                      | Content                                                          |
|--------------------------------------------------------------|------------------------------------------------------------------|
| [Mechanism](/docs/pgsql/backup/mechanism)                    | Backup scripts, cron jobs, pgbackrest, repository and management |
| [Policy](/docs/pgsql/backup/policy)                          | Backup strategy, disk planning, recovery window tradeoffs        |
| [Repository](/docs/pgsql/backup/repository)                  | Configuring backup repositories: local, Silo, S3                 |
| [Admin](/docs/pgsql/backup/admin)                            | Common backup management commands                                |
| [Restore](/docs/pgsql/backup/restore)                        | Restore to a specific point in time using playbooks              |
| [Example](/docs/pgsql/backup/restore#step-by-step-execution) | Sandbox example: performing restore operations manually          |


{{% alert color="warning" title="Disclaimer" %}}

> Pigsty makes every effort to provide a reliable PITR solution, but we accept no responsibility for data loss resulting from PITR operations. Use at your own risk. If you need professional support, please consider our [professional services](/docs/about/service).

{{% /alert %}}


--------

## Quick Start

1. [Backup Policy](/docs/pgsql/backup/mechanism): Schedule base backups using Crontab
2. [WAL Archiving](/docs/pgsql/backup/policy): Continuously record write activity
3. [Restore & Recovery](/docs/pgsql/backup/restore): Recover from backups and WAL archives

```yaml title="Full backup at 1 AM daily"
pg_crontab: [ '00 01 * * * /pg/bin/pg-backup full' ]
```

```bash title="Restore to a specific point in time"
./pgsql-pitr.yml -e '{"pg_pitr": { "time": "2025-07-13 10:00:00+00" }}'
```
