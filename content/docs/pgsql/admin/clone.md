---
title: Clone Replicas
weight: 2009
description: How to clone databases, database instances, and database clusters?
icon: fa-solid fa-clone
module: [PGSQL]
categories: [Task]
---

PostgreSQL can already replicate data through physical replicas and logical replicas, but sometimes you may need to quickly **clone** a database, database instance, or entire database cluster. The cloned database can be written to, evolve independently, and not affect the original database. In Pigsty, there are several cloning methods:

- [**Clone Database**](#clone-database): Clone a new database within the same cluster
- [**Clone Instance**](#clone-instance): Clone a new instance on the same PG node
- [**Clone Cluster**](#clone-cluster): Create a new database cluster using PITR mechanism and restore to any point in time of the specified cluster


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
SELECT pg_terminate_backend(pid) FROM pg_stat_activity WHERE datname = 'postgres';
CREATE DATABASE pgcopy TEMPLATE postgres STRATEGY FILE_COPY;
```

For example, cloning a 30 GB database: normal clone (`WAL_LOG`) takes 18 seconds, while instant clone (`FILE_COPY`) only needs constant time of 200 milliseconds.

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
```

After configuration, use the standard database creation SOP to create the database:

```bash
bin/pgsql-db pg-meta meta_dev
```


### Limitations and Notes

This feature is only available on supported file systems (xfs, btrfs, zfs, apfs). If the file system doesn't support it, PostgreSQL will fail with an error.

By default, mainstream OS distributions' xfs have `reflink=1` enabled by default, so you don't need to worry about this in most cases.

If your PostgreSQL version is below 15, specifying `strategy` will have no effect.

Please don't use the `postgres` database as a template database for cloning, as management connections typically connect to the `postgres` database, which prevents the cloning operation.

Use instant cloning with caution in extremely high concurrency/throughput production environments, as it requires clearing all connections to the template database within the cloning window (200ms), otherwise the clone will fail.
