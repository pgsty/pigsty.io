---
title: Data Security
weight: 235
description: Protect PostgreSQL data integrity, recoverability, confidentiality, and traceability with checksums, backup and PITR, encryption, and audit logs.
icon: fa-solid fa-database
module: [PIGSTY, PGSQL]
categories: [Concept]
---

[**Network boundaries**](/docs/concept/sec/level#network-boundaries), [**authentication**](/docs/concept/sec/auth), and [**access control**](/docs/concept/sec/ac) reduce incident risk. Data controls must limit damage and support recovery after hardware failure, leaked credentials, or operator errors.

Data security must provide **integrity**, **recoverability**, **confidentiality** if copied, and records of **what happened**.


---------------------

<span id="data-integrity"></span>

## Integrity

Bad disk sectors, memory bit flips, and firmware defects can cause **silent data corruption**, with no immediate error. Pigsty enables [`pg_checksum`](/docs/pgsql/param#pg_checksum): `true` by default. Initialization uses `data-checksums`. PostgreSQL calculates each page checksum on write and checks it on read.

Page checksums mainly detect corruption in storage, the I/O path, or pages after writing. They cannot detect every memory error, logical error, or incorrect application write. They do not replace backups.

[**CRIT**](/docs/pgsql/template/crit) requires checksums regardless of the parameter. Its [**strict synchronous replication**](/docs/concept/ha/rpo) (`synchronous_mode_strict`) blocks writes needing synchronous acknowledgment when no synchronous replica is available. This protects acknowledged transactions under specific conditions. Clients must not reduce `synchronous_commit`; a synchronous replica must participate in commits. Failover must select a node containing the required WAL. Verify RPO with failure exercises on the target topology.


---------------------

<span id="recoverability-backup-and-pitr"></span>

## Recoverability

Replicas mainly handle node failures. Backups cover accidental deletion, logical errors, cluster corruption, and wider disasters. [**HA**](/docs/concept/ha/) can shorten interruptions after primary failure. However, replication copies accidental deletions to every replica, so backups remain essential.

Pigsty enables [**pgBackRest**](/docs/concept/arch/pgsql#pgbackrest) by default through [`pgbackrest_enabled`](/docs/pgsql/param#pgbackrest_enabled). Base backups and continuous WAL archives provide [**Point-in-Time Recovery**](/docs/concept/pitr/). Restore to a target within the retained backup and WAL window.

Select the backup repository with [`pgbackrest_method`](/docs/pgsql/param#pgbackrest_method):

| Repository | Location | Default Retention | Encryption |
|:---|:---|:---|:---|
| `local` (default) | Local `/pg/backup` directory | Latest 2 full backups | None |
| `minio` | [**Silo**](/docs/concept/model/minio) or external S3-compatible object storage | 14 days | AES-256-CBC |
{.full-width}

Two additional controls reduce damage from accidental deletion:

- [**Delayed replica**](/docs/pgsql/config/cluster#delayed-cluster): For a critical cluster, declare `pg_delay: 1h`. Before the error replays, pause replication and extract the required data. A delayed replica eventually catches up and does not replace backup.
- **Removal safeguards**: Enabling [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) or [`etcd_safeguard`](/docs/etcd/param#etcd_safeguard) blocks the corresponding removal playbook. This reduces accidental cluster removal.

Test that backups can restore data through routine recovery exercises. See [**Backup and Recovery**](/docs/concept/pitr/) for mechanisms and procedures.


---------------------

<span id="data-confidentiality"></span>

## Confidentiality

Protect data at rest at three layers:

**Backup encryption.** `pgbackrest_method: minio` selects S3-compatible storage. Providers include MINIO-managed Silo, independently managed MinIO or RustFS, and external S3 services. The preset enables AES-256-CBC encryption. Change its public `pgBackRest` passphrase in production. [**`ha/safe`**](/docs/conf/safe) derives an example passphrase from the cluster name:

```yaml
pgbackrest_repo:
  minio:
    cipher_type: aes-256-cbc
    cipher_pass: 'pgBR.${pg_cluster}'   # Example only; replace before deployment
```

`pgBR.${pg_cluster}` is predictable, and `configure -g` does not replace it. In production, use a unique random passphrase. Store it separately from the backup. Without it, recovery is impossible.

Local backups have no encryption by default. Encryption reduces disclosure if someone copies backup files or media separately. Protection is limited when keys and backups share a host.

**Transport encryption.** Uploads to Silo or external S3 use HTTPS. HBA can require SSL for PostgreSQL clients and replication. Clients should also verify server certificates. See [**Encrypted Communication**](/docs/concept/sec/ca#server-identity-verification).

**Encryption at rest.** Upstream PostgreSQL currently lacks general built-in transparent data encryption (TDE). Pigsty offers two options. Use `pg_tde` with Percona Distribution for PostgreSQL for table-level encryption; see [**pgtde**](/docs/conf/pgtde). Use [**security extensions**](/ext/cate/sec/) such as `pgsodium`, `pgcrypto`, and `anonymizer` for column encryption and masking. The safe template installs this category. Full-disk encryption, such as LUKS or dm-crypt, adds OS-level protection against stolen media.


---------------------

## Audit and Traceability

Incident records must identify who did what and when. Pigsty provides these logging layers:

**Default baseline:** Log all DDL with `log_statement: ddl`. Log statements longer than 100 ms with `log_min_duration_statement: 100`. PostgreSQL 18 and later also record connection authorization.

**CRIT template:** `log_connections` and `log_disconnections` record connection events. PostgreSQL 18 can distinguish receipt, authentication, and authorization.

**[pgaudit](/ext/e/pgaudit/):** Install `pgaudit` and preload it through [`pg_libs`](/docs/pgsql/param#pg_libs) for detailed statement auditing. This includes object reads, writes, and role-based audit classes. The safe template installs the extension. Declare loading and audit policy explicitly.

With INFRA logging enabled and [**Vector**](/docs/concept/arch/pgsql#vector) configured, PostgreSQL logs go to [**VictoriaLogs**](/docs/concept/arch/infra#victorialogs) for centralized storage. Retention defaults to 15 days and can meet other compliance periods. Logs and metrics support search, alerts, and incident reconstruction. Classification, response, and evidence preservation still require an operational process.


---------------------

<span id="hardening-recommendations"></span>

## Next

- ⏰ [**Backup and Recovery**](/docs/concept/pitr/): PITR principles and practice
- ♾️ [**High Availability**](/docs/concept/ha/): replicas and backups as complementary safeguards
- ✅ [**Compliance**](/docs/concept/sec/compliance): audit logs as compliance evidence
