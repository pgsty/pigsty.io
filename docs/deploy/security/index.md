# Security Considerations

> Credential, network, authentication, encryption, data protection, and audit checks for production Pigsty deployments.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty defaults target development, testing, and demonstrations on a trusted intranet. A production deployment must configure credentials, network boundaries, authentication, certificates, backup, and audit according to its threat model.

See [**Security and Compliance**](/docs/concept/sec/) for mechanisms and boundaries, and the [**Launch Hardening Checklist**](/docs/concept/sec/compliance#launch-hardening-checklist) for executable checks. [**`ha/safe`**](/docs/conf/safe) is a hardening example, not a substitute for reviewing each control.


----------------

## Confidentiality

### Critical Files

Protect these assets:

- `pigsty.yml` and other inventories, which normally contain system and application credentials;
- `files/pki/ca/ca.key`, which can issue certificates trusted by the deployment;
- the administration user's SSH private key, which can use sudo on managed nodes by default;
- client-certificate private keys and backup-encryption keys;
- generated `/pg/tmp/pg-user-*.sql` files.

Restrict access to the admin node and configuration repository. Do not commit complete inventories or private keys to public repositories. Back up the CA private key and recovery configuration through controlled channels.

### Passwords

Replace every public default credential before production. Start with:

```bash
./configure -g
```

This option does not replace the pgBackRest `cipher_pass`, every Silo example credential in `ha/safe`, or user-defined values. Review the result against the [**Default Credentials Checklist**](/docs/concept/sec/compliance#default-credentials-checklist).

PostgreSQL stores newly set or updated passwords with SCRAM-SHA-256 by default. To enforce complexity, preload `passwordcheck` through [**`pg_libs`**](/docs/pgsql/param#pg_libs), or configure `credcheck`. Declare account lifetime with `expire_in` or `expire_at`.

Credential rotation must also update database users, the PgBouncer user list, component configuration, and client connection information. Prepare a rollback plan before rotating.


----------------

## Network Boundaries

### IP Addresses

PostgreSQL listens on `0.0.0.0` by default. To constrain listen addresses, set:

```yaml
pg_listen: '${ip},${vip},${lo}'
```

A listen address is not the only boundary. Production reviews should also cover:

- cloud security groups or upstream firewalls;
- [**`node_firewall_public_port`**](/docs/node/param#node_firewall_public_port);
- whether [**`node_firewall_intranet`**](/docs/node/param#node_firewall_intranet) trusts overly broad CIDRs;
- PostgreSQL and PgBouncer [**HBA rules**](/docs/concept/sec/auth);
- the Patroni REST API allowlist.

The demo `pigsty.yml` inventory also exposes `5432` publicly. Remove that exception in production. If direct database access is required, limit it to explicit application CIDRs.

### Network Traffic

- PostgreSQL enables server-side TLS by default, but default intranet HBA rules do not require it.
- PgBouncer TLS is disabled by default and controlled by [**`pgbouncer_sslmode`**](/docs/pgsql/param#pgbouncer_sslmode).
- HTTPS for the Patroni REST API is disabled by default and controlled by [**`patroni_ssl_enabled`**](/docs/pgsql/param#patroni_ssl_enabled).
- Nginx and the object-storage backend selected by the MINIO module enable HTTPS by default; etcd uses TLS for client and peer traffic.

HBA `auth: ssl` requires an encrypted connection only. Clients should also use `sslmode=verify-full` with a trusted CA to verify the database server; see [**Encrypted Communication**](/docs/concept/sec/ca#server-identity-verification).

Grafana, VictoriaMetrics, and other components may listen on node ports, but the default firewall does not expose them directly to public networks. Prefer Nginx for external access, and restrict management pages by source address and identity.


----------------

## Authentication and Access Control

- Use [**HBA**](/docs/concept/sec/auth) to define the user, database, source address, and authentication method. Avoid broad `world` rules.
- Use `auth: cert` for privileged remote users, with a process for delivering and revoking client certificates.
- Assign application privileges through [**built-in roles**](/docs/concept/sec/ac#role-system); do not grant superuser to ordinary application accounts.
- Set `revokeconn: true` for multi-tenant shared clusters, and inspect effective database ACLs.
- Create objects through the declared database owner or a controlled administration role so default privileges apply.
- To isolate offline queries, set `role: offline` explicitly on the HBA rule for `dbrole_offline`.

After changing HBA, users, or roles, compare both the inventory and the effective database state.


----------------

## Integrity

Pigsty enables page checksums by default to detect page damage after write. Checksums do not detect every memory error, logical error, or incorrect application write.

The [**CRIT template**](/docs/pgsql/template/crit) enables Patroni strict synchronous mode and more detailed connection logging. The synchronous mode targets preservation of acknowledged transactions, but depends on `synchronous_commit`, synchronous-replica state, and failover conditions. Writes block when no synchronous replica is available.

CRIT configures watchdog as `automatic`; it activates only when the system has a usable watchdog device. Decide whether `required` is appropriate according to hardware and availability requirements.


----------------

## Availability

- Critical clusters should normally have at least three instances across independent failure domains.
- Connect through HAProxy, a VIP, or DNS service name instead of binding clients to a fixed primary address.
- Use an odd number of etcd nodes across independent failure domains.
- Remove single points of failure in INFRA, DNS, monitoring, and software repositories according to availability requirements.
- When using [**`pg_rpo`**](/docs/pgsql/param#pg_rpo) and [**`pg_rto`**](/docs/pgsql/param#pg_rto), understand their configuration semantics and validate objectives through exercises.

Replicas handle only some node failures; they do not replace backups.


----------------

## Backup and Recovery

- The local pgBackRest repository is not encrypted by default and shares a failure domain with the database host.
- The `pgbackrest_method: minio` object-storage repository uses AES-256-CBC by default, but `cipher_pass: pgBackRest` is public and must be replaced.
- `pgBR.${pg_cluster}` in `ha/safe` is also an example and must not be used as the final key.
- Store important backups in an independent failure domain, and evaluate object locking, versioning, or offline copies.
- Exercise full restore and PITR regularly to validate WAL, keys, recovery time, and application consistency.

See [**Data Security**](/docs/concept/sec/data) and [**Backup and Recovery**](/docs/concept/pitr/) for details.


----------------

## Audit and Response

The default OLTP template logs DDL, slow queries, and PostgreSQL 18 connection-authorization events. CRIT also logs connection and disconnection events.

`pgaudit` must be installed, preloaded, and configured with an audit policy. Installing the package alone does not produce SQL audit logs. When Vector and VictoriaLogs are enabled, adjust log retention, access, and archive policy to requirements.

Metrics, logs, and alerts are incident inputs only. Production also needs alert classification, on-call ownership, incident determination, response, evidence collection, and post-incident review.


----------------

## Host and Software Supply Chain

- Move SELinux from the default `permissive` to `enforcing` after compatibility validation.
- Disable unnecessary SSH password authentication and remote root login; consider a bastion host or multi-factor authentication.
- Review sudo scope for the administration and database OS users.
- Keep supported Pigsty and upstream component versions current.
- Verify the software-repository GPG key fingerprint and enable per-package signature verification where required.

See [**Compliance: Supply Chain and Vulnerability Response**](/docs/concept/sec/compliance#supply-chain-and-vulnerability-response).
