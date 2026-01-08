---
title: Data Migration
weight: 1700
description: How to migrate an existing PostgreSQL cluster to a new Pigsty-managed
  PostgreSQL cluster with minimal downtime?
icon: fa-solid fa-truck-moving
module: [PGSQL]
categories: [Task, Reference]
tags: [Migration]
---


Pigsty includes a built-in playbook [`pgsql-migration.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-migration.yml) that implements online database migration based on logical replication.

With pre-generated automation scripts, application downtime can be reduced to just a few seconds. However, note that logical replication requires PostgreSQL 10 or later to work.

Of course, if you have sufficient downtime budget, you can always use the `pg_dump | psql` approach for offline migration.


----------------

## Defining Migration Tasks

To use Pigsty's online migration playbook, you need to create a definition file that describes the migration task details.

Refer to the task definition file example: [`files/migration/pg-meta.yml`](https://github.com/pgsty/pigsty/blob/main/files/migration/pg-meta.yml).

This migration task will online migrate `pg-meta.meta` to `pg-test.test`, where the former is called the **Source Cluster (SRC)** and the latter is called the **Destination Cluster (DST)**.

```
pg-meta-1	10.10.10.10  --> pg-test-1	10.10.10.11 (10.10.10.12,10.10.10.13)
```

Logical replication-based migration works on a per-database basis. You need to specify the database name to migrate, as well as the IP addresses of the source and destination cluster primary nodes and superuser connection information.

```yaml
---
#-----------------------------------------------------------------
# PG_MIGRATION
#-----------------------------------------------------------------
context_dir: ~/migration  # Directory for migration manual & scripts
#-----------------------------------------------------------------
# SRC Cluster (Old Cluster)
#-----------------------------------------------------------------
src_cls: pg-meta      # Source cluster name                  <Required>
src_db: meta          # Source database name                 <Required>
src_ip: 10.10.10.10   # Source cluster primary IP            <Required>
#src_pg: ''            # If defined, use this as source dbsu pgurl instead of:
#                      # postgres://{{ pg_admin_username }}@{{ src_ip }}/{{ src_db }}
#                      # e.g.: 'postgres://dbuser_dba:DBUser.DBA@10.10.10.10:5432/meta'
#sub_conn: ''          # If defined, use this as subscription connection string instead of:
#                      # host={{ src_ip }} dbname={{ src_db }} user={{ pg_replication_username }}'
#                      # e.g.: 'host=10.10.10.10 dbname=meta user=replicator password=DBUser.Replicator'
#-----------------------------------------------------------------
# DST Cluster (New Cluster)
#-----------------------------------------------------------------
dst_cls: pg-test      # Destination cluster name             <Required>
dst_db: test          # Destination database name            <Required>
dst_ip: 10.10.10.11   # Destination cluster primary IP       <Required>
#dst_pg: ''            # If defined, use this as destination dbsu pgurl instead of:
#                      # postgres://{{ pg_admin_username }}@{{ dst_ip }}/{{ dst_db }}
#                      # e.g.: 'postgres://dbuser_dba:DBUser.DBA@10.10.10.11:5432/test'
#-----------------------------------------------------------------
# PGSQL
#-----------------------------------------------------------------
pg_dbsu: postgres
pg_replication_username: replicator
pg_replication_password: DBUser.Replicator
pg_admin_username: dbuser_dba
pg_admin_password: DBUser.DBA
pg_monitor_username: dbuser_monitor
pg_monitor_password: DBUser.Monitor
#-----------------------------------------------------------------
...
```

By default, the superuser connection strings on both source and destination sides are constructed using the global admin user and the respective primary IP addresses, but you can always override these defaults through the `src_pg` and `dst_pg` parameters.
Similarly, you can override the subscription connection string default through the `sub_conn` parameter.



----------------

## Generating Migration Plan

This playbook does not actively perform cluster migration, but it generates the operation manual and automation scripts needed for migration.

By default, you will find the migration context directory at `~/migration/pg-meta.meta`.
Follow the instructions in `README.md` and execute these scripts in sequence to complete the database migration!


```bash
# Activate migration context: enable related environment variables
. ~/migration/pg-meta.meta/activate

# These scripts check src cluster status and help generate new cluster definitions in pigsty
./check-user     # Check src users
./check-db       # Check src databases
./check-hba      # Check src hba rules
./check-repl     # Check src replication identity
./check-misc     # Check src special objects

# These scripts establish logical replication between existing src cluster and pigsty-managed dst cluster, data except sequences will sync in real-time
./copy-schema    # Copy schema to destination
./create-pub     # Create publication on src
./create-sub     # Create subscription on dst
./copy-progress  # Print logical replication progress
./copy-diff      # Quick compare src and dst differences by counting tables

# These scripts run during online migration, which stops src cluster and copies sequence numbers (logical replication doesn't replicate sequences!)
./copy-seq [n]   # Sync sequence numbers, if n is given, apply additional offset

# You must switch application traffic to the new cluster based on your access method (dns,vip,haproxy,pgbouncer,etc.)!
#./disable-src   # Restrict src cluster access to admin nodes and new cluster (your implementation)
#./re-routing    # Re-route application traffic from SRC to DST! (your implementation)

# Then cleanup to remove subscription and publication
./drop-sub       # Drop subscription on dst after migration
./drop-pub       # Drop publication on src after migration
```


**Notes**

If you're worried about primary key conflicts when copying sequence numbers, you can advance all sequences forward by some distance when copying, for example +1000. You can use `./copy-seq` with a parameter `1000` to achieve this.

You must implement your own `./re-routing` script to route your application traffic from src to dst. Because we don't know how your traffic is routed (e.g., dns, VIP, haproxy, or pgbouncer). Of course, you can also do this manually...

You can implement a `./disable-src` script to restrict application access to the src cluster—this is optional: if you can ensure all application traffic is cleanly switched in `./re-routing`, you don't really need this step.

But if you have various access from unknown sources that can't be cleanly sorted out, it's better to use more thorough methods: change HBA rules and reload to implement (recommended), or simply stop the postgres, pgbouncer, or haproxy processes on the source primary.

