---
title: Access Control
weight: 1400
description: Default role system and privilege model provided by Pigsty
icon: fa-solid fa-lock
module: [PGSQL]
categories: [Reference]
tags: [Security]
---

> Pigsty provides a battery-included access control model based on [role system](#role-system) and [privilege system](#privilege-system).

Access control is crucial, yet many users struggle to implement it properly. Therefore, Pigsty provides a streamlined, battery-included access control model to provide a safety net for your cluster security.


---------------------

## Role System

Pigsty's default role system includes four [default roles](#default-roles) and four [default users](#default-users):

| Role Name          | Attributes    | Member of                   | Description                          |
|--------------------|---------------|-----------------------------|--------------------------------------|
| `dbrole_readonly`  | `NOLOGIN`     |                             | role for global read-only access     |
| `dbrole_readwrite` | `NOLOGIN`     | dbrole_readonly             | role for global read-write access    |
| `dbrole_admin`     | `NOLOGIN`     | pg_monitor,dbrole_readwrite | role for admin/object creation       |
| `dbrole_offline`   | `NOLOGIN`     |                             | role for restricted read-only access |
| `postgres`         | `SUPERUSER`   |                             | system superuser                     |
| `replicator`       | `REPLICATION` | pg_monitor,dbrole_readonly  | system replicator                    |
| `dbuser_dba`       | `SUPERUSER`   | dbrole_admin                | pgsql admin user                     |
| `dbuser_monitor`   |               | pg_monitor                  | pgsql monitor user                   |

The detailed definitions of these [roles and users](/docs/pgsql/config/user#define-users) are as follows:

```yaml
pg_default_roles:                 # default roles and users in postgres cluster
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

There are four default roles in Pigsty:

- Read-Only (`dbrole_readonly`): Role for global read-only access. If other business applications need read-only access to this database, they can use this role.
- Read-Write (`dbrole_readwrite`): Role for global read-write access, the primary business production account should have database read-write privileges.
- Admin (`dbrole_admin`): Role with DDL privileges, typically used for business administrators or scenarios requiring table creation in applications (such as various business software).
- Offline (`dbrole_offline`): Restricted read-only access role (can only access [offline](/docs/pgsql/config#offline-replica) instances, typically for personal users and ETL tool accounts).

Default roles are defined in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles). Unless you really know what you're doing, it's recommended not to change the default role names.

```yaml
- { name: dbrole_readonly  , login: false , comment: role for global read-only access  }                            # production read-only role
- { name: dbrole_offline ,   login: false , comment: role for restricted read-only access (offline instance) }      # restricted read-only role
- { name: dbrole_readwrite , login: false , roles: [dbrole_readonly], comment: role for global read-write access }  # production read-write role
- { name: dbrole_admin , login: false , roles: [pg_monitor, dbrole_readwrite] , comment: role for object creation } # production DDL change role
```


---------------------

## Default Users

Pigsty also has four default users (system users):

- Superuser (`postgres`), the owner and creator of the cluster, same name as the OS dbsu.
- Replication user (`replicator`), the system user used for primary-replica replication.
- Monitor user (`dbuser_monitor`), a user used to monitor database and connection pool metrics.
- Admin user (`dbuser_dba`), the admin user who performs daily operations and database changes.

The usernames/passwords for these 4 default users are defined through 4 pairs of dedicated parameters, referenced in many places:

- [`pg_dbsu`](/docs/pgsql/param#pg_dbsu): OS dbsu name, defaults to postgres, better not to change it
- [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password): dbsu password, empty string by default means no password is set for dbsu, best not to set it.
- [`pg_replication_username`](/docs/pgsql/param#pg_replication_username): postgres replication username, defaults to `replicator`
- [`pg_replication_password`](/docs/pgsql/param#pg_replication_password): postgres replication password, defaults to `DBUser.Replicator`
- [`pg_admin_username`](/docs/pgsql/param#pg_admin_username): postgres admin username, defaults to `dbuser_dba`
- [`pg_admin_password`](/docs/pgsql/param#pg_admin_password): postgres admin password in plain text, defaults to `DBUser.DBA`
- [`pg_monitor_username`](/docs/pgsql/param#pg_monitor_username): postgres monitor username, defaults to `dbuser_monitor`
- [`pg_monitor_password`](/docs/pgsql/param#pg_monitor_password): postgres monitor password, defaults to `DBUser.Monitor`

> **Remember to change these passwords in production deployment! Do not use the default values!**

```yaml
pg_dbsu: postgres                             # database superuser name, better not to change this username.
pg_dbsu_password: ''                          # database superuser password, it's recommended to leave this empty! Disable dbsu password login.
pg_replication_username: replicator           # system replication username
pg_replication_password: DBUser.Replicator    # system replication password, must change this password!
pg_monitor_username: dbuser_monitor           # system monitor username
pg_monitor_password: DBUser.Monitor           # system monitor password, must change this password!
pg_admin_username: dbuser_dba                 # system admin username
pg_admin_password: DBUser.DBA                 # system admin password, must change this password!
```

If you modify the default user parameters, modify the corresponding role [definitions](/docs/pgsql/config/user#define-users) in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles):

```yaml
- { name: postgres     ,superuser: true                                          ,comment: system superuser }
- { name: replicator ,replication: true  ,roles: [pg_monitor, dbrole_readonly]   ,comment: system replicator }
- { name: dbuser_dba   ,superuser: true  ,roles: [dbrole_admin]  ,pgbouncer: true ,pool_mode: session, pool_connlimit: 16 , comment: pgsql admin user }
- { name: dbuser_monitor   ,roles: [pg_monitor, dbrole_readonly] ,pgbouncer: true ,parameters: {log_min_duration_statement: 1000 } ,pool_mode: session ,pool_connlimit: 8 ,comment: pgsql monitor user }
```



---------------------

## Privilege System

Pigsty has a battery-included privilege model that works with [default roles](#default-roles).

- All users have access to all schemas.
- Read-Only users (`dbrole_readonly`) can read from all tables. (SELECT, EXECUTE)
- Read-Write users (`dbrole_readwrite`) can write to all tables and run DML. (INSERT, UPDATE, DELETE).
- Admin users (`dbrole_admin`) can create objects and run DDL (CREATE, USAGE, TRUNCATE, REFERENCES, TRIGGER).
- Offline users (`dbrole_offline`) are similar to read-only users but with restricted access, only allowed to access [offline instances](/docs/pgsql/config#offline-replica) (`pg_role = 'offline'` or `pg_offline_query = true`)
- Objects created by admin users will have correct privileges.
- Default privileges are configured on all databases, including template databases.
- Database connect privileges are managed by database [definitions](/docs/pgsql/config/db#define-database).
- The `CREATE` privilege on database and `public` schema is revoked from `PUBLIC` by default.

---------------------

## Object Privileges

Default privileges for newly created objects in the database are controlled by the parameter [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges):

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

Objects **newly created** by admin users will have the above privileges by default. Use `\ddp+` to view these default privileges:

| Type     | Access privileges    |
|----------|----------------------|
| function | =X                   |
|          | dbrole_readonly=X    |
|          | dbrole_offline=X     |
|          | dbrole_admin=X       |
| schema   | dbrole_readonly=U    |
|          | dbrole_offline=U     |
|          | dbrole_admin=UC      |
| sequence | dbrole_readonly=r    |
|          | dbrole_offline=r     |
|          | dbrole_readwrite=wU  |
|          | dbrole_admin=rwU     |
| table    | dbrole_readonly=r    |
|          | dbrole_offline=r     |
|          | dbrole_readwrite=awd |
|          | dbrole_admin=arwdDxt |




---------------------

## Default Privileges

[`ALTER DEFAULT PRIVILEGES`](https://www.postgresql.org/docs/current/sql-alterdefaultprivileges.html) allows you to set the privileges that will be applied to objects created in the future. It does not affect privileges assigned to already-existing objects, nor objects created by non-admin users.

In Pigsty, default privileges are defined for three roles:

```sql
{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE {{ pg_dbsu }} {{ priv }};
{% endfor %}

{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE {{ pg_admin_username }} {{ priv }};
{% endfor %}

-- For other business administrators, they should execute SET ROLE dbrole_admin before running DDL to use the corresponding default privilege configuration.
{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE "dbrole_admin" {{ priv }};
{% endfor %}
```

These contents will be used by the PG cluster initialization template [`pg-init-template.sql`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql), rendered and output to `/pg/tmp/pg-init-template.sql` during cluster initialization.
This command will be executed on `template1` and `postgres` databases, and newly created databases will inherit these default privilege configurations through template `template1`.




That is to say, to maintain correct object privileges, you must run DDL with **admin users**, which could be:

1. [`{{ pg_dbsu }}`](/docs/pgsql/param#pg_dbsu), defaults to `postgres`
2. [`{{ pg_admin_username }}`](/docs/pgsql/param#pg_admin_username), defaults to `dbuser_dba`
3. Business admin users granted with `dbrole_admin` role (switch to `dbrole_admin` identity via `SET ROLE`)

It's wise to use `postgres` as the global object owner. If you wish to create objects with business admin user, you must use `SET ROLE dbrole_admin` before running DDL to maintain correct privileges.

Of course, you can also explicitly grant default privileges to business admins in the database with `ALTER DEFAULT PRIVILEGE FOR ROLE <some_biz_admin> XXX`.



---------------------

## Database Privileges

In Pigsty, database-level privileges are covered in [database definitions](#define-database).

There are 3 database-level privileges: `CONNECT`, `CREATE`, `TEMP`, and a special 'privilege': `OWNERSHIP`.

```yaml
- name: meta         # required, `name` is the only mandatory field in database definition
  owner: postgres    # optional, database owner, defaults to postgres
  allowconn: true    # optional, allow connection, true by default. false will completely disable connection to this database
  revokeconn: false  # optional, revoke public connection privilege. false by default, when set to true, CONNECT privilege will be revoked from users other than owner and admin
```

- If `owner` parameter exists, it will be used as the database owner instead of the default [`{{ pg_dbsu }}`](/docs/pgsql/param#pg_dbsu) (usually `postgres`)
- If `revokeconn` is `false`, all users have the database's `CONNECT` privilege, this is the default behavior.
- If `revokeconn` is explicitly set to `true`:
  - The database's `CONNECT` privilege will be revoked from `PUBLIC`: ordinary users cannot connect to this database
  - `CONNECT` privilege will be explicitly granted to `{{ pg_replication_username }}`, `{{ pg_monitor_username }}` and `{{ pg_admin_username }}`
  - `CONNECT` privilege will be granted to the database owner with `GRANT OPTION`, the database owner can then grant connection privileges to other users.
- The `revokeconn` option can be used to isolate cross-database access within the same cluster. You can create different business users as owners for each database and set the `revokeconn` option for them.


<details><summary>Example: Database Isolation</summary>

```yaml
pg-infra:
  hosts:
    10.10.10.40: { pg_seq: 1, pg_role: primary }
    10.10.10.41: { pg_seq: 2, pg_role: replica , pg_offline_query: true }
  vars:
    pg_cluster: pg-infra
    pg_users:
      - { name: dbuser_confluence, password: mc2iohos , pgbouncer: true, roles: [ dbrole_admin ] }
      - { name: dbuser_gitlab, password: sdf23g22sfdd , pgbouncer: true, roles: [ dbrole_readwrite ] }
      - { name: dbuser_jira, password: sdpijfsfdsfdfs , pgbouncer: true, roles: [ dbrole_admin ] }
    pg_databases:
      - { name: confluence , revokeconn: true, owner: dbuser_confluence , connlimit: 100 }
      - { name: gitlab , revokeconn: true, owner: dbuser_gitlab, connlimit: 100 }
      - { name: jira , revokeconn: true, owner: dbuser_jira , connlimit: 100 }

```

</details>




---------------------

## CREATE Privileges

For security considerations, Pigsty revokes the `CREATE` privilege on database from `PUBLIC` by default, and this has been the default behavior since PostgreSQL 15.

The database owner can always adjust CREATE privileges as needed based on actual requirements.
