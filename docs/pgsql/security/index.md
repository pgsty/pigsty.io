# PostgreSQL Security

> Entry points for PostgreSQL authentication, access control, encrypted communication, data protection, and secure operations.

---

LLMS index: [llms.txt](/llms.txt)

---

PostgreSQL security combines authentication, authorization, network boundaries, encrypted communication, data protection, and operational process. Pigsty provides configuration entry points for these mechanisms; operators must still harden, verify, and audit the deployment for its environment.


---------------------

## Concepts and Boundaries

| Topic | Content |
|:---|:---|
| [**Security and Compliance**](/docs/concept/sec/) | Default state, capability boundaries, and hardening path |
| [**Authentication**](/docs/concept/sec/auth) | HBA, SCRAM, certificate authentication, and credential management |
| [**Access Control**](/docs/concept/sec/ac) | Built-in roles, default privileges, database ACLs, and instance-access boundaries |
| [**Encrypted Communication**](/docs/concept/sec/ca) | CA, TLS, server authentication, and certificate rotation |
| [**Data Security**](/docs/concept/sec/data) | Page checksums, replication, backup, PITR, audit, and logging |
| [**Compliance**](/docs/concept/sec/compliance) | Launch checks, control mappings, and evidence requirements |
{.full-width}


---------------------

## Configuration Reference

- [**HBA Configuration**](/docs/pgsql/config/hba): declare PostgreSQL and PgBouncer authentication rules.
- [**Access Control Configuration**](/docs/pgsql/config/acl): configure default roles, application users, object privileges, and database ACLs.
- [**User Configuration**](/docs/pgsql/config/user): define user attributes, role membership, and connection-pool options.
- [**CRIT Parameter Template**](/docs/pgsql/template/crit): critical parameters for synchronous replication, checksums, logging, and watchdog.


---------------------

## Administration and Verification

- [**User Management**](/docs/pgsql/admin/user): create, update, and remove users.
- [**HBA Management**](/docs/pgsql/admin/hba/): refresh rules, inspect effective configuration, and troubleshoot authentication.
- [**Security Considerations**](/docs/deploy/security): production hardening and acceptance checklist.
- [**Security Recommendations**](/docs/setup/security): minimum password, network, and file checks before installation.

The inventory describes desired state. Acceptance checks should also inspect HBA, certificates, listen ports, and sensitive files on running nodes, and verify effective roles and privileges through PostgreSQL catalogs.
