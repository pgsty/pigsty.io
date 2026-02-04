---
title: Seven-Layer Security Model
linkTitle: Security Models
weight: 231
description: Pigsty defense-in-depth model with layered security baselines from physical to user.
icon: fa-solid fa-layer-group
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Security is not a wall, but a city. Pigsty adopts a **defense-in-depth** strategy and builds multiple protections across seven layers. Even if one layer is breached, other layers still protect the system.

This layered approach addresses three core risks:

- **Perimeter breach**: reduce the chance that one breach compromises everything.
- **Internal abuse**: even if an internal account is compromised, least privilege limits damage.
- **Unpredictable failures**: hardware, software, and human errors all get multi-layer fallbacks.


--------

## Overview

{{< infographic >}}
```
infographic sequence-pyramid-simple
data
  title Seven-Layer Security Model
  desc Pigsty defense-in-depth: multi-layer protection from physical to user
  items
    - label Physical and Media
      value 100
      desc Data checksums · media theft protection
      time L1
      icon mingcute/building-4-fill
      illus server-cluster
    - label Network Security
      value 95
      desc Firewall · listen hardening · TLS
      time L2
      icon mingcute/earth-2-fill
      illus secure-server
    - label Perimeter Security
      value 90
      desc HAProxy · Nginx · unified ingress
      time L3
      icon mingcute/shield-fill
      illus firewall-protection
    - label Host Security
      value 85
      desc SELinux · least privilege · system hardening
      time L4
      icon mingcute/computer-fill
      illus server-status
    - label Application Security
      value 80
      desc HBA · SCRAM · password policy
      time L5
      icon mingcute/safe-box-fill
      illus database-security
    - label Data Security
      value 75
      desc Backup encryption · PITR · audit
      time L6
      icon mingcute/lock-fill
      illus data-encryption
    - label User Security
      value 70
      desc RBAC · default privileges · isolation
      time L7
      icon mingcute/user-security-fill
      illus user-flow
theme light
  palette pigsty
```
{{< /infographic >}}


--------

## L1 Physical and Media Security

> When the physical layer falls, the only defense is the data itself.

**Problems solved**

- Silent data corruption from hardware faults
- Data leakage from stolen media

**Pigsty support**

- **Data checksums**: default `pg_checksum: true`, detects corruption from bad blocks/memory errors.
- **Optional transparent encryption**: `pg_tde` and similar extensions encrypt data at rest.


--------

## L2 Network Security

> Control who can reach services to reduce attack surface.

**Problems solved**

- Unauthorized network access
- Plaintext traffic sniffing/tampering

**Pigsty support**

- **Firewall zones**: `node_firewall_mode` can enable `zone`, trust intranet, restrict public.
- **Listen hardening**: `pg_listen` limits bind addresses to avoid full exposure.
- **TLS**: HBA supports `ssl`/`cert` for encryption and identity checks.


--------

## L3 Perimeter Security

> A unified ingress is the basis for audit, control, and blocking.

**Problems solved**

- Multiple entry points are hard to manage
- External systems lack a unified hardening point

**Pigsty support**

- **HAProxy ingress**: unified DB traffic entry for blocking/limiting/failover.
- **Nginx gateway**: unified HTTPS ingress for infrastructure services (`nginx_sslmode`).
- **Centralized credentials**: HAProxy and Grafana admin passwords are declared in config.


--------

## L4 Host Security

> The foundation of DB security: least privilege, isolation, and hardening.

**Problems solved**

- Host compromise leads to total loss
- Admin privileges spread too widely

**Pigsty support**

- **SELinux mode**: `node_selinux_mode` can switch to `enforcing`.
- **Least-privilege admin**: `node_admin_sudo` supports `limit` to restrict sudo commands.
- **Sensitive file permissions**: CA private key directory 0700, private key files 0600.


--------

## L5 Application Security

> Authentication is the first gate for DB security.

**Problems solved**

- Weak passwords or plaintext auth leak accounts
- Misconfigured rules allow privilege escalation

**Pigsty support**

- **HBA layering**: rules by source and role; internet admin must use `ssl`.
- **SCRAM password hash**: `pg_pwd_enc: scram-sha-256` by default.
- **Password strength checks**: `passwordcheck/credcheck` optional.
- **Certificate auth**: `auth: cert` supports client certs.


--------

## L6 Data Security

> Ensure data is available, recoverable, and accountable.

**Problems solved**

- Human errors and logic mistakes
- Data tampering or deletion after intrusion

**Pigsty support**

- **pgBackRest backup**: enabled by default, local and MinIO repos.
- **Backup encryption**: MinIO supports AES-256-CBC (`cipher_type`).
- **PITR recovery**: restore to any time point with WAL archive.
- **Audit logs**: templates enable DDL/connection/slow query logs, optional `pgaudit`.


--------

## L7 User Security

> Least privilege is not a slogan, it is default behavior.

**Problems solved**

- Business accounts have excessive permissions
- Databases can "pierce" each other

**Pigsty support**

- **Four-tier RBAC**: `dbrole_readonly/readwrite/admin/offline`.
- **Default privileges**: objects automatically get correct grants.
- **Database isolation**: `revokeconn: true` blocks cross-DB access.
- **Public privilege tightening**: revoke `CREATE` on `public` schema.


--------

## Security Hardening Path

Pigsty provides a security hardening template: `conf/ha/safe.yml`. It bundles common hardening items:

- Enforce SSL and certificate auth
- Password strength and expiration policies
- Connection and disconnection logs
- Firewall and SELinux hardening

This path is a quick upgrade from default to compliance-ready.


--------

## Next

- 🔑 [**Authentication**](../auth/): HBA rules and password policy
- 👤 [**Access Control**](../ac/): role and privilege model
- 🔐 [**Encrypted Communication**](../ca/): TLS and certificate management
- 🔒 [**Data Security**](../data/): backup and encryption
- ✅ [**Compliance Checklist**](../compliance/): MLPS and SOC2 mapping
