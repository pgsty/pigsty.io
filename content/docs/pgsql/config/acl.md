---
title: Access Control
weight: 1207
description: Default role system and privilege model provided by Pigsty
icon: fa-solid fa-lock
module: [PGSQL]
categories: [Reference]
tags: [Security]
---

> Access control is determined by the combination of "role system + privilege templates + HBA". This section focuses on how to declare roles and object privileges through configuration parameters.

Pigsty provides a streamlined ACL model, fully described by the following parameters:

- `pg_default_roles`: System roles and system users.
- `pg_users`: Business users and roles.
- `pg_default_privileges`: Default privileges for objects created by administrators/owners.
- `pg_revoke_public`, `pg_default_schemas`, `pg_default_extensions`: Control the default behavior of `template1`.

After understanding these parameters, you can write fully reproducible privilege configurations.


----------------

## Default Role System (pg_default_roles)

By default, it includes 4 business roles + 4 system users:

| Name               | Type      | Description                                                    |
|--------------------|-----------|----------------------------------------------------------------|
| `dbrole_readonly`  | `NOLOGIN` | Shared by all business, has SELECT/USAGE                       |
| `dbrole_readwrite` | `NOLOGIN` | Inherits read-only role, with INSERT/UPDATE/DELETE             |
| `dbrole_admin`     | `NOLOGIN` | Inherits `pg_monitor` + read-write role, can create objects and triggers |
| `dbrole_offline`   | `NOLOGIN` | Restricted read-only role, only allowed to access offline instances |
| `postgres`         | User      | System superuser, same as `pg_dbsu`                            |
| `replicator`       | User      | Used for streaming replication and backup, inherits monitoring and read-only privileges |
| `dbuser_dba`       | User      | Primary admin account, also synced to pgbouncer                |
| `dbuser_monitor`   | User      | Monitoring account, has `pg_monitor` privilege, records slow SQL by default |

These definitions are in `pg_default_roles`. They can theoretically be customized, but if you replace names, you must synchronize updates in HBA/ACL/script references.

Example: Add an additional `dbrole_etl` for offline tasks:

```yaml
pg_default_roles:
  - { name: dbrole_etl, login: false, roles: [dbrole_offline], comment: 'etl read-only role' }
  - { name: dbrole_admin, login: false, roles: [pg_monitor, dbrole_readwrite, dbrole_etl] }
```

> Effect: All users inheriting `dbrole_admin` automatically have `dbrole_etl` privileges, can access offline instances and execute ETL.


----------------

## Default Users and Credential Parameters

System user usernames/passwords are controlled by the following parameters:

| Parameter                    | Default Value      | Purpose                               |
|------------------------------|--------------------|---------------------------------------|
| `pg_dbsu`                    | `postgres`         | Database/system superuser             |
| `pg_dbsu_password`           | Empty string       | dbsu password (disabled by default)   |
| `pg_replication_username`    | `replicator`       | Replication username                  |
| `pg_replication_password`    | `DBUser.Replicator`| Replication user password             |
| `pg_admin_username`          | `dbuser_dba`       | Admin username                        |
| `pg_admin_password`          | `DBUser.DBA`       | Admin password                        |
| `pg_monitor_username`        | `dbuser_monitor`   | Monitoring user                       |
| `pg_monitor_password`        | `DBUser.Monitor`   | Monitoring user password              |

> If you modify these parameters, please synchronize updates to the corresponding user definitions in `pg_default_roles` to avoid role attribute inconsistencies.


----------------

## Business Roles and Authorization (pg_users)

Business users are declared through `pg_users` (see [User Configuration](/docs/pgsql/config/user) for detailed fields), where the `roles` field controls the granted business roles.

Example: Create one read-only and one read-write user:

```yaml
pg_users:
  - { name: app_reader,  password: DBUser.Reader,  roles: [dbrole_readonly],  pgbouncer: true }
  - { name: app_writer,  password: DBUser.Writer,  roles: [dbrole_readwrite], pgbouncer: true }
```

> By inheriting `dbrole_*` to control access privileges, no need to GRANT for each database separately. Combined with [`pg_hba_rules`](/docs/pgsql/config/hba), you can distinguish access sources.

For finer-grained ACL, you can use standard `GRANT/REVOKE` in `baseline` SQL or subsequent playbooks. Pigsty won't prevent you from granting additional privileges.


----------------

## Default Privilege Templates (pg_default_privileges)

`pg_default_privileges` will set DEFAULT PRIVILEGE on `postgres`, `dbuser_dba`, `dbrole_admin` (after business admin `SET ROLE`). The default template is as follows:

```yaml
pg_default_privileges:
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

> As long as objects are created by the above administrators, they will automatically carry the corresponding privileges without manual GRANT. If business needs a custom template, simply replace this array.

Additional notes:

- `pg_revoke_public` defaults to `true`, meaning automatic revocation of `PUBLIC`'s `CREATE` privilege on databases and the `public` schema.
- `pg_default_schemas` and `pg_default_extensions` control pre-created schemas/extensions in `template1/postgres`, typically used for monitoring objects (`monitor` schema, `pg_stat_statements`, etc.).


----------------

## Common Configuration Scenarios

### Provide Read-Only Account for Partners

```yaml
pg_users:
  - name: partner_ro
    password: Partner.Read
    roles: [dbrole_readonly]
pg_hba_rules:
  - { user: partner_ro, db: analytics, addr: 203.0.113.0/24, auth: ssl }
```

> Effect: Partner account only has default read-only privileges after login, and can only access the `analytics` database via TLS from the specified network segment.

### Grant DDL Capability to Business Administrators

```yaml
pg_users:
  - name: app_admin
    password: DBUser.AppAdmin
    roles: [dbrole_admin]
```

> Business administrators can inherit the default DDL privilege template by `SET ROLE dbrole_admin` or logging in directly as `app_admin`.

### Customize Default Privileges

```yaml
pg_default_privileges:
  - GRANT INSERT,UPDATE,DELETE ON TABLES TO dbrole_admin
  - GRANT SELECT,UPDATE ON SEQUENCES TO dbrole_admin
  - GRANT SELECT ON TABLES TO reporting_group
```

> After replacing the default template, all objects created by administrators will carry the new privilege definitions, avoiding per-object authorization.


----------------

## Coordination with Other Components

- **HBA Rules**: Use `pg_hba_rules` to bind roles with sources (e.g., only allow `dbrole_offline` to access offline instances).
- **Pgbouncer**: Users with `pgbouncer: true` will be written to `userlist.txt`, and `pool_mode/pool_connlimit` can control connection pool-level quotas.
- **Grafana/Monitoring**: `dbuser_monitor`'s privileges come from `pg_default_roles`. If you add a new monitoring user, remember to grant `pg_monitor` + access to the `monitor` schema.

Through these parameters, you can version the privilege system along with code, truly achieving "configuration as policy".
