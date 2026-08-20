# Access Control

> Entry points for PostgreSQL access-control concepts, configuration, and administration.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty access-control documentation is organized by purpose:

- [**Access Control Concepts**](/docs/concept/sec/ac): role model, default privileges, database ACLs, and instance-isolation boundaries.
- [**Access Control Configuration**](/docs/pgsql/config/acl): `pg_default_roles`, `pg_users`, `pg_default_privileges`, and related parameters.
- [**Authentication**](/docs/concept/sec/auth): HBA, SCRAM, certificate authentication, and credential management.
- [**HBA Configuration**](/docs/pgsql/config/hba): PostgreSQL and PgBouncer rule syntax.
- [**User Management**](/docs/pgsql/admin/user): create, update, and remove users in an existing cluster.

`dbrole_offline` provides independent read-only object privileges; it does not restrict instance scope automatically. To allow it only on offline instances, set `role: offline` explicitly on the corresponding HBA rule and verify the generated `pg_hba.conf` on both online and offline instances.
