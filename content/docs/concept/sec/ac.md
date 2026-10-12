---
title: Access Control
weight: 233
description: Pigsty turns least privilege into reusable declarative cluster configuration through a built-in four-tier role model and default privilege templates.
icon: fa-solid fa-lock
module: [PIGSTY, PGSQL]
categories: [Concept]
---

[**Authentication**](/docs/concept/sec/auth) verifies identity. Authorization determines what that identity can do.

PostgreSQL `GRANT` and `REVOKE` provide precise control. Privilege problems usually arise from missing default conventions. Examples include making an application account the owner, retaining temporary superuser access after troubleshooting, and omitting grants on new tables.

Pigsty provides **four role tiers, default privileges, and database isolation**. This starting model reduces manual grants per database. Operators must still assign roles to match business boundaries and regularly review effective privileges.

[![pigsty-acl.jpg](/img/pigsty/acl.jpg)](/docs/pgsql/config/acl)


---------------------

<span id="four-tier-role-model"></span>
<span id="default-roles-and-system-users"></span>

## Role System

Pigsty creates four **business roles** by default. They form privilege groups and cannot log in:

| Role | Attribute | Inherits | Purpose |
|:---|:---|:---|:---|
| `dbrole_readonly` | `NOLOGIN` | — | Global read-only access |
| `dbrole_readwrite` | `NOLOGIN` | `dbrole_readonly` | Global DML access; the default choice for application accounts |
| `dbrole_admin` | `NOLOGIN` | `dbrole_readwrite`, `pg_monitor` | Object creation and DDL for administration and release workflows |
| `dbrole_offline` | `NOLOGIN` | — | Independent read-only role that can be restricted to offline instances through [**HBA**](/docs/concept/sec/auth) |
{.full-width}

Pigsty also creates four **system users**, each with a specific responsibility:

| User | Attribute | Purpose |
|:---|:---|:---|
| `postgres` | `SUPERUSER` | Database superuser; no password and local `ident` login only |
| `replicator` | `REPLICATION` | Streaming replication and backup, with `pg_monitor` and read-only privileges |
| `dbuser_dba` | `SUPERUSER` | Routine administration user that inherits `dbrole_admin` |
| `dbuser_monitor` | — | Monitoring user with only `pg_monitor` and read-only privileges |
{.full-width}

Application accounts join role groups through the `roles` field and inherit their privileges:

```yaml
pg_users:
  - { name: dbuser_app    ,password: '...' ,roles: [dbrole_readwrite] }  # Regular application account
  - { name: dbuser_report ,password: '...' ,roles: [dbrole_readonly]  }  # Read-only reporting account
  - { name: dbuser_etl    ,password: '...' ,roles: [dbrole_offline]   }  # Offline ETL account
```

Customize the declarative role system through [`pg_default_roles`](/docs/pgsql/param#pg_default_roles). This parameter replaces the complete list. Retain all required system users and default roles. Also check references in HBA rules, default privileges, and scripts.


---------------------

<span id="default-privilege-policy"></span>

## Default Privileges

Roles define who receives privileges. **Default privileges give newly created objects the required grants automatically.**

PostgreSQL provides `ALTER DEFAULT PRIVILEGES`. Pigsty declares these rules through [`pg_default_privileges`](/docs/pgsql/param#pg_default_privileges):

```yaml
pg_default_privileges:            # Apply these privileges to new objects created by managed identities
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

The read-only role can query data and execute functions. The read-write role also has DML privileges. The administrator role adds privileges needed for object management.

### Ownership Convention

**Default privileges apply only to objects created by identities with those defaults configured.** Pigsty configures them for:

- the database OS user `pg_dbsu`, which defaults to `postgres`;
- the administration user `pg_admin_username`, which defaults to `dbuser_dba`;
- `dbrole_admin`;
- each database owner declared in `pg_databases`.

Application DDL should normally run as the declared database owner. Administration and release workflows can use `dbuser_dba` or first run `SET ROLE dbrole_admin`. Other users need their own `ALTER DEFAULT PRIVILEGES` configuration. Otherwise, objects they create do not receive this default privilege model.

PostgreSQL default privileges follow the object creator. They do not propagate automatically from the database or session login name. This is PostgreSQL behavior, not a Pigsty limitation.


---------------------

## Database Isolation

By default, PostgreSQL grants database `CONNECT` to `PUBLIC`. If HBA permits it, a login role can enter a database it does not own. Restrict this default when multiple applications share a cluster.

Set `revokeconn` in a database definition to revoke public connection access:

```yaml
pg_databases:
  - { name: app_a ,owner: dbuser_a ,revokeconn: true }
  - { name: app_b ,owner: dbuser_b ,revokeconn: true }
```

This revokes `CONNECT` from `PUBLIC`. It grants access explicitly to the replication, monitoring, and administration users and the database owner. The owner receives `GRANT OPTION` and can grant access to others. Without additional grants or inherited roles, `app_a` cannot connect to `app_b`.

Cluster initialization also revokes `CREATE` from `PUBLIC` on the database and the `public` schema:

```sql
REVOKE CREATE ON DATABASE app FROM PUBLIC;
REVOKE CREATE ON SCHEMA public FROM PUBLIC;
```

Ordinary users cannot freely create objects in public databases or schemas. This reduces risks from unsafe `search_path` settings and object shadowing. PostgreSQL 15 restricted the default `CREATE` privilege on the `public` schema. Pigsty applies this boundary to all supported major versions.


---------------------

## Offline Role and Instance Isolation

`dbrole_offline` provides independent read-only privileges for ETL, reporting, and ad hoc queries. It controls object access, not which instance accepts connections.

The default intranet HBA rule for `+dbrole_offline` has no `role` filter, so it applies to every instance. To restrict it to `pg_role: offline` or a replica with `pg_offline_query: true`, change the complete `pg_default_hba_rules` list:

```yaml
pg_default_hba_rules:
  # Copy and retain all other default rules; change only the offline-role rule
  - { user: '+dbrole_offline', db: all, addr: intra, auth: pwd, role: offline, order: 650,
      title: 'allow offline users on offline instances' }
```

`pg_default_hba_rules` replaces the entire list; do not use the example rule alone. HBA limits expensive queries to offline instances only if it filters by instance role. Users must also lack other inherited roles permitted by broader rules. Add a [**dedicated service endpoint**](/docs/concept/ha/svc), connection limits, and query resource controls for resource isolation.


---------------------

## Beyond the Database

Least privilege also applies at the host level:

- The `postgres` superuser has no password and permits only local `ident` login. Its sudo access defaults to required database service and log commands ([`pg_dbsu_sudo`](/docs/pgsql/param#pg_dbsu_sudo): `limit`).
- `dbuser_monitor` has `pg_monitor`, the read-only role, and privileges on the `monitor` schema. By default, it cannot write business tables.
- `replicator` receives only directory function privileges needed for backup and recovery, without general superuser access.


---------------------

## Next

- 📖 Complete role and privilege reference: [**Access Control Configuration**](/docs/pgsql/config/acl)
- 🔑 [**Authentication**](/docs/concept/sec/auth): the first gate before authorization
- 🔒 [**Data Security**](/docs/concept/sec/data): protection beyond privileges
