---
title: Clone Database
weight: 1509
description: How to clone an existing database within a PostgreSQL cluster using instant XFS cloning
icon: fa-solid fa-rotate-left
categories: [Task]
---


## Clone Database

You can copy a PostgreSQL database through the template mechanism, but no active connections to the template database are allowed during this period.

If you want to clone the `postgres` database, you must execute the following two statements at the same time. Ensure all connections to the `postgres` database are cleaned up before executing Clone:

```sql
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'postgres';
CREATE DATABASE pgcopy TEMPLATE postgres STRATEGY FILE_COPY;
```


### Instant Clone

If you are using PostgreSQL 18 or higher, Pigsty sets [`file_copy_method`](https://www.postgresql.org/docs/current/runtime-config-resource.html#GUC-FILE-COPY-METHOD) by default. This parameter allows you to clone a database in O(1) (~200ms) time complexity without copying data files.

However, you must explicitly use the [`FILE_COPY`](https://www.postgresql.org/docs/current/sql-createdatabase.html#CREATE-DATABASE-STRATEGY) strategy to create the database. Since the `STRATEGY` parameter of `CREATE DATABASE` was introduced in PostgreSQL 15, the default value has been `WAL_LOG`. You need to explicitly specify `FILE_COPY` for instant cloning.

```sql
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'meta';
CREATE DATABASE pgcopy TEMPLATE meta STRATEGY FILE_COPY;
```

For example, cloning a 30 GB database: normal clone (`WAL_LOG`) takes 18 seconds, while instant clone (`FILE_COPY`) only needs constant time of 200 milliseconds.

However, you still need to ensure no active connections to the template database during cloning, but this time can be very short, making it practical for production environments.

If you need a new database copy for testing or development, instant cloning is an excellent choice. It doesn't introduce additional storage overhead because it uses the file system's CoW (Copy on Write) mechanism.

Since Pigsty v4.0, you can use `strategy: FILE_COPY` in the [`pg_databases`](/docs/pgsql/param#pg_databases/) parameter to achieve instant database cloning.

```yaml
    pg-meta:
      hosts:
        10.10.10.10: { pg_seq: 1, pg_role: primary }
      vars:
        pg_cluster: pg-meta
        pg_version: 18
        pg_databases:

          - name: meta

          - name: meta_dev
            template: meta
            strategy: FILE_COPY         # <---- Introduced in PG 15, instant in PG18
            #comment: "meta clone"      # <---- Database comment
            #pgbouncer: false           # <---- Not added to connection pool?
            #register_datasource: false # <---- Not added to Grafana datasource?
```

After configuration, use the standard database creation SOP to create the database:

```bash
bin/pgsql-db pg-meta meta_dev
```


### Limitations and Notes

This feature is only available on supported file systems (xfs, btrfs, zfs, apfs). If the file system doesn't support it, PostgreSQL will fail with an error.

By default, mainstream OS distributions' xfs have `reflink=1` enabled by default, so you don't need to worry about this in most cases.

OpenZFS requires explicit configuration to support CoW, but due to prior data corruption incidents, it's not recommended for production use.

If your PostgreSQL version is below 15, specifying `strategy` will have no effect.

Please don't use the `postgres` database as a template database for cloning, as management connections typically connect to the `postgres` database, which prevents the cloning operation.

Use instant cloning with caution in extremely high concurrency/throughput production environments, as it requires clearing all connections to the template database within the cloning window (200ms), otherwise the clone will fail.
