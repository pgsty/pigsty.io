---
title: Security and Compliance
linkTitle: Security
weight: 230
description: Authentication, authorization, encryption, audit, and compliance baseline for database and infrastructure security.
icon: fa-solid fa-shield-halved
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Pigsty's security goals are the **CIA triad**:

- **Confidentiality**: prevent unauthorized access and leakage
- **Integrity**: prevent tampering or silent corruption
- **Availability**: prevent outages from failures

Pigsty's security philosophy:

- **Secure by default**: out-of-the-box baseline with minimal config and broad coverage.
- **Defense in depth**: layered protections so one breach does not collapse the system.
- **Least privilege**: roles and privileges enforce least-privilege by default.
- **Compliance-ready**: security capabilities plus process can meet audits.


----------------

## Default Security Baseline (What Problems It Solves)

| Security Option | Default | Problems Solved |
|:---|:---|:---|
| Password encryption | `pg_pwd_enc: scram-sha-256` | Prevent weak hashes and plaintext leakage |
| Data checksums | `pg_checksum: true` | Detect silent data corruption |
| HBA layering | Admin from internet must use `ssl` | Prevent plaintext access from the public network |
| Local CA | `ca_create: true` | Unified certificate trust chain |
| Backup & recovery | `pgbackrest_enabled: true` | Prevent data loss from mistakes |
| Nginx HTTPS | `nginx_sslmode: enable` | Prevent plaintext web ingress |
| MinIO HTTPS | `minio_https: true` | Prevent backup traffic snooping |
| OS baseline | SELinux `permissive` | Baseline for enforcing mode |
{.full-width}

> Defaults prioritize usability and scalability. Production should be hardened to meet compliance needs.


----------------

## Hardening Roadmap

Pigsty provides the security hardening template `conf/ha/safe.yml`, which upgrades the baseline to a higher security level:

- Enforce SSL and certificate auth
- Password strength and expiration policies
- Connection and disconnection logs
- Firewall and SELinux hardening


----------------

## This Chapter

| Section | Description | Core Question |
|:---|:---|:---|
| [**Defense in Depth**](/docs/concept/sec/level) | Seven-layer security model and baseline | How does the security system land end to end? |
| [**Authentication**](/docs/concept/sec/auth) | HBA rules, password policy, certificate auth | How do we verify identities? |
| [**Access Control**](/docs/concept/sec/ac) | Role system, permission model, database isolation | How do we control privileges? |
| [**Encrypted Communication**](/docs/concept/sec/ca) | TLS, local CA, certificate management | How do we protect transport and certs? |
| [**Data Security**](/docs/concept/sec/data) | Checksums, backup, encryption, recovery | How do we keep data intact and recoverable? |
| [**Compliance Checklist**](/docs/concept/sec/compliance) | MLPS Level 3 and SOC2 mapping | How do we meet compliance requirements? |
{.full-width}


----------------

## Related Topics

- ♾️ [**High Availability**](/docs/concept/ha/): business continuity
- ⏰ [**Backup & Recovery**](/docs/concept/pitr/): PITR and disaster recovery
- 📊 [**Observability**](/docs/concept/monitor/): security event monitoring
