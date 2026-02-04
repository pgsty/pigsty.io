---
title: Data Security
weight: 235
description: Data integrity, backup and recovery, encryption and audit.
icon: fa-solid fa-database
module: [PIGSTY, PGSQL]
categories: [Concept]
---

Data security focuses on three things: **integrity, recoverability, confidentiality**. Pigsty enables key capabilities by default and supports further hardening.


---------------------

## Data Integrity

**Problems solved**

- Silent corruption from bad disks or memory errors
- Accidental writes causing data pollution

**Pigsty support**

- **Data checksums**: default `pg_checksum: true`, enables `data-checksums` at init.
- **Replica fallback**: recover bad blocks from replicas (with HA).


---------------------

## Recoverability (Backup and PITR)

**Problems solved**

- Accidental deletion or modification
- Disaster-level data loss

**Pigsty support**

- **pgBackRest enabled by default**: `pgbackrest_enabled: true`.
- **Local repository**: keeps 2 full backups by default.
- **Remote repository**: MinIO support, object storage and multi-replica.
- **PITR**: recover to any point in time with WAL archive.


---------------------

## Data Confidentiality

**Problems solved**

- Backup theft leading to data leakage
- Media theft leaking plaintext data

**Pigsty support**

- **Backup encryption**: MinIO repo supports AES-256-CBC (`cipher_type`).
- **Transparent encryption (optional)**: `pg_tde` and similar extensions for at-rest encryption.
- **Key isolation**: keep `cipher_pass` separate from CA private keys.


---------------------

## Audit and Traceability

**Problems solved**

- No accountability or audit trail
- Compliance audits lack evidence

**Pigsty support**

- **Log collection**: templates enable `logging_collector` by default.
- **DDL audit**: `log_statement: ddl`.
- **Slow queries**: `log_min_duration_statement`.
- **Connection logs**: `log_connections` (PG18+).
- **Audit extensions**: `pgaudit`, `pgauditlogtofile` optional.


---------------------

## Hardening Recommendations

- Enforce encryption and dedicated keys for remote backups.
- Drill PITR regularly and verify the recovery chain.
- Enable `pgaudit` for critical workloads.
- Pair with [High Availability](/docs/concept/ha/) for "backup + replica" double safety.


---------------------

## Next

- 🔐 [**Encrypted Communication**](../ca/): certificate management and TLS
- ✅ [**Compliance Checklist**](../compliance/): audit and compliance requirements
- ⏰ [**Backup & Recovery**](/docs/concept/pitr/): PITR mechanics and practice
