---
title: OrioleDB
weight: 2112
description: Next-generation OLTP engine for PostgreSQL
icon: fa-solid fa-bolt
module: [PGSQL]
categories: [Concept]
---

[OrioleDB](https://orioledb.com/) is a PostgreSQL storage engine extension that claims to provide 4x OLTP performance, no xid wraparound and table bloat issues, and "cloud-native" (data stored in S3) capabilities.

OrioleDB's latest version is based on a [patched PostgreSQL 17.0](https://github.com/orioledb/postgres) and an additional [extension](https://github.com/orioledb/orioledb)

You can run OrioleDB as an RDS using Pigsty. It's compatible with PG 17 and available on all supported Linux platforms.
The latest version is beta12, based on PG 17_11 patch.


------

## Quick Start

Follow Pigsty's [**standard installation**](/docs/setup/install) process using the [`oriole`](https://github.com/pgsty/pigsty/blob/main/conf/oriole.yml) configuration template.

```bash
curl -fsSL https://repo.pigsty.io/get | bash; cd ~/pigsty;
./configure -c oriole    # Use OrioleDB configuration template
./deploy.yml             # Install Pigsty with OrioleDB
```

For production deployment, ensure you modify the password parameters in the `pigsty.yml` configuration before running the `install` playbook.



------

## Configuration

```yaml
pg-meta:
  hosts:
    10.10.10.10: { pg_seq: 1, pg_role: primary }
  vars:
    pg_cluster: pg-meta
    pg_users:
      - {name: dbuser_meta ,password: DBUser.Meta   ,pgbouncer: true ,roles: [dbrole_admin]    ,comment: pigsty admin user }
      - {name: dbuser_view ,password: DBUser.Viewer ,pgbouncer: true ,roles: [dbrole_readonly] ,comment: read-only viewer for meta database }
    pg_databases:
      - {name: meta ,baseline: cmdb.sql ,comment: pigsty meta database ,schemas: [pigsty], extensions: [orioledb]}
    pg_hba_rules:
      - {user: dbuser_view , db: all ,addr: infra ,auth: pwd ,title: 'allow grafana dashboard access cmdb from infra nodes'}
    node_crontab: [ '00 01 * * * postgres /pg/bin/pg-backup full' ] # Full backup at 1 AM daily

    # OrioleDB specific settings
    pg_mode: oriole                                         # oriole compatibility mode
    pg_packages: [ orioledb, pgsql-common ]                 # Install OrioleDB kernel
    pg_libs: 'orioledb, pg_stat_statements, auto_explain'   # Load OrioleDB extension
```

------

## Usage

To use OrioleDB, you need to install the `orioledb_17` and `oriolepg_17` packages (currently only RPM versions are available).

Initialize TPC-B-like tables with `pgbench` using 100 warehouses:

```bash
pgbench -is 100 meta
pgbench -nv -P1 -c10 -S -T1000 meta
pgbench -nv -P1 -c50 -S -T1000 meta
pgbench -nv -P1 -c10    -T1000 meta
pgbench -nv -P1 -c50    -T1000 meta
```

Next, you can rebuild these tables using the `orioledb` storage engine and observe the performance difference:

```sql
-- Create OrioleDB tables
CREATE TABLE pgbench_accounts_o (LIKE pgbench_accounts INCLUDING ALL) USING orioledb;
CREATE TABLE pgbench_branches_o (LIKE pgbench_branches INCLUDING ALL) USING orioledb;
CREATE TABLE pgbench_history_o (LIKE pgbench_history INCLUDING ALL) USING orioledb;
CREATE TABLE pgbench_tellers_o (LIKE pgbench_tellers INCLUDING ALL) USING orioledb;

-- Copy data from regular tables to OrioleDB tables
INSERT INTO pgbench_accounts_o SELECT * FROM pgbench_accounts;
INSERT INTO pgbench_branches_o SELECT * FROM pgbench_branches;
INSERT INTO pgbench_history_o SELECT  * FROM pgbench_history;
INSERT INTO pgbench_tellers_o SELECT * FROM pgbench_tellers;

-- Drop original tables and rename OrioleDB tables
DROP TABLE pgbench_accounts, pgbench_branches, pgbench_history, pgbench_tellers;
ALTER TABLE pgbench_accounts_o RENAME TO pgbench_accounts;
ALTER TABLE pgbench_branches_o RENAME TO pgbench_branches;
ALTER TABLE pgbench_history_o RENAME TO pgbench_history;
ALTER TABLE pgbench_tellers_o RENAME TO pgbench_tellers;
```


------

## Key Features

- **No XID Wraparound**: Eliminates transaction ID wraparound maintenance
- **No Table Bloat**: Advanced storage management prevents table bloat
- **Cloud Storage**: Native support for S3-compatible object storage
- **OLTP Optimized**: Designed for transactional workloads
- **Improved Performance**: Better space utilization and query performance

> **Note**: Currently in Beta stage - thoroughly evaluate before production use.

