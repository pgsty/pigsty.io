# Security Considerations

> Credential, network, authentication, encryption, data protection, and audit checks for production Pigsty deployments.

---

LLMS index: [llms.txt](/llms.txt)

---

Pigsty defaults support development, testing, and demonstrations on a trusted intranet.
For production, configure credentials, network boundaries, authentication, certificates, backups, and audit controls for your threat model.

[Security and Compliance](/docs/concept/sec/) describes the mechanisms and their limits.
Use the [Launch Hardening Checklist](/docs/concept/sec/compliance#launch-hardening-checklist) for executable checks.
The [`ha/safe` template](/docs/conf/safe) is a hardening example.
Review each control for your environment before you use it.

## Confidentiality

### Critical Files

Protect these assets:

- `pigsty.yml` and other inventories. They normally contain system and application credentials.
- `files/pki/ca/ca.key`. This key can issue certificates that the deployment trusts.
- The administration account's SSH private key. By default, this account can use sudo on managed nodes.
- Private keys for client certificates and backup encryption.
- Generated `/pg/tmp/pg-user-*.sql` files.

Restrict access to the administration node and configuration repository.
Do not commit complete inventories or private keys to public repositories.
Use controlled channels to back up the CA private key and recovery configuration.

### Passwords

Replace every public default credential before production deployment.
Start with this command:

```bash
./configure -g
```

This option does not replace the pgBackRest `cipher_pass` or user-defined credentials.
It also leaves some Silo example credentials in `ha/safe` unchanged.
Examine the result against the [Default Credentials Checklist](/docs/concept/sec/compliance#default-credentials-checklist).

PostgreSQL uses SCRAM-SHA-256 for new or updated passwords by default.
To enforce password complexity, preload `passwordcheck` through [`pg_libs`](/docs/pgsql/param#pg_libs), or configure `credcheck`.
Set the account lifetime with `expire_in` or `expire_at`.

Before credential rotation, prepare a rollback plan.
Update the database users, PgBouncer user list, component configuration, and client connection information during rotation.

## Network Boundaries

### IP Addresses

PostgreSQL listens on `0.0.0.0` by default.
To restrict its listen addresses, set these parameters:

```yaml
pg_listen: '${ip},${vip},${lo}'
```

The listen address supplies only part of the network boundary.
Also review these controls:

- Cloud security groups or upstream firewalls.
- [`node_firewall_public_port`](/docs/node/param#node_firewall_public_port).
- The trusted CIDRs in [`node_firewall_intranet`](/docs/node/param#node_firewall_intranet). Make sure that these ranges are not too broad.
- PostgreSQL and PgBouncer [HBA rules](/docs/concept/sec/auth).
- The Patroni REST API allowlist.

The demonstration `pigsty.yml` also exposes `5432` to public networks.
Remove that exception for production.
If applications require direct database access, permit only their specific CIDRs.

### Network Traffic

- PostgreSQL enables server-side TLS by default. The default intranet HBA rules do not require TLS.
- PgBouncer TLS is disabled by default. [`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode) controls this setting.
- HTTPS for the Patroni REST API is disabled by default. [`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled) controls this setting.
- Nginx and the object-storage backend selected by MINIO enable HTTPS by default.
  Etcd uses TLS for client and peer traffic.

HBA `auth: ssl` requires encryption but does not verify the server identity for the client.
Clients should use `sslmode=verify-full` with a trusted CA to verify the database server.
See [Encrypted Communication](/docs/concept/sec/ca#server-identity-verification).

Grafana, VictoriaMetrics, and other components can listen on node ports.
The default firewall does not expose these ports directly to public networks.
Prefer Nginx for external access.
Restrict management pages by source address and identity.

## Authentication and Access Control

- Use [HBA](/docs/concept/sec/auth) to define the user, database, source address, and authentication method.
  Avoid broad `world` rules.
- Use `auth: cert` for privileged remote users.
  Establish a process to deliver and revoke client certificates.
- Assign application privileges through [built-in roles](/docs/concept/sec/ac#role-system).
  Do not grant superuser privileges to ordinary application accounts.
- Set `revokeconn: true` for shared multi-tenant clusters.
  Examine the effective database ACLs.
- Create objects through the declared database owner or a controlled administration role so default privileges apply.
- To isolate offline queries, explicitly set `role: offline` on the HBA rule for `dbrole_offline`.

After changes to HBA, users, or roles, compare the inventory with the effective database state.

## Integrity

Pigsty enables page checksums by default to detect damage after page writes.
These checksums do not detect every memory error, logical error, or incorrect application write.

The [CRIT template](/docs/pgsql/template/crit) enables Patroni strict synchronous mode and more detailed connection logs.
This mode aims to preserve acknowledged transactions.
The result depends on `synchronous_commit`, the state of synchronous replicas, and the failover conditions.
Writes block when no synchronous replica is available.

CRIT sets the watchdog mode to `automatic`.
The watchdog activates only if the system has a usable watchdog device.
Decide whether `required` is appropriate for your hardware and availability requirements.

## Availability

- Critical clusters should normally have at least three instances in independent failure domains.
- Connect through HAProxy, a VIP, or a DNS service name instead of a fixed primary address.
- Use an odd number of etcd nodes in independent failure domains.
- Remove single points of failure in INFRA, DNS, monitoring, and software repositories where your availability requirements demand it.
- Understand the configuration semantics of [`pg_rpo`](/docs/pgsql/param#pg_rpo) and [`pg_rto`](/docs/pgsql/param#pg_rto).
  Test the recovery objectives through exercises.

Replicas handle some node failures.
They do not replace backups.

## Backup and Recovery

- The local pgBackRest repository has no encryption by default.
  It shares a failure domain with the database host.
- The `pgbackrest_method: minio` repository uses AES-256-CBC by default.
  Replace the public default `cipher_pass: pgBackRest`.
- The `pgBR.${pg_cluster}` value in `ha/safe` is also an example.
  Do not use it as the final encryption key.
- Store important backups in an independent failure domain.
  Evaluate object locking, versioning, or offline copies for additional protection.
- Test full restores and PITR regularly.
  Verify the WAL, keys, recovery time, and application consistency.

See [Data Security](/docs/concept/sec/data) and [Backup and Recovery](/docs/concept/pitr/).

## Audit and Response

The default OLTP template logs DDL, slow queries, and PostgreSQL 18 connection-authorization events.
CRIT also logs connection and disconnection events.

Install and preload `pgaudit`, then configure an audit policy.
The package alone does not produce SQL audit logs.
If you enable Vector and VictoriaLogs, set log retention, access, and archive policies for your requirements.

Metrics, logs, and alerts supply information for incident response.
Production also requires alert classification, on-call ownership, incident determination, response, evidence collection, and a review after each incident.

## Host and Software Supply Chain

- After compatibility validation, change SELinux from the default `permissive` mode to `enforcing`.
- Disable unnecessary SSH password authentication and remote root login.
  Consider a bastion host or multi-factor authentication.
- Review the sudo permissions of the administration and database operating system accounts.
- Keep Pigsty and upstream components on current, supported versions.
- Verify the software repository GPG key fingerprint.
  Enable signature verification for each package where required.

See [Compliance: Supply Chain and Vulnerability Response](/docs/concept/sec/compliance#supply-chain-and-vulnerability-response).
