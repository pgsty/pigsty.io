---
title: Access Control
weight: 1605
description: Default role system and privilege model provided by Pigsty
icon: fa-solid fa-lock
module: [PGSQL]
categories: [Reference]
tags: [Security]
---

> Pigsty provides a battery-included access control model based on a [role system](#role-system) and [privilege system](#privilege-system).

Access control is important, but many users don't do it well. Therefore, Pigsty provides a simplified, ready-to-use access control model to provide a security baseline for your cluster.


---------------------

## Role System

Pigsty's default role system includes four [default roles](#default-roles) and four [default users](#default-users):

| Role Name          | Attributes    | Member of                   | Description                          |
|--------------------|---------------|-----------------------------|--------------------------------------|
| `dbrole_readonly`  | `NOLOGIN`     |                             | role for global read-only access     |
| `dbrole_readwrite` | `NOLOGIN`     | dbrole_readonly             | role for global read-write access    |
| `dbrole_admin`     | `NOLOGIN`     | pg_monitor,dbrole_readwrite | role for object creation             |
| `dbrole_offline`   | `NOLOGIN`     |                             | role for restricted read-only access |
| `postgres`         | `SUPERUSER`   |                             | system superuser                     |
| `replicator`       | `REPLICATION` | pg_monitor,dbrole_readonly  | system replicator                    |
| `dbuser_dba`       | `SUPERUSER`   | dbrole_admin                | pgsql admin user                     |
| `dbuser_monitor`   |               | pg_monitor                  | pgsql monitor user                   |

The detailed definitions of these [roles and users](/docs/pgsql/config/user#defining-users) are as follows:

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

- Business Read-Only (`dbrole_readonly`): Role for global read-only access. If other businesses need read-only access to this database, they can use this role.
- Business Read-Write (`dbrole_readwrite`): Role for global read-write access. Production accounts used by primary business should have database read-write privileges.
- Business Admin (`dbrole_admin`): Role with DDL permissions, typically used for business administrators or scenarios requiring table creation in applications (such as various business software).
- Offline Read-Only (`dbrole_offline`): Restricted read-only access role (can only access [offline](/docs/pgsql/config#offline-replica) instances, typically for personal users and ETL tool accounts).

Default roles are defined in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles). Unless you really know what you're doing, it's recommended not to change the default role names.

```yaml
- { name: dbrole_readonly  , login: false , comment: role for global read-only access  }                            # production read-only role
- { name: dbrole_offline ,   login: false , comment: role for restricted read-only access (offline instance) }      # restricted-read-only role
- { name: dbrole_readwrite , login: false , roles: [dbrole_readonly], comment: role for global read-write access }  # production read-write role
- { name: dbrole_admin , login: false , roles: [pg_monitor, dbrole_readwrite] , comment: role for object creation } # production DDL change role
```


---------------------

## Default Users

Pigsty also has four default users (system users):

- Superuser (`postgres`), the owner and creator of the cluster, same as the OS dbsu.
- Replication user (`replicator`), the system user used for primary-replica replication.
- Monitor user (`dbuser_monitor`), a user used to monitor database and connection pool metrics.
- Admin user (`dbuser_dba`), the admin user who performs daily operations and database changes.

These four default users' username/password are defined with four pairs of dedicated parameters, referenced in many places:

- [`pg_dbsu`](/docs/pgsql/param#pg_dbsu): os dbsu name, postgres by default, better not change it
- [`pg_dbsu_password`](/docs/pgsql/param#pg_dbsu_password): dbsu password, empty string by default means no password is set for dbsu, best not to set it.
- [`pg_replication_username`](/docs/pgsql/param#pg_replication_username): postgres replication username, `replicator` by default
- [`pg_replication_password`](/docs/pgsql/param#pg_replication_password): postgres replication password, `DBUser.Replicator` by default
- [`pg_admin_username`](/docs/pgsql/param#pg_admin_username): postgres admin username, `dbuser_dba` by default
- [`pg_admin_password`](/docs/pgsql/param#pg_admin_password): postgres admin password in plain text, `DBUser.DBA` by default
- [`pg_monitor_username`](/docs/pgsql/param#pg_monitor_username): postgres monitor username, `dbuser_monitor` by default
- [`pg_monitor_password`](/docs/pgsql/param#pg_monitor_password): postgres monitor password, `DBUser.Monitor` by default

> **Remember to change these passwords in production deployment! Don't use default values!**

```yaml
pg_dbsu: postgres                             # database superuser name, it's recommended not to modify this username.
pg_dbsu_password: ''                          # database superuser password, it's recommended to leave this empty! Prohibit dbsu password login.
pg_replication_username: replicator           # system replication username
pg_replication_password: DBUser.Replicator    # system replication password, be sure to modify this password!
pg_monitor_username: dbuser_monitor           # system monitor username
pg_monitor_password: DBUser.Monitor           # system monitor password, be sure to modify this password!
pg_admin_username: dbuser_dba                 # system admin username
pg_admin_password: DBUser.DBA                 # system admin password, be sure to modify this password!
```

If you modify the default user parameters, update the corresponding role [definition](/docs/pgsql/config/user#defining-user) in [`pg_default_roles`](/docs/pgsql/param#pg_default_roles):

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
- Offline users (`dbrole_offline`) are like Read-Only users, but with limited access, only allowed to access [offline instances](/docs/pgsql/config#offline-replica) (`pg_role = 'offline'` or `pg_offline_query = true`)
- Objects created by admin users will have correct privileges.
- Default privileges are installed on all databases, including template databases.
- Database connect privilege is covered by database [definition](/docs/pgsql/config/db#defining-database).
- `CREATE` privileges of database & public schema are revoked from `PUBLIC` by default.

---------------------

## Object Privilege

Default object privileges for newly created objects in the database are controlled by the [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges) parameter:

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

Newly **created** objects by admin users will have these privileges by default. Use `\ddp+` to view these default privileges:

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

## Default Privilege

[`ALTER DEFAULT PRIVILEGES`](https://www.postgresql.org/docs/current/sql-alterdefaultprivileges.html) allows you to set the privileges that will be applied to objects created in the future. It does not affect privileges assigned to already-existing objects, nor does it affect objects created by non-admin users.

In Pigsty, default privileges are defined for three roles:

```sql
{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE {{ pg_dbsu }} {{ priv }};
{% endfor %}

{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE {{ pg_admin_username }} {{ priv }};
{% endfor %}

-- for additional business admin, they should SET ROLE dbrole_admin before executing DDL to use the corresponding default privilege configuration.
{% for priv in pg_default_privileges %}
ALTER DEFAULT PRIVILEGES FOR ROLE "dbrole_admin" {{ priv }};
{% endfor %}
```

This content will be used by the PG cluster initialization template [`pg-init-template.sql`](https://github.com/pgsty/pigsty/blob/main/roles/pgsql/templates/pg-init-template.sql), rendered during cluster initialization and output to `/pg/tmp/pg-init-template.sql`.
These commands will be executed on `template1` and `postgres` databases, and newly created databases will inherit these default privilege configurations from `template1`.




That is to say, to maintain correct object privileges, you must execute DDL with **admin users**, which could be:

1. [`{{ pg_dbsu }}`](/docs/pgsql/param#pg_dbsu), `postgres` by default
2. [`{{ pg_admin_username }}`](/docs/pgsql/param#pg_admin_username), `dbuser_dba` by default
3. Business admin users granted with `dbrole_admin` role (by switching to `dbrole_admin` identity using `SET ROLE`)

It's wise to use `postgres` as the global object owner. If you wish to create objects as business admin user, you MUST USE `SET ROLE dbrole_admin` before running that DDL to maintain the correct privileges.

You can also explicitly grant default privileges to business admin users in the database through `ALTER DEFAULT PRIVILEGE FOR ROLE <some_biz_admin> XXX`.



---------------------

## Database Privilege

In Pigsty, database-level privileges are covered in the [database definition](#defining-database).

There are three database level privileges: `CONNECT`, `CREATE`, `TEMP`, and a special 'privilege': `OWNERSHIP`.

```yaml
- name: meta         # required, `name` is the only mandatory field of a database definition
  owner: postgres    # optional, specify a database owner, postgres by default
  allowconn: true    # optional, allow connection, true by default. false will disable connect at all
  revokeconn: false  # optional, revoke public connection privilege. false by default. when set to true, CONNECT privilege will be revoked from users other than owner and admin
```

- If `owner` exists, it will be used as the database owner instead of default [`{{ pg_dbsu }}`](/docs/pgsql/param#pg_dbsu) (which is usually `postgres`)
- If `revokeconn` is `false`, all users have the `CONNECT` privilege of the database, this is the default behavior.
- If `revokeconn` is explicitly set to `true`:
  - `CONNECT` privilege of the database will be revoked from `PUBLIC`: regular users cannot connect to this database
  - `CONNECT` privilege will be explicitly granted to `{{ pg_replication_username }}`, `{{ pg_monitor_username }}` and `{{ pg_admin_username }}`
  - `CONNECT` privilege will be granted to the database owner with `GRANT OPTION`, the database owner can then grant connection privileges to other users.
- `revokeconn` flag can be used for database access isolation. You can create different business users as owners for each database and set the `revokeconn` option for them.


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

## CREATE Privilege

For security reasons, Pigsty revokes the `CREATE` privilege on databases from `PUBLIC` by default, which is also the default behavior since PostgreSQL 15.

The database owner has the full ability to adjust CREATE privileges as they see fit.

