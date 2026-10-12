---
title: Compliance
weight: 236
description: Compliance combines configuration, process, and evidence. This page covers launch hardening, MLPS and SOC 2 control mappings, supply-chain integrity, and vulnerability response.
icon: fa-solid fa-clipboard-check
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Compliance requires continuous evidence of three elements:

- **Configuration:** Security controls must be enabled. Pigsty directly provides configuration.
- **Process:** The organization must establish access approval, change management, recovery exercises, and related procedures.
- **Evidence:** Records must show that configuration and processes remain effective. The [**inventory**](/docs/concept/iac/inventory), runtime logs, and [**monitoring system**](/docs/concept/monitor) provide part of this evidence.

This page provides a pre-launch checklist and maps Pigsty capabilities to common compliance frameworks. These mappings support architecture and gap analysis. They are not an MLPS assessment, SOC 2 audit opinion, or legal advice.


---------------------

<span id="default-credentials"></span>

## Default Credentials Checklist

Default credentials are public in documentation and source code. Use them only for demonstrations and local development. **Change every applicable default before production or network-exposed deployment:**

| Scope | Example Default | `configure -g` |
|:---|:---|:---:|
| Grafana administrator and viewer | `pigsty`, `DBUser.Viewer` | Yes |
| HAProxy administration interface | `pigsty` | Yes |
| PostgreSQL administration, monitoring, and replication users | `DBUser.DBA`, `DBUser.Monitor`, `DBUser.Replicator` | Yes |
| Patroni REST API | `Patroni.API` | Yes |
| etcd root | `Etcd.Root` | Yes |
| MINIO module object-storage root | `S3User.MinIO` | Yes |
| Object-storage backup and example application users | `S3User.Backup`, `S3User.Meta`, `S3User.Data` | Yes |
| Example database users | `DBUser.Meta`, `DBUser.Supa`, `Vibe.Coding` | Yes |
| pgBackRest encryption passphrase | `cipher_pass: pgBackRest` | **No** |
| Silo users and `pgBR.${pg_cluster}` in `ha/safe` | Template example values | **No** |
| User-defined credentials | Custom values | **No** |
{.full-width}

Use `-g` to randomize built-in parameters and example strings recognized by the configuration wizard:

```bash
./configure -g     # Generate the inventory and randomize recognized default credentials
```

The wizard prints generated passwords to the terminal. Protect terminal history and automation logs as sensitive data. Then inspect the configuration. Replace pgBackRest `cipher_pass`, uncovered MINIO values in `ha/safe`, and all custom credentials.


---------------------

<span id="compliance-checklist"></span>
<span id="compliance-hardening-snippets"></span>

## Launch Hardening Checklist

<span id="before-deployment"></span>

**Before deployment:**

