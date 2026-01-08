---
title: Access Control
weight: 232
description: Pigsty provides standard security practices with an out-of-the-box role and permission model.
icon: fa-solid fa-lock
module: [PIGSTY, INFRA, PGSQL]
categories: [Concept]
---


> Pigsty provides an out-of-the-box access control model based on the [Role System](#role-system) and [Permission System](#permission-system).

Access control is important, but many users struggle to implement it properly. Pigsty provides a streamlined access control model that serves as a security baseline for your cluster.


---------------------

## Role System

Pigsty's default role system includes four [default roles](#default-roles) and four [default users](#default-users):

| Role Name          | Attributes      | Member Of                     | Description              |
|--------------------|-----------------|-------------------------------|--------------------------|
| `dbrole_readonly`  | `NOLOGIN`       |                               | Role: Global read-only   |
| `dbrole_readwrite` | `NOLOGIN`       | dbrole_readonly               | Role: Global read-write  |
| `dbrole_admin`     | `NOLOGIN`       | pg_monitor,dbrole_readwrite   | Role: Admin/Object creation |
| `dbrole_offline`   | `NOLOGIN`       |                               | Role: Restricted read-only |
| `postgres`         | `SUPERUSER`     |                               | System superuser         |
| `replicator`       | `REPLICATION`   | pg_monitor,dbrole_readonly    | System replication user  |
| `dbuser_dba`       | `SUPERUSER`     | dbrole_admin                  | PostgreSQL admin user    |
| `dbuser_monitor`   |                 | pg_monitor                    | PostgreSQL monitor user  |

These [roles and users](/docs/pgsql/config/user#define-users) are defined as follows:

```yaml
pg_default_roles:                 # Global default roles and system users
  - { name: dbrole_readonly  ,login: false ,comment: role for global read-only access     }
  - { name: dbrole_offline   ,login: false ,comment: role for restricted read-only access }
  - { name: dbrole_readwrite ,login: false ,roles: [dbrole_readonly] ,comment: role for global read-write access }
  - { name: dbrole_admin     ,login: false ,roles: [pg_monitor, dbrole_readwrite] ,comment: role for object creation }
  - { name: postgres     ,superuser: true  ,comment: system superuser }
  - { name: replicator ,replication: true  ,roles: [pg_monitor, dbrole_readonly] ,comment: system replicator }
  - { name: dbuser_dba   ,superuser: true  ,roles: [dbrole_admin]  ,pgbouncer: true ,pool_mode: session, pool_connlimit: 16 ,comment: pgsql admin user }
  - { name: dbuser_monitor ,roles: [pg_monitor] ,pgbouncer: true ,parameters: {log_min_duration_statement: 1000 } ,pool_mode: session ,pool_connlimit: 8 ,comment: pgsql monitor user }
```


---------------------

## Default Roles

Pigsty has four default roles:

- **Business Read-Only** (`dbrole_readonly`): Role for global read-only access. Use this if other services need read-only access to this database.
- **Business Read-Write** (`dbrole_readwrite`): Role for global read-write access. Production accounts for primary business should have database read-write permissions.
- **Business Admin** (`dbrole_admin`): Role with DDL permissions. Typically used for business administrators or scenarios requiring table creation in applications.
- **Offline Read-Only** (`dbrole_offline`): Restricted read-only access role (can only access [offline](/docs/pgsql/config#offline-replica) instances). Usually for personal users or ETL tool accounts.

Default roles are defined in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles). Unless you know what you're doing, don't change the default role names.

```yaml
- { name: dbrole_readonly  , login: false , comment: role for global read-only access  }
- { name: dbrole_offline ,   login: false , comment: role for restricted read-only access (offline instance) }
- { name: dbrole_readwrite , login: false , roles: [dbrole_readonly], comment: role for global read-write access }
- { name: dbrole_admin , login: false , roles: [pg_monitor, dbrole_readwrite] , comment: role for object creation }
```


---------------------

## Default Users

Pigsty also has four default users (system users):

- **Superuser** (`postgres`): Cluster owner and creator, same name as OS dbsu.
- **Replication User** (`replicator`): System user for primary-replica replication.
- **Monitor User** (`dbuser_monitor`): User for monitoring database and connection pool metrics.
- **Admin User** (`dbuser_dba`): Administrator for daily operations and database changes.

These 4 default users' username/password are defined by 4 pairs of dedicated parameters and referenced in many places:

- [`pg_dbsu`](/docs/pgsql/param#pg_dbsu): OS dbsu name, defaults to postgres. Best not to change it.
- [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password): dbsu password, default empty means no password. Best not to set it.
- [`pg_replication_username`](/docs/pgsql/param#pg_replication_username): Replication username, defaults to `replicator`
- [`pg_replication_password`](/docs/pgsql/param#pg_replication_password): Replication password, defaults to `DBUser.Replicator`
- [`pg_admin_username`](/docs/pgsql/param#pg_admin_username): Admin username, defaults to `dbuser_dba`
- [`pg_admin_password`](/docs/pgsql/param#pg_admin_password): Admin password plaintext, defaults to `DBUser.DBA`
- [`pg_monitor_username`](/docs/pgsql/param#pg_monitor_username): Monitor username, defaults to `dbuser_monitor`
- [`pg_monitor_password`](/docs/pgsql/param#pg_monitor_password): Monitor password, defaults to `DBUser.Monitor`

> **Remember to change these passwords in production deployments—don't use defaults!**

```yaml
pg_dbsu: postgres                             # Database superuser name, recommended not to change
pg_dbsu_password: ''                          # Database superuser password, recommended to leave empty!
pg_replication_username: replicator           # System replication username
pg_replication_password: DBUser.Replicator    # System replication password, must change!
pg_monitor_username: dbuser_monitor           # System monitor username
pg_monitor_password: DBUser.Monitor           # System monitor password, must change!
pg_admin_username: dbuser_dba                 # System admin username
pg_admin_password: DBUser.DBA                 # System admin password, must change!
```


---------------------

## Permission System

Pigsty has an out-of-the-box permission model that works with [default roles](#default-roles).

- All users can access all schemas.
- Read-only users (`dbrole_readonly`) can read from all tables. (SELECT, EXECUTE)
- Read-write users (`dbrole_readwrite`) can write to all tables and run DML. (INSERT, UPDATE, DELETE)
- Admin users (`dbrole_admin`) can create objects and run DDL. (CREATE, USAGE, TRUNCATE, REFERENCES, TRIGGER)
- Offline users (`dbrole_offline`) are similar to read-only but with restricted access—only [offline instances](/docs/pgsql/config#offline-replica) (`pg_role = 'offline'` or `pg_offline_query = true`)
- Objects created by admin users will have correct permissions.
- Default privileges are configured on all databases, including template databases.
- Database connection permissions are managed by database [definition](/docs/pgsql/config/db#define-database).
- `CREATE` privilege on databases and `public` schema is revoked from `PUBLIC` by default.


---------------------

## Object Privileges

Default privileges for newly created objects are controlled by [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges):

```yaml
- GRANT USAGE      ON SCHEMAS   TO dbrole_readonly
- GRANT SELECT     ON TABLES    TO dbrole_readonly
- GRANT SELECT     ON SEQUENCES TO dbrole_readonly
- GRANT EXECUTE    ON FUNCTIONS TO dbrole_readonly
- GRANT USAGE      ON SCHEMAS   TO dbrole_offline
- GRANT SELECT     ON TABLES    TO dbrole_offline
- GRANT SELECT     ON SEQUENCES TO dbrole_offline
- GRANT EXECUTE    ON FUNCTIONS TO dbrole_offline
- GRANT INSERT     ON TABLES    TO dbrole_readwrite
- GRANT UPDATE     ON TABLES    TO dbrole_readwrite
- GRANT DELETE     ON TABLES    TO dbrole_readwrite
- GRANT USAGE      ON SEQUENCES TO dbrole_readwrite
- GRANT UPDATE     ON SEQUENCES TO dbrole_readwrite
- GRANT TRUNCATE   ON TABLES    TO dbrole_admin
- GRANT REFERENCES ON TABLES    TO dbrole_admin
- GRANT TRIGGER    ON TABLES    TO dbrole_admin
- GRANT CREATE     ON SCHEMAS   TO dbrole_admin
```

Objects **newly created** by admins will have the above privileges by default. Use `\ddp+` to view these default privileges:

| Type     | Access Privileges     |
|----------|----------------------|
| Function | =X                   |
|          | dbrole_readonly=X    |
|          | dbrole_offline=X     |
|          | dbrole_admin=X       |
| Schema   | dbrole_readonly=U    |
|          | dbrole_offline=U     |
|          | dbrole_admin=UC      |
| Sequence | dbrole_readonly=r    |
|          | dbrole_offline=r     |
|          | dbrole_readwrite=wU  |
|          | dbrole_admin=rwU     |
| Table    | dbrole_readonly=r    |
|          | dbrole_offline=r     |
|          | dbrole_readwrite=awd |
|          | dbrole_admin=arwdDxt |


---------------------

## Default Privileges

The SQL statement [`ALTER DEFAULT PRIVILEGES`](https://www.postgresql.org/docs/current/sql-alterdefaultprivileges.html) lets you set privileges for future objects. It doesn't affect existing objects or objects created by non-admin users.

In Pigsty, default privileges are defined for three roles:

```sql
{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE {{ pg_dbsu }} {{ priv }};
{% endfor %}

{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE {{ pg_admin_username }} {{ priv }};
{% endfor %}

-- For other business admins, they should SET ROLE dbrole_admin before executing DDL
{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE "dbrole_admin" {{ priv }};
{% endfor %}
```

To maintain correct object permissions, you must execute DDL with **admin users**:

1. [`{{ pg_dbsu }}`](/docs/pgsql/param#pg_dbsu), defaults to `postgres`
2. [`{{ pg_admin_username }}`](/docs/pgsql/param#pg_admin_username), defaults to `dbuser_dba`
3. Business admin users granted `dbrole_admin` role (using `SET ROLE` to switch to `dbrole_admin`)

Using `postgres` as global object owner is wise. If creating objects as business admin, use `SET ROLE dbrole_admin` before creation to maintain correct permissions.


---------------------

## Database Privileges

In Pigsty, database-level privileges are covered in [database definition](#define-database).

Databases have three privilege levels: `CONNECT`, `CREATE`, `TEMP`, and a special 'privilege': `OWNERSHIP`.

```yaml
- name: meta         # Required, `name` is the only required field
  owner: postgres    # Optional, database owner, defaults to postgres
  allowconn: true    # Optional, allow connections, default true
  revokeconn: false  # Optional, revoke public connect privilege, default false
```

- If `owner` parameter exists, it becomes database owner instead of [`{{ pg_dbsu }}`](/docs/pgsql/param#pg_dbsu)
- If `revokeconn` is `false`, all users have database `CONNECT` privilege (default behavior)
- If `revokeconn` is explicitly `true`:
    - Database `CONNECT` privilege is revoked from `PUBLIC`
    - `CONNECT` privilege is explicitly granted to `{{ pg_replication_username }}`, `{{ pg_monitor_username }}`, `{{ pg_admin_username }}`
    - `CONNECT` privilege with `GRANT OPTION` is granted to database owner
- `revokeconn` can isolate cross-database access within the same cluster


---------------------

## CREATE Privilege

For security, Pigsty revokes `CREATE` privilege on databases from `PUBLIC` by default. This is also default behavior since PostgreSQL 15.

Database owners can always adjust CREATE privileges based on actual needs.

