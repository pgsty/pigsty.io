---
title: Security and Compliance
linkTitle: Security
weight: 230
description: Pigsty manages authentication, authorization, encryption, audit, backup, and recovery as code, with a clear path from the default baseline to production hardening.
icon: fa-solid fa-shield-halved
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Databases usually store the most valuable and sensitive data in an information system. Attacks and failures can therefore have severe consequences. Security requires multiple controls: who can connect, what they can do, and whether traffic is protected. It must also record operations and support recovery of damaged, lost, or deleted data.

Pigsty provides a **default security baseline** through [**declarative configuration**](/docs/concept/iac/). Declare [**HBA rules**](/docs/concept/sec/auth), [**roles and privileges**](/docs/concept/sec/ac), certificates, encryption, backups, and audit policies as [**parameters**](/docs/concept/iac/parameter) in the [**inventory**](/docs/concept/iac/inventory). Idempotent playbooks render and apply these settings.

**Security as Code** supports policy versioning, review, and traceability. One inventory provides a consistent baseline across instances. To audit database access, start with the YAML declaration. Then verify generated HBA rules and database grants against the running system.


----------------

## Security as Code

Manual operations can scatter security settings across `pg_hba.conf`, DBA-issued `GRANT` statements, and temporary incident firewall rules. Documentation can then diverge from the running configuration. This makes each instance's effective rules difficult to determine.

Pigsty stores security policy in the cluster definition alongside other properties.

```yaml
pg-meta:
  hosts: { 10.10.10.10: { pg_seq: 1, pg_role: primary } }
  vars:
    pg_cluster: pg-meta
    pg_users:                     # Who may log in: account, role, and expiration
      - { name: dbuser_app ,password: '<unique-random-password>' ,roles: [dbrole_readwrite] ,expire_in: 365 }
    pg_databases:                 # Databases and their isolation policy
      - { name: app ,owner: dbuser_app ,revokeconn: true }
    pg_hba_rules:                 # Who may connect, from where, and how
      - { user: dbuser_app ,db: app ,addr: 10.1.0.0/16 ,auth: ssl ,order: 50 ,title: 'app access via ssl' }
```

Declare users, privileges, and HBA rules. Playbooks apply them idempotently to each instance, including new instances. Git history records configuration changes. Manual `GRANT` statements, runtime parameter changes, and node file edits can still cause drift. In production, regularly compare declared and actual state.


----------------

## Default Security Baseline

The default configuration enables these controls to reduce omissions:

| Capability | Default Behavior | Related Parameter |
|:---|:---|:---|
| Password hashing | New or updated PostgreSQL passwords use SCRAM-SHA-256 | [`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc) |
| Data checksums | Page checksums are enabled during cluster initialization to detect silent corruption | [`pg_checksum`](/docs/pgsql/param#pg_checksum) |
| Server-side TLS | PostgreSQL server certificates are installed and `ssl` is enabled, so TLS connections are accepted | — |
| Local CA | A self-signed CA is created automatically for managed component certificates | [`ca_create`](/docs/infra/param#ca_create) |
| [**etcd**](/docs/concept/model/etcd) encryption and authentication | TLS for client and peer traffic, plus RBAC password authentication | [`etcd_root_password`](/docs/etcd/param#etcd_root_password) |
| [**MINIO object storage**](/docs/concept/model/minio) HTTPS | Silo backup traffic uses HTTPS by default | [`minio_https`](/docs/minio/param#minio_https) |
| [**Nginx**](/docs/concept/arch/infra#nginx) HTTPS | Web ingress listens on both ports 80 and 443 by default | [`nginx_sslmode`](/docs/infra/param#nginx_sslmode) |
| HBA rules | Layered access: local ident, intranet password authentication, and SSL required for public administrator access | [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules) |
| Roles and privileges | A four-tier role model and default privilege templates provide a least-privilege baseline | [`pg_default_roles`](/docs/pgsql/param#pg_default_roles) |
| Backup and recovery | [**pgBackRest**](/docs/concept/arch/pgsql#pgbackrest) is enabled by default, with two full backups retained in the local repository | [`pgbackrest_enabled`](/docs/pgsql/param#pgbackrest_enabled) |
| Firewall | Zone mode trusts intranet CIDRs and exposes only required ports to public networks | [`node_firewall_mode`](/docs/node/param#node_firewall_mode) |
| Restricted sudo | Sudo access for the database OS user is limited to the required command set | [`pg_dbsu_sudo`](/docs/pgsql/param#pg_dbsu_sudo) |
{.full-width}


----------------

## Hardening with Trade-offs

Defaults target a trusted intranet. Some controls need explicit enablement because of performance costs, compatibility limits, or required operator decisions:

- Examples contain **public default passwords** for quick starts and local tests. Before production, run `./configure -g` to randomize recognized credentials. Then check the pgBackRest passphrase, Silo users in `ha/safe`, and all custom values.
- The [**Patroni REST API**](/docs/concept/arch/pgsql#patroni) and [**PgBouncer**](/docs/concept/arch/pgsql#pgbouncer) disable TLS by default. Explicitly enable [`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled) and [`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode) with the issued certificates.
- **Password checks** ([**`passwordcheck`**](/ext/e/passwordcheck/)) and **auditing** ([**`pgaudit`**](/ext/e/pgaudit/)) are disabled by default. Confirm package availability, then configure preloading and policy.
- **SELinux** defaults to `permissive`. Remove the demo firewall exception for port `5432` in production.
- Local backups have **no encryption** by default. The remote `minio` preset enables AES-256 encryption. Change its default encryption passphrase.

The [**`ha/safe` template**](/docs/conf/safe) combines TLS, certificate authentication, password checks, and backup encryption. Use it with the consistency-first [**CRIT parameter template**](/docs/pgsql/template/crit) as a starting point. Review public credentials, audit extensions, and the failure model explicitly. See [**Security Model**](/docs/concept/sec/level#hardening-levels) for the full hardening path.


----------------

## This Chapter

| Section | Question Answered |
|:---|:---|
| [**Security Model**](/docs/concept/sec/level) | Where is the root of trust? How many defensive layers exist? How should the baseline be hardened? |
| [**Authentication**](/docs/concept/sec/auth) | Who can connect? How is identity proven? How are HBA rules declared and applied? |
| [**Access Control**](/docs/concept/sec/ac) | What can a connected user do? How does least privilege become the default? |
| [**Encrypted Communication**](/docs/concept/sec/ca) | How is traffic encrypted? Who issues, distributes, and rotates certificates? |
| [**Data Security**](/docs/concept/sec/data) | How is data kept intact, recoverable, confidential, and traceable? |
| [**Compliance**](/docs/concept/sec/compliance) | How do security capabilities map to MLPS and SOC 2 controls? |
{.full-width}


----------------

## Related Topics

These pages provide operational security guidance:

- 🔰 [**Security Recommendations**](/docs/setup/security): minimum hardening for a quick single-node deployment
- 🛡️ [**Security Considerations**](/docs/deploy/security): production hardening checklist
- 📄 [**`ha/safe` Template**](/docs/conf/safe): complete hardening configuration reference
- 🔑 [**HBA Rules**](/docs/pgsql/config/hba): detailed PGSQL HBA configuration
- 👤 [**Access Control**](/docs/pgsql/config/acl): role and privilege parameter reference
- ♾️ [**High Availability**](/docs/concept/ha/): business continuity
- ⏰ [**Backup and Recovery**](/docs/concept/pitr/): PITR and disaster recovery