- [ ] Define the [**network boundary**](/docs/concept/sec/level#network-boundaries). Do not expose database ports publicly. Remove the demo firewall exception for `5432`.
- [ ] Select the built-in CA or enterprise PKI. See [**Using an Enterprise CA**](/docs/concept/sec/ca#using-an-enterprise-ca).
- [ ] Plan [**client verification**](/docs/concept/sec/ca#server-identity-verification). Set `sslmode=verify-full` and a trusted CA on database clients.
- [ ] Assign application accounts through the [**four-tier roles**](/docs/concept/sec/ac#role-system). Declare `expire_in`.
- [ ] Plan the [**backup repository**](/docs/concept/pitr/tradeoff), retention, encryption passphrase, and off-site copies.
- [ ] Decide whether to use [**`ha/safe`**](/docs/conf/safe) and the [**CRIT parameter template**](/docs/pgsql/template/crit).

<span id="after-deployment-must"></span>

**After deployment:**

- [ ] Confirm that all default credentials have changed. Include values covered by `configure -g` and uncovered backup, object storage, and custom credentials.
- [ ] Compare `/pg/data/pg_hba.conf` with the declared [**HBA policy**](/docs/concept/sec/auth) and intended access boundary.
- [ ] Query effective users, roles, [**default privileges**](/docs/concept/sec/ac#default-privileges), and database `CONNECT` grants. Compare them with the inventory.
- [ ] Run a full backup and [**recovery exercise**](/docs/concept/pitr/scenarios) to validate the backup path.
- [ ] Confirm log collection, monitoring alerts, and notification channels.

<span id="periodic-maintenance"></span>

**Periodically:**

- [ ] Audit privileges: compare `pg_users` declarations with effective grants, and remove expired or departed-user accounts
- [ ] Rotate credentials and certificates
- [ ] Exercise recovery and failover
- [ ] Track security updates for Pigsty and upstream components


---------------------

<span id="evidence-preparation-recommended"></span>

## Compliance Evidence

Use declarative configuration as a starting point for audit evidence. Retain runtime state to prove that the configuration was applied and remains effective.

| Evidence | Source |
|:---|:---|
| Security baseline and change history | The `pigsty.yml` inventory and Git history |
| Access-control matrix | `pg_default_roles`, `pg_users`, and `pg_hba_rules` declarations |
| Effective authentication policy | Rendered `pg_hba.conf` on each instance, compared with declarations to detect drift |
| Effective users and privileges | PostgreSQL catalogs, database ACLs, `\du+`, and `\ddp+` |
| Operation and connection logs | PostgreSQL DDL, slow-query, and connection logs retained in [**VictoriaLogs**](/docs/concept/arch/infra#victorialogs) |
| Backup records | [**pgBackRest**](/docs/concept/arch/pgsql#pgbackrest) information and monitoring dashboards |
| Security incidents and alerts | Monitoring alert history |
| Certificate inventory | `files/pki/` and deployed component certificates |
{.full-width}


---------------------

<span id="mlps-level-3-gbt-22239-2019-mapping"></span>

## MLPS Level 3 Mapping

This table maps database-related capabilities to the secure computing environment controls in GB/T 22239-2019 Level 3:

| Control | Pigsty Capability | Additional Requirement |
|:---|:---|:---|
| Unique identity | Independent accounts and SCRAM-SHA-256 password storage | Real-name account management process |
| Password complexity and rotation | `passwordcheck`, `credcheck`, and `expire_in` | Enable extensions and establish a rotation process |
| Login failure handling | Can be implemented with `credcheck` and related extensions | Enable and configure as required |
| Access control and least privilege | Four-tier roles, default privileges, and database isolation | Privilege approval workflow |
| Security audit | DDL, connection, and slow-query logs; `pgaudit`; centralized retention | CRIT or manual connection logging; required retention period |
| Communication confidentiality | Local CA and TLS; HBA-enforced `ssl` or `cert` | Enforce TLS, client `verify-full`, and certificate rotation |
| Data integrity | Page checksums by default and strict synchronous replication with CRIT | Storage protection, defined failure model, and exercises |
| Data confidentiality | AES-encrypted backup plus TDE and column-encryption options | Enable as required |
| Backup and recovery | pgBackRest, PITR, and a remote S3-compatible repository | Recovery exercise process |
| Residual information protection | — | Media destruction and erasure process |
{.full-width}

MLPS also covers physical security, networks, and management systems beyond a database distribution. Pigsty supports database-related technical controls. The overall system must address facilities, network devices, and governance.


---------------------

<span id="soc2-perspective-example-mapping"></span>

## SOC 2 Mapping

Database-related controls in the SOC 2 [**Trust Services Criteria**](https://www.aicpa-cima.com/resources/download/2017-trust-services-criteria-with-revised-points-of-focus-2022) (TSC) include:

| Criterion | Pigsty Capability | Additional Requirement |
|:---|:---|:---|
| CC6.1 Logical access security | HBA, RBAC, default privileges, and database isolation | Privilege design, approval, and periodic review |
| CC6.2 User registration and authorization | Declarative users, roles, and expiration | Joiner, mover, leaver, and identity-verification process |
| CC6.3 Access changes and revocation | `pg_users`, role changes, `REVOKE`, and expiration | Tickets, approval evidence, and timely revocation |
| CC6.6 External boundary threats | Firewalls, listen addresses, HBA, and restricted management ingress | Network architecture, boundary devices, and continuous validation |
| CC6.7 Information transmission and movement | TLS, client verification, and backup encryption | Policies for exports, media, and third-party transfer |
| CC7.2 System monitoring | Victoria observability stack with extensive metrics and alerts | Alert-response process |
| CC7.3 Incident traceability | Centralized logs and audit extensions | Log-review process |
| A1.2 Availability and recovery | [**High Availability**](/docs/concept/ha) and [**PITR**](/docs/concept/pitr) | Exercise records and RTO/RPO objectives |
{.full-width}


---------------------

## Supply Chain and Vulnerability Response

Compliance reviews also cover the software supply chain. Pigsty provides these distribution and response controls:

**Package integrity:** Pigsty repository RPM and DEB packages (`repo.pigsty.io`, `repo.pigsty.cc`) are GPG-signed. Verify fingerprint `9592 A7BC 7A68 2E73 3337 6E09 E793 5D8D B9BD 8B20` (`B9BD8B20`) before trusting the key. Deployment-generated repository definitions and the [**INFRA node**](/docs/concept/arch/node#infra-node) local repository do not enforce verification for every package by default. In production, review package-manager trust and signature settings.

**Vulnerability response:** Report issues privately through GitHub vulnerability reporting or email as specified in [**SECURITY.md**](https://github.com/pgsty/pigsty/blob/main/SECURITY.md). The project targets acknowledgment within three business days and initial assessment within seven days.

**Version support:** Security fixes ship in the latest stable release. Update to receive them. [**Subscription services**](/docs/about/service/) provide extended support for users who must retain a version longer.


---------------------

## Next

- 🛡️ [**Security Model**](/docs/concept/sec/level): from the default baseline to hardening levels
- 🔰 [**Security Recommendations**](/docs/setup/security): minimum hardening for quick-start deployments
- 📄 [**`ha/safe` Template**](/docs/conf/safe): hardening configuration example
