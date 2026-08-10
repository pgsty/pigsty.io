---
title: Security and Compliance
linkTitle: Security
weight: 230
description: Pigsty manages authentication, authorization, encryption, audit, backup, and recovery as code, with a clear path from the default baseline to production hardening.
icon: fa-solid fa-shield-halved
module: [PIGSTY, PGSQL]
categories: [Concept]
---

The database is usually the most sensitive component in an information system: it stores the most valuable data, so attacks and failures can have the most serious consequences.
Database security is not a feature that can be enabled with one switch. It is the combined answer to a series of questions: Who can connect? What can they do after connecting? Can traffic be intercepted? Are operations recorded? Can damaged, lost, or deleted data be recovered?

Pigsty turns these answers into an **out-of-the-box security baseline** and manages it through [**declarative configuration**](/docs/concept/iac/):
[**HBA rules**](/docs/concept/sec/auth), [**roles and privileges**](/docs/concept/sec/ac), certificates, encryption, backups, and audit policies are declared as [**parameters**](/docs/concept/iac/parameter) in the [**inventory**](/docs/concept/iac/inventory), then rendered and applied by idempotent playbooks.

This **Security as Code** approach is itself an important security practice. Policies can be versioned, reviewed, and traced, while one inventory provides a consistent baseline across many instances.
When an auditor asks who can access a database, you can start from a readable YAML declaration, then verify the generated HBA rules and database grants against the running system.


----------------

## Security as Code

In traditional operations, security settings are often scattered across the environment: `pg_hba.conf` on one server, a `GRANT` statement executed manually by a DBA, or a firewall rule opened temporarily during an incident.
Over time, documentation and actual state can drift, making it difficult to determine which rule set each instance is using.

Pigsty takes a different approach: security policy is part of the cluster definition and lives alongside other cluster properties.

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

Users, privileges, and HBA rules are described declaratively, and playbooks apply them idempotently to every cluster instance.
New instances inherit the same policy, and Git history records security configuration changes. Manual `GRANT` statements, runtime parameter changes, and edits to node files can still cause drift, so production environments should compare declared and actual state regularly.


----------------

## Default Security Baseline

Reasonable defaults reduce omissions. The following capabilities are enabled in the default Pigsty configuration:

| Capability | Default Behavior | Related Parameter |
|:---|:---|:---|
| Password hashing | New or updated PostgreSQL passwords use SCRAM-SHA-256 | [`pg_pwd_enc`](/docs/pgsql/param#pg_pwd_enc) |
| Data checksums | Page checksums are enabled during cluster initialization to detect silent corruption | [`pg_checksum`](/docs/pgsql/param#pg_checksum) |
| Server-side TLS | PostgreSQL server certificates are installed and `ssl` is enabled, so TLS connections are accepted | — |
| Local CA | A self-signed CA is created automatically for managed component certificates | [`ca_create`](/docs/infra/param#ca_create) |
| [**etcd**](/docs/concept/model/etcd) encryption and authentication | TLS for client and peer traffic, plus RBAC password authentication | [`etcd_root_password`](/docs/etcd/param#etcd_root_password) |
| [**MINIO object storage**](/docs/concept/model/minio) HTTPS | Backup traffic to Silo, MinIO, or RustFS uses HTTPS by default | [`minio_https`](/docs/minio/param#minio_https) |
| [**Nginx**](/docs/concept/arch/infra#nginx) HTTPS | Web ingress listens on both ports 80 and 443 by default | [`nginx_sslmode`](/docs/infra/param#nginx_sslmode) |
| HBA rules | Layered access: local ident, intranet password authentication, and SSL required for public administrator access | [`pg_default_hba_rules`](/docs/pgsql/param#pg_default_hba_rules) |
| Roles and privileges | A four-tier role model and default privilege templates provide a least-privilege baseline | [`pg_default_roles`](/docs/pgsql/param#pg_default_roles) |
| Backup and recovery | [**pgBackRest**](/docs/concept/arch/pgsql#pgbackrest) is enabled by default, with two full backups retained in the local repository | [`pgbackrest_enabled`](/docs/pgsql/param#pgbackrest_enabled) |
| Firewall | Zone mode trusts intranet CIDRs and exposes only required ports to public networks | [`node_firewall_mode`](/docs/node/param#node_firewall_mode) |
| Restricted sudo | Sudo access for the database OS user is limited to the required command set | [`pg_dbsu_sudo`](/docs/pgsql/param#pg_dbsu_sudo) |
{.full-width}


----------------

## Hardening with Trade-offs

The default configuration targets deployments on a trusted intranet. Some controls require explicit enablement because they impose performance or compatibility costs, or require decisions from the operator:

- Default configurations and examples contain **publicly documented default passwords** for quick starts and local testing. Before production deployment, use `./configure -g` to randomize the credentials it recognizes, then check the pgBackRest encryption passphrase, MinIO users in `ha/safe`, and all custom values.
- TLS is disabled by default for the [**Patroni REST API**](/docs/concept/arch/pgsql#patroni) and [**PgBouncer**](/docs/concept/arch/pgsql#pgbouncer) ([`patroni_ssl_enabled`](/docs/pgsql/param#patroni_ssl_enabled), [`pgbouncer_sslmode`](/docs/pgsql/param#pgbouncer_sslmode)); enable it explicitly with the certificates already issued.
- **Password strength checks** ([**`passwordcheck`**](/ext/e/passwordcheck/)) and the **audit extension** ([**`pgaudit`**](/ext/e/pgaudit/)) are disabled by default. Confirm package availability, then configure preloading and policy before use.
- **SELinux** defaults to `permissive`. Demo configurations also expose port `5432` through the firewall; remove that exception in production.
- The local backup repository is **not encrypted** by default. The MinIO backup repository uses AES-256 encryption by default, but its default encryption passphrase must be changed.

The [**`ha/safe` hardening template**](/docs/conf/safe) combines TLS, certificate authentication, password checks, and backup encryption.
Together with the consistency-first [**CRIT parameter template**](/docs/pgsql/template/crit), it provides a practical starting point. Public credentials, audit extensions, and the failure model still require explicit review.
See the [**Security Model**](/docs/concept/sec/level#hardening-levels) for the complete upgrade path.


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

Beyond the conceptual model, these pages provide operational security guidance:

- 🔰 [**Security Recommendations**](/docs/setup/security): minimum hardening for a quick single-node deployment
- 🛡️ [**Security Considerations**](/docs/deploy/security): production hardening checklist
- 📄 [**`ha/safe` Template**](/docs/conf/safe): complete hardening configuration reference
- 🔑 [**HBA Rules**](/docs/pgsql/config/hba): detailed PGSQL HBA configuration
- 👤 [**Access Control**](/docs/pgsql/config/acl): role and privilege parameter reference
- ♾️ [**High Availability**](/docs/concept/ha/): business continuity
- ⏰ [**Backup and Recovery**](/docs/concept/pitr/): PITR and disaster recovery
