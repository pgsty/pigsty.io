---
title: Data Security
weight: 235
description: Protect PostgreSQL data integrity, recoverability, confidentiality, and traceability with checksums, backup and PITR, encryption, and audit logs.
icon: fa-solid fa-database
module: [PIGSTY, PGSQL]
categories: [Concept]
---

[**Network boundaries**](/docs/concept/sec/level#network-boundaries), [**authentication**](/docs/concept/sec/auth), and [**access control**](/docs/concept/sec/ac) reduce the likelihood of an incident. When hardware fails, credentials leak, or an operator makes a mistake, data-layer controls must limit the impact and support recovery.

Data security answers four questions: Is the data **intact**? Can it be **recovered**? If copied, does it remain **confidential**? Can you determine **what happened**?


---------------------

<span id="data-integrity"></span>

## Integrity

Bad disk sectors, memory bit flips, and storage firmware defects can cause **silent data corruption**: the data is damaged without an immediate error.
Pigsty enables page checksums by default ([`pg_checksum`](/docs/pgsql/param#pg_checksum): `true`).
The cluster is initialized with `data-checksums`, so PostgreSQL calculates a checksum when writing a page and verifies it when reading.

Page checksums primarily detect corruption in storage media, the I/O path, or pages after they were written. They do not detect every memory error, logical error, or incorrect application write, and they do not replace backups.

The [**CRIT parameter template**](/docs/pgsql/template/crit) goes further: checksums are mandatory regardless of the parameter, and [**strict synchronous replication**](/docs/concept/ha/rpo) (`synchronous_mode_strict`) blocks writes that require synchronous acknowledgment when no synchronous replica is available.
This mode targets preservation of acknowledged transactions, but it still assumes clients have not reduced `synchronous_commit`, a synchronous replica participates in the commit, and failover selects only a node containing the required WAL. Validate RPO through failure exercises on the target topology.


---------------------

<span id="recoverability-backup-and-pitr"></span>

## Recoverability

Replicas primarily handle node failures; backups handle accidental deletion, logical errors, cluster corruption, and broader disasters.
[**High availability**](/docs/concept/ha/) can shorten an interruption after primary failure, but replication also copies an accidental deletion to every replica. Backups are therefore indispensable.

Pigsty enables [**pgBackRest**](/docs/concept/arch/pgsql#pgbackrest) by default ([`pgbackrest_enabled`](/docs/pgsql/param#pgbackrest_enabled)).
Base backups plus continuous WAL archiving provide [**Point-in-Time Recovery**](/docs/concept/pitr/) (PITR), allowing recovery to a target time within the retained backup and WAL window.

Select the backup repository with [`pgbackrest_method`](/docs/pgsql/param#pgbackrest_method):

| Repository | Location | Default Retention | Encryption |
|:---|:---|:---|:---|
| `local` (default) | Local `/pg/backup` directory | Latest 2 full backups | None |
| `minio` | [**Silo**](/docs/concept/model/minio) or external S3-compatible object storage | 14 days | AES-256-CBC |
{.full-width}

Two additional controls reduce damage from accidental deletion:

- [**Delayed replica**](/docs/pgsql/config/cluster#delayed-cluster): declare a `pg_delay: 1h` replica for a critical cluster. Before an erroneous operation is replayed, pause replication and extract the required data. A delayed replica eventually catches up and does not replace a backup.
- **Removal safeguards**: when [`pg_safeguard`](/docs/pgsql/param#pg_safeguard) or [`etcd_safeguard`](/docs/etcd/param#etcd_safeguard) is enabled, the corresponding removal playbook refuses to run, reducing the risk of accidental cluster removal.

Having a backup is not the same as being able to restore. Recovery exercises should be routine; see [**Backup and Recovery**](/docs/concept/pitr/) for mechanisms and procedures.


---------------------

<span id="data-confidentiality"></span>

## Confidentiality

Protect data at rest at three layers:

**Backup encryption.** `pgbackrest_method: minio` denotes an S3-compatible repository. It can be provided by Silo deployed through the MINIO module, or independently managed MinIO, RustFS, and external S3 services. The preset uses AES-256-CBC by default, but the public `pgBackRest` passphrase must be changed in production.
The [**`ha/safe` template**](/docs/conf/safe) derives an example passphrase from the cluster name:

```yaml
pgbackrest_repo:
  minio:
    cipher_type: aes-256-cbc
    cipher_pass: 'pgBR.${pg_cluster}'   # Example only; replace before deployment
```

`pgBR.${pg_cluster}` is predictable, and `configure -g` does not replace it. Use a unique random passphrase in production and store it separately from the backup. Losing the passphrase makes the backup unrecoverable.

The local backup repository is not encrypted by default. Encryption reduces disclosure if backup files or media are copied separately, but offers limited protection when the key and backup remain on the same host.

**Transport encryption.** Backup uploads to Silo or external S3 services use HTTPS. PostgreSQL client and replication traffic can require SSL through HBA. Clients should also verify the server certificate; see [**Encrypted Communication**](/docs/concept/sec/ca#server-identity-verification).

**Encryption at rest.** Upstream PostgreSQL currently has no general built-in transparent data encryption (TDE). Pigsty provides two practical options:
use the `pg_tde` extension with Percona Distribution for PostgreSQL for table-level transparent encryption (see the [**pgtde configuration template**](/docs/conf/pgtde));
or use [**security extensions**](/ext/cate/sec/) such as `pgsodium`, `pgcrypto`, and `anonymizer` for column-level encryption and masking. The safe template installs this extension category.
Full-disk encryption such as LUKS or dm-crypt protects against stolen media at the operating-system layer and complements database-level controls.


---------------------

## Audit and Traceability

After an incident, you must be able to answer who did what and when. Pigsty provides layered logging:

**Default baseline:** all DDL is logged (`log_statement: ddl`), and statements taking longer than 100 ms are logged (`log_min_duration_statement: 100`).
PostgreSQL 18 and later also record connection authorization events.

**CRIT template:** connection and disconnection events are recorded with `log_connections` and `log_disconnections`. PostgreSQL 18 can distinguish connection receipt, authentication, and authorization stages.

**[pgaudit extension](/ext/e/pgaudit/):** for fine-grained statement auditing such as object reads and writes or role-based audit classes, install `pgaudit` and add it to [`pg_libs`](/docs/pgsql/param#pg_libs) for preloading.
The safe template installs the extension, but loading and audit policy must be declared explicitly.

When INFRA logging is enabled and [**Vector**](/docs/concept/arch/pgsql#vector) is configured, PostgreSQL logs are sent to [**VictoriaLogs**](/docs/concept/arch/infra#victorialogs) for centralized storage. The default retention is 15 days and can be adjusted for compliance.
Logs and metrics support search, alerts, and incident reconstruction, but incident classification, response, and evidence preservation still require an operational process.


---------------------

<span id="hardening-recommendations"></span>

## Next

- ⏰ [**Backup and Recovery**](/docs/concept/pitr/): PITR principles and practice
- ♾️ [**High Availability**](/docs/concept/ha/): replicas and backups as complementary safeguards
- ✅ [**Compliance**](/docs/concept/sec/compliance): audit logs as compliance evidence
