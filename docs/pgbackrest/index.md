# pgBackRest 2.59.2 Documentation

> Reliable PostgreSQL Backup & Restore — pgBackRest documentation and reference.

---

LLMS index: [llms.txt](/llms.txt)

---

> Snapshot of the pgBackRest 2.59.2 documentation: <https://pgbackrest.org/>


--------

## Introduction

pgBackRest provides backup and restore functions for PostgreSQL. It supports large databases and workloads.

pgBackRest [v2.59.2](https://github.com/pgbackrest/pgbackrest/releases/tag/release/2.59.2) is the current stable release. Release notes are on the [Releases](/docs/pgbackrest/release/) page.

If you like pgBackRest, give the project a star on [GitHub](https://github.com/pgbackrest/pgbackrest).


--------

## News

**September 27, 2026** - [pgBackRest 2.59.2 Released](/docs/pgbackrest/news/#release-2-59-2)

**August 17, 2026** - [pgBackRest 2.59.1 Released](/docs/pgbackrest/news/#release-2-59-1)

**July 20, 2026** - [New Distribution Tarball](/docs/pgbackrest/news/#distribution-tarball)


--------

## Sponsors

Sponsorship makes pgBackRest possible. New features, bug fixes, contribution reviews, community support, and maintenance require substantial time. If your enterprise uses pgBackRest, consider a [sponsorship](https://github.com/sponsors/dwsteele).

Our sponsors: [AWS](https://aws.amazon.com), [Supabase](https://supabase.com), [pgEdge](https://pgedge.com), [Tiger Data](https://tigerdata.com), [Percona](https://percona.com), [Eon](https://eon.io), [Xata](https://xata.io), [Dalibo](https://dalibo.com), and [Data Egret](https://dataegret.com/).

We thank our sponsors for supporting open-source infrastructure for the PostgreSQL community.

Past sponsors: [Crunchy Data](https://crunchydata.com), [Resonate](https://resonate.com).


--------

## Features


### Parallel Backup & Restore

Compression usually limits backup speed. pgBackRest uses parallel processing and efficient compression algorithms, such as `lz4` and `zstd`, to reduce this limit.


### Local or Remote Operation

A custom protocol lets pgBackRest back up, restore, and archive locally or remotely through TLS/SSH with minimal configuration. The protocol also provides an interface to query PostgreSQL. This interface removes the need for remote PostgreSQL access and improves security.


### Multiple Repositories

You can use multiple repositories. For example, use a local repository with short retention for fast restores. Use a remote repository with longer retention for redundancy and access across the enterprise.


### Full, Differential, & Incremental Backups (at File or Block Level)

pgBackRest supports full, differential, and incremental backups. It avoids the time resolution problems of `rsync`. Thus, differential and incremental backups are safe without a checksum calculation for each file. Block-level backups save space because they copy only the changed parts of files.


### Backup Rotation & Archive Expiration

Set retention policies for full and differential backups to cover the required time frame. Keep the WAL archive for all backups or only the most recent backups. In the second case, the archive still keeps the WAL necessary to make older backups consistent.


### Backup Integrity

pgBackRest calculates a checksum for every backup file. It checks each checksum again during a restore or verify operation. After it copies the backup files, it waits for all WAL segments necessary for backup consistency to reach the repository.

Repository backups can use the same format as a standard PostgreSQL cluster, including tablespaces. With compression disabled and hard links enabled, you can take a snapshot of a repository backup. You can then start a PostgreSQL cluster directly on the snapshot. This method helps with terabyte-scale databases, where a conventional restore takes a long time.

All operations use file and directory fsync to make changes durable.


### Page Checksums

If page checksums are enabled, pgBackRest validates them for every file copied during a backup. A full backup validates all page checksums. Differential and incremental backups validate checksums in changed files.

Validation failures do not stop the backup. Console and file logs identify the pages that failed validation.

This feature detects page-level corruption before backups with valid copies of the data expire.


### Backup Resume

You can resume an interrupted backup from its last position. pgBackRest compares checksums of previously copied files with the manifest to check their integrity. This operation can run entirely on the repository host, which reduces load on the PostgreSQL host. Checksum calculation also takes less time than compression and retransmission.


### Streaming Compression & Checksums

pgBackRest calculates checksums and compresses data as it copies files to the repository. This applies to local and remote repositories.

For a repository on a separate host, pgBackRest compresses files on the PostgreSQL host. It transfers the compressed files and stores them on the repository host. When file compression is disabled, pgBackRest uses a lower compression level for transfers. This reduces bandwidth use with minimal CPU cost.


### Delta Restore

The manifest contains a checksum for every backup file. A restore can use these checksums to substantially reduce processing time. A delta restore first removes files that are absent from the backup. It then calculates checksums for the remaining files. Files that match the backup stay in place; pgBackRest restores the other files as usual. Parallel processing can substantially reduce restore time.


### Parallel, Asynchronous WAL Push & Get

Separate commands push WAL to the archive and get WAL from the archive. Both commands support parallel processing and asynchronous operation to reduce response time for PostgreSQL.

WAL push detects repeated WAL segments. It removes duplicates when the segments are identical and reports an error when they differ. Asynchronous WAL push transfers work to another process, which compresses segments in parallel for maximum throughput. This feature can be critical for databases with very high write volumes.

Asynchronous WAL get keeps a local queue of decompressed WAL segments ready for replay. This queue reduces the time to supply WAL to PostgreSQL and increases replay speed. Connections and storage with high latency, such as S3, benefit most.

The push and get commands compare PostgreSQL versions and system identifiers to check that the database and repository match. This check almost eliminates incorrect WAL archive locations.


### Tablespace & Link Support

pgBackRest fully supports tablespaces. During a restore, you can map tablespaces to any location. You can also map all tablespaces to one location with one command. This is useful for development restores.

pgBackRest supports links for any file or directory in the PostgreSQL cluster. During a restore, you can restore all links to their original locations or map some or all links to new locations. You can also restore some or all links as regular files or directories inside the cluster directory.


### S3, Azure, and GCS Compatible Object Store Support

pgBackRest repositories support S3, Azure, and GCS compatible object stores. These stores provide almost unlimited capacity and retention.


### Encryption

pgBackRest can encrypt the repository to secure backups wherever they are stored.


### Ransomware & Malware Protection

On versioned object storage, pgBackRest can read the repository at a specified point in time. Backups can be deleted or corrupted by an accident, malware, or ransomware. Set a target time before the damage to recover the data.

S3, Azure, and GCS compatible object stores support versioning. S3 object locking and GCS or Azure soft delete can provide more protection against tampering.


### Compatibility with ten versions of PostgreSQL

pgBackRest supports ten PostgreSQL versions: the five supported versions and the last five EOL versions. This gives users time to upgrade to a supported version.


--------

## Getting Started

Use these documents to configure and operate pgBackRest:

- [User guides](/docs/pgbackrest/user-guide/) for various operating systems and PostgreSQL versions.
- Command pages for command-line operations: [backup](/docs/pgbackrest/command/backup/), [restore](/docs/pgbackrest/command/restore/), [check](/docs/pgbackrest/command/check/), and [info](/docs/pgbackrest/command/info/).
- [Configuration reference](/docs/pgbackrest/configuration/) for creating pgBackRest configurations.


--------

## Contributions

pgBackRest welcomes contributions. See the [Contributing Guidelines](https://github.com/pgbackrest/pgbackrest/blob/main/CONTRIBUTING.md) to contribute features, improvements, or issues.


--------

## Support

pgBackRest is completely free and open source under the [MIT](https://github.com/pgbackrest/pgbackrest/blob/main/LICENSE) license. You may use it for personal or commercial purposes without any restrictions whatsoever. Bug reports are taken very seriously and will be addressed as quickly as possible. Please report bugs [here](https://github.com/pgbackrest/pgbackrest/issues).

A disaster recovery policy needs suitable replication and backup strategies. The design can be complex. You might need help with the architecture and ongoing support to keep your enterprise running.

Our [sponsors](#sponsors) offer products and services with pgBackRest support. They can help you meet your disaster recovery requirements.

---

Section pages:

- [News](/docs/pgbackrest/news/): Official pgBackRest project news, release announcements, and maintenance updates.
- [User Guide (Debian/Ubuntu)](/docs/pgbackrest/user-guide/): Step-by-step pgBackRest setup and usage guide for Debian and Ubuntu systems.
- [User Guide (RHEL)](/docs/pgbackrest/user-guide-rhel/): Step-by-step pgBackRest setup and usage guide for RHEL, Rocky, and AlmaLinux systems.
- [Command Reference](/docs/pgbackrest/command/): pgBackRest command reference with all options for backup, restore, archive, and management operations.
- [Configuration Reference](/docs/pgbackrest/configuration/): Complete pgBackRest configuration reference for all settings including archive, backup, repository, and cloud storage options.
- [Release Notes](/docs/pgbackrest/release/): pgBackRest release history with detailed changelog for every version.
- [Frequently Asked Questions](/docs/pgbackrest/faq/): Frequently asked questions about pgBackRest backup, restore, configuration, and troubleshooting.
- [Project Metrics](/docs/pgbackrest/metric/): pgBackRest project code coverage metrics and quality statistics.
