# Access Control

> Configuration reference for Pigsty built-in roles, users, default privileges, and database ACLs.

---

LLMS index: [llms.txt](/llms.txt)

---

> Access control combines roles, object privileges, database ACLs, and HBA. This page covers configuration parameters; see [**Access Control Concepts**](/docs/concept/sec/ac) for design and boundaries.

Pigsty provides a compact ACL model described by these parameters:

- `pg_default_roles`: system roles and system users.
- `pg_users`: application users and roles.
- `pg_default_privileges`: default privileges on objects created by managed administrators and owners.
- `pg_revoke_public`, `pg_default_schemas`, and `pg_default_extensions`: default behavior for `template1`.

Manage these parameters together with HBA and database definitions to produce reproducible access-control configuration.


----------------

## Default Role System (pg_default_roles)

The defaults contain four business roles and four system users:

| Name | Type | Description |
|:---|:---|:---|
| `dbrole_readonly` | `NOLOGIN` | Shared read-only role with SELECT and USAGE |
| `dbrole_readwrite` | `NOLOGIN` | Inherits read-only and adds INSERT, UPDATE, and DELETE |
| `dbrole_admin` | `NOLOGIN` | Inherits `pg_monitor` and read-write; can create objects and triggers |
| `dbrole_offline` | `NOLOGIN` | Independent read-only role; instance scope must be restricted explicitly through HBA |
| `postgres` | User | System superuser; same name as `pg_dbsu` |
| `replicator` | User | Streaming replication and backup; inherits monitoring and read-only privileges |
| `dbuser_dba` | User | Primary administration account, also synchronized to PgBouncer |
| `dbuser_monitor` | User | Monitoring account with `pg_monitor`; records slow SQL by default |
{.full-width}

These definitions live in `pg_default_roles`. The parameter is a complete list. When customizing it, copy and retain the required default roles and system users, then add new roles in dependency order. If a role name changes, update references in HBA, default privileges, and scripts.


----------------

## Default Users and Credential Parameters

These parameters control system-user names and passwords:

| Parameter | Default | Purpose |
|:---|:---|:---|
| `pg_dbsu` | `postgres` | Database and OS superuser |
| `pg_dbsu_password` | Empty string | dbsu password, disabled by default |
| `pg_replication_username` | `replicator` | Replication user name |
| `pg_replication_password` | `DBUser.Replicator` | Replication password |
| `pg_admin_username` | `dbuser_dba` | Administrator user name |
| `pg_admin_password` | `DBUser.DBA` | Administrator password |
| `pg_monitor_username` | `dbuser_monitor` | Monitoring user |
| `pg_monitor_password` | `DBUser.Monitor` | Monitoring password |
{.full-width}

After changing these parameters, update the corresponding user definitions in `pg_default_roles` so user names and role attributes remain consistent.


----------------

## Application Roles and Grants (pg_users)

Declare application users with `pg_users`; see [User Configuration](/docs/pgsql/config/user) for field details. The `roles` field grants business roles.

Example read-only and read-write users:

```yaml
pg_users:
  - { name: app_reader,  password: DBUser.Reader,  roles: [dbrole_readonly],  pgbouncer: true }
  - { name: app_writer,  password: DBUser.Writer,  roles: [dbrole_readwrite], pgbouncer: true }
```

Application users inherit default object privileges through `dbrole_*`. Database `CONNECT` privileges and [`pg_hba_rules`](/docs/pgsql/config/hba) continue to control which databases and sources can connect.

For finer ACLs, use standard `GRANT` and `REVOKE` in baseline SQL or a later playbook, and include those additional grants in reviews.


----------------

## Default Privilege Template (pg_default_privileges)

`pg_default_privileges` applies to `pg_dbsu`, `pg_admin_username`, `dbrole_admin`, and every declared database owner. The default template is:

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

> Objects created by these identities receive the corresponding privileges automatically. Other object creators need their own `ALTER DEFAULT PRIVILEGES` configuration.

Additional notes:

- `pg_revoke_public` defaults to `true`, revoking `CREATE` from `PUBLIC` on databases and the `public` schema.
- `pg_default_schemas` and `pg_default_extensions` control schemas and extensions created in `template1/postgres`, usually for monitoring objects such as the `monitor` schema and `pg_stat_statements`.


----------------

## Common Scenarios

### Read-only Account for a Partner

```yaml
pg_users:
  - name: partner_ro
    password: Partner.Read
    roles: [dbrole_readonly]
pg_hba_rules:
  - { user: partner_ro, db: analytics, addr: 203.0.113.0/24, auth: ssl }
```

This adds an HBA rule allowing the partner to reach `analytics` over TLS from the specified CIDR. `pg_hba_rules` does not remove broader default rules. If the account must reach only this database, also narrow the default HBA policy and configure database `CONNECT` privileges.

### DDL for an Application Administrator

```yaml
pg_users:
  - name: app_admin
    password: DBUser.AppAdmin
    roles: [dbrole_admin]
```

> `app_admin` inherits DDL privileges from `dbrole_admin`. To apply the default privileges configured for `dbrole_admin` to new objects, run `SET ROLE dbrole_admin` first. If `app_admin` is a declared database owner, it can also create objects directly as that owner.

### Custom Default Privileges

```yaml
pg_default_privileges:
  - GRANT INSERT,UPDATE,DELETE ON TABLES TO dbrole_admin
  - GRANT SELECT,UPDATE ON SEQUENCES TO dbrole_admin
  - GRANT SELECT ON TABLES TO reporting_group
```

This parameter replaces the complete default privilege list. Referenced roles must already exist. Changes affect only objects created afterward; grant privileges separately on existing objects.


----------------

## Integration with Other Components

- **HBA rules:** use `pg_hba_rules` to bind roles, databases, and sources. To restrict `dbrole_offline`, set `role: offline` on its rule.
- **PgBouncer:** users with `pgbouncer: true` are written to `userlist.txt`; `pool_mode` and `pool_connlimit` control pool-level quotas.
- **Database monitoring:** `dbuser_monitor` receives privileges from `pg_default_roles`. When adding another monitoring user, grant `pg_monitor` and check access to the `monitor` schema.

These parameters can be versioned with the inventory. Continue to review effective privileges through PostgreSQL catalogs.


----------------

## Related Documentation

- [**Access Control Concepts**](/docs/concept/sec/ac): roles, default privileges, and isolation boundaries
- [**Authentication**](/docs/concept/sec/auth): HBA, SCRAM, and client certificates
- [**User Configuration**](/docs/pgsql/config/user): user and role fields
- [**HBA Configuration**](/docs/pgsql/config/hba): connection-entry rules
