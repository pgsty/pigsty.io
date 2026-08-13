---
title: Compliance
weight: 236
description: Compliance combines configuration, process, and evidence. This page covers launch hardening, MLPS and SOC 2 control mappings, supply-chain integrity, and vulnerability response.
icon: fa-solid fa-clipboard-check
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Compliance is not a product you can buy. It is a state that must be demonstrated continuously through three elements:

- **Configuration:** whether security controls are enabled. Pigsty directly provides this part.
- **Process:** access approval, change management, recovery exercises, and related procedures. The organization must establish these.
- **Evidence:** records showing that configuration and process remain effective. Pigsty's [**inventory**](/docs/concept/iac/inventory), runtime logs, and [**monitoring system**](/docs/concept/monitor) can provide part of this evidence.

This page begins with a pre-launch hardening checklist and then maps Pigsty security capabilities to common compliance frameworks.
The mappings support architecture and gap analysis; they are not an MLPS assessment conclusion, a SOC 2 audit opinion, or legal advice.


---------------------

<span id="default-credentials"></span>

## Default Credentials Checklist

Pigsty default credentials are public in the documentation and source code. They are intended only for demonstrations and local development. **Change every applicable default before any production or network-exposed deployment goes live:**

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

Use `-g` while generating configuration to randomize built-in parameters and example strings recognized by the configuration wizard:

```bash
./configure -g     # Generate the inventory and randomize recognized default credentials
```

The wizard prints generated passwords to the terminal, so protect terminal history and automation logs as sensitive data. After generation, inspect the configuration and replace pgBackRest `cipher_pass`, MINIO module example values in `ha/safe` that were not covered, and all custom credentials.


---------------------

<span id="compliance-checklist"></span>
<span id="compliance-hardening-snippets"></span>

## Launch Hardening Checklist

<span id="before-deployment"></span>

**Before deployment:**

- [ ] Define the [**network boundary**](/docs/concept/sec/level#network-boundaries): do not expose database ports publicly, and remove the demo firewall exception for `5432`
- [ ] Select a certificate policy: use the built-in CA or integrate enterprise PKI; see [**Using an Enterprise CA**](/docs/concept/sec/ca#using-an-enterprise-ca)
- [ ] Plan [**client verification**](/docs/concept/sec/ca#server-identity-verification): configure database clients with `sslmode=verify-full` and a trusted CA
- [ ] Design the account model: assign application accounts through the [**four-tier roles**](/docs/concept/sec/ac#role-system) and declare `expire_in`
- [ ] Plan the [**backup repository**](/docs/concept/pitr/tradeoff), retention, encryption passphrase, and off-site copies
- [ ] Decide whether to use the [**`ha/safe` template**](/docs/conf/safe) and the [**CRIT parameter template**](/docs/pgsql/template/crit)

<span id="after-deployment-must"></span>

**After deployment:**

- [ ] Confirm that credentials covered by `configure -g` and uncovered backup, object-storage, and custom credentials have all been changed
- [ ] Review the effective [**HBA rules**](/docs/concept/sec/auth) in `/pg/data/pg_hba.conf` against the declaration and intended boundary
- [ ] Query effective users, roles, [**default privileges**](/docs/concept/sec/ac#default-privileges), and database `CONNECT` grants, and compare them with the inventory
- [ ] Run one full backup and a [**recovery exercise**](/docs/concept/pitr/scenarios) to validate the backup path
- [ ] Confirm log collection, monitoring alerts, and notification channels

<span id="periodic-maintenance"></span>

**Periodically:**

- [ ] Audit privileges: compare `pg_users` declarations with effective grants, and remove expired or departed-user accounts
- [ ] Rotate credentials and certificates
- [ ] Exercise recovery and failover
- [ ] Track security updates for Pigsty and upstream components


---------------------

<span id="evidence-preparation-recommended"></span>

## Compliance Evidence

Declarative configuration provides a stable starting point for audit evidence. Retain runtime state as well to show that the configuration was applied and remains effective.

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

The following maps database-related Pigsty capabilities to controls in the "secure computing environment" section of GB/T 22239-2019 Level 3:

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

MLPS also covers physical security, communication networks, and management systems beyond the scope of a database distribution.
Pigsty can support database-related technical controls in a secure computing environment; facilities, network devices, and governance must be addressed in the overall system.


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

Compliance reviews increasingly cover the software supply chain. Pigsty provides the following distribution and response controls:

**Package integrity:** RPM and DEB packages in the Pigsty repositories (`repo.pigsty.io` and `repo.pigsty.cc`) are GPG-signed.
The public-key fingerprint is `9592 A7BC 7A68 2E73 3337 6E09 E793 5D8D B9BD 8B20` (`B9BD8B20`) and can be verified before trust is established. Repository definitions written during deployment and the local repository on the [**INFRA node**](/docs/concept/arch/node#infra-node) do not enforce signature verification for every package by default; review package-manager repository trust and signature settings in production.

**Vulnerability response:** report security issues privately through GitHub private vulnerability reporting or email, as documented in [**SECURITY.md**](https://github.com/pgsty/pigsty/blob/main/SECURITY.md).
The project targets acknowledgment within three business days and an initial assessment within seven days.

**Version support:** security fixes ship with the latest stable release. Staying current is the standard way to receive them. Users who must remain on a version for longer can obtain extended support through [**subscription services**](/docs/about/service/).


---------------------

## Next

- 🛡️ [**Security Model**](/docs/concept/sec/level): from the default baseline to hardening levels
- 🔰 [**Security Recommendations**](/docs/setup/security): minimum hardening for quick-start deployments
- 📄 [**`ha/safe` Template**](/docs/conf/safe): hardening configuration example
