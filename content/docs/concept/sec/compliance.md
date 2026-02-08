---
title: Compliance Checklist
weight: 236
description: Map Pigsty security capabilities and evidence preparation using SOC2 and MLPS Level 3.
icon: fa-solid fa-clipboard-check
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Compliance is not a switch, but a combination of **configuration + process + evidence**:

- **Configuration**: are security capabilities enabled (HBA/TLS/audit/backup)?
- **Process**: access management, change control, backup drills
- **Evidence**: logs, config snapshots, backup reports, monitoring alerts

This page uses SOC2 and MLPS Level 3 as entry points to map Pigsty's security capabilities and compliance evidence.


---------------------

## Default Credentials Checklist (Must Change)

From source defaults:

| Component | Default Username | Default Password |
|---|---|---|
| PostgreSQL Admin | `dbuser_dba` | `DBUser.DBA` |
| PostgreSQL Monitor | `dbuser_monitor` | `DBUser.Monitor` |
| PostgreSQL Replication | `replicator` | `DBUser.Replicator` |
| Patroni API | `postgres` | `Patroni.API` |
| HAProxy Admin | `admin` | `pigsty` |
| Grafana Admin | `admin` | `pigsty` |
| MinIO Root | `minioadmin` | `S3User.MinIO` |
| etcd Root | `root` | `Etcd.Root` |
{.full-width}

Must change all defaults in production.


---------------------

## Evidence Preparation (Recommended)

| Evidence Type | Description | Pigsty Support |
|---|---|---|
| Config snapshots | HBA, roles, TLS, backup policy | `pigsty.yml` / inventory config |
| Access control | roles and privileges | `pg_default_roles` / `pg_default_privileges` |
| Connection audit | connect/disconnect/DDL | `log_connections` / `log_statement` |
| Backup reports | full backup and restore records | pgBackRest logs and jobs |
| Monitoring alerts | abnormal events | Prometheus + Grafana |
| Certificate management | CA/cert distribution records | `files/pki/` / `/etc/pki/ca.crt` |
{.full-width}


---------------------

## SOC2 Perspective (Example Mapping)

SOC2 focuses on **security, availability, confidentiality**. Below is a conceptual mapping of common controls:

| Control (SOC2) | Problem | Pigsty Capability | Process Needed |
|---|---|---|---|
| CC6 Logical access control | Unauthorized access | HBA + RBAC + default privileges | Access approval and periodic audit |
| CC6 Auth strength | Weak/reused passwords | SCRAM + `passwordcheck` | Password rotation policy |
| CC6 Transport encryption | Plaintext transport | TLS/CA, `ssl`/`cert` | Enforced TLS policy |
| CC7 Monitoring | Incidents unnoticed | Prometheus/Grafana | Alert handling process |
| CC7 Audit trail | No accountability | connection/DDL/slow query logs, `pgaudit` | Log retention and review |
| CC9 Business continuity | Data not recoverable | pgBackRest + PITR | Regular recovery drills |
{.full-width}

> This is a conceptual mapping. SOC2 requires organizational policies and audit evidence.


---------------------

## MLPS Level 3 (GB/T 22239-2019) Mapping

MLPS Level 3 focuses on identity, access control, audit, data security, communication security, host security, and network boundary. Below is a mapping of key controls:

| Control | Problem | Pigsty Capability | Config/Process Needed |
|---|---|---|---|
| Identity uniqueness | Shared accounts | Unique users + SCRAM | Account management process |
| Password complexity | Weak passwords | `passwordcheck`/`credcheck` | Enable extensions |
| Password rotation | Long-term risk | `expire_in` | Rotation policy |
| Access control | Privilege abuse | RBAC + default privileges | Access approvals |
| Least privilege | Privilege sprawl | Four-tier role model | Account tiering |
| Transport confidentiality | Plaintext leakage | TLS/CA, HBA `ssl/cert` | Enforce TLS |
| Security audit | No accountability | connection/DDL/slow query logs + `pgaudit` | Log retention |
| Data integrity | Silent corruption | `pg_checksum: true` | - |
| Backup and recovery | Data loss | pgBackRest + PITR | Drills and acceptance |
| Host security | Host compromise | SELinux/firewall | Hardening policy |
| Boundary security | Exposed entry | HAProxy/Nginx unified ingress | Network segmentation |
| Security management system | Lack of process | - | Policies and approvals |
{.full-width}

**Tip**: MLPS Level 3 is not only technical; it requires strong operations processes.


---------------------

## Compliance Hardening Snippets

```yaml
# Enforce SSL / certificates
pg_hba_rules:
  - { user: '+dbrole_readonly', db: all, addr: intra, auth: ssl }
  - { user: dbuser_dba, db: all, addr: world, auth: cert }

# Password strength
pg_libs: '$libdir/passwordcheck, pg_stat_statements, auto_explain'
pg_extensions: [ passwordcheck, credcheck ]

# PgBouncer / Patroni TLS
pgbouncer_sslmode: require
patroni_ssl_enabled: true

# OS security
node_firewall_mode: zone
node_selinux_mode: enforcing
```


---------------------

## Compliance Checklist

### Before Deployment

- [ ] Network segmentation and trusted CIDRs defined
- [ ] Certificate policy decided (self-signed / enterprise CA)
- [ ] Account and privilege tiering plan confirmed

### After Deployment (Must)

- [ ] Change all default passwords
- [ ] Verify HBA rules meet expectations
- [ ] Enable and verify TLS
- [ ] Configure audit and log retention policies

### Periodic Maintenance

- [ ] Permission audit and account cleanup
- [ ] Certificate rotation
- [ ] Backup and recovery drills


---------------------

## Next

- 🔑 [**Authentication**](/docs/concept/sec/auth): HBA and password policy
- 🔒 [**Data Security**](/docs/concept/sec/data): backup and encryption
- ♾️ [**High Availability**](/docs/concept/ha/): business continuity
