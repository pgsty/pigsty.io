# Data Migration

> How to migrate an existing PostgreSQL cluster to a new Pigsty-managed PostgreSQL cluster with minimal downtime?

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty includes the [`pgsql-migration.yml`](https://github.com/pgsty/pigsty/blob/main/pgsql-migration.yml) playbook for online database migration with logical replication.

The generated automation scripts can reduce application downtime to a few seconds.
Logical replication requires PostgreSQL 10 or later.

If the permitted downtime is sufficient, you can use `pg_dump | psql` for offline migration.


----------------

## Defining Migration Tasks

To use the online migration playbook, create a definition file that describes the migration task.

Refer to the task definition file example: [`files/migration/pg-meta.yml`](https://github.com/pgsty/pigsty/blob/main/files/migration/pg-meta.yml).

This task migrates `pg-meta.meta` to `pg-test.test` online.
The former is the **Source Cluster (SRC)**.
The latter is the **Destination Cluster (DST)**.

```text
pg-meta-1	10.10.10.10  --> pg-test-1	10.10.10.11 (10.10.10.12,10.10.10.13)
```

Logical replication migrates one database at a time.
Specify the database name, the source and destination primary IP addresses, and the superuser connection information.

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

By default, Pigsty builds the source and destination superuser connection strings from the global administration user and each primary IP address.
Use `src_pg` and `dst_pg` to override these defaults.
Use `sub_conn` to override the subscription connection string.



----------------

## Generating Migration Plan

The playbook generates the operating manual and automation scripts for migration.
It does not perform the migration itself.

By default, the migration context directory is `~/migration/pg-meta.meta`.
Follow `README.md` and run the scripts in sequence to complete the migration.


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

To avoid primary key conflicts when you copy sequence values, you can advance all sequences by an offset, such as +1000.
For this example, run `./copy-seq` with the argument `1000`.

Implement `./re-routing` to route application traffic from src to dst.
The implementation depends on your access method, such as DNS, VIP, HAProxy, or PgBouncer.
You can also change the routing manually.

You can optionally implement `./disable-src` to restrict application access to the src cluster.
If `./re-routing` switches all application traffic completely, you do not need this step.

If traffic from unknown sources prevents a complete switch, use a more complete access restriction.
We recommend that you change and reload the HBA rules.
You can also stop the postgres, pgbouncer, or haproxy processes on the source primary.
