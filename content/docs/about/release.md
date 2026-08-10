---
title: Release Note
weight: 160
description: Pigsty historical version release notes
icon: fa-solid fa-scroll
categories: [Reference]
---

The current stable Pigsty release is [**v4.4.0**](#v440), while the documentation mainline also tracks source changes for the [**v4.5.0 development version**](#v450). Content marked v4.5.0 WIP describes current source state only; it does not mean candidate packages, offline bundles, repository indexes, or a public release are complete.

|     Version     | Release Date | Summary                                                                         |                                       Release Page                                        |
|:---------------:|:------------:|---------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------:|
| [v4.5.0](#v450) |     WIP      | Kafka, MySQL, Valkey, Silo/RustFS, 572 extensions, and orchestration improvements |                                         Unreleased                                         |
| [v4.4.0](#v440) |  2026-07-10  | PG 19 beta support, 531 extensions, kernel updates, pig CLI improvements        |               [v4.4.0](https://github.com/pgsty/pigsty/releases/tag/v4.4.0)               |
| [v4.3.0](#v430) |  2026-05-01  | 510 extensions, batch Infra / PGSQL / kernel package updates, Ubuntu 26 support |               [v4.3.0](https://github.com/pgsty/pigsty/releases/tag/v4.3.0)               |
| [v4.2.2](#v422) |  2026-03-23  | Insforge template, pdu, pgdog, tigerfs, ivorysql 5.3                            |               [v4.2.2](https://github.com/pgsty/pigsty/releases/tag/v4.2.2)               |
| [v4.2.1](#v421) |  2026-03-06  | Maintenance release: 3 new extensions, drop PG13, bug fixes                     |               [v4.2.1](https://github.com/pgsty/pigsty/releases/tag/v4.2.1)               |
| [v4.2.0](#v420) |  2026-02-28  | Routine minor release with six PG kernel updates                                |               [v4.2.0](https://github.com/pgsty/pigsty/releases/tag/v4.2.0)               |
| [v4.1.0](#v410) |  2026-02-12  | Major/minor upgrade support, Agent-Native CLI, stricter default firewall policy |               [v4.1.0](https://github.com/pgsty/pigsty/releases/tag/v4.1.0)               |
| [v4.0.0](#v400) |  2026-01-28  | Observability revolution, security hardening, JUICE/VIBE modules, Apache-2.0    |               [v4.0.0](https://github.com/pgsty/pigsty/releases/tag/v4.0.0)               |
| [v3.7.0](#v370) |  2025-12-02  | PG18 default, 437 extensions, EL10 & Debian 13 support, PGEXT.CLOUD             |               [v3.7.0](https://github.com/pgsty/pigsty/releases/tag/v3.7.0)               |
| [v3.6.1](#v361) |  2025-08-15  | Routine PG minor updates, PGDG China mirror, EL10/D13 stubs                     |               [v3.6.1](https://github.com/pgsty/pigsty/releases/tag/v3.6.1)               |
| [v3.6.0](#v360) |  2025-07-30  | pgactive, MinIO/ETCD improvements, simplified install, config cleanup           |               [v3.6.0](https://github.com/pgsty/pigsty/releases/tag/v3.6.0)               |
| [v3.5.0](#v350) |  2025-06-16  | PG18 beta, 421 extensions, monitoring upgrade, code refactor                    |               [v3.5.0](https://github.com/pgsty/pigsty/releases/tag/v3.5.0)               |
| [v3.4.1](#v341) |  2025-04-05  | OpenHalo & OrioleDB, MySQL compatibility, pgAdmin improvements                  |               [v3.4.1](https://github.com/pgsty/pigsty/releases/tag/v3.4.1)               |
| [v3.4.0](#v340) |  2025-03-30  | Backup improvements, auto certs, AGE, IvorySQL all platforms                    |               [v3.4.0](https://github.com/pgsty/pigsty/releases/tag/v3.4.0)               |
| [v3.3.0](#v330) |  2025-02-24  | 404 extensions, extension directory, App playbook, Nginx customization          |               [v3.3.0](https://github.com/pgsty/pigsty/releases/tag/v3.3.0)               |
| [v3.2.2](#v322) |  2025-01-23  | 390 extensions, Omnigres, Mooncake, Citus 13 & PG17 support                     |               [v3.2.2](https://github.com/pgsty/pigsty/releases/tag/v3.2.2)               |
| [v3.2.1](#v321) |  2025-01-12  | 350 extensions, Ivory4, Citus enhancements, Odoo template                       |               [v3.2.1](https://github.com/pgsty/pigsty/releases/tag/v3.2.1)               |
| [v3.2.0](#v320) |  2024-12-24  | Extension CLI, Grafana enhancements, ARM64 extension completion                 |               [v3.2.0](https://github.com/pgsty/pigsty/releases/tag/v3.2.0)               |
| [v3.1.0](#v310) |  2024-11-24  | PG17 default, config simplification, Ubuntu24 & ARM support                     |               [v3.1.0](https://github.com/pgsty/pigsty/releases/tag/v3.1.0)               |
| [v3.0.4](#v304) |  2024-10-30  | PG17 extensions, OLAP suite, pg_duckdb                                          |               [v3.0.4](https://github.com/pgsty/pigsty/releases/tag/v3.0.4)               |
| [v3.0.3](#v303) |  2024-09-27  | PostgreSQL 17, Etcd improvements, IvorySQL 3.4, PostGIS 3.5                     |               [v3.0.3](https://github.com/pgsty/pigsty/releases/tag/v3.0.3)               |
| [v3.0.2](#v302) |  2024-09-07  | Mini install mode, PolarDB 15 support, monitoring view updates                  |               [v3.0.2](https://github.com/pgsty/pigsty/releases/tag/v3.0.2)               |
| [v3.0.1](#v301) |  2024-08-31  | Routine bug fixes, Patroni 4 support, Oracle compatibility improvements         |               [v3.0.1](https://github.com/pgsty/pigsty/releases/tag/v3.0.1)               |
| [v3.0.0](#v300) |  2024-08-25  | 333 extensions, pluggable kernels, MSSQL/Oracle/PolarDB compatibility           |               [v3.0.0](https://github.com/pgsty/pigsty/releases/tag/v3.0.0)               |
| [v2.7.0](#v270) |  2024-05-20  | Extension explosion, 20+ new powerful extensions, Docker apps                   |               [v2.7.0](https://github.com/pgsty/pigsty/releases/tag/v2.7.0)               |
| [v2.6.0](#v260) |  2024-02-28  | PG16 as default, ParadeDB & DuckDB extensions introduced                        |               [v2.6.0](https://github.com/pgsty/pigsty/releases/tag/v2.6.0)               |
| [v2.5.1](#v251) |  2023-12-01  | Routine minor update, PG16 key extension support                                |               [v2.5.1](https://github.com/pgsty/pigsty/releases/tag/v2.5.1)               |
| [v2.5.0](#v250) |  2023-09-24  | Ubuntu/Debian support: bullseye, bookworm, jammy, focal                         |               [v2.5.0](https://github.com/pgsty/pigsty/releases/tag/v2.5.0)               |
| [v2.4.1](#v241) |  2023-09-24  | Supabase/PostgresML support with graphql, jwt, pg_net, vault                    |               [v2.4.1](https://github.com/pgsty/pigsty/releases/tag/v2.4.1)               |
| [v2.4.0](#v240) |  2023-09-14  | PG16, RDS monitoring, new extensions: FTS/graph/HTTP/embedding                  |               [v2.4.0](https://github.com/pgsty/pigsty/releases/tag/v2.4.0)               |
| [v2.3.1](#v231) |  2023-09-01  | PGVector with HNSW, PG16 RC1, doc refresh, Chinese docs, bug fixes              |               [v2.3.1](https://github.com/pgsty/pigsty/releases/tag/v2.3.1)               |
| [v2.3.0](#v230) |  2023-08-20  | Node VIP, FerretDB, NocoDB, MySQL stub, CVE fixes                               |               [v2.3.0](https://github.com/pgsty/pigsty/releases/tag/v2.3.0)               |
| [v2.2.0](#v220) |  2023-08-04  | Dashboard & provisioning overhaul, UOS compatibility                            |               [v2.2.0](https://github.com/pgsty/pigsty/releases/tag/v2.2.0)               |
| [v2.1.0](#v210) |  2023-06-10  | PostgreSQL 12-16beta support                                                    |               [v2.1.0](https://github.com/pgsty/pigsty/releases/tag/v2.1.0)               |
| [v2.0.2](#v202) |  2023-03-31  | Added pgvector support, fixed MinIO CVE                                         |               [v2.0.2](https://github.com/pgsty/pigsty/releases/tag/v2.0.2)               |
| [v2.0.1](#v201) |  2023-03-21  | v2 bug fixes, security enhancements, Grafana upgrade                            |               [v2.0.1](https://github.com/pgsty/pigsty/releases/tag/v2.0.1)               |
| [v2.0.0](#v200) |  2023-02-28  | Major architecture upgrade, compatibility/security/maintainability              |               [v2.0.0](https://github.com/pgsty/pigsty/releases/tag/v2.0.0)               |
| [v1.5.1](#v151) |  2022-06-18  | Grafana security hotfix                                                         |               [v1.5.1](https://github.com/pgsty/pigsty/releases/tag/v1.5.1)               |
| [v1.5.0](#v150) |  2022-05-31  | Docker application support                                                      |               [v1.5.0](https://github.com/pgsty/pigsty/releases/tag/v1.5.0)               |
| [v1.4.1](#v141) |  2022-04-20  | Bug fixes & full English documentation translation                              |               [v1.4.1](https://github.com/pgsty/pigsty/releases/tag/v1.4.1)               |
| [v1.4.0](#v140) |  2022-03-31  | MatrixDB support, separated INFRA/NODES/PGSQL/REDIS modules                     |               [v1.4.0](https://github.com/pgsty/pigsty/releases/tag/v1.4.0)               |
| [v1.3.0](#v130) |  2021-11-30  | PGCAT overhaul & PGSQL enhancement & Redis beta support                         |               [v1.3.0](https://github.com/pgsty/pigsty/releases/tag/v1.3.0)               |
| [v1.2.0](#v120) |  2021-11-03  | Default PGSQL version upgraded to 14                                            |               [v1.2.0](https://github.com/pgsty/pigsty/releases/tag/v1.2.0)               |
| [v1.1.0](#v110) |  2021-10-12  | Homepage, JupyterLab, PGWEB, Pev2 & pgbadger                                    |               [v1.1.0](https://github.com/pgsty/pigsty/releases/tag/v1.1.0)               |
| [v1.0.0](#v100) |  2021-07-26  | v1 GA, Monitoring System Overhaul                                               |               [v1.0.0](https://github.com/pgsty/pigsty/releases/tag/v1.0.0)               |
| [v0.9.0](#v090) |  2021-04-04  | Pigsty GUI, CLI, Logging Integration                                            |               [v0.9.0](https://github.com/pgsty/pigsty/releases/tag/v0.9.0)               |
| [v0.8.0](#v080) |  2021-03-28  | Service Provision                                                               |               [v0.8.0](https://github.com/pgsty/pigsty/releases/tag/v0.8.0)               |
| [v0.7.0](#v070) |  2021-03-01  | Monitor only deployment                                                         |               [v0.7.0](https://github.com/pgsty/pigsty/releases/tag/v0.7.0)               |
| [v0.6.0](#v060) |  2021-02-19  | Architecture Enhancement                                                        |               [v0.6.0](https://github.com/pgsty/pigsty/releases/tag/v0.6.0)               |
| [v0.5.0](#v050) |  2021-01-07  | Database Customize Template                                                     |               [v0.5.0](https://github.com/pgsty/pigsty/releases/tag/v0.5.0)               |
| [v0.4.0](#v040) |  2020-12-14  | PostgreSQL 13 Support, Official Documentation                                   |               [v0.4.0](https://github.com/pgsty/pigsty/releases/tag/v0.4.0)               |
| [v0.3.0](#v030) |  2020-10-22  | Provisioning Solution GA                                                        |               [v0.3.0](https://github.com/pgsty/pigsty/releases/tag/v0.3.0)               |
|     v0.2.0      |  2020-07-10  | PGSQL Monitoring v6 GA                                                          | [v0.2.0](https://github.com/pgsty/pigsty/commit/385e33a62a19817e8ba19997260e6b77d99fe2ba) |
|     v0.1.0      |  2020-06-20  | Validation on Testing Environment                                               | [v0.1.0](https://github.com/pgsty/pigsty/commit/1cf2ea5ee91db071de00ec805032928ff582453b) |
|     v0.0.5      |  2020-08-19  | Offline Installation Mode                                                       | [v0.0.5](https://github.com/pgsty/pigsty/commit/0fe9e829b298fe5e56307de3f78c95071de28245) |
|     v0.0.4      |  2020-07-27  | Refactor playbooks into Ansible roles                                           | [v0.0.4](https://github.com/pgsty/pigsty/commit/90b44259818d2c71e37df5250fe8ed1078a883d0) |
|     v0.0.3      |  2020-06-22  | Interface enhancement                                                           | [v0.0.3](https://github.com/pgsty/pigsty/commit/4c5c68ccd57bc32a9e9c98aa3f264aa19f45c7ee) |
|     v0.0.2      |  2020-04-30  | First Commit                                                                    | [v0.0.2](https://github.com/pgsty/pigsty/commit/dd646775624ddb33aef7884f4f030682bdc371f8) |
|     v0.0.1      |  2019-05-15  | POC                                                                             |   [v0.0.1](https://github.com/Vonng/pg/commit/fa2ade31f8e81093eeba9d966c20120054f0646b)   |
{.stretch-last}


------

## v4.5.0

> **WIP:** This draft is based on local source code and package catalogs as of **2026-08-09**. The default Silo backend, multi-cluster MINIO identity, SOW repository generation, and Metrics V3 collection are now present in the current source, but candidate platform coverage, repository indexing and signing, offline bundles, the upgrade/rollback matrix, and the public release still require separate acceptance. Source availability does not mean release availability.

Pigsty v4.5.0 is a feature release focused on new pilot modules, replaceable data services, cluster-identity-aware orchestration, and the software supply chain. It introduces Kafka KRaft and MySQL 8.4 modules, adds Valkey as a REDIS engine and RustFS as a MINIO backend, and expands the packaged extension catalog to 572 extensions.

**Highlights**

- **572 extensions:** The packaged catalog grows from 531 to 572 extensions, while the broader [PGEXT.CLOUD catalog](https://pgext.cloud) expands to 2,238 entries.
- **Kafka KRaft module:** Adds native Pigsty orchestration for Kafka, with multi-cluster support, dynamic member enrollment and retirement, SCRAM/TLS, secure credential rotation, monitoring metrics, and Grafana dashboards.
- **MySQL 8.4 module:** Adds standalone and three-node InnoDB Cluster deployments, MySQL Router, XtraBackup, user and database provisioning, monitoring and alerting, and idempotent reconciliation.
- **Valkey and RustFS:** The REDIS module adds `redis_type: valkey`; the MINIO module adds `minio_type: rustfs`, together with dedicated monitoring, alerts, and Grafana dashboards.
- **52 configuration templates:** Adds `demo/kafka`, `demo/mysql`, `demo/rustfs`, and the eight-node `ha/octo` simulation template to the 48 standalone templates in v4.4.0.
- **Safer cluster-identity orchestration:** PGSQL, REDIS, MINIO, KAFKA, MYSQL, and their removal playbooks select hosts by explicit cluster identity and exit early on unrelated hosts. etcd delegation and DBSU key exchange now use actual cluster members as well.
- **Kernel and toolchain updates:** Completes pgBackRest support for PostgreSQL 19 beta2, enables cluster mode for Percona PostgreSQL TDE, fixes IvorySQL initialization and WAL compression, and updates Pig for SOW repository generation and Grafana Dashboard API v2.

**New Modules and Data Services**

- The [Kafka module](/docs/kafka/) uses node state as the source of truth for dynamic KRaft orchestration. It can manage multiple clusters in one inventory and performs explicit checks for partial host limits, existing formatting state, member enrollment, controller retirement, and credential rotation.
- The [MySQL pilot module](/docs/pilot/mysql/) targets MySQL 8.4 LTS and supports either a standalone instance or a three-node InnoDB Cluster. It includes MySQL Shell and Router, scheduled XtraBackup backups, TLS, account provisioning, primary-key policy checks, and complete monitoring dashboards.
- The REDIS module retains `redis` as its default engine and can deploy Valkey with `redis_type: valkey`. Service units now use `Type=notify`, with stronger topology validation, password handling, and rebuild protection.
- The MINIO module uses `minio_type` to select among the `silo`, `minio`, and `rustfs` backends; the current source defaults to Silo. All three reuse the cluster, user, bucket, and service-exposure interfaces, while RustFS uses native OTLP metrics and readiness probes.
- The Infra package line adds `silo` and `mcli`. Silo preserves the S3/Admin APIs, `/minio/*` routes, `MINIO_*` environment variables, and disk format. `minio_cluster` must now be defined explicitly in object-storage cluster variables, while the inventory group name may differ from the cluster identity.
- The standalone FERRET module is replaced by [PostgreSQL Mongo mode](/docs/conf/mongo/) and the FerretDB Docker APP. PostgreSQL provides the DocumentDB data layer, while Docker Compose provides the FerretDB protocol layer.

**Orchestration, Security, and Fixes**

- `deploy.yml`, `slim.yml`, and the PGSQL, REDIS, MINIO, KAFKA, and MYSQL initialization and removal playbooks now skip unrelated hosts according to the corresponding `*_cluster` identity. Roles retain a second identity check internally.
- PGSQL configuration, PITR, and removal workflows delegate only when the canonical `etcd` group exists and has at least one member; they no longer silently fall back to localhost when no etcd target exists. DBSU SSH keys are exchanged through the actual `pg_cluster_members`, correctly covering cross-inventory-group topologies such as Citus.
- HAProxy uses the fixed `/etc/haproxy/haproxy.cfg` and `/etc/haproxy/conf.d` layout, upstream master-worker mode, a master socket, and `Type=notify`. dnsmasq can now process node addresses added after INFRA initialization.
- Rendered systemd units managed by Pigsty are consistently placed under `/etc/systemd/system`; permissions on sensitive configuration and privileged files are tightened further. Removal workflows stop services before entering the data-cleanup phase.
- The REPO and CACHE roles now use `sow create --pigsty` to atomically generate RPM/APT metadata and the SHA-256 `repo_complete` marker, and no longer generate fake ModuleMD metadata. Cluster-size type comparisons are also fixed for older Ansible versions.
- Fixes duplicate time series produced by the `pg_subrel` query in `pg_exporter` 1.4.1 and improves the RustFS and MinIO dashboards.

**PostgreSQL Kernels and Extension Packages**

- PostgreSQL 19 beta2 templates now include pgBackRest packages and backup support.
- Percona PostgreSQL 18 TDE now uses cluster mode and retains Pigsty-prefixed packages to avoid conflicts with native PostgreSQL packages.
- IvorySQL now initializes its default database correctly and enables compatible WAL compression in workload templates.
- Extension batches from 2026-07-31 through 2026-08-08 cover 18 package families and 23 extension names. See the [RPM changelog](/docs/repo/pgsql/rpm/#2026-08-08) and [DEB changelog](/docs/repo/pgsql/deb/#2026-08-08) for platform-specific differences.

| Package Family    | Old Version | Candidate Version | Summary                                                         |
|:------------------|:------------|:------------------|:----------------------------------------------------------------|
| `cat_tools`       | -           | 0.3.0             | New pure-SQL extension, PG14-18                                  |
| `citus`           | 14.1.0      | 14.2.0            | Includes `citus_columnar`, PG16-18                               |
| `pg_describe`     | -           | 1.0.0             | New, PG17-18                                                     |
| `pg_disorder`     | -           | 0.1.0             | New, PG14-18                                                     |
| `pg_mentat`       | -           | 1.5.7             | Promoted from source-only catalog entry to package, PG14-18      |
| `pg_rational`     | 0.0.2       | 0.0.3             | PIGSTY RPM updated; DEB still uses the PGDG package               |
| `pg_readme`       | 0.7.0       | 0.7.1             | Includes `pg_readme_test_extension`; RPM ingestion still pending |
| `pg_search`       | 0.25.0      | 0.25.1            | PG15-18, pgrx 0.19.1                                            |
| `pg_squeeze`      | 1.9.2       | 1.9.4             | PGDG package, PG14-18                                            |
| `pg_turbovec`     | -           | 1.28.3            | PG14-18; package version still differs from upstream 1.29.0 metadata |
| `pg_vault_tde`    | -           | 1.7.0             | PG17-18, preload required; RPM limited to EL9/10                  |
| `pgbson`          | 2.0.4       | 2.1.0             | Packaged as `postgresbson`, PG14-18                              |
| `pgmnemo`         | 0.15.0      | 0.16.1            | PG17-18                                                          |
| `plpgsql_check`   | 2.10.3      | 2.10.4            | PG14-18                                                          |
| `plruby`          | -           | 2.5.0             | Includes three transform extensions, PG14-18                     |
| `provsql`         | 1.11.0      | 1.12.0            | PG14-18                                                          |
| `timescaledb`     | 2.29.0      | 2.29.1            | PG16-18                                                          |
| `vector`          | 0.8.6       | 0.8.6             | Adds PGDG 0.8.6 packages, PG14-18                                |
{.stretch-last}

**Infrastructure Package Candidates**

This cycle refreshes object storage, observability, database tools, and agent CLIs in the infrastructure repository. The versions below are draft candidates: a successful build does not establish repository indexing, signing, synchronization, or offline-package acceptance. See the [Infra changelog](/docs/repo/infra/log/) for the complete record.

| Package                              | Candidate Version              | Notes                                                       |
|:-------------------------------------|:-------------------------------|:------------------------------------------------------------|
| `silo` / `mcli`                      | 20260806000000                 | Silo replaces the MinIO package name; dual-architecture artifacts verified |
| `rustfs`                             | 1.0.0-rc1                      | Upstream `rc.1-preview.1`                                   |
| `haproxy`                            | 3.4.3                          | Pigsty revision matching the new systemd unit               |
| `redis` / `valkey`                   | 7.2.15 / 9.1.1                 | Dual-engine packages and cross-platform builds              |
| `grafana`                            | 13.1.3                         | Official dual-architecture artifacts                        |
| `victoria-metrics`                   | 1.149.0                        | Main, cluster, and vmutils packages                          |
| `postgrest`                          | 16.0                           | Requires PostgreSQL 14 or later                              |
| `k3s` / `k3s-images`                 | 1.36.3                         | Binary and dual-architecture offline images                 |
| `seaweedfs` / `pgschema`             | 4.41 / 1.12.2                  | Storage and schema-management tool updates                  |
| `codex` / `claude` / `opencode`      | 0.147.0 / 2.1.226 / 1.18.15   | Agent CLI refresh                                           |
| `pig`                                | 1.6.1 (follow-up commit)       | Extension catalog refresh; later commit adds SOW and Dashboard v2 integration |
{.stretch-last}

**Compatibility Changes and Upgrade Notes**

- Existing FERRET deployments should remove the legacy `ferretdb` systemd service and redeploy the protocol layer with `docker.yml` and `app.yml`. The old `mongo.yml` playbook, `mongo_*` parameters, scrape job, and dedicated dashboard are no longer provided.
- Pigsty no longer renders `/etc/default/haproxy` for the HAProxy unit, although the unit can read it when present. Use only `EXTRAOPTS` for process arguments, not `OPTIONS`. Any `EXTRAOPTS` override must retain `-S /run/haproxy-master.sock` and must not include `-f`.
- New module playbooks require target hosts to define the corresponding `pg_cluster`, `redis_cluster`, `minio_cluster`, `kafka_cluster`, or `mysql_cluster` explicitly. Custom inventories that relied on fixed group names without cluster identity variables must add those identities first.
- Valkey and RustFS are explicit choices: set `redis_type: valkey` or `minio_type: rustfs`, respectively. Silo is the source default for new object-storage deployments; existing MinIO clusters should explicitly retain `minio_type: minio` before upgrading, and switching engines never implies automatic data migration.
- Silo and MinIO remain compatible at the protocol and disk-format layers, but their service, package, and binary names differ. Existing MinIO clusters should set `minio_type: minio` explicitly during upgrades and switch only after the migration and rollback procedures pass acceptance. Package replacement must not be treated as automatic data migration.
- Pigsty's core REPO/CACHE roles require SOW and use `sow create --pigsty` to generate local repositories. Older offline bundles or local repositories without SOW 0.2.0 must first install or refresh it from the Pigsty INFRA repository. `pig repo create` is a separate CLI path whose fallback behavior depends on its own version.

**Release Freeze Checklist**

- Validate the default Silo backend, multiple MINIO clusters, deletion safety boundaries, and the Metrics V3 scrape/alert loop, and complete the MinIO-to-Silo upgrade and rollback matrix.
- Validate the bootstrap and refresh path for older offline bundles and local repositories that do not include SOW.
- Complete end-to-end validation of the Grafana Dashboard API v2 importer, MinIO Metrics V3, and native RustFS OTLP dashboards.
- Resolve the `pg_turbovec` version and metadata mismatch and finish `pg_readme` RPM ingestion; recheck RPM/DEB differences and complete candidate repository indexing, signing, synchronization, and public availability checks.
- Run final lifecycle and offline-deployment acceptance for Kafka, MySQL, Valkey, RustFS/Silo, and the standard OS matrix. CLICK currently includes only ClickHouse repository integration and must not yet be listed as a delivered standalone deployment module.


------

## v4.4.0

Pigsty v4.4.0 is a maintenance release centered on PostgreSQL 18.4, PostgreSQL 19 beta readiness, 531 extensions, refreshed kernel variants, and broader platform coverage.

Released on **2026-07-10**. See the [GitHub release](https://github.com/pgsty/pigsty/releases/tag/v4.4.0) and [all changes since v4.3.0](https://github.com/pgsty/pigsty/compare/v4.3.0...v4.4.0).

**Highlights**

- **PostgreSQL 18.4 / 19 beta:** PostgreSQL 18.4 is now the production default, with a minimal PostgreSQL 19 beta template for evaluation.
- **531 extensions and refreshed kernels:** The catalog adds 21 extensions and updates major PostgreSQL variants across the supported platform matrix.
- **Safer operations with Pig 1.5.1:** New clone, fork, and PITR workflows arrive alongside automatic VIP discovery, Zstandard pgBackRest compression, and dedicated Patroni log collection.
- **Security, applications, and tooling:** Secret handling and repository automation are hardened, with new app templates, a redesigned portal, and optional Codex support.
- **Platform validation:** All 14 offline deployment tests pass across seven OS baselines on both `x86_64` and `aarch64`.
- **Offline artifacts:** The Community Edition publishes six dual-architecture offline packages for Debian 13, EL 10, and Ubuntu 24.04 on GitHub. Prebuilt packages for the other validated baselines are available with the Professional Edition.

**Upgrade Notes**

- Generated pgBackRest configurations now use `compress-type=zst`; preserve intentional local overrides before re-rendering them. [#744](https://github.com/pgsty/pigsty/issues/744)
- Patroni logs now use `/pg/log/patroni` and `job=patroni`; update custom log queries and alert rules that use the old syslog selector.
- VIP interfaces now default to `auto`, dnsmasq records move to `/etc/dnsmasq.d/pigsty`, and Pigsty manages `/etc/default/haproxy`; preserve explicit network overrides where needed.
- The default etcd backend quota drops from 16 GiB to 8 GiB; check existing backend usage before applying the new configuration.
- `pig` automation must use `-y/--yes` for destructive commands, while `pig pb restore` and `pig pitr` require one explicit recovery target. See the [`pig` v1.5](https://pigsty.io/docs/pig/release/#v150) notes.
- Supabase analytics moves to the `_supabase` database and `_analytics` schema; existing deployments should create them before switching stacks.

**Security and Operations**

- The `pg-pitr` wrapper adds safer target selection, timelines, dry runs, and stronger checks against unsafe recovery targets.
- Application secrets are hidden from Ansible output, generated `.env` files use mode `0600`, and Grafana no longer prints the administrator password.
- The `dbsu` sudo policy gains controlled journal access, while the repository adds a security policy, CodeQL, Dependabot, pinned actions, and release-signing automation.

**Applications and Tooling**

- Added Immich, Maybe, and JumpServer templates; refreshed Supabase, Dify, InsForge, Registry, Jupyter, Kong, Odoo, Teable, Mattermost, and related launch helpers.
- Rebuilt the bilingual infrastructure portal and added opt-in Codex CLI support to the experimental VIBE module; Claude Code remains its default managed coding agent.
- Removed the legacy FerretDB Compose template; the FERRET module remains available.

**Bug Fixes**

- Fixed EL10 PostgreSQL/libpq provider conflicts, EPEL path handling, and PGDG minor-version repository rules. [#752](https://github.com/pgsty/pigsty/issues/752)
- Reused an existing `/www` directory during bootstrap and fixed Redis Sentinel HA password rendering. [#753](https://github.com/pgsty/pigsty/issues/753) [#748](https://github.com/pgsty/pigsty/issues/748)
- Corrected RPM naming and package groups for `pg_http`, `pg_gzip`, `apache-age`, and `odbc_fdw`. [#750](https://github.com/pgsty/pigsty/issues/750)
- Prevented unexpected service starts during Debian and Ubuntu package installation, and improved EL9 aarch64 Patroni package handling.
- Fixed VirtualBox private-network routing and default NIC selection.
- Fixed shell portability and Vector log lifecycle issues, along with PG19 `io_workers`, Teable HBA, and application runtime defaults.

**PostgreSQL and Extension Package Changes**

The release adds 21 extensions, updates the PostgreSQL 18.4 package graph, introduces the PostgreSQL 19 beta template, and refreshes major kernel variants. Versions below are verified against final repository metadata and, where bundled, the v4.4.0 artifacts; PG major ranges describe catalog and repository coverage.

[PostgreSQL RPM changes](https://pigsty.io/docs/repo/pgsql/rpm/) · [PostgreSQL DEB changes](https://pigsty.io/docs/repo/pgsql/deb/) · [Infrastructure package changes](https://pigsty.io/docs/repo/infra/log/)

| Package               | Old Version         | New Version                    | Notes                                            |
|-----------------------|---------------------|--------------------------------|--------------------------------------------------|
| `polardb-17`          | `17.9.1.0`          | `17.10.1.0`                    | PG 17; RPM added                                 |
| `agensgraph-17`       | `2.16.0`            | `2.17.0`                       | PG 17.10                                         |
| `openhalodb-14`       | `1.0-beta`          | `1.0-2`                        | OpenHaloDB                                       |
| `babelfish-17`        | `5.4.0`             | `5.4.0`                        | PG 17.7; rebuild                                 |
| `babelfish-18`        | -                   | `6.0.0`                        | PG 18.3                                          |
| `pgedge`              | `17.9 / 18.3`       | `15.18 / 16.14 / 17.10 / 18.4` | PG 15/16 added; PG 17/18 updated; Spock 5.0.10   |
| `ivorysql-18`         | `5.0`               | `5.4`                          | PG 18; RPM added                                 |
| `cloudberry`          | `2.1.0-1`           | `2.1.0-2 / 2.1.0-3`            | DEB/RPM rebuild; RPM path `/usr/cloudberry`      |
| `cloudberry-backup`   | `2.1.0-1`           | `2.1.0-2 / 2.1.0-3`            | backup subpackage                                |
| `cloudberry-pxf`      | `2.1.0-1`           | `2.1.0-2 / 2.1.0-3`            | PXF subpackage                                   |
| `pg_ducklake`         | -                   | `1.0.0`                        | PG 14-18                                         |
| `psql_bm25s`          | -                   | `0.4.13`                       | BM25 retrieval; PG 17-18                         |
| `mongo_fdw`           | `5.5.3`             | `5.5.3`                        | new DEB packaging; existing PGDG RPM, PG 14-18   |
| `multicorn`           | `3.2`               | `3.2`                          | new DEB packaging; existing PGDG RPM, PG 14-18   |
| `pg_orca`             | -                   | `1.0.0`                        | PG 18 only                                       |
| `pg_sorted_heap`      | -                   | `0.14.0`                       | PG 16-18                                         |
| `pg_stl`              | -                   | `1.0.0`                        | PG 16-18                                         |
| `fsm_core`            | -                   | `1.1.0`                        | PG 15-18                                         |
| `pg_projection`       | -                   | `1.0.0`                        | PG 14-18                                         |
| `graph`               | -                   | `0.1.7`                        | PG 14-18                                         |
| `jsonschema`          | -                   | `0.1.9`                        | PG 14-18                                         |
| `pg_durable`          | -                   | `0.2.2`                        | PG 14-18                                         |
| `pg_stat_log`         | -                   | `0.1`                          | PG 18 only                                       |
| `pg_stat_plans`       | -                   | `2.1.0`                        | PG 16-18                                         |
| `pg_task`             | `1.0.0`             | `2.1.29`                       | PG 14-18, pcre2grep fix                          |
| `pg_stat_backtrace`   | -                   | `1.0.0`                        | PG 14-18; libunwind                              |
| `pg_mockable`         | -                   | `1.1.0`                        | PG 14-18                                         |
| `db2fce`              | -                   | `0.0.17`                       | PG 14-18                                         |
| `pg_uuid_v8`          | -                   | `1.0.0`                        | PG 14-18                                         |
| `pg_extra_time`       | `2.0.0`             | `2.1.0`                        | PG 14-18                                         |
| `pg_pinyin`           | `0.0.2`             | `0.0.4`                        | PG 14-18                                         |
| `passwordpolicy`      | -                   | `2.0.5`                        | PG 14-18                                         |
| `pgdisablelogerror`   | -                   | `1.0`                          | PG 14-18                                         |
| `plpgsql_wrap`        | -                   | `1.0`                          | PG 14-18                                         |
| `timescaledb`         | `2.26.4`            | `2.28.2`                       | PG 15-18                                         |
| `documentdb`          | `0.110`             | `0.113`                        | PG 15-18                                         |
| `citus`               | `14.0.0-4`          | `14.1.0`                       | PG 16-18                                         |
| `pgvector`            | `0.8.2`             | `0.8.4`                        | PG 14-18                                         |
| `orioledb`            | `1.7-beta15`        | `1.8-beta16`                   | Build for PG 16, 17, 18                          |
| `pg_search`           | `0.23.1`            | `0.24.0`                       | PG 15-18                                         |
| `pg_textsearch`       | `1.1.0`             | `1.2.0`                        | BM25 full-text search, PG 17-18                  |
| `storage_engine`      | `1.3.4`             | `2.4.0`                        | PGXN 2.x bump, PG 15-18                          |
| `pg_clickhouse`       | `0.2.0`             | `0.3.2`                        | PGXN bump, ClickHouse integration                |
| `provsql`             | `1.2.3`             | `1.10.0`                       | PGXN bump, PG 14-18                              |
| `pgclone`             | `4.0.0`             | `4.3.2`                        | PGXN bump, PG 14-18                              |
| `biscuit`             | `2.2.2`             | `2.4.0` DEB / `2.4.1` RPM      | PG 16-18                                         |
| `pgmnemo`             | `0.7.2`             | `0.12.1`                       | PG 14-18                                         |
| `rdf_fdw`             | `2.5.0`             | `2.6.0`                        | PG 14-18, libcurl compatibility patch            |
| `roaringbitmap`       | `1.1.0`             | `1.2.0-2`                      | PG 14-18, llvm-lto packaging fix                 |
| `plpgsql_check`       | `2.9.0`             | `2.9.2`                        | PG 14-18                                         |
| `timescaledb_toolkit` | `1.22.0`            | `1.23.0`                       | PG 15-18, pgrx 0.18.1                            |
| `wrappers`            | `0.6.0`             | `0.6.1`                        | PG 14-18, pgrx 0.18.1                            |
| `pgrdf`               | `0.5.0`             | `0.6.4`                        | PG 14-17, pgrx 0.18.1                            |
| `pg_graphql`          | `1.5.12`            | `1.6.1`                        | PG 14-18, pgrx 0.18.1                            |
| `pg_anon`             | `3.0.13`            | `3.1.1`                        | PG 14-18, pgrx 0.18.1                            |
| `pg_kazsearch`        | `2.0.0`             | `2.2.0`                        | PG 16-18, pgrx 0.18.1                            |
| `pg_session_jwt`      | `0.4.0`             | `0.5.0`                        | PG 14-18, pgrx 0.18.1                            |
| `pg_tzf`              | `0.2.4`             | `0.3.0`                        | PG 14-18, pgrx 0.18.1                            |
| `pg_vectorize`        | `0.26.1`            | `0.26.2`                       | PG 14-18, pgrx 0.18.1                            |
| `pglinter`            | `1.1.2`             | `2.0.0`                        | PG 14-18, pgrx 0.18.1                            |
| `pgmqtt`              | `0.1.0`             | `0.3.0`                        | PG 14-18, pgrx 0.18.1                            |
| `etcd_fdw`            | `0.0.0`             | `0.0.1`                        | PG 14-18, pgrx 0.18.1                            |
| `pg_http`             | `1.7.0`             | `1.7.1`                        | PG 14-18, RPM rename to `pgsql_http_$v`          |
| `pg_gzip`             | `1.0.0`             | `1.1.0`                        | PG 14-18, RPM rename to `pgsql_gzip_$v`          |
| `age`                 | `1.7.0`             | `1.7.0`                        | PG 17-18, RPM rename to `age_$v`                 |
| `pg_trickle`          | `0.40.0`            | `0.81.0`                       | PG 18 only                                       |
| `re2`                 | `0.1.1`             | `0.4.0`                        | PG 16-18                                         |
| `pg_background`       | `1.9.2`             | `2.0.2` DEB / `2.0` RPM        | PG 14-18                                         |
| `firebird_fdw`        | `1.4.1`             | `1.4.2`                        | PG 14-18                                         |
| `pg_net`              | `0.20.2`            | `0.20.3`                       | DEB + EL10 RPM; EL8/9 RPM stays on `0.9.2`       |
| `pg_dirtyread`        | `2.7`               | `2.8`                          | PG 14-18                                         |
| `pg_stat_ch`          | `0.3.6`             | `0.3.6`                        | PG 16-18, rebuild                                |
| `pggraph`             | `0.1.5`             | `0.1.7`                        | PG 14-18                                         |
| `pgsql_tweaks`        | `1.0.2`             | `1.0.5`                        | PG 14-18; PGDG RPM also carries `1.0.3`          |
| `pgfincore`           | `1.3.1`             | `1.4.0`                        | PG 14-18                                         |
| `toastinfo`           | `1.5`               | `1.7`                          | PG 14-18                                         |
| `pg_ivm`              | `1.14`              | `1.15` DEB / `1.14` RPM        | PG 14-18                                         |
| `timeseries`          | `0.2.0`             | `0.2.1`                        | PG 14-18                                         |
{.stretch-last}

**Infrastructure Package Changes**

| Package                      | Old Version      | New Version      | Notes                               |
|------------------------------|------------------|------------------|-------------------------------------|
| `pig`                        | `1.4.1`          | `1.5.1`          |                                     |
| `pg_exporter`                | `1.2.2`          | `1.3.0`          |                                     |
| `pgschema`                   | `1.9.0`          | `1.12.0`         |                                     |
| `pgstream`                   | `1.0.1`          | `1.1.1`          |                                     |
| `pg-hardstorage`             | -                | `1.0.8`          |                                     |
| `codex`                      | `0.125.0`        | `0.144.1`        |                                     |
| `claude`                     | `2.1.123`        | `2.1.206`        |                                     |
| `opencode`                   | `1.14.30`        | `1.17.18`        |                                     |
| `agentsview`                 | `0.26.0`         | `0.37.5`         |                                     |
| `genai-toolbox`              | `1.1.0`          | `1.6.0`          | packaged as `mcp-toolbox`           |
| `crush`                      | `0.64.0`         | `0.84.0`         |                                     |
| `code`                       | `1.118.1`        | `1.128.0`        |                                     |
| `code-server`                | `4.117.0`        | `4.127.0`        |                                     |
| `victoria-metrics`           | `1.142.0`        | `1.147.0`        |                                     |
| `victoria-metrics-cluster`   | `1.142.0`        | `1.147.0`        |                                     |
| `vmutils`                    | `1.142.0`        | `1.147.0`        |                                     |
| `victoria-logs`              | `1.50.0`         | `1.51.0`         |                                     |
| `vlagent`                    | `1.50.0`         | `1.51.0`         |                                     |
| `vlogscli`                   | `1.50.0`         | `1.51.0`         |                                     |
| `victoria-traces`            | `0.8.2`          | `0.9.4`          |                                     |
| `prometheus`                 | `3.11.3`         | `3.13.1`         |                                     |
| `alertmanager`               | `0.32.1`         | `0.33.1`         |                                     |
| `pushgateway`                | `1.11.2`         | `1.11.3`         |                                     |
| `node_exporter`              | `1.11.1`         | `1.11.1`         | tarball cache; version metadata fix |
| `redis_exporter`             | `1.82.0`         | `1.86.0`         |                                     |
| `mongodb_exporter`           | `0.50.0`         | `0.51.0`         |                                     |
| `grafana`                    | `13.0.1`         | `13.1.0`         |                                     |
| `grafana-victorialogs-ds`    | `0.26.3`         | `0.29.0`         |                                     |
| `grafana-victoriametrics-ds` | `0.24.0`         | `0.25.2`         |                                     |
| `vector`                     | `0.55.0`         | `0.56.0`         |                                     |
| `minio`                      | `20260417000000` | `20260618000000` |                                     |
| `seaweedfs`                  | `4.22`           | `4.39`           |                                     |
| `rustfs`                     | `1.0.0-b1`       | `1.0.0-b8`       | prerelease line                     |
| `duckdb`                     | `1.5.2`          | `1.5.4`          |                                     |
| `kafka`                      | `4.2.0`          | `4.3.1`          |                                     |
| `etcd`                       | `3.6.10`         | `3.6.13`         |                                     |
| `restic`                     | `0.18.1`         | `0.19.1`         |                                     |
| `juicefs`                    | `1.3.1`          | `1.4.0`          |                                     |
| `tigerbeetle`                | `0.17.2`         | `0.17.9`         |                                     |
| `tigerfs`                    | `0.6.0`          | `0.7.0`          |                                     |
| `caddy`                      | `2.11.2`         | `2.11.4`         |                                     |
| `cloudflared`                | `2026.2.0`       | `2026.7.1`       |                                     |
| `headscale`                  | `0.28.0`         | `0.29.2`         |                                     |
| `v2ray`                      | `5.48.0`         | `5.51.2`         |                                     |
| `nodejs`                     | `24.15.0`        | `24.18.0`        |                                     |
| `golang`                     | `1.26.2`         | `1.26.5`         |                                     |
| `hugo`                       | `0.161.1`        | `0.164.0`        |                                     |
| `uv`                         | `0.11.8`         | `0.11.28`        |                                     |
| `rclone`                     | `1.73.5`         | `1.74.4`         |                                     |
| `asciinema`                  | `3.2.0`          | `3.2.1`          |                                     |
| `stalwart`                   | `0.16.2`         | `0.16.12`        |                                     |
| `maddy`                      | `0.9.3`          | `0.9.5`          |                                     |
| `dblab`                      | `0.38.0`         | `0.43.0`         |                                     |
| `npgsqlrest`                 | `3.12.0`         | `3.20.0`         |                                     |
| `postgrest`                  | `14.10`          | `14.14`          |                                     |
| `sabiql`                     | `1.11.1`         | `1.14.0`         |                                     |
| `pev2`                       | `1.21.0`         | `1.22.0`         |                                     |
| `rainfrog`                   | `0.3.18`         | `0.3.19`         |                                     |
{.stretch-last}

The MD5 list below covers all 14 validated artifacts. Six Community Edition artifacts are published on GitHub, while the remaining eight are delivered with the Professional Edition. GitHub records SHA-256 digests for the uploaded Community Edition artifacts.

**Checksums**

```bash
7de8b932412f1863fd9c033a7be355d7  pigsty-pkg-v4.4.0.d12.aarch64.tgz
2e5006a8d35eb1c087dc0ed11cf14d14  pigsty-pkg-v4.4.0.d12.x86_64.tgz
955308c00d3890f6e82a6a83bc624760  pigsty-pkg-v4.4.0.d13.aarch64.tgz
350f31c66de0aafff3bd91c2c9d740a0  pigsty-pkg-v4.4.0.d13.x86_64.tgz
0b4817a8edbab0bdf37ecee730fb0412  pigsty-pkg-v4.4.0.el10.aarch64.tgz
4584a61e4456749e68d86e4817cfe526  pigsty-pkg-v4.4.0.el10.x86_64.tgz
21621daf510a532829c36464d48f9198  pigsty-pkg-v4.4.0.el9.aarch64.tgz
504afd5030e2738a25e1b4c570d0e654  pigsty-pkg-v4.4.0.el9.x86_64.tgz
461c999424dee587ca33fe1a63df40d7  pigsty-pkg-v4.4.0.u22.aarch64.tgz
20ccc5ab8f9f4648b05bcd304f9fb5fc  pigsty-pkg-v4.4.0.u22.x86_64.tgz
d092c48ee55116ed5e2c99a3d909ccdd  pigsty-pkg-v4.4.0.u24.aarch64.tgz
24fa5399d8421305961fcaf91325b382  pigsty-pkg-v4.4.0.u24.x86_64.tgz
36f69b699d8b3041d35384970e157631  pigsty-pkg-v4.4.0.u26.aarch64.tgz
330047d117b20f04317dce506edd5d9a  pigsty-pkg-v4.4.0.u26.x86_64.tgz
3077203c0c656ec99abc32b227f6566b  pigsty-v4.4.0.tgz
```


------

## v4.3.0

**Highlights**

- Added about 50 PostgreSQL extensions, bringing the total available extension count to 510.
- Added Ubuntu 26.04 x86_64/arm64 support, deprecated Ubuntu 20.04 support, and refreshed minor OS variants to Debian 13.4 / Ubuntu 24.04.4.
- Kernel updates: Supabase is updated to the latest version, pgEdge to PG 18, and PolarDB to PG 17.
- Grafana is updated to 13.0.1, and MinIO now uses the pgsty branch with CVE fixes.
- Vagrant templates now consistently use cloud-image series images.

**Bug Fixes**

- Relaxed PostgreSQL username validation to allow `@.-` in usernames.
- Fixed IPv6 nameserver parsing so DNS configuration is not limited to legacy IPv4 DNS server extraction.
- Changed the VictoriaTraces Grafana datasource path to `/select/jaeger`.
- Made Vagrant disk probing more robust and added `bin/el-fix`, a guest-network fix script for EL Vagrant images.

**PostgreSQL and Extension Package Changes**

| Package              | Old Version | New Version | Notes                                                                   |
|:---------------------|:------------|:------------|:------------------------------------------------------------------------|
| `block_copy_command` | -           | 0.1.5       | New; PG 14-18; Rust/pgrx 0.17.0                                         |
| `cloudberry`         | 2.0.0       | 2.1.0       | Kernel package group; RPM release 2 fixes initdb errno issue            |
| `cloudberry-backup`  | -           | 2.1.0       | New Cloudberry backup tool package                                      |
| `cloudberry-pxf`     | -           | 2.1.0       | New Cloudberry PXF package                                              |
| `credcheck`          | 4.6         | 4.7         | Upgrade; PG 14-18; PGDG                                                 |
| `datasketches`       | -           | 1.7.0       | New; PG 14-18                                                           |
| `ddl_historization`  | 0.0.7       | 0.2         | Upgrade                                                                 |
| `documentdb`         | 0.109       | 0.110       | Upgraded to upstream version; PG 15-18                                  |
| `external_file`      | -           | 1.2         | New; PG 14-18                                                           |
| `logical_ddl`        | -           | 0.1.0       | New; PG 14-18                                                           |
| `nominatim_fdw`      | 1.1.0       | 1.2         | Upgrade                                                                 |
| `onesparse`          | -           | 1.0.0       | New; PG 18 only                                                         |
| `orioledb`           | beta15 1.7  | beta15 1.7  | Paired with OriolePG 17.18                                              |
| `oriolepg`           | 17.16       | 17.18       | Kernel patch set update                                                 |
| `parray_gin`         | -           | 1.5.0       | Added, then upgraded; PG 14-18                                          |
| `pg_accumulator`     | -           | 1.1.3       | New; PG 14-18                                                           |
| `pg_anon`            | 3.0.1       | 3.0.13      | Upgrade; Rust/pgrx 0.16.1 -> 0.17.0                                     |
| `pg_background`      | 1.8         | 1.9.2       | DEB only                                                                |
| `pg_bikram_sambat`   | -           | 0.1.0       | New; Bikram Sambat date type and AD/BS conversion functions             |
| `pg_byteamagic`      | -           | 0.2.4       | New; PG 14-18                                                           |
| `pg_cardano`         | 1.1.1       | 1.2.0       | Upgrade; Rust/pgrx 0.17.0                                               |
| `pg_clickhouse`      | 0.1.5       | 0.2.0       | Upgrade                                                                 |
| `pg_datasentinel`    | -           | 1.0         | New; PG 15-18                                                           |
| `pg_dbms_job`        | 1.5         | 2.0         | Upgrade; PG 14-18; PGDG                                                 |
| `pg_dispatch`        | -           | 0.1.5       | New; PG 14-18                                                           |
| `pg_failover_slots`  | 1.2.0       | 1.2.1       | Upgrade                                                                 |
| `pg_fsql`            | -           | 1.1.0       | New; PG 14-18                                                           |
| `pg_incremental`     | 1.4.1       | 1.5.0       | Upgrade                                                                 |
| `pg_isok`            | -           | 1.4.1       | New; PG 14-18                                                           |
| `pg_ivm`             | 1.13        | 1.14        | Upgrade; PG 14-18                                                       |
| `pg_kazsearch`       | -           | 2.0.0       | New; PG 16-18; Rust/pgrx 0.17.0                                         |
| `pg_liquid`          | -           | 0.1.7       | New; PG 14-18                                                           |
| `pg_pathcheck`       | -           | 0.9.1       | New; PG 17-18; requires shared_preload_libraries                        |
| `pg_query_rewrite`   | -           | 0.0.5       | New; PG 14-18                                                           |
| `pg_regresql`        | -           | 2.0.0       | New; PG 14-18                                                           |
| `pg_rrf`             | -           | 0.0.3       | New; PG 14-17; Rust/pgrx 0.16.1 -> 0.17.0                               |
| `pg_savior`          | 0.0.1       | 0.1.0       | Upgrade; high-risk DDL/DML guard hook; requires preload or LOAD         |
| `pg_search`          | 0.22.2      | 0.23.1      | Upgrade; PG 15-18; pgrx 0.18.0                                          |
| `pg_slug_gen`        | -           | 1.0.0       | New; PG 15-18                                                           |
| `pg_stat_ch`         | -           | 0.3.6       | Added, then upgraded; PG 16-18; EL8 break                               |
| `pg_store_plans`     | 1.9         | 1.10        | Upgrade                                                                 |
| `pg_strict`          | 1.0.3       | 1.0.5       | Upgrade; Rust/pgrx 0.16.1 -> 0.17.0                                     |
| `pg_text_semver`     | -           | 1.2.1       | New; PG 14-18                                                           |
| `pg_textsearch`      | 0.5.0       | 1.1.0       | Upgrade; PG 17-18; requires shared_preload_libraries                    |
| `pg_trickle`         | 0.16.0      | 0.40.0      | Upgrade; PG 18 only; pgrx 0.18.0                                        |
| `pg_tzf`             | 0.2.3       | 0.2.4       | Upgrade; Rust/pgrx 0.17.0                                               |
| `pg_vectorize`       | 0.26.0      | 0.26.1      | Upgrade; Rust/pgrx 0.16.1 -> 0.17.0                                     |
| `pg_variables`       | -           | 1.2.5       | New; PG 14-18                                                           |
| `pg_when`            | -           | 0.1.9       | New; PG 14-18; Rust/pgrx 0.17.0                                         |
| `pgxicor`            | 0.1.0       | 0.1.1       | Upgrade                                                                 |
| `pgcalendar`         | -           | 1.1.0       | New; PG 14-18                                                           |
| `pgclone`            | -           | 4.0.0       | Added, then upgraded; PG 14-18                                          |
| `pgelog`             | -           | 1.0.2       | New; PG 14-18                                                           |
| `pglinter`           | 1.1.1       | 1.1.2       | Upgrade; Rust/pgrx 0.16.1 -> 0.17.0                                     |
| `pglock`             | -           | 1.0.0       | New; PG 14-18                                                           |
| `pgmq`               | 1.11.0      | 1.11.1      | Upgrade; PG 14-18                                                       |
| `pgmqtt`             | -           | 0.1.0       | New; PG 14-18; Rust/pgrx 0.16.1 -> 0.17.0                               |
| `pgproto`            | -           | 0.5.0       | Added, then upgraded; native Protobuf support                           |
| `pghydro`            | -           | 6.6         | New; PG 14-18                                                           |
| `pgx_ulid`           | 0.2.2       | 0.2.3       | Upgrade; Rust/pgrx 0.17.0                                               |
| `plv8`               | 3.2.4       | 3.2.4-2     | RPM only; EL10 build fix                                                |
| `PolarDB`            | 15.15       | 17.9.1.0    | PG 15 -> 17                                                             |
| `postgresbson`       | -           | 2.0.2       | New; PG 14-18                                                           |
| `postgis`            | 3.6.2       | 3.6.3       | DEB only                                                                |
| `prefix`             | 1.2.10      | 1.2.11      | Upgrade; PG 14-18; PGDG                                                 |
| `provsql`            | -           | 1.2.3       | New; PG 14-18                                                           |
| `rdf_fdw`            | -           | 2.5.0       | Added, then upgraded; PG 14-18                                          |
| `rdkit`              | -           | 202503.6    | New; PG 14-18                                                           |
| `re2`                | -           | 0.1.1       | New; PG 16-18                                                           |
| `storage_engine`     | -           | 1.3.4       | Added, then upgraded; columnar and row-compression table access methods |
| `supautils`          | 3.1.0       | 3.2.1       | Upgrade                                                                 |
| `system_stats`       | 3.2         | 4.0         | Upgrade                                                                 |
| `timescaledb`        | 2.25.2      | 2.26.4      | Upgrade; TSL minor update                                               |
| `ulak`               | -           | 0.0.2       | New; PG 14-18                                                           |
| `wrappers`           | 0.5.7       | 0.6.0       | Upgrade; Rust/pgrx 0.16.1 -> 0.17.0                                     |
{.stretch-last}


**Infrastructure Package Updates**

| Package                      | Old Version    | New Version    | Notes                                                        |
|:-----------------------------|:---------------|:---------------|:-------------------------------------------------------------|
| `alertmanager`               | 0.31.1         | 0.32.1         |                                                              |
| `agentsview`                 | 0.15.0         | 0.26.0         |                                                              |
| `claude`                     | 2.1.81         | 2.1.123        | Downloaded through the 8118 proxy and verified               |
| `code`                       | 1.112.0        | 1.118.1        | Direct-link metadata update                                  |
| `code-server`                | 4.112.0        | 4.117.0        | Direct-link metadata update                                  |
| `codex`                      | 0.116.0        | 0.125.0        | Moved from prerelease track to stable, then upgraded further |
| `crush`                      | 0.51.2         | 0.64.0         | Direct-link metadata update                                  |
| `dblab`                      | 0.34.3         | 0.38.0         |                                                              |
| `duckdb`                     | 1.5.0          | 1.5.2          |                                                              |
| `etcd`                       | 3.6.9          | 3.6.10         | Unified package version                                      |
| `garage`                     | 2.2.0          | 2.3.0          |                                                              |
| `genai-toolbox`              | 0.27.0         | 1.1.0          | Upstream renamed to mcp-toolbox                              |
| `golang`                     | 1.26.1         | 1.26.2         |                                                              |
| `grafana`                    | 12.4.1         | 13.0.1         | Metadata refreshed after major upgrade                       |
| `grafana-infinity-ds`        | 3.7.4          | 3.8.0          |                                                              |
| `grafana-plugins`            | 12.3.0         | 13.0.0         | Noarch plugin bundle, manually collected                     |
| `grafana-victoriametrics-ds` | 0.23.1         | 0.24.0         |                                                              |
| `hugo`                       | 0.158.0        | 0.161.1        |                                                              |
| `maddy`                      | 0.8.2          | 0.9.3          |                                                              |
| `mcli`                       | 20260321000000 | 20260417000000 | pgsty branch, CVE fixed                                      |
| `minio`                      | 20260325000000 | 20260417000000 | pgsty branch, CVE fixed                                      |
| `mongodb_exporter`           | 0.49.0         | 0.50.0         |                                                              |
| `node_exporter`              | 1.10.2         | 1.11.1         |                                                              |
| `nodejs`                     | 24.14.0        | 24.15.0        | Stays on the 24.x policy line                                |
| `npgsqlrest`                 | 3.11.1         | 3.12.0         |                                                              |
| `opencode`                   | 1.2.27         | 1.14.30        | Switched to versioned cache and rebuilt                      |
| `pg_exporter`                | 1.2.1          | 1.2.2          | Direct-link metadata update                                  |
| `pgflo`                      | 0.0.15         | -              | Removed                                                      |
| `pgschema`                   | 1.7.4          | 1.9.0          |                                                              |
| `pig`                        | 1.3.2          | 1.4.1          | Metadata only                                                |
| `postgrest`                  | 14.7           | 14.10          |                                                              |
| `prometheus`                 | 3.10.0         | 3.11.3         |                                                              |
| `rainfrog`                   | 0.3.17         | 0.3.18         |                                                              |
| `rclone`                     | 1.73.2         | 1.73.5         | Direct-link metadata update                                  |
| `rustfs`                     | 1.0.0-alpha.89 | 1.0.0-b1       | Prerelease line                                              |
| `sabiql`                     | 1.8.2          | 1.11.1         |                                                              |
| `seaweedfs`                  | 4.17           | 4.22           |                                                              |
| `sqlcmd`                     | 1.9.0          | 1.10.0         |                                                              |
| `stalwart`                   | 0.15.5         | 0.16.2         |                                                              |
| `tigerbeetle`                | 0.16.77        | 0.17.2         |                                                              |
| `tigerfs`                    | 0.5.0          | 0.6.0          |                                                              |
| `timescaledb-tools`          | 0.18.2         | 0.19.0         | Rebuilt timescaledb-tune                                     |
| `uv`                         | 0.10.12        | 0.11.8         |                                                              |
| `victoria-logs`              | 1.48.0         | 1.50.0         | Main package                                                 |
| `victoria-metrics`           | 1.138.0        | 1.142.0        |                                                              |
| `victoria-metrics-cluster`   | 1.138.0        | 1.142.0        | VictoriaMetrics companion component                          |
| `victoria-traces`            | 0.8.0          | 0.8.2          |                                                              |
| `vip-manager`                | 4.0.0          | 4.2.0          | Direct-link metadata update                                  |
| `vlagent`                    | 1.48.0         | 1.50.0         | VictoriaLogs companion component                             |
| `vlogscli`                   | 1.48.0         | 1.50.0         | VictoriaLogs companion component                             |
| `vmutils`                    | 1.138.0        | 1.142.0        | VictoriaMetrics companion component                          |
| `vector`                     | 0.54.0         | 0.55.0         | Direct-link metadata update                                  |
| `v2ray`                      | 5.47.0         | 5.48.0         |                                                              |
| `xray`                       | 26.2.6         | 26.3.27        |                                                              |

**Checksums**

```bash
58a914fce7bc521b65e167f66e7961a3  pigsty-v4.3.0.tgz
9ce070efb0420057a83c632b2856d1b3  pigsty-pkg-v4.3.0.d12.aarch64.tgz
bf21c36d3aff94a1a6353130597ffa85  pigsty-pkg-v4.3.0.d12.x86_64.tgz
81b4790c4e5567cee9d1beadd06e48e6  pigsty-pkg-v4.3.0.d13.aarch64.tgz
06baab9341ab683eaeea2e066b28a0f4  pigsty-pkg-v4.3.0.d13.x86_64.tgz
fb4bf751df5e09f547c49b8ab7cac9a0  pigsty-pkg-v4.3.0.el10.aarch64.tgz
a3e752c8148122d1eaea74a6d8d8df0d  pigsty-pkg-v4.3.0.el10.x86_64.tgz
cb2a9af36615513e66fd5ac3e9f4d797  pigsty-pkg-v4.3.0.el9.aarch64.tgz
e24641a879dec7a8eea74dab42f85920  pigsty-pkg-v4.3.0.el9.x86_64.tgz
6b675fd8d9e039193481f0838aa4b92c  pigsty-pkg-v4.3.0.u22.aarch64.tgz
c0e344ccb9d190a619591e5d46116424  pigsty-pkg-v4.3.0.u22.x86_64.tgz
3e0ec9534cf595201ec79eb1fc6549d8  pigsty-pkg-v4.3.0.u24.aarch64.tgz
0a3d19513eca9615bdd66a4b2bf66f1d  pigsty-pkg-v4.3.0.u24.x86_64.tgz
683a10ff8fd993358d6befa9f4e02913  pigsty-pkg-v4.3.0.u26.aarch64.tgz
fd1ea5cd5554bfe91fadd51ad80860e3  pigsty-pkg-v4.3.0.u26.x86_64.tgz
```


------

## v4.2.2

**Highlights**

- Insforge 2.0.1 self-hosted template
- Batch infra package updates, MinIO/MCLI updated to 20260321
- New infra packages: tigerfs, pgstream, sql-studio, rainfog, crush
- New PG tools: data recovery pdu, connection pooler pgdog
- Update PG extensions: pg_search, pgsentinel, pg_track_optimizer, pgcollection, pg_ttl_index, pg_clickhouse
- Update PG Kernel: ivorysql 5.1 -> 5.3

**PostgreSQL Package Updates**

| Name               | Old Ver | New Ver   | Note     |
|:-------------------|:--------|:----------|:---------|
| pg_search          | 0.21.12 | 0.22.2    |          |
| pgsentinel         | 1.4.0   | 1.4.1     | rpm only |
| pg_track_optimizer | 0.9.1   | 0.9.2     |          |
| pgcollection       | 1.0.0   | 2.0.0     |          |
| pg_ttl_index       | 2.0.0   | 3.0.0     |          |
| pg_clickhouse      | 0.1.4   | 0.1.5     |          |
| pdu                |         | 3.0.25.12 | new      |
| pgdog              |         | 0.1.32    | new      |

**Infrastructure Package Updates**

| Name                       | Old Ver        | New Ver        | Note |
|:---------------------------|:---------------|:---------------|:-----|
| `grafana`                  | 12.4.0         | 12.4.1         |      |
| `pgbackrest_exporter`      | 0.22.0         | 0.23.0         |      |
| `redis_exporter`           | 1.81.0         | 1.82.0         |      |
| `victoria-logs`            | 1.47.0         | 1.48.0         |      |
| `vlagent`                  | 1.47.0         | 1.48.0         |      |
| `vlogscli`                 | 1.47.0         | 1.48.0         |      |
| `victoria-traces`          | 0.7.1          | 0.8.0          |      |
| `duckdb`                   | 1.4.4          | 1.5.0          |      |
| `pg_timetable`             | 6.2.0          | 6.3.0          |      |
| `pgschema`                 | 1.4.2          | 1.7.4          |      |
| `pgstream`                 | -              | 1.0.1          | new  |
| `tigerbeetle`              | 0.16.75        | 0.16.77        |      |
| `grafana-victorialogs-ds`  | 0.26.2         | 0.26.3         |      |
| `grafana-infinity-ds`      | 3.7.3          | 3.7.4          |      |
| `caddy`                    | 2.11.1         | 2.11.2         |      |
| `npgsqlrest`               | 3.10.0         | 3.11.1         |      |
| `postgrest`                | 14.5           | 14.7           |      |
| `opencode`                 | 1.2.17         | 1.2.27         |      |
| `pev2`                     | 1.20.2         | 1.21.0         |      |
| `golang`                   | 1.26.0         | 1.26.1         |      |
| `vector`                   | 0.53.0         | 0.54.0         |      |
| `rclone`                   | 1.73.1         | 1.73.2         |      |
| `code-server`              | 4.109.5        | 4.112.0        |      |
| `code`                     | 1.109.4        | 1.112.0        |      |
| `seaweedfs`                | 4.15           | 4.17           |      |
| `uv`                       | 0.10.8         | 0.10.12        |      |
| `codex`                    | 0.110.0        | 0.116.0        |      |
| `v2ray`                    | 5.44.1         | 5.47.0         |      |
| `sabiql`                   | 1.6.2          | 1.8.2          |      |
| `sql-studio`               | -              | 0.1.51         | new  |
| `rainfrog`                 | -              | 0.3.17         | new  |
| `agentsview`               | 0.10.0         | 0.15.0         |      |
| `crush`                    | -              | 0.51.2         | new  |
| `tigerfs`                  | -              | 0.5.0          | new  |
| `victoria-metrics`         | 1.137.0        | 1.138.0        |      |
| `victoria-metrics-cluster` | 1.137.0        | 1.138.0        |      |
| `vmutils`                  | 1.137.0        | 1.138.0        |      |
| `hugo`                     | 0.157.0        | 0.158.0        |      |
| `rustfs`                   | 1.0.0-alpha.85 | 1.0.0-alpha.89 |      |
| `mysqld_exporter`          | 0.18.0         | 0.19.0         |      |
| `pg_exporter`              | 1.2.0          | 1.2.1          |      |
| `pig`                      | 1.3.1          | 1.3.2          |      |
| `minio`                    | 20260214       | 20260321       |      |
| `mcli`                     | 20260213       | 20260321       |      |
| `claude`                   | 2.1.68         | 2.1.81         |      |
| `ivroysql`                 | 5.1            | 5.3            |      |

**Checksums**

```bash
0d9f907ff626203578c687d1418b38ba  pigsty-pkg-v4.2.2.d12.aarch64.tgz
4129baf773c3005f4d697cf452f927a0  pigsty-pkg-v4.2.2.d12.x86_64.tgz
40d5a0d9c2a97615bf0421bae42458ae  pigsty-pkg-v4.2.2.d13.aarch64.tgz
cf91113a2296ad11fff79802ac9b1483  pigsty-pkg-v4.2.2.d13.x86_64.tgz
dbccfeb3978ffb928bd0b501c3c0d42d  pigsty-pkg-v4.2.2.el10.aarch64.tgz
8c848a4e3fa93c2455285fbcad5ddd78  pigsty-pkg-v4.2.2.el10.x86_64.tgz
7c15c9a36f7d2dd740019c20e8c75a4b  pigsty-pkg-v4.2.2.el9.aarch64.tgz
7d6e9e529236a0db2382f42660790ed9  pigsty-pkg-v4.2.2.el9.x86_64.tgz
8f64bb14885ce330603172b186062671  pigsty-pkg-v4.2.2.u22.aarch64.tgz
16d4c36c9e1ff848848c34a257b1025c  pigsty-pkg-v4.2.2.u22.x86_64.tgz
401230741af5b04f163ffc8e688315ab  pigsty-pkg-v4.2.2.u24.aarch64.tgz
5312aa0841694fc560778b9377a32c89  pigsty-pkg-v4.2.2.u24.x86_64.tgz
cabeeb898b56b26c0855f33d5e60411a  pigsty-v4.2.2.tgz
```



------

## v4.2.1

A maintenance release that adds 3 new extensions.

**Major Changes**

- **New Extensions**: `pg_eviltransform` is added to the GIS package group, `pg_pinyin` to the FTS group, and `pg_qos` to the admin group — all for PG 14–18.
- **PG13 Removed**: All `pgdg13`, `pgdg13-nonfree` repo entries and PG13 package aliases (`pg13-*`) are removed from every platform variant (EL7/8/9/10, Debian 12/13, Ubuntu 22/24/26, both x86_64 and aarch64).
- Config templates (`fat.yml`, `pro.yml`, `dev.yml`, `el.yml`, `debian.yml`) no longer reference PG13 packages or repos. Extension version comments are updated to reflect PG 14–18 coverage only.
- **Percona Repo**: Origin URL updated from `ppg-18.1` to `ppg-18.3` to track the latest Percona PostgreSQL distribution.
- **Nginx Repo**: Module tag for the Nginx upstream APT repo corrected from `infra` to `nginx` on Debian/Ubuntu platforms.
- **UV Venv Fix**: `roles/node/tasks/pkg.yml` now checks for an existing virtualenv before running `uv venv`, preventing redundant re-creation and potential errors on re-provisioning.
- **Docker Image**: `less` is added to the Pigsty Docker image base packages.
- **Demo Config**: Default firewall rules in `el.yml` and `debian.yml` demo configs now include port `5432` for direct PostgreSQL access.

**Compatibility Notes**

PostgreSQL 13 reached its [end of life](https://www.postgresql.org/support/versioning/) on 2025-11-13.
The PGDG YUM repository has archived and removed the [pg13](https://yum.postgresql.org/news/pg13-end-of-life/) / [pg12](https://yum.postgresql.org/news/pg12-end-of-life/) directories.
If you install Pigsty on EL systems (even without using PG 13), repo access failures may cause installation or update errors.

You can either upgrade directly to Pigsty v4.2.1, or manually edit the `repo_upstream_default` variable in your corresponding OS file under `roles/node_id/vars/` and remove the pg13 repo line.

Additionally, EL8 remains in the Pigsty compatible OS list, but starting from this release, offline packages for EL8 will no longer be published.

No other breaking API or configuration changes in this release.

**7 commits**, 84 files changed, +4,925 / -5,351 lines (`v4.2.0..v4.2.1`, 2026-03-04 ~ 2026-03-06)

**PostgreSQL Package Updates**

| Package          | Old Version | New Version | Notes                                   |
|:-----------------|:------------|:------------|:----------------------------------------|
| timescaledb      | 2.25.1      | 2.25.2      |                                         |
| vchord           | 1.1.0       | 1.1.1       | Added clang build dependency, bug fixes |
| vchord_bm25      | 0.3.0-1     | 0.3.0-2     | Fix the CI version injection issue      |
| aggs_for_vecs    | 1.4.0       | 1.4.1       |                                         |
| pg_search        | 0.21.9      | 0.21.12     |                                         |
| pg_pinyin        | -           | 0.0.2       | New extension                           |
| pg_eviltransform | -           | 0.0.2       | New extension                           |
| pg_qos           | -           | 1.0.0       | New extension, QoS resource governance  |

**Infrastructure Package Updates**

| Name                         | Old Version    | New Version    | Notes |
|:-----------------------------|:---------------|:---------------|:------|
| `asciinema`                  | 3.1.0          | 3.2.0          |       |
| `grafana-infinity-ds`        | 3.7.2          | 3.7.3          |       |
| `victoria-metrics`           | 1.136.0        | 1.137.0        |       |
| `victoria-metrics-cluster`   | 1.136.0        | 1.137.0        |       |
| `vmutils`                    | 1.136.0        | 1.137.0        |       |
| `hugo`                       | 0.155.3        | 0.157.0        |       |
| `opencode`                   | 1.2.15         | 1.2.17         |       |
| `rustfs`                     | 1.0.0-alpha.83 | 1.0.0-alpha.85 |       |
| `seaweedfs`                  | 4.13           | 4.15           |       |
| `tigerbeetle`                | 0.16.74        | 0.16.75        |       |
| `uv`                         | 0.10.4         | 0.10.8         |       |
| `codex`                      | 0.105.0        | 0.110.0        |       |
| `claude`                     | 2.1.59         | 2.1.68         |       |
| `xray`                       | -              | 26.2.6         | New   |
| `gost`                       | -              | 2.12.0         | New   |
| `sabiql`                     | -              | 1.6.2          | New   |
| `agentsview`                 | -              | 0.10.0         | New   |

**Checksums**

```bash
262b7671424a38b208872582fe835ef8  pigsty-v4.2.1.tgz
62edcca1d1e572a247be018e1c26eda8  pigsty-pkg-v4.2.1.d12.aarch64.tgz
1d55367e2fd9106e6f18b7ee112be736  pigsty-pkg-v4.2.1.d12.x86_64.tgz
f122b1e5ba8a7ae8e3dc6e6dd53eba65  pigsty-pkg-v4.2.1.d13.aarch64.tgz
617a76bfc8df8766e78abf24339152eb  pigsty-pkg-v4.2.1.d13.x86_64.tgz
908509b350403ad1a4a27a88795fee06  pigsty-pkg-v4.2.1.el10.aarch64.tgz
70cb4afd90ed7aea6ab43a264f8eb4a8  pigsty-pkg-v4.2.1.el10.x86_64.tgz
98fbd67334f5c674b12e6af81ef76923  pigsty-pkg-v4.2.1.el9.aarch64.tgz
687fa741ccd9dcf611a2aa964bcf1de8  pigsty-pkg-v4.2.1.el9.x86_64.tgz
a2a30f4b1146b3e79be91d5be57615b6  pigsty-pkg-v4.2.1.u22.aarch64.tgz
7a1f571bd8526106775c175ba728eee1  pigsty-pkg-v4.2.1.u22.x86_64.tgz
a5574071bac1955798265f71ad73c3d4  pigsty-pkg-v4.2.1.u24.aarch64.tgz
59a7632c650a3c034f1fe6cd589d7ab5  pigsty-pkg-v4.2.1.u24.x86_64.tgz
```


------

## v4.2.0

**Highlights**

- Aligned with PostgreSQL out-of-band minor updates: 18.3, 17.9, 16.13, 15.17, 14.22.
- Total PostgreSQL extension coverage reaches 461 packages.
- Kernel updates across Babelfish, AgensGraph, pgEdge, OriolePG, OpenHalo, and Cloudberry.
- Babelfish template now uses a Pigsty-maintained PG17-compatible build, with no WiltonDB repo dependency.
- Supabase images and self-hosted templates are refreshed to the latest stack, using Pigsty-maintained [pgsty/minio](https://github.com/pgsty/minio).

**Major Changes**

- `mssql` now defaults to Babelfish PG17 (`pg_version: 17`, `pg_packages: [babelfish, pgsql-common, sqlcmd]`) and no longer requires an extra `mssql` repo.
- Kernel install paths are normalized in `pg_home_map`: `mssql -> /usr/babelfish-$v/`, `gpsql -> /usr/local/cloudberry`.
- `package_map` adds a dedicated `cloudberry` mapping and fixes `babelfish*` aliases to versioned RPM/DEB package names.
- Redis data root default changes from `/data` to `/data/redis`; deployment blocks legacy defaults, while `redis_remove` keeps backward-compatible cleanup.
- `configure` now supports absolute `-o` output paths with auto-created parent directories, tri-state region detection (CN/global/offline fallback), and a fix for `behind_gfw()` hangs.
- Debian/Ubuntu default repo URL mappings (`updates/backports/security`) and China mirror components are corrected to prevent bootstrap package failures.
- Supabase stack is updated (including PostgREST `14.5` and Vector `0.53.0`) and now includes missing S3 protocol credential variables.
- Rich/Sample templates explicitly define `dbuser_meta` defaults; `node.sh` systemd completion is simplified.
- `pgbackrest` stanza initialization now retries (2 attempts, 5-second interval) to reduce lock contention with `archive-push`.
- Vibe template now ships `@anthropic-ai/claude-code`, `@openai/codex`, and `happy-coder`, and includes `age` in the default example.

**PG Software Updates**

- PostgreSQL 18.3, 17.9, 16.13, 15.17, 14.22
- [RPM Changelog 2026-02-27](/docs/repo/pgsql/rpm/#2026-02-27)
- [DEB Changelog 2026-02-27](/docs/repo/pgsql/deb/#2026-02-27)
- Core upgrades: `timescaledb 2.25.0 -> 2.25.1`, `citus 14.0.0-3 -> 14.0.0-4`, `pg_search -> 0.21.9`
- New/rebuilt: `pgedge 17.9`, `spock 5.0.5`, `lolor 1.2.2`, `snowflake 2.4`, `babelfish 5.5.0`, `cloudberry 2.0.0`
- Kernel-side updates: `oriolepg 17.11 -> 17.16`, `orioledb beta12 -> beta14`, `openhalo 14.10 -> 1.0(14.18)`

| Package             | Old Version     | New Version | Notes                                    |
|:--------------------|:----------------|:------------|:-----------------------------------------|
| `timescaledb`       | 2.25.0          | 2.25.1      |                                          |
| `citus`             | 14.0.0-3        | 14.0.0-4    | Rebuilt from the latest official release |
| `age`               | 1.7.0           | 1.7.0       | Added PG 17 support for version 1.7.0    |
| `pgmq`              | 1.10.0          | 1.10.1      | Package currently unavailable            |
| `pg_search`         | 0.21.7 / 0.21.6 | 0.21.9      | Previous RPM/DEB versions differ         |
| `oriolepg`          | 17.11           | 17.16       | OriolePG kernel update                   |
| `orioledb`          | beta12          | beta14      | Matches OriolePG 17.16                   |
| `openhalo`          | 14.10           | 1.0         | Updated and renamed, based on 14.18      |
| `pgedge`            | -               | 17.9        | New multi-master edge-distributed kernel |
| `spock`             | -               | 5.0.5       | New core pgEdge extension                |
| `lolor`             | -               | 1.2.2       | New core pgEdge extension                |
| `snowflake`         | -               | 2.4         | New core pgEdge extension                |
| `babelfishpg`       | -               | 5.5.0       | New BabelfishPG package group            |
| `babelfish`         | -               | 5.5.0       | New Babelfish compatibility package      |
| `antlr4-runtime413` | -               | 4.13        | New runtime dependency for Babelfish     |
| `cloudberry`        | -               | 2.0.0       | RPM build only                           |
| `pg_background`     | -               | 1.8         | DEB build only                           |

**Infrastructure Software Updates**

| Name                          | Old Version      | New Version      |
|:------------------------------|:-----------------|:-----------------|
| `grafana`                     | 12.3.2           | 12.4.0           |
| `prometheus`                  | 3.9.1            | 3.10.0           |
| `mongodb_exporter`            | 0.47.2           | 0.49.0           |
| `victoria-metrics`            | 1.135.0          | 1.136.0          |
| `victoria-metrics-cluster`    | 1.135.0          | 1.136.0          |
| `vmutils`                     | 1.135.0          | 1.136.0          |
| `victoria-logs`               | 1.45.0           | 1.47.0           |
| `vlagent`                     | 1.45.0           | 1.47.0           |
| `vlogscli`                    | 1.45.0           | 1.47.0           |
| `loki`                        | 3.6.5            | 3.6.7            |
| `promtail`                    | 3.6.5            | 3.6.7            |
| `logcli`                      | 3.6.5            | 3.6.7            |
| `grafana-victorialogs-ds`     | 0.24.1           | 0.26.2           |
| `grafana-victoriametrics-ds`  | 0.21.0           | 0.23.1           |
| `grafana-infinity-ds`         | 3.7.0            | 3.7.2            |
| `redis_exporter`              | 1.80.2           | 1.81.0           |
| `etcd`                        | 3.6.7            | 3.6.8            |
| `dblab`                       | 0.34.2           | 0.34.3           |
| `tigerbeetle`                 | 0.16.72          | 0.16.74          |
| `seaweedfs`                   | 4.09             | 4.13             |
| `rustfs`                      | 1.0.0-alpha.82   | 1.0.0-alpha.83   |
| `uv`                          | 0.10.0           | 0.10.4           |
| `kafka`                       | 4.1.1            | 4.2.0            |
| `npgsqlrest`                  | 3.7.0            | 3.10.0           |
| `postgrest`                   | 14.4             | 14.5             |
| `caddy`                       | 2.10.2           | 2.11.1           |
| `rclone`                      | 1.73.0           | 1.73.1           |
| `pev2`                        | 1.20.1           | 1.20.2           |
| `genai-toolbox`               | 0.25.0           | 0.27.0           |
| `opencode`                    | 1.1.59           | 1.2.15           |
| `claude`                      | 2.1.37           | 2.1.59           |
| `codex`                       | 0.104.0          | 0.105.0          |
| `code`                        | 1.109.2          | 1.109.4          |
| `code-server`                 | 4.108.2          | 4.109.2          |
| `nodejs`                      | 24.13.1          | 24.14.0          |
| `pig`                         | 1.1.2            | 1.3.0            |
| `stalwart`                    | -                | 0.15.5           |
| `maddy`                       | -                | 0.8.2            |

**API Changes**

- `pg_mode` now includes `agens` and `pgedge`.
- `mssql` defaults are updated to `pg_version: 17` and `pg_packages: [babelfish, pgsql-common, sqlcmd]`.
- Kernel/package alias mappings are updated in `pg_home_map` and `package_map` (Babelfish, OpenHalo, IvorySQL, Cloudberry, pgEdge family).
- `redis_fs_main` now defaults to `/data/redis`, with deployment guardrails and backward-compatible cleanup behavior.
- `configure` output path handling and region detection logic are updated, with offline fallback warnings and unified SSH probe timeouts.
- `grafana.ini.j2` is updated for Grafana 12.4 config changes and deprecations.

**Compatibility Notes**

- If existing Redis configs still use `redis_fs_main: /data`, migrate to `/data/redis` before deployment.
- Grafana 12.4 changes data link merge behavior. This release moves key links into field overrides; review custom dashboards accordingly.

**26 commits**, 122 files changed, +2,116 / -2,215 lines (`v4.1.0..v4.2.0`, 2026-02-15 ~ 2026-02-28)

**Checksums**

```bash
24a90427a7e7351ca1a43a7d53289970  pigsty-v4.2.0.tgz
d980edf5eeb0419d4f1aa7feb0100e14  pigsty-pkg-v4.2.0.d12.aarch64.tgz
24bc237d841457fbdcc899e1d0a3f87e  pigsty-pkg-v4.2.0.d12.x86_64.tgz
e395b38685e2ecbe9c3a2850876d9b7b  pigsty-pkg-v4.2.0.d13.aarch64.tgz
c5c8776f9bead9f29528b26058801f83  pigsty-pkg-v4.2.0.d13.x86_64.tgz
28ea40434bd06135fc8adc0df1c8407d  pigsty-pkg-v4.2.0.el10.aarch64.tgz
58ad715ac20dc1717d1687daecfcf625  pigsty-pkg-v4.2.0.el10.x86_64.tgz
008f955439ea311581dd0ebcf5b8bd34  pigsty-pkg-v4.2.0.el8.aarch64.tgz
2acfd127a517b09f07540f808fe9547a  pigsty-pkg-v4.2.0.el8.x86_64.tgz
58e62a92f35291a40e3f05839a1b6bc4  pigsty-pkg-v4.2.0.el9.aarch64.tgz
d311bfdf5d5f60df5fe6cb3d4ced4f9c  pigsty-pkg-v4.2.0.el9.x86_64.tgz
c98972fe9226657ac1faa7b72a22498b  pigsty-pkg-v4.2.0.u22.aarch64.tgz
44a174ee9ba030ac1ea386cf0b85f6e7  pigsty-pkg-v4.2.0.u22.x86_64.tgz
143e404f4681c7d0bbd78ef7982cd652  pigsty-pkg-v4.2.0.u24.aarch64.tgz
00dfa86f477f3adff984906211ab3190  pigsty-pkg-v4.2.0.u24.x86_64.tgz
```


------

## v4.1.0

```bash
curl https://pigsty.io/get | bash -s v4.1.0
```

**72 commits**, 252 files changed, +5,744 / -5,015 lines (`v4.0.0..v4.1.0`, 2026-02-02 ~ 2026-02-13)

**Highlights**

- PostgreSQL minor update: 18.2, 17.8, 16.12, 15.16, 14.21.
- Default EL minors updated to `9.7 / 10.1`, Debian minors updated to `12.13 / 13.3`.
- Added 7 new extensions, bringing total support to **451** extensions.
- `pig` moved from a traditional script interface to an **Agent-Native CLI** (`1.0.0 -> 1.1.0`), with explicit context and JSON/YAML output.
- `pig` now provides unified **major/minor upgrade** workflows for PostgreSQL and OS lifecycle updates.
- `pg_exporter` upgraded to **v1.2.0** (`1.1.2 -> 1.2.0`), with PG17/18 metric pipeline and unit fixes.
- Default firewall security policy updated: `node_firewall_mode` now defaults to `zone`, and `node_firewall_public_port` default changed from `[22,80,443,5432]` to `[22,80,443]`.
- Focused PGSQL/PGCAT Grafana usability fixes: dynamic datasource `$dsn`, schema-level drilldown, age metrics, link mapping consistency.
- Added one-click Mattermost application template, including database/storage/portal and optional PGFS/JuiceFS options.
- Refactored `infra-rm` uninstall flow with segmented `deregister` cleanup for Victoria targets, Grafana datasources, and Vector logs.
- Optimized default PostgreSQL autovacuum thresholds to reduce excessive vacuum/analyze on small tables.
- Fixed FD limit chain: added `fs.nr_open=8M` and unified `LimitNOFILE=8M` to avoid startup failures from systemd/setrlimit.
- Updated VIBE defaults: Jupyter disabled by default; Claude Code managed via npm package.

**Version Updates**

- Pigsty version: `v4.0.0 -> v4.1.0`
- `pig` CLI: `1.0.0 -> 1.1.0` (Agent-Native + major/minor upgrade support)
- `pg_exporter`: `1.1.2 -> 1.2.0`
- Default EL minors: `9.6/10.0 -> 9.7/10.1`
- Default Debian minors: `12.12/13.1 -> 12.13/13.3`

**Extension Updates**

- [RPM Changelog 2026-02-12](/docs/repo/pgsql/rpm/#2026-02-12)
- [DEB Changelog 2026-02-12](/docs/repo/pgsql/deb/#2026-02-12)
- timescaledb `2.24.0 -> 2.25.0`
- pg_search `0.21.4 -> 0.21.7`
- pgmq `1.9.0 -> 1.10.0`
- pg_textsearch `0.4.0 -> 0.5.0`
- pljs `1.0.4 -> 1.0.5`
- pg_track_optimizer `0.9.1` (new)
- nominatim_fdw `1.1.0` (new)
- pg_utl_smtp `1.0.0` (new)
- pg_strict `1.0.2` (new)
- pgmb `1.0.0` (new)
- pg_pwhash (new support)
- informix_fdw (new support)

**INFRA Component Versions**

[Infra Changelog 2026-02-12](/docs/repo/infra/log/#2026-02-12)

| Package             | Version | Package         | Version   |
|---------------------|---------|-----------------|-----------|
| victoria-metrics    | 1.135.0 | victoria-logs   | 1.45.0    |
| vector              | 0.53.0  | grafana         | 12.3.2    |
| alertmanager        | 0.31.1  | etcd            | 3.6.7     |
| duckdb              | 1.4.4   | pg_exporter     | 1.2.0     |
| pig                 | 1.1.0   | claude          | 2.1.37    |
| opencode            | 1.1.59  | uv              | 0.10.0    |
| code-server         | 4.108.2 | caddy           | 2.10.2    |
| hugo                | 0.155.2 | cloudflared     | 2026.2.0  |
| headscale           | 0.28.0  |                 |           |

**API Changes**

- Corrected template guard for `io_method` / `io_workers` from `pg_version >= 17` to `pg_version >= 18`.
- Fixed PG18 guards for `idle_replication_slot_timeout` / `initdb --no-data-checksums`.
- Broadened `maintenance_io_concurrency` effective range to `PG13+`.
- Raised `autovacuum_vacuum_threshold`: `oltp/crit/tiny` from 50 to 500, `olap` to 1000.
- Raised `autovacuum_analyze_threshold`: `oltp/crit/tiny` from 50 to 250, `olap` to 500.
- Increased default `checkpoint_completion_target` from `0.90` to `0.95`.
- Added `fs.nr_open=8388608` in node tuned templates and aligned `fs.file-max / fs.nr_open / LimitNOFILE`.
- Changed postgres/patroni/minio systemd `LimitNOFILE` from `16777216` to `8388608`.
- Added `fs.nr_open: 8388608` into default `node_sysctl_params`.
- Changed `node_firewall_mode` default from `none` to `zone`: firewall enabled by default, intranet trusted, and only `node_firewall_public_port` exposed publicly; set `none` for fully self-managed firewall.
- Changed `node_firewall_public_port` default from `[22,80,443,5432]` to `[22,80,443]`; add `5432` explicitly only when public DB access is required. Firewall rules are add-only, so existing nodes that already exposed `5432` must remove it manually. Single-node experience templates (such as `meta` / `vibe`) explicitly override and keep `5432` for remote usage.
- Added `bin/validate` checks for `pg_databases[*].parameters` and `pg_hba_rules[*].order`; fixed HBA validation not returning failure properly.
- Added segmented tags in `infra-rm.yml`: `deregister`, `config`, `env`, etc.
- Updated VIBE defaults: `jupyter_enabled=false`, `npm_packages` include `@anthropic-ai/claude-code` and `happy-coder`, plus `CLAUDE_CODE_EXPERIMENTAL_AGENT_TEAMS=1`.
- PgBouncer alias cleanup: `pool_size_reserve -> pool_reserve`, `pool_max_db_conn -> pool_connlimit`.

**Compatibility Fixes (Deduplicated)**

- Note: repeated regressions/re-fixes of the same issue are counted once and merged by problem domain below.
- Fixed Redis `replicaof` empty-guard logic and systemd stop behavior.
- Fixed schema/table/sequence qualification, identifier quoting, and logging format safety in `pg_migration`.
- Fixed restart targets and variable usage in pgsql role handlers.
- Fixed blackbox config filename cleanup item and pgAdmin pgpass file format.
- Made `pg_exporter` startup non-blocking to avoid slowing main flow when exporter fails.
- Simplified VIP CIDR parsing: default mask `24` when omitted.
- Increased MinIO health-check retries from `3` to `5`.
- Switched node hostname setup to Ansible hostname module instead of shell calls.
- Fixed `.env` format for `app/electric` and `app/pg_exporter` to standard `KEY=VALUE`.
- Fixed `pg_crontab` syntax error in `pigsty.yml`.
- Updated ETCD docs to clarify default TLS vs optional mTLS semantics.
- Fixed `repo-add` argument passing, Debian CN mirror component compatibility, and `bin/psql.py` Python 3 compatibility.
- Hardened redis-exporter credential file permissions.
- `pgsql-user.yml` now masks credential logs (`no_log`) on sensitive steps.
- Fixed gate conditions when `pg_monitor` registers Victoria targets.
- Changed `pg_remove` backup cleanup to cluster-level directory to avoid deleting other cluster backups.

**Commit List (`v4.0.0..v4.1.0`, 72 commits, 2026-02-02 ~ 2026-02-13)**

```text
7410de401 v4.1.0 release
fa31213ce conf(node): default firewall to zone with single-node 5432 override
bb8382c58 update default extension list to 451
770d01959 hide user credential in pgsql-user playbook
7219a896c pg_monitor: fix victoria registration gate conditions
084c98432 remove one cluster in backup dir during pg_remove
7005617f1 pgsql: drop legacy pgbouncer pool parameter aliases
f8165a886 docs(roles): fix typos and align juice role documentation
06a589218 chore(meta): normalize platform versions for current lint schema
e0a208248 fix(roles): harden redis exporter file permissions
fd0469881 terraform/vagrant: parameterize aliyun region/zone, fix vagrant scripts
74c59aabe grafana: fix dashboard links, descriptions, and overrides
443e58724 conf: clean legacy params and fix template references
536c4b39d adjust grafana dashboard dead links
f3b9866ce grafana(pgsql): fix panel typos and title consistency
bcb69be11 grafana(pgsql): fix drilldown links and variable mappings
1ce4374a1 grafana: fill pglog panel titles and normalize wording
2d127f9f4 grafana: fix minio traffic metrics and pigsty dashboard links
9d3ca0118 grafana: align victoria instance dashboards with query scope
55bc61622 grafana: fix infra dashboard copy, links, and table semantics
607b75535 grafana(node): fix panel drilldown links and clean dashboard metadata
1321de532 grafana(redis): fix dashboard links and blocked-clients panel semantics
91e0c8437 fix(grafana): correct Redis alert drill-down dashboard links
0fde78c02 fix(tooling): improve Python3 compatibility and enforce vagrant scale lower bound
fa3454a52 fix(bootstrap): use Debian-compatible components for CN apt mirror
36c95c749 fix(cli): restore repo-add execution and HBA validation failure propagation
797385929 add macbook local vagrant image override
f9c928e32 fix(grafana): restore reverted dashboard bugfixes
c11af8b6a Bump version to v4.1.0
307a236ba update extension list
f17024807 override el9/u24 vagrant box for convient testing
c2ada1283 terraform: bump Aliyun Debian images to 12.13/13.3
25bd8210f fix(node): add daemon_reload to systemd tasks for keepalived, chronyd, and cron
6f2576fd0 fix(node): set default fs.nr_open via node_sysctl_params
43a71245e add pg_bgwriter_buffers_backend for pg 17-
da832a47b fix(monitor): keep checkpointer metrics for checkpoint stats
90434ca8a fix(monitor): add pg_bgwriter fallback for checkpointer metrics
e2d75e787 fix(monitor): use pg_checkpointer metrics for checkpoint stats
a0b7474f8 fix grafana dashboard metrics and lengend
27ddacbc6 vagrant: refresh box selector and OS shortcuts
26e108788 fix(monitor): correct unit for time metrics scaled by pg_exporter
ee90044b5 fix(pgsql): correct min_parallel scan size params in oltp/crit templates
d439464b2 pgsql: fix pg_version guards for PG18-only settings
26320f120 docs: recommend RockyLinux 10.1
1e9b9f33a terraform: bump Aliyun Rocky images to 9.7/10.1
d6e9c7122 monitor: optimize table/index bloat estimators
42d45d32e fix(grafana): align panel semantics across node/infra/redis
3972d2c45 fix(grafana/pgsql): align dashboard semantics for query monitoring
cb52375ac bump checkpoint_completion_target from 0.90 to 0.95
13115a95d fix legend in pgsql-persist checkpoint panel
102cd2edb fix(pg_migration): make template logging format-safe
c402f0e6d fix: correct io_method/io_workers version guard from PG17 to PG18
3bf676546 vibe: disable jupyter by default and install claude-code via npm_packages
613c4efa9 fix: set fs.nr_open in tuned profiles and reduce LimitNOFILE to 8M
07e499d4d new app conf template matter most
4cc68ed61 Refine infra removal playbook
7cfb98f69 fix: app docker .env file format
9b36b1875 Fix config templates and validation
318d85e6e Simplify VIP parsing and make pg_exporter non-blocking
571cd9e70 Use hostname module for nodename
de98f073c Fix blackbox config filename and pgpass format
4bff01100 Fix redis replicaof guard and systemd stop
38445b68d minio: increase health check retries
c99854969 docs(etcd): clarify TLS vs mTLS
41229124a fix pgsql roles typo
e575d17c6 fix pg_migration scripts to use fully qualified identifiers
ec4207202 fix pgsql-schema broken links
a237e6c99 tune autovacuum threshold to reduce small table vacuum frequency
e80754760 fix pgcat-database links to pgcat-table https://github.com/pgsty/pigsty/issues/690
0060f5346 fix pgsql-database / pgsql-databases age metric fix https://github.com/pgsty/pigsty/issues/695
43cdf72bc fix pigsty.yml typo
0d9db7b08 fix: update datasource to $dsn - fix https://github.com/pgsty/pigsty/issues/692#issuecomment-3835461620
```

**Thanks**

- Thanks to [@l2dy](https://github.com/l2dy) for many valuable suggestions and issues.

**Checksums**

```bash
8bc75e8df0e3830931f2ddab71b89630  pigsty-v4.1.0.tgz
da10de99d819421630f430d01bc9de62  pigsty-pkg-v4.1.0.d12.aarch64.tgz
e1f2ed2da0d6b8c360f9fa2faaa7e175  pigsty-pkg-v4.1.0.d12.x86_64.tgz
382bb38a81c138b1b3e7c194211c2138  pigsty-pkg-v4.1.0.d13.aarch64.tgz
13ceaa728901cc4202687f03d25f1479  pigsty-pkg-v4.1.0.d13.x86_64.tgz
92d061de4d495d05d42f91e4283e7502  pigsty-pkg-v4.1.0.el10.aarch64.tgz
be629ea91adf86bbd7e1c59b659d0069  pigsty-pkg-v4.1.0.el10.x86_64.tgz
c14be706119ba33dd06c71dda6c02298  pigsty-pkg-v4.1.0.el8.aarch64.tgz
0c8b6952ffc00e3b169896129ea39184  pigsty-pkg-v4.1.0.el8.x86_64.tgz
cfcc63b9ecc525165674f58f9365aa19  pigsty-pkg-v4.1.0.el9.aarch64.tgz
34f733080bfa9c8515d1573c35f3e870  pigsty-pkg-v4.1.0.el9.x86_64.tgz
ad52ce9bf25e4d834e55873b3f9ada51  pigsty-pkg-v4.1.0.u22.aarch64.tgz
300b2185c61a03ea7733248e526f3342  pigsty-pkg-v4.1.0.u22.x86_64.tgz
2e561e6ae9abb14796872059d2f694a8  pigsty-pkg-v4.1.0.u24.aarch64.tgz
c462bb4cb2359e771ffcad006888fbd4  pigsty-pkg-v4.1.0.u24.x86_64.tgz
```

------

## v4.0.0

```bash
curl https://pigsty.io/get | bash -s v4.0.0
```

**318 commits**, 604 files changed, +118,655 / -327,552 lines

**Highlights**

- **Observability Revolution**: Prometheus → VictoriaMetrics (10x perf), Loki+Promtail → VictoriaLogs+Vector
- **Security Hardening**: Auto-generated passwords, etcd RBAC, firewall/SELinux modes, permission tightening, Nginx Basic Auth
- **Docker Support**: Run Pigsty in Docker containers with full systemd support (macOS & Linux)
- **New Module**: JUICE - Mount PostgreSQL as filesystem with PITR recovery capability
- **New Module**: VIBE - AI coding sandbox with Claude Code, JupyterLab, VS Code Server, Node.js
- **Database Management**: `pg_databases` state (create/absent/recreate), instant clone with `strategy`
- **PITR & Fork**: `/pg/bin/pg-fork` for instant CoW cloning, enhanced `pg-pitr` with pre-backup
- **HA Enhancement**: `pg_rto_plan` with 4 RTO presets (fast/norm/safe/wide), `pg_crontab` scheduled tasks
- **Multi-Cloud Terraform**: AWS, Azure, GCP, Hetzner, DigitalOcean, Linode, Vultr, TencentCloud templates
- **License Change**: AGPL-3.0 → Apache-2.0

**Infra Software Versions** - MinIO now uses [**pgsty/minio**](https://github.com/pgsty/minio) fork RPM/DEB.

| Package             | Version  | Package             | Version  |
|---------------------|----------|---------------------|----------|
| victoria-metrics    | 1.134.0  | victoria-logs       | 1.43.1   |
| vector              | 0.52.0   | grafana             | 12.3.1   |
| alertmanager        | 0.30.1   | etcd                | 3.6.7    |
| duckdb              | 1.4.4    | pg_exporter         | 1.1.2    |
| pgbackrest_exporter | 0.22.0   | blackbox_exporter   | 0.28.0   |
| node_exporter       | 1.10.2   | minio               | 20251203 |
| pig                 | 1.0.0    | claude              | 2.1.19   |
| opencode            | 1.1.34   | uv                  | 0.9.26   |
| asciinema           | 3.1.0    | prometheus          | 3.9.1    |
| pushgateway         | 1.11.2   | juicefs             | 1.4.0    |
| code-server         | 4.100.2  | caddy               | 2.10.2   |
| hugo                | 0.154.5  | cloudflared         | 2026.1.1 |
| headscale           | 0.27.1   |                     |          |
{.full-width}

**New Modules**

- **JUICE Module**: JuiceFS distributed filesystem using PostgreSQL as metadata engine, supports PITR recovery for filesystem. Multiple storage backends (PG large objects, MinIO, S3), multi-instance deployment with Prometheus metrics, new `node-juice` dashboard.
- **VIBE Module**: AI coding sandbox with Code-Server (VS Code in browser), JupyterLab (interactive computing), Node.js (JavaScript runtime), Claude Code (AI coding assistant with OpenTelemetry observability). New `claude-code` dashboard for usage monitoring.

**PostgreSQL Extension Updates**

Major extensions add PG 18 support: age, citus, documentdb, pg_search, timescaledb, pg_bulkload, rum, etc.

**New**: [pg_textsearch](https://github.com/timescale/pg_textsearch) 0.4.0, [pg_clickhouse](https://github.com/clickhouse/pg_clickhouse/) 0.1.3, [pg_ai_query](https://github.com/benodiwal/pg_ai_query) 0.1.1, [etcd_fdw](https://github.com/pgsty/etcd_fdw), [pg_ttl_index](https://github.com/pg-ttl-index) 0.1.0, [pljs](https://github.com/plv8/pljs) 1.0.4, [pg_retry](https://github.com/pg-retry/pg_retry) 1.0.0, [pg_weighted_statistics](https://github.com/pgsty/pg_weighted_statistics) 1.0.0, [pg_enigma](https://github.com/pgsty/pg_enigma) 0.5.0, [pglinter](https://github.com/pgsty/pglinter) 1.0.1, [documentdb_extended_rum](https://github.com/microsoft/documentdb) 0.109, [mobilitydb_datagen](https://github.com/MobilityDB) 1.3.0

**Updated**: timescaledb 2.24.0, pg_search 0.21.4, citus 14.0.0, documentdb 0.109, age 1.7.0, pg_duckdb 1.1.1, vchord 1.0.0, vchord_bm25 0.3.0, pg_biscuit 2.2.2, pg_anon 2.5.1, wrappers 0.5.7, pg_vectorize 0.26.0, pg_session_jwt 0.4.0, pg_partman 5.4.0, pgmq 1.9.0, pg_bulkload 3.1.23, pg_timeseries 0.2.0, pg_convert 0.1.0, pgBackRest 2.58

**Breaking Changes**

| Before                  | After                           |
|-------------------------|---------------------------------|
| Prometheus              | VictoriaMetrics                 |
| Loki + Promtail         | VictoriaLogs + Vector           |
| `node_disable_firewall` | `node_firewall_mode`            |
| `node_disable_selinux`  | `node_selinux_mode`             |
| `pg_pwd_enc`            | removed (always scram-sha-256)  |
| `infra_pip_packages`    | `node_pip_packages`             |
| `grafana_clean` default | true → false                    |
| `install.yml`           | renamed to `deploy.yml`         |
{.full-width}

**Observability**

- VictoriaMetrics replaces Prometheus — several times the performance with a fraction of the resources
- VictoriaLogs + Vector replaces Promtail + Loki for log collection
- Unified log format for all components, PG logs use UTC timestamp (log_timezone)
- PostgreSQL log rotation changed to weekly truncated rotation mode
- Added Vector parsing configs for Nginx/Syslog/PG CSV/Pgbackrest/Grafana/Redis/etcd/MinIO logs
- Datasource registration now runs on all Infra nodes, Victoria datasources auto-registered in Grafana
- New `grafana_pgurl` parameter for using PG as Grafana backend storage
- New `grafana_view_password` parameter for Grafana Meta datasource password
- `pg_exporter` updated to 1.1.2 with new `pg_timeline` collector and numerous fixes
- New dashboards: `node-vector`, `node-juice`, `claude-code`

**Interface Improvements**

- `install.yml` playbook renamed to `deploy.yml`, new `vibe.yml` playbook for VIBE module
- `pg_databases`: added `state` field (create/absent/recreate), `strategy` for cloning, newer locale params support
- `pg_users`: added `admin` parameter with `ADMIN OPTION`, `set` and `inherit` options
- `pg_hba`: support `order` field for priority, IPv6 localhost access
- New `node_crontab` auto-restores original crontab on `node-rm`

**Parameter Optimization**

- `pg_io_method`: auto, sync, worker, io_uring options, default worker
- `pg_rto_plan`: RTO presets (fast/norm/safe/wide) integrating Patroni & HAProxy config
- `pg_crontab`: scheduled tasks for postgres dbsu
- `idle_replication_slot_timeout`: default 7d, crit template 3d
- `file_copy_method`: set to `clone` for PG18 instant database cloning
- Crit template enables Patroni strict sync mode
- PITR default `archive_mode` changed to `preserve`

**Architecture Improvements**

- Fixed `/infra` symlink pointing to `/data/infra` on Infra nodes
- Local repo at `/data/nginx/pigsty`, `/www` symlinks to `/data/nginx`
- New scripts: `/pg/bin/pg-fork` (CoW cloning), `/pg/bin/pg-drop-role`, `bin/pgsql-ext`
- Enhanced `/pg/bin/pg-pitr` for instance-level PITR with pre-backup
- UV Python manager moved from `infra` to `node` module with `node_uv_env` parameter
- Terraform templates: AWS, Azure, GCP, Hetzner, DigitalOcean, Linode, Vultr, TencentCloud
- Simu template simplified from 36 to 20 nodes, new 10-node and Citus templates

**Security Improvements**

- `configure -g` auto-generates strong random passwords
- Replaced `node_disable_firewall` with `node_firewall_mode` (off/none/zone)
- Replaced `node_disable_selinux` with `node_selinux_mode` (disabled/permissive/enforcing)
- Nginx Basic Auth support for optional HTTP authentication
- Enabled etcd RBAC, each cluster can only manage its own PG cluster
- etcd root password stored in `/etc/etcd/etcd.pass`, admin-readable only
- New `node_admin_sudo` parameter for admin sudo mode (all/nopass)
- Fixed ownca certificate validity for Chrome recognition

**Bug Fixes**

- Fixed ownca certificate validity for Chrome compatibility
- Fixed Vector 0.52 syslog_raw parsing issue
- Fixed pg_pitr multiple replica clonefrom timing issues
- Fixed Ansible SELinux race condition in dnsmasq
- Fixed EL9 aarch64 patroni & llvmjit issues
- Fixed pgbouncer pid path (`/run/postgresql`)
- Fixed HAProxy service template variable path
- Fixed MinIO reload handler ineffective
- Fixed vmetrics_port default value to 8428
- Fixed pg-failover-callback for all Patroni callback events

**New Parameters**

| Parameter               | Type   | Default       | Description                           |
|-------------------------|--------|---------------|---------------------------------------|
| `node_firewall_mode`    | enum   | none (v4.0)   | Firewall mode: off/none/zone (default is zone since v4.1) |
| `node_selinux_mode`     | enum   | permissive    | SELinux mode                          |
| `node_admin_sudo`       | enum   | nopass        | Admin sudo privilege level            |
| `pg_io_method`          | enum   | worker        | I/O method: auto/sync/worker/io_uring |
| `pg_rto_plan`           | dict   | -             | RTO presets: fast/norm/safe/wide      |
| `pg_crontab`            | list   | []            | postgres dbsu scheduled tasks         |
| `grafana_view_password` | string | DBUser.Viewer | Grafana Meta datasource password      |
| `juice_cache`           | path   | /data/juice   | JuiceFS cache directory               |
| `juice_instances`       | dict   | {}            | JuiceFS instance definitions          |
| `vibe_data`             | path   | /fs           | VIBE workspace directory              |
| `code_enabled`          | bool   | true          | Enable Code-Server                    |
| `code_password`         | string | Vibe.Coding   | Code-Server password                  |
| `jupyter_enabled`       | bool   | true          | Enable JupyterLab                     |
| `jupyter_password`      | string | Vibe.Coding   | JupyterLab access token               |
| `claude_enabled`        | bool   | true          | Enable Claude Code configuration      |
| `nodejs_enabled`        | bool   | true          | Enable Node.js installation           |
| `nodejs_registry`       | string | ''            | npm registry, auto china mirror       |
| `node_uv_env`           | path   | /data/venv    | Node UV venv path, empty to skip      |
| `node_pip_packages`     | string | ''            | pip packages for UV venv              |
{.full-width}

**Removed Parameters**: `node_disable_firewall`, `node_disable_selinux`, `infra_pip_packages`, `pg_pwd_enc`, `pgbackrest_clean`, `code_home`, `jupyter_home`

**Checksums**

```bash
bc48405075b3ec6a85fc2c99a1f77650  pigsty-v4.0.0.tgz
db9797c3c8ae21320b76a442c1135c7b  pigsty-pkg-v4.0.0.d12.aarch64.tgz
1eed26eee42066ca71b9aecbf2ca1237  pigsty-pkg-v4.0.0.d12.x86_64.tgz
03540e41f575d6c3a7c63d1d30276d49  pigsty-pkg-v4.0.0.d13.aarch64.tgz
36a6ee284c0dd6d9f7d823c44280b88f  pigsty-pkg-v4.0.0.d13.x86_64.tgz
f2b6ec49d02916944b74014505d05258  pigsty-pkg-v4.0.0.el10.aarch64.tgz
73f64c349366fe23c022f81fe305d6da  pigsty-pkg-v4.0.0.el10.x86_64.tgz
287f767fbb66a9aaca9f0f22e4f20491  pigsty-pkg-v4.0.0.el8.aarch64.tgz
c0886aab454bd86245f3869ef2ab4451  pigsty-pkg-v4.0.0.el8.x86_64.tgz
094ab31bcf4a3cedbd8091bc0f3ba44c  pigsty-pkg-v4.0.0.el9.aarch64.tgz
235ccba44891b6474a76a81750712544  pigsty-pkg-v4.0.0.el9.x86_64.tgz
f2791c96db4cc17a8a4008fc8d9ad310  pigsty-pkg-v4.0.0.u22.aarch64.tgz
3099c4453eef03b766d68e04b8d5e483  pigsty-pkg-v4.0.0.u22.x86_64.tgz
49a93c2158434f1adf0d9f5bcbbb1ca5  pigsty-pkg-v4.0.0.u24.aarch64.tgz
4acaa5aeb39c6e4e23d781d37318d49b  pigsty-pkg-v4.0.0.u24.x86_64.tgz
```



------

## v3.7.0

**Highlights**

- **PostgreSQL 18 Deep Support:** Now the default major PG version, with full extension readiness!
- **Expanded OS Support:** Added EL10 and Debian 13, bringing the total supported operating systems to 14.
- **Extension Growth:** The PostgreSQL extension library now includes 437 entries.
- **Ansible 2.19 Compatibility:** Full support for Ansible 2.19 following its breaking changes.
- **Kernel Updates:** Latest versions for Supabase, PolarDB, IvorySQL, and Percona kernels.
- **Optimized Tuning:** Refined logic for default PG parameters to maximize resource utilization.
- [**PGEXT.CLOUD**](/ext/): Dedicated extension website open-sourced under Apache-2.0 license

**Version Updates**

- PostgreSQL 18.1, 17.7, 16.11, 15.15, 14.20, 13.23
- Patroni 4.1.0
- Pgbouncer 1.25.0
- pg_exporter 1.0.3
- pgbackrest 2.57.0
- Supabase 2025-11
- PolarDB 15.15.5.0
- FerretDB 2.7.0
- DuckDB 1.4.2
- Etcd 3.6.6
- pig 0.7.4

For detailed version changes, please refer to:

- [INFRA Changelog](/docs/repo/infra/)
- [RPM Changelog](/docs/repo/pgsql/rpm)
- [DEB Changelog](/docs/repo/pgsql/deb)

**API Changes**

- Implemented a refined optimization strategy for parallel execution parameters. See **[Tuning Guide](/docs/pgsql/template/tune)**.
- The `citus` extension is no longer installed by default in `rich` and `full` templates (PG 18 support pending).
- Added `duckdb` extension stubs to PostgreSQL parameter templates.
- Capped `min_wal_size`, `max_wal_size`, and `max_slot_wal_keep_size` at 200 GB, 2000 GB, and 3000 GB, respectively.
- Capped `temp_file_limit` at 200 GB (2 TB for OLAP workloads).
- Increased the default connection count for the connection pool.
- Added `prometheus_port` (default: `9058`) to avoid conflicts with the EL10 RHEL Web Console port.
- Changed `alertmanager_port` default to `9059` to avoid potential conflicts with Kafka SSL ports.
- Added a `pg_pre` subtask to `pg_pkg`: removes conflicting LLVM packages (`bpftool`, `python3-perf`) on EL9+ prior to PG installation.
- Added the `llvm` module to the default repository definition for Debian/Ubuntu.
- Fixed package removal logic in `infra-rm.yml`.

**Compatibility Fixes**

- **Ubuntu/Debian CA Trust:** Fixed incorrect warning return codes when trusting Certificate Authorities.
- **Ansible 2.19 Support:** Resolved numerous compatibility issues introduced by Ansible 2.19 to ensure stability across versions:
  - Added explicit `int` type casting for sequence variables.
  - Migrated `with_items` syntax to `loop`.
  - Nested key exchange variables in lists to prevent character iteration on strings in newer versions.
  - Explicitly cast `range` usage to `list`.
  - Renamed reserved variables such as `name` and `port`.
  - Replaced `play_hosts` with `ansible_play_hosts`.
  - Added string casting for specific variables to prevent runtime errors.
- **EL10 Adaptation:**
  - Fixed missing `ansible-collection-community-crypto` preventing key generation.
  - Fixed missing `ansible` logic packages.
  - Removed `modulemd_tools`, `flamegraph`, and `timescaledb-tool`.
  - Replaced `java-17-openjdk` with `java-21-openjdk`.
  - Resolved aarch64 YUM repository naming issues.
- **Debian 13 Adaptation:**
  - Replaced `dnsutils` with `bind9-dnsutils`.
- **Ubuntu 24 Fixes:**
  - Temporarily removed `tcpdump` due to upstream dependency crashes.


**Checksums**

```bash
e00d0c2ac45e9eff1cc77927f9cd09df  pigsty-v3.7.0.tgz
987529769d85a3a01776caefefa93ecb  pigsty-pkg-v3.7.0.d12.aarch64.tgz
2d8272493784ae35abeac84568950623  pigsty-pkg-v3.7.0.d12.x86_64.tgz
090cc2531dcc25db3302f35cb3076dfa  pigsty-pkg-v3.7.0.d13.x86_64.tgz
ddc54a9c4a585da323c60736b8560f55  pigsty-pkg-v3.7.0.el10.aarch64.tgz
d376e75c490e8f326ea0f0fbb4a8fd9b  pigsty-pkg-v3.7.0.el10.x86_64.tgz
8c2deeba1e1d09ef3d46d77a99494e71  pigsty-pkg-v3.7.0.el8.aarch64.tgz
9795e059bd884b9d1b2208011abe43cd  pigsty-pkg-v3.7.0.el8.x86_64.tgz
08b860155d6764ae817ed25f2fcf9e5b  pigsty-pkg-v3.7.0.el9.aarch64.tgz
1ac430768e488a449d350ce245975baa  pigsty-pkg-v3.7.0.el9.x86_64.tgz
e033aaf23690755848db255904ab3bcd  pigsty-pkg-v3.7.0.u22.aarch64.tgz
cc022ea89181d89d271a9aaabca04165  pigsty-pkg-v3.7.0.u22.x86_64.tgz
0e978598796db3ce96caebd76c76e960  pigsty-pkg-v3.7.0.u24.aarch64.tgz
48223898ace8812cc4ea79cf3178476a  pigsty-pkg-v3.7.0.u24.x86_64.tgz
```


------

## v3.6.1

```bash
curl https://repo.pigsty.io/get | bash -s v3.6.1
```

**Highlights**

- PostgreSQL 17.6, 16.10, 15.14, 14.19, 13.22, and 18 Beta 3 Released!
- PGDG APT/YUM mirror for Mainland China Users
- New home website https://pgsty.com
- Add el10, debian 13 stub, add el10 terraform images

**Infra Package Updates**

- Grafana 12.1.0
- pg_exporter 1.0.2
- pig 0.6.1
- vector 0.49.0
- redis_exporter 1.75.0
- mongo_exporter 0.47.0
- victoriametrics 1.123.0
- victorialogs: 1.28.0
- grafana-victoriametrics-ds 0.18.3
- grafana-victorialogs-ds 0.19.3
- grafana-infinity-ds 3.4.1
- etcd 3.6.4
- ferretdb 2.5.0
- tigerbeetle 0.16.54
- genai-toolbox 0.12.0

**Extension Package Updates**

- pg_search 0.17.3

**API Changes**

- remove `br_filter` from default `node_kernel_modules`
- do not use OS minor version dir for pgdg yum repos

**Checksums**

```bash
045977aff647acbfa77f0df32d863739  pigsty-pkg-v3.6.1.d12.aarch64.tgz
636b15c2d87830f2353680732e1af9d2  pigsty-pkg-v3.6.1.d12.x86_64.tgz
700a9f6d0db9c686d371bf1c05b54221  pigsty-pkg-v3.6.1.el8.aarch64.tgz
2aff03f911dd7be363ba38a392b71a16  pigsty-pkg-v3.6.1.el8.x86_64.tgz
ce07261b02b02b36a307dab83e460437  pigsty-pkg-v3.6.1.el9.aarch64.tgz
d598d62a47bbba2e811059a53fe3b2b5  pigsty-pkg-v3.6.1.el9.x86_64.tgz
13fd68752e59f5fd2a9217e5bcad0acd  pigsty-pkg-v3.6.1.u22.aarch64.tgz
c25ccfb98840c01eb7a6e18803de55bb  pigsty-pkg-v3.6.1.u22.x86_64.tgz
0d71e58feebe5299df75610607bf428c  pigsty-pkg-v3.6.1.u24.aarch64.tgz
4fbbab1f8465166f494110c5ec448937  pigsty-pkg-v3.6.1.u24.x86_64.tgz
083d8680fa48e9fec3c3fcf481d25d2f  pigsty-v3.6.1.tgz
```


------

## v3.6.0

```bash
curl https://repo.pigsty.io/get | bash -s v3.6.0
```

**Highlights**

- Brand-new documentation site: https://doc.pgsty.com
- Added `pgsql-pitr` playbook and backup/restore tutorial, improved PITR experience
- Added kernel support: Percona PG TDE (PG17)
- Optimized self-hosted Supabase experience, updated to the latest version, and fixed issues with the official template
- Simplified installation steps, online install by default, bootstrap now part of install script

**Improvements**

- Refactored `ETCD` module with dedicated remove playbook and bin utils
- Refactored `MinIO` module with plain HTTP mode, better bucket provisioning options.
- Reorganized and streamlined all configuration templates for easier use
- Faster Docker Registry mirror for users in mainland China
- Optimized tuned OS parameter templates for modern hardware and NVMe disks
- Added extension `pgactive` for multi-master replication and sub-second failover
- Adjusted default values for `pg_fs_main` / `pg_fs_backup`, simplified file directory structure design

**Bug Fixes**

- Fixed pgbouncer configuration file error by @housei-zzy
- Fixed OrioleDB issues on Debian platform
- Fixed tuned shm configuration parameter issue
- Offline packages now use the PGDG source directly, avoiding out-of-sync mirror sites
- Fix ivorysql [libxcrypt](https://github.com/IvorySQL/IvorySQL/issues/826) dependencies issues
- Fix Replace the slow and broken epel mirror
- Fix `haproxy_enabled` flag not working

**Infra Package Updates**

Added Victoria Metrics / Victoria Logs related packages

- genai-toolbox 0.9.0 (new)
- victoriametrics 1.120.0 -> 1.121.0 (refactor)
- vmutils 1.121.0 (rename from victoria-metrics-utils)
- grafana-victoriametrics-ds 0.15.1 -> 0.17.0
- victorialogs 1.24.0 -> 1.25.1 (refactor)
- vslogcli 1.24.0 -> 1.25.1
- vlagent 1.25.1 (new)
- grafana-victorialogs-ds 0.16.3 -> 0.18.1
- prometheus 3.4.1 -> 3.5.0
- grafana 12.0.0 -> 12.0.2
- vector 0.47.0 -> 0.48.0
- grafana-infinity-ds 3.2.1 -> 3.3.0
- keepalived_exporter 1.7.0
- blackbox_exporter 0.26.0 -> 0.27.0
- redis_exporter 1.72.1 -> 1.77.0
- rclone 1.69.3 -> 1.70.3

**Database Package Updates**

- PostgreSQL 18 Beta2 update
- pg_exporter 1.0.1, updated to latest dependencies and provides Docker image
- pig 0.6.0, updated extension and repository list, with `pig install` subcommand
- vip-manager 3.0.0 -> 4.0.0
- ferretdb 2.2.0 -> 2.3.1
- dblab 0.32.0 -> 0.33.0
- duckdb 1.3.1 -> 1.3.2
- etcd 3.6.1 -> 3.6.3
- ferretdb 2.2.0 -> 2.4.0
- juicefs 1.2.3 -> 1.3.0
- tigerbeetle 0.16.41 -> 0.16.50
- pev2 1.15.0 -> 1.16.0

**Extension Package Updates**

- OrioleDB 1.5 beta12
- OriolePG 17.11
- plv8 3.2.3 -> 3.2.4
- postgresql_anonymizer 2.1.1 -> 2.3.0
- pgvectorscale 0.7.1 -> 0.8.0
- wrappers 0.5.0 -> 0.5.3
- supautils 2.9.1 -> 2.10.0
- citus 13.0.3 -> 13.1.0
- timescaledb 2.20.0 -> 2.21.1
- vchord 0.3.0 -> [0.4.3](https://github.com/tensorchord/VectorChord/releases/tag/0.4.3)
- pgactive 2.1.5 (new)
- documentdb 0.103.0 -> 0.105.0
- pg_search 0.17.0

**API Changes**

* `pg_fs_backup`: Renamed to `pg_fs_backup`, default value `/data/backups`.
* `pg_rm_bkup`: Renamed to `pg_rm_backup`, default value `true`.
* `pg_fs_main`: Default value adjusted to `/data/postgres`.
* `nginx_cert_validity`: New parameter to control Nginx self-signed certificate validity, default `397d`.
* `minio_buckets`: Default value adjusted to create three buckets named `pgsql`, `meta`, `data`.
* `minio_users`: Removed `dba` user, added `s3user_meta` and `s3user_data` users for `meta` and `data` buckets respectively.
* `minio_https`: New parameter to allow MinIO to use HTTP mode.
* `minio_provision`: New parameter to allow skipping MinIO provisioning stage (skip bucket and user creation)
* `minio_safeguard`: New parameter, abort `minio-rm.yml` when enabled
* `minio_rm_data`: New parameter, whether to remove minio data directory during `minio-rm.yml`
* `minio_rm_pkg`: New parameter, whether to uninstall minio package during `minio-rm.yml`
* `etcd_learner`: New parameter to control whether to init etcd instance as learner
* `etcd_rm_data`: New parameter, whether to remove etcd data directory during `etcd-rm.yml`
* `etcd_rm_pkg`: New parameter, whether to uninstall etcd package during `etcd-rm.yml`

**Checksums**

```bash
ab91bc05c54b88c455bf66533c1d8d43  pigsty-v3.6.0.tgz
cea861e2b4ec7ff5318e1b3c30b470cb  pigsty-pkg-v3.6.0.d12.aarch64.tgz
2f253af87e19550057c0e7fca876d37c  pigsty-pkg-v3.6.0.d12.x86_64.tgz
0158145b9bbf0e4a120b8bfa8b44f857  pigsty-pkg-v3.6.0.el8.aarch64.tgz
07330d687d04d26e7d569c8755426c5a  pigsty-pkg-v3.6.0.el8.x86_64.tgz
311df5a342b39e3288ebb8d14d81e0d1  pigsty-pkg-v3.6.0.el9.aarch64.tgz
92aad54cc1822b06d3e04a870ae14e29  pigsty-pkg-v3.6.0.el9.x86_64.tgz
c4fadf1645c8bbe3e83d5a01497fa9ca  pigsty-pkg-v3.6.0.u22.aarch64.tgz
5477ed6be96f156a43acd740df8a9b9b  pigsty-pkg-v3.6.0.u22.x86_64.tgz
196169afc1be02f93fcc599d42d005ca  pigsty-pkg-v3.6.0.u24.aarch64.tgz
dbe5c1e8a242a62fe6f6e1f6e6b6c281  pigsty-pkg-v3.6.0.u24.x86_64.tgz
```



------

## v3.5.0

**Highlights**

- New website: https://pgsty.com
- **PostgreSQL 18 (Beta) support**: monitoring via `pg_exporter 1.0.0`, installer alias via `pig 0.4.2`, and a `pg18` template
- **421 bundled extensions**, now including OrioleDB and OpenHalo kernels on all platforms
- **`pig do` CLI** replaces legacy `bin/` scripts
- **Hardening for self-hosted Supabase** (replication lag, key distribution, etc.)
- **Code & architecture refactor** — slimmer tasks, cleaner defaults for Postgres & PgBouncer
- **Monitoring stack refresh** — Grafana 12, `pg_exporter 1.0`, new panels & plugins
- **Run vagrant on Apple Silicon**

```bash
curl https://repo.pigsty.io/get | bash -s v3.5.0
```

**Module Changes**

- Add PostgreSQL 18 support
- PG18 metrics support with pg_exporter 1.0.0+
- PG18 install support with pig 0.4.1+
- New config template `pg18.yml`
- Refactored `pgsql` module
- Split monitoring into a new **`pg_monitor`** role; removed `clean` logic
- Pruned duplicate tasks, dropped `dir/utils` block, renamed templates (no `.j2`)
- All extensions install in **`extensions`** schema (Supabase best-practice)
- Added `SET search_path=''` to every monitoring function
- Tuned PgBouncer defaults (larger pool, cleanup query); new `pgbouncer_ignore_param`
- New `pg_key` task to generate `pgsodium` master keys
- Enabled `sync_replication_slots` by default on PG 17
- Retagged subtasks for clearer structure
- Refactored `pg_remove` module
- New flags `pg_rm_data`, `pg_rm_bkup`, `pg_rm_pkg` control what gets wiped
- Clearer role layout & tagging
- Added new `pg_monitor` module
- pgbouncer_exporter no longer shares configuration files with `pg_exporter`
- Added monitoring metrics for TimescaleDB and Citus
- Using `pg_exporter` 0.9.0 with updated replication slot metrics for PG16/17
- Using more compact, newly designed collector configuration files
- Supabase Enhancement (thanks [@lawso017](https://github.com/lawso017) for the contribution)
- update supabase containers and schemas to the latest version
- Support `pgsodium` server key loading
- fix logflare lag issue with `supa-kick` crontab
- add `set search_path` clause for monitor functions
- Added new `pig do` command to CLI, allowing command-line tool to replace Shell scripts in `bin/`

**Infra Package Updates**

- pig 0.4.2
- duckdb 1.3.0
- etcd 3.6.0
- vector 0.47.0
- minio 20250422221226
- mcli 20250416181326
- pev 1.5.0
- rclone 1.69.3
- mtail 3.0.8 (new)

**Observability Package Updates**

- grafana 12.0.0
- grafana-victorialogs-ds 0.16.3
- grafana-victoriametrics-ds 0.15.1
- grafana-infinity-ds 3.2.1
- grafana_plugins 12.0.0
- prometheus 3.4.0
- pushgateway 1.11.1
- nginx_exporter 1.4.2
- pg_exporter [1.0.0](https://github.com/pgsty/pg_exporter/releases/tag/v1.0.0)
- pgbackrest_exporter 0.20.0
- redis_exporter 1.72.1
- keepalived_exporter 1.6.2
- victoriametrics 1.117.1
- victoria_logs 1.22.2

**Database Package Updates**

- PostgreSQL 17.5, 16.9, 15.13, 14.18, 13.21
- PostgreSQL 18beta1 support
- pgbouncer 1.24.1
- pgbackrest 2.55
- pgbadger 13.1

**Extension Package Updates**

- spat [0.1.0a4](https://github.com/Florents-Tselai/spat) new extension
- pgsentinel [1.1.0](https://github.com/pgsentinel/pgsentinel/releases/tag/v1.1.0) new extension
- pgdd [0.6.0](https://github.com/rustprooflabs/pgdd) (pgrx 0.14.1) new extension add back
- convert [0.0.4](https://github.com/rustprooflabs/convert) (pgrx 0.14.1) new extension
- pg_tokenizer.rs [0.1.0](https://github.com/tensorchord/pg_tokenizer.rs) (pgrx 0.13.1)
- pg_render [0.1.2](https://github.com/mkaski/pg_render) (pgrx 0.12.8)
- pgx_ulid [0.2.0](https://github.com/pksunkara/pgx_ulid) (pgrx 0.12.7)
- pg_idkit [0.3.0](https://github.com/VADOSWARE/pg_idkit) (pgrx 0.14.1)
- pg_ivm [1.11.0](https://github.com/sraoss/pg_ivm)
- orioledb [1.4.0 beta11](https://github.com/orioledb/orioledb) rpm & add debian/ubuntu support
- openhalo [14.10](https://github.com/HaloTech-Co-Ltd/openHalo) add debian/ubuntu support
- omnigres 20250507 (miss on d12/u22)
- citus [12.0.3](https://github.com/citusdata/citus/releases/tag/v13.0.3)
- timescaledb [2.20.0](https://github.com/timescale/timescaledb/releases/tag/2.20.0) (DROP PG14 support)
- supautils [2.9.2](https://github.com/supabase/supautils/releases/tag/v2.9.2)
- pg_envvar [1.0.1](https://github.com/theory/pg-envvar/releases/tag/v1.0.1)
- pgcollection [1.0.0](https://github.com/aws/pgcollection/releases/tag/v1.0.0)
- aggs_for_vecs [1.4.0](https://github.com/pjungwir/aggs_for_vecs/releases/tag/1.4.0)
- pg_tracing [0.1.3](https://github.com/DataDog/pg_tracing/releases/tag/v0.1.3)
- pgmq [1.5.1](https://github.com/pgmq/pgmq/releases/tag/v1.5.1)
- tzf-pg [0.2.0](https://github.com/ringsaturn/tzf-pg/releases/tag/v0.2.0) (pgrx 0.14.1)
- pg_search [0.15.18](https://github.com/paradedb/paradedb/releases/tag/v0.15.18) (pgrx 0.14.1)
- anon [2.1.1](https://gitlab.com/dalibo/postgresql_anonymizer/-/tree/latest/debian?ref_type=heads) (pgrx 0.14.1)
- pg_parquet [0.4.0](https://github.com/CrunchyData/pg_parquet/releases/tag/v0.3.2) (0.14.1)
- pg_cardano [1.0.5](https://github.com/Fell-x27/pg_cardano/commits/master/) (pgrx 0.12) -> 0.14.1
- pglite_fusion [0.0.5](https://github.com/frectonz/pglite-fusion/releases/tag/v0.0.5) (pgrx 0.12.8) -> 14.1
- vchord_bm25 [0.2.1](https://github.com/tensorchord/VectorChord-bm25/releases/tag/0.2.1) (pgrx 0.13.1)
- vchord [0.3.0](https://github.com/tensorchord/VectorChord/releases/tag/0.3.0) (pgrx 0.13.1)
- pg_vectorize [0.22.1](https://github.com/ChuckHend/pg_vectorize/releases/tag/v0.22.1) (pgrx 0.13.1)
- wrappers [0.4.6](https://github.com/supabase/wrappers/releases/tag/v0.4.6) (pgrx 0.12.9)
- timescaledb-toolkit [1.21.0](https://github.com/timescale/timescaledb-toolkit/releases/tag/1.21.0) (pgrx 0.12.9)
- pgvectorscale [0.7.1](https://github.com/timescale/pgvectorscale/releases/tag/0.7.1) (pgrx 0.12.9)
- pg_session_jwt [0.3.1](https://github.com/neondatabase/pg_session_jwt/releases/tag/v0.3.1) (pgrx 0.12.6) -> 0.12.9
- pg_timetable 5.13.0
- ferretdb 2.2.0
- documentdb [0.103.0](https://github.com/FerretDB/documentdb/releases/tag/v0.103.0-ferretdb-2.2.0) (+aarch64 support)
- pgml [2.10.0](https://github.com/postgresml/postgresml/releases/tag/v2.10.0) (pgrx 0.12.9)
- sqlite_fdw [2.5.0](https://github.com/pgspider/sqlite_fdw/releases/tag/v2.5.0) (fix pg17 deb)
- tzf [0.2.2](https://github.com/ringsaturn/pg-tzf/releases/tag/v0.2.2) 0.14.1 (rename src)
- pg_vectorize [0.22.2](https://github.com/ChuckHend/pg_vectorize/releases/tag/v0.22.2) (pgrx 0.13.1)
- wrappers [0.5.0](https://github.com/supabase/wrappers/releases/tag/v0.5.0) (pgrx 0.12.9)

**Checksums**

```bash
c7e5ce252ddf848e5f034173e0f29345  pigsty-v3.5.0.tgz
ba31f311a16d615c1ee1083dc5a53566  pigsty-pkg-v3.5.0.d12.aarch64.tgz
3aa5c56c8f0de53303c7100f2b3934f4  pigsty-pkg-v3.5.0.d12.x86_64.tgz
a098cb33822633357e6880eee51affd6  pigsty-pkg-v3.5.0.el8.x86_64.tgz
63723b0aeb4d6c02fff0da2c78e4de31  pigsty-pkg-v3.5.0.el9.aarch64.tgz
eb91c8921d7b8a135d8330c77468bfe7  pigsty-pkg-v3.5.0.el9.x86_64.tgz
87ff25e14dfb9001fe02f1dfbe70ae9e  pigsty-pkg-v3.5.0.u22.x86_64.tgz
18be503856f6b39a59efbd1d0a8556b6  pigsty-pkg-v3.5.0.u24.aarch64.tgz
2bbef6a18cfa99af9cd175ef0adf873c  pigsty-pkg-v3.5.0.u24.x86_64.tgz
```



------

## v3.4.1

GitHub Release Page: [v3.4.1](https://github.com/pgsty/pigsty/releases/tag/v3.4.1)

- Added support for MySQL wire-compatible PostgreSQL kernel on EL systems: [openHalo](/docs/pgsql/kernel/openhalo)
- Added support for OLTP-enhanced PostgreSQL kernel on EL systems: [orioledb](/docs/pgsql/kernel/orioledb)
- Optimized pgAdmin 9.2 application template with automatic server list updates and pgpass password population
- Increased PG default max connections to 250, 500, 1000
- Removed the `mysql_fdw` extension with dependency errors from EL8

**Infra Updates**

- pig 0.3.4
- etcd 3.5.21
- restic 0.18.0
- ferretdb 2.1.0
- tigerbeetle 0.16.34
- pg_exporter 0.8.1
- node_exporter 1.9.1
- grafana 11.6.0
- zfs_exporter 3.8.1
- mongodb_exporter 0.44.0
- victoriametrics 1.114.0
- minio 20250403145628
- mcli 20250403170756

**Extension Update**

- Bump pg_search to 0.15.13
- Bump citus to 13.0.3
- Bump timescaledb to 2.19.1
- Bump pgcollection RPM to 1.0.0
- Bump pg_vectorize RPM to 0.22.1
- Bump pglite_fusion RPM to 0.0.4
- Bump aggs_for_vecs RPM to 1.4.0
- Bump pg_tracing RPM to 0.1.3
- Bump pgmq RPM to 1.5.1

**Checksums**

```bash
471c82e5f050510bd3cc04d61f098560  pigsty-v3.4.1.tgz
4ce17cc1b549cf8bd22686646b1c33d2  pigsty-pkg-v3.4.1.d12.aarch64.tgz
c80391c6f93c9f4cad8079698e910972  pigsty-pkg-v3.4.1.d12.x86_64.tgz
811bf89d1087512a4f8801242ca8bed5  pigsty-pkg-v3.4.1.el9.x86_64.tgz
9fe2e6482b14a3e60863eeae64a78945  pigsty-pkg-v3.4.1.u22.x86_64.tgz
```


------



## v3.4.0

GitHub Release Page: [v3.4.0](https://github.com/pgsty/pigsty/releases/tag/v3.4.0)

Introduction Blog: [**Pigsty v3.4 MySQL Compatibility and Overall Enhancements**](/blog/pigsty/v3.4)

**New Features**

- Added new pgBackRest backup monitoring metrics and dashboards
- Enhanced Nginx server configuration options, with support for automated Certbot issuance
- Now prioritizing PostgreSQL's built-in `C`/`C.UTF-8` locale settings
- IvorySQL 4.4 is now fully supported across all platforms (RPM/DEB on x86/ARM)
- Added new software packages: Juicefs, Restic, TimescaleDB EventStreamer
- The Apache AGE graph database extension now fully supports PostgreSQL 13–17 on EL
- Improved the `app.yml` playbook: launch standard Docker app without extra config
- Bump Supabase, Dify, and Odoo app templates, bump to their latest versions
- Add electric app template, local-first PostgreSQL Sync Engine

**Infra Packages**

- **+restic** 0.17.3
- **+juicefs** 1.2.3
- **+timescaledb-event-streamer** 0.12.0
- **Prometheus** 3.2.1
- **AlertManager** 0.28.1
- **blackbox_exporter** 0.26.0
- **node_exporter** 1.9.0
- **mysqld_exporter** 0.17.2
- **kafka_exporter** 1.9.0
- **redis_exporter** 1.69.0
- **pgbackrest_exporter** 0.19.0-2
- **DuckDB** 1.2.1
- **etcd** 3.5.20
- **FerretDB** 2.0.0
- **tigerbeetle** 0.16.31
- **vector** 0.45.0
- **VictoriaMetrics** 1.113.0
- **VictoriaLogs** 1.17.0
- **rclone** 1.69.1
- **pev2** 1.14.0
- **grafana-victorialogs-ds** 0.16.0
- **grafana-victoriametrics-ds** 0.14.0
- **grafana-infinity-ds** 3.0.0

**PostgreSQL Related**

- **Patroni** 4.0.5
- **PolarDB** 15.12.3.0-e1e6d85b
- **IvorySQL** 4.4
- **pgbackrest** 2.54.2
- **pev2** 1.14
- **Babelfish** 13.17

**PostgreSQL Extensions**

- **pgspider_ext** 1.3.0 (new extension)
- **apache age** 13–17 el rpm (1.5.0)
- **timescaledb** 2.18.2 → 2.19.0
- **citus** 13.0.1 → 13.0.2
- **documentdb** 1.101-0 → 1.102-0
- **pg_analytics** 0.3.4 → 0.3.7
- **pg_search** 0.15.2 → 0.15.8
- **pg_ivm** 1.9 → 1.10
- **emaj** 4.4.0 → 4.6.0
- **pgsql_tweaks** 0.10.0 → 0.11.0
- **pgvectorscale** 0.4.0 → 0.6.0 (pgrx 0.12.5)
- **pg_session_jwt** 0.1.2 → 0.2.0 (pgrx 0.12.6)
- **wrappers** 0.4.4 → 0.4.5 (pgrx 0.12.9)
- **pg_parquet** 0.2.0 → 0.3.1 (pgrx 0.13.1)
- **vchord** 0.2.1 → 0.2.2 (pgrx 0.13.1)
- **pg_tle** 1.2.0 → 1.5.0
- **supautils** 2.5.0 → 2.6.0
- **sslutils** 1.3 → 1.4
- **pg_profile** 4.7 → 4.8
- **pg_snakeoil** 1.3 → 1.4
- **pg_jsonschema** 0.3.2 → 0.3.3
- **pg_incremental** 1.1.1 → 1.2.0
- **pg_stat_monitor** 2.1.0 → 2.1.1
- **ddl_historization** 0.7 → 0.0.7 (bug fix)
- **pg_sqlog** 3.1.7 → 1.6 (bug fix)
- **pg_random** removed development suffix (bug fix)
- **asn1oid** 1.5 → 1.6
- **table_log** 0.6.1 → 0.6.4

**Interface Changes**

- Added new Docker parameters: `docker_data` and `docker_storage_driver` ([#521](https://github.com/pgsty/pigsty/pull/521) by [@waitingsong](https://github.com/waitingsong))
- Added new Infra parameter: `alertmanager_port`, which lets you specify the AlertManager port
- Added new Infra parameter: `certbot_sign`, apply for cert during nginx init? (false by default)
- Added new Infra parameter: `certbot_email`, specifying the email used when requesting certificates via Certbot
- Added new Infra parameter: `certbot_options`, specifying additional parameters for Certbot
- Updated IvorySQL to place its default binary under `/usr/ivory-4` starting in IvorySQL 4.4
- Changed the default for `pg_lc_ctype` and other locale-related parameters from `en_US.UTF-8` to `C`
- For PostgreSQL 17, if using `UTF8` encoding with `C` or `C.UTF-8` locales, PostgreSQL's built-in localization rules now take priority
- `configure` automatically detects whether `C.utf8` is supported by both the PG version and the environment, and adjusts locale-related options accordingly
- Set the default IvorySQL binary path to `/usr/ivory-4`
- Updated the default value of `pg_packages` to `pgsql-main patroni pgbouncer pgbackrest pg_exporter pgbadger vip-manager`
- Updated the default value of `repo_packages` to `[node-bootstrap, infra-package, infra-addons, node-package1, node-package2, pgsql-utility, extra-modules]`
- Removed `LANG` and `LC_ALL` environment variable settings from `/etc/profile.d/node.sh`
- Now using `bento/rockylinux-8` and `bento/rockylinux-9` as the Vagrant box images for EL
- Added a new alias, `extra_modules`, which includes additional optional modules
- Updated PostgreSQL aliases: `postgresql`, `pgsql-main`, `pgsql-core`, `pgsql-full`
- GitLab repositories are now included among available modules
- The Docker module has been merged into the Infra module
- The `node.yml` playbook now includes a `node_pip` task to configure a pip mirror on each node
- The `pgsql.yml` playbook now includes a `pgbackrest_exporter` task for collecting backup metrics
- The `Makefile` now allows the use of `META`/`PKG` environment variables
- Added `/pg/spool` directory as temporary storage for pgBackRest
- Disabled pgBackRest's `link-all` option by default
- Enabled block-level incremental backups for MinIO repositories by default

**Bug Fixes**

- Fixed the exit status code in `pg-backup` ([#532](https://github.com/pgsty/pigsty/pull/532) by [@waitingsong](https://github.com/waitingsong))
- In `pg-tune-hugepage`, restricted PostgreSQL to use only large pages ([#527](https://github.com/pgsty/pigsty/pull/527) by [@waitingsong](https://github.com/waitingsong))
- Fixed logic errors in the `pg-role` task
- Corrected type conversion for hugepage configuration parameters
- Fixed default value issues for `node_repo_modules` in the `slim` template

**Checksums**

```bash
768bea3bfc5d492f4c033cb019a81d3a  pigsty-v3.4.0.tgz
7c3d47ef488a9c7961ca6579dc9543d6  pigsty-pkg-v3.4.0.d12.aarch64.tgz
b5d76aefb1e1caa7890b3a37f6a14ea5  pigsty-pkg-v3.4.0.d12.x86_64.tgz
42dacf2f544ca9a02148aeea91f3153a  pigsty-pkg-v3.4.0.el8.aarch64.tgz
d0a694f6cd6a7f2111b0971a60c49ad0  pigsty-pkg-v3.4.0.el8.x86_64.tgz
7caa82254c1b0750e89f78a54bf065f8  pigsty-pkg-v3.4.0.el9.aarch64.tgz
8f817e5fad708b20ee217eb2e12b99cb  pigsty-pkg-v3.4.0.el9.x86_64.tgz
8b2fcaa6ef6fd8d2726f6eafbb488aaf  pigsty-pkg-v3.4.0.u22.aarch64.tgz
83291db7871557566ab6524beb792636  pigsty-pkg-v3.4.0.u22.x86_64.tgz
c927238f0343cde82a4a9ab230ecd2ac  pigsty-pkg-v3.4.0.u24.aarch64.tgz
14cbcb90693ed5de8116648a1f2c3e34  pigsty-pkg-v3.4.0.u24.x86_64.tgz
```

-------

## v3.3.0

- Total available extensions increased to [**404**](/docs/pgsql/ext/)!
- PostgreSQL February Minor Updates: 17.4, 16.8, 15.12, 14.17, 13.20
- New Feature: `app.yml` script for auto-installing apps like Odoo, Supabase, Dify.
- New Feature: Further Nginx configuration customization in `infra_portal`.
- New Feature: Added Certbot support for quick free HTTPS certificate requests.
- New Feature: Pure-text extension list now supported in `pg_default_extensions`.
- New Feature: Default repositories now include mongo, redis, groonga, haproxy, etc.
- New Parameter: `node_aliases` to add command aliases for Nodes.
- Fix: Resolved default EPEL repo address issue in Bootstrap script.
- Improvement: Added Aliyun mirror for Debian Security repository.
- Improvement: pgBackRest backup support for IvorySQL kernel.
- Improvement: ARM64 and Debian/Ubuntu support for PolarDB.
- pg_exporter 0.8.0 now supports new metrics in pgbouncer 1.24.
- New Feature: Auto-completion for common commands like `git`, `docker`, `systemctl` [#506](https://github.com/pgsty/pigsty/pull/506) [#524](https://github.com/pgsty/pigsty/pull/524) by [@waitingsong](https://github.com/waitingsong).
- Improvement: Refined `ignore_startup_parameters` in `pgbouncer` config template [#488](https://github.com/pgsty/pigsty/pull/488) by [@waitingsong](https://github.com/waitingsong).
- New homepage design: Pigsty's website now features a fresh new look.
- Extension Directory: Detailed information and download links for RPM/DEB binary packages.
- Extension Build: `pig` CLI now auto-sets PostgreSQL extension build environment.

**New Extensions**

**12** new PostgreSQL extensions added, bringing the total to [404](/ext/list) available extensions.

- [documentdb](https://github.com/microsoft/documentdb/) 0.101-0
- [VectorChord-bm25](https://github.com/tensorchord/VectorChord-bm25) (vchord_bm25) 0.1.0
- [pg_tracing](https://github.com/DataDog/pg_tracing) 0.1.2
- [pg_curl](https://github.com/RekGRpth/pg_curl) 2.4
- [pgxicor](https://github.com/Florents-Tselai/pgxicor) 0.1.0
- [pgsparql](https://github.com/lacanoid/pgsparql) 1.0
- [pgjq](https://github.com/Florents-Tselai/pgJQ) 0.1.0
- [hashtypes](https://github.com/adjust/hashtypes/) 0.1.5
- [db_migrator](https://github.com/cybertec-postgresql/db_migrator) 1.0.0
- [pg_cooldown](https://github.com/rbergm/pg_cooldown) 0.1
- [pgcollection](https://github.com/aws/pgcollection) 0.9.1
- [pg_bzip](https://github.com/steve-chavez/pg_bzip) 1.0.0

**Bump Extension**

- citus 13.0.0 -> 13.0.1
- pg_duckdb 0.2.0 -> 0.3.1
- pg_mooncake 0.1.0 -> 0.1.2
- timescaledb 2.17.2 -> 2.18.2
- supautils 2.5.0 -> 2.6.0
- supabase_vault 0.3.1 (become C)
- VectorChord 0.1.0 -> 0.2.1
- pg_bulkload 3.1.22 (+pg17)
- pg_store_plan 1.8 (+pg17)
- pg_search 0.14 -> 0.15.2
- pg_analytics 0.3.0 -> 0.3.4
- pgroonga 3.2.5 -> 4.0.0
- zhparser 2.2 -> 2.3
- pg_vectorize 0.20.0 -> 0.21.1
- pg_net 0.14.0
- pg_curl 2.4.2
- table_version 1.10.3 -> 1.11.0
- pg_duration 1.0.2
- pg_graphql 1.5.9 -> 1.5.11
- vchord 0.1.1 -> 0.2.1 ((+13))
- vchord_bm25 0.1.0 -> 0.1.1
- pg_mooncake 0.1.1 -> 0.1.2
- pgddl 0.29
- pgsql_tweaks 0.11.0

**Infra Updates**

- pig 0.1.3 -> 0.3.0
- pushgateway 1.10.0 -> 1.11.0
- alertmanager 0.27.0 -> 0.28.0
- nginx_exporter 1.4.0 -> 1.4.1
- pgbackrest_exporter 0.18.0 -> 0.19.0
- redis_exporter 1.66.0 -> 1.67.0
- mongodb_exporter 0.43.0 -> 0.43.1
- VictoriaMetrics 1.107.0 -> 1.111.0
- VictoriaLogs v1.3.2 -> 1.9.1
- DuckDB 1.1.3 -> 1.2.0
- Etcd 3.5.17 -> 3.5.18
- pg_timetable 5.10.0 -> 5.11.0
- FerretDB 1.24.0 -> 2.0.0-rc
- tigerbeetle 0.16.13 -> 0.16.27
- grafana 11.4.0 -> 11.5.2
- vector 0.43.1 -> 0.44.0
- minio 20241218131544 -> 20250218162555
- mcli 20241121172154 -> 20250215103616
- rclone 1.68.2 -> 1.69.0
- vray 5.23 -> 5.28

-------

## v3.2.2

- New Extension(s): [`Omnigres`](/ext/e/omni) 33 extensions, postgres as platform
- New Extension: [`pg_mooncake`](/ext/e/pg_mooncake): duckdb in postgres
- New Extensions: [`pg_xxhash`](/ext/e/xxhash)
- New Extension: [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit)
- New Extension: [`pg_xenophile`](/ext/e/pg_xenophile)
- New Extension: [`pg_drop_events`](/ext/e/pg_drop_events)
- New Extension: [`pg_incremental`](/ext/e/pg_incremental)
- Bump [`citus`](https://github.com/citusdata/citus/tree/v13.0.0) to 13.0.0 with PostgreSQL 17 support.
- Bump [`pgml`](https://github.com/postgresml/postgresml/releases/tag/v2.10.0) to 2.10.0
- Bump [`pg_extra_time`](/ext/e/pg_extra_time) to 2.0.0
- Bump [`pg_vectorize`](/ext/e/vectorize) to 0.20.0

**What's Changed**

- Bump IvorySQL to 4.2 (PostgreSQL 17.2)
- Add Arm64 and Debian support for PolarDB kernel
- Add certbot and certbot-nginx to default `infra_packages`
- Increase pgbouncer max_prepared_statements to 256
- remove `pgxxx-citus` package alias
- hide `pgxxx-olap` category in `pg_extensions` by default

-------

## v3.2.1

**Highlights**

- [**351**](/ext/) PostgreSQL Extensions, including the powerful [postgresql-anonymizer 2.0](https://postgresql-anonymizer.readthedocs.io/en/stable/)
- IvorySQL 4.0 support for EL 8/9
- Now use the Pigsty compiled Citus, TimescaleDB and pgroonga on all distros
- Add self-hosting Odoo template and support

**Bump software versions**

- pig CLI 0.1.2 self-updating capability
- prometheus 3.1.0

**Add New Extension**

- add pg_anon 2.0.0
- add omnisketch 1.0.2
- add ddsketch 1.0.1
- add pg_duration 1.0.1
- add ddl_historization 0.0.7
- add data_historization 1.1.0
- add schedoc 0.0.1
- add floatfile 1.3.1
- add pg_upless 0.0.3
- add pg_task 1.0.0
- add pg_readme 0.7.0
- add vasco 0.1.0
- add pg_xxhash 0.0.1

**Update Extension**

- lower_quantile 1.0.3
- quantile 1.1.8
- sequential_uuids 1.0.3
- pgmq 1.5.0 (subdir)
- floatvec 1.1.1
- pg_parquet 0.2.0
- wrappers 0.4.4
- pg_later 0.3.0
- topn fix for deb.arm64
- add age 17 on debian
- powa + pg17, 5.0.1
- h3 + pg17
- ogr_fdw + pg17
- age + pg17 1.5 on debian
- pgtap + pg17 1.3.3
- repmgr
- topn + pg17
- pg_partman 5.2.4
- credcheck 3.0
- ogr_fdw 1.1.5
- ddlx 0.29
- postgis 3.5.1
- tdigest 1.4.3
- pg_repack 1.5.2

-------


## v3.2.0

**Highlights**

- **New CLI**: Introducing the `pig` command-line tool for managing extension plugins.
- **ARM64 Support**: 390 extensions are now available for ARM64 across five major distributions.
- **Supabase Update**: Latest Supabase Release Week updates are now supported for self-hosting on all distributions.
- **Grafana v11.4**: Upgraded Grafana to version 11.4, featuring a new Infinity datasource.

**Package Changes**

- New Extensions
- Added `timescaledb`, `timescaledb-loader`, `timescaledb-toolkit`, and `timescaledb-tool` to the PIGSTY repository.
- Added a custom-compiled [pg_timescaledb](https://github.com/timescale/timescaledb) for EL.
- Added [pgroonga](/ext/e/pgroonga), custom-compiled for all EL variants.
- Added [vchord](https://github.com/tensorchord/VectorChord) 0.1.0.
- Added [pg_bestmatch.rs](https://github.com/tensorchord/pg_bestmatch.rs) 0.0.1.
- Added [pglite_fusion](https://github.com/frectonz/pglite-fusion) 0.0.3.
- Added [pgpdf](https://github.com/Florents-Tselai/pgpdf) 0.1.0.
- Updated Extensions
- **pgvectorscale**: 0.4.0 → 0.5.1
- **pg_parquet**: 0.1.0 → 0.1.1
- **pg_polyline**: 0.0.1
- **pg_cardano**: 1.0.2 → 1.0.3
- **pg_vectorize**: 0.20.0
- **pg_duckdb**: 0.1.0 → 0.2.0
- **pg_search**: 0.13.0 → 0.13.1
- **aggs_for_vecs**: 1.3.1 → 1.3.2
- Infrastructure
- Added **promscale** 0.17.0
- Added **grafana-plugins** 11.4
- Added **grafana-infinity-plugins**
- Added **grafana-victoriametrics-ds**
- Added **grafana-victorialogs-ds**
- **vip-manager**: 2.8.0 → 3.0.0
- **vector**: 0.42.0 → 0.43.0
- **grafana**: 11.3 → 11.4
- **prometheus**: 3.0.0 → 3.0.1 (package name changed from `prometheus2` to `prometheus`)
- **nginx_exporter**: 1.3.0 → 1.4.0
- **mongodb_exporter**: 0.41.2 → 0.43.0
- **VictoriaMetrics**: 1.106.1 → 1.107.0
- **VictoriaLogs**: 1.0.0 → 1.3.2
- **pg_timetable**: 5.9.0 → 5.10.0
- **tigerbeetle**: 0.16.13 → 0.16.17
- **pg_export**: 0.7.0 → 0.7.1
- New Docker App
- Add [mattermost](https://github.com/mattermost/mattermost) the open-source Slack alternative self-hosting template
- Bug Fixes
- Added `python3-cdiff` for `el8.aarch64` to fix missing Patroni dependency.
- Added `timescaledb-tools` for `el9.aarch64` to fix missing package in official repo.
- Added `pg_filedump` for `el9.aarch64` to fix missing package in official repo.
- Removed Extensions
- **pg_mooncake**: Removed due to conflicts with `pg_duckdb`.
- **pg_top**: Removed because of repeated version issues and quality concerns.
- **hunspell_pt_pt**: Removed because of conflict with official PG dictionary files.
- **pgml**: Disabled by default (no longer downloaded or installed).

**API Changes**

- [`repo_url_packages`](/docs/infra/param#repo_url_packages) now defaults to an empty array; packages are installed via OS package managers.
- `grafana_plugin_cache` is deprecated; Grafana plugins are now installed via OS package managers.
- `grafana_plugin_list` is deprecated for the same reason.
- The 36-node "production" template has been renamed to `simu`.
- Auto-generated code under `node_id/vars` now includes `aarch64` support.
- `infra_packages` now includes the `pig` CLI tool.
- The `configure` command now updates the version numbers of `pgsql-xxx` aliases in auto-generated config files.
- Update terraform templates with Makefile shortcuts and better provision experience

**Bug Fix**

- Fix pgbouncer dashboard selector issue [#474](https://github.com/pgsty/pigsty/issues/474)
- Add `--arg value` support for `pg-pitr` by [@waitingsong](https://github.com/pgsty/pigsty/pulls?q=is%3Apr+author%3Awaitingsong)
- Fix redis log message typo by [@waitingsong](https://github.com/pgsty/pigsty/pull/476)

**Checksums**

```bash
c42da231067f25104b71a065b4a50e68  pigsty-pkg-v3.2.0.d12.aarch64.tgz
ebb818f98f058f932b57d093d310f5c2  pigsty-pkg-v3.2.0.d12.x86_64.tgz
d2b85676235c9b9f2f8a0ad96c5b15fd  pigsty-pkg-v3.2.0.el9.aarch64.tgz
649f79e1d94ec1845931c73f663ae545  pigsty-pkg-v3.2.0.el9.x86_64.tgz
24c0be1d8436f3c64627c12f82665a17  pigsty-pkg-v3.2.0.u22.aarch64.tgz
0b9be0e137661e440cd4f171226d321d  pigsty-pkg-v3.2.0.u22.x86_64.tgz
8fdc6a60820909b0a2464b0e2b90a3a6  pigsty-v3.2.0.tgz
```



--------

## v3.1.0

2024-11-24 : ARM64 & Ubuntu24, PG17 by Default, Better Supabase & MinIO

https://github.com/pgsty/pigsty/releases/tag/v3.1.0

--------

## v3.0.4

2024-10-28 : PostgreSQL 17 Extensions, Better self-hosting Supabase

https://github.com/pgsty/pigsty/releases/tag/v3.0.4

--------

## v3.0.3

2024-09-27 : PostgreSQL 17, Etcd Enhancement, IvorySQL 3.4, PostGIS 3.5

https://github.com/pgsty/pigsty/releases/tag/v3.0.3

--------

## v3.0.2

2024-09-07 : Mini Install, PolarDB 15, Bloat View Update

https://github.com/pgsty/pigsty/releases/tag/v3.0.2

--------

## v3.0.1

2024-08-31 : Oracle Compatibility, Patroni 4.0, Routine Bug Fix

https://github.com/pgsty/pigsty/releases/tag/v3.0.1

--------

## v3.0.0

2024-08-30 : Extension Exploding & Pluggable Kernels (MSSQL, Oracle)

https://github.com/pgsty/pigsty/releases/tag/v3.0.0


--------

## v2.7.0

2024-05-16 : Extension Overwhelming, new docker apps

https://github.com/pgsty/pigsty/releases/tag/v2.7.0

--------

## v2.6.0

2024-02-29 : PG 16 as default version, ParadeDB & DuckDB

https://github.com/pgsty/pigsty/releases/tag/v2.6.0

--------

## v2.5.1

2023-12-01 : Routine update, pg16 major extensions

https://github.com/pgsty/pigsty/releases/tag/v2.5.1

--------

## v2.5.0

2023-10-24 : Ubuntu/Debian Support: bullseye, bookworm, jammy, focal

https://github.com/pgsty/pigsty/releases/tag/v2.5.0

--------

## v2.4.1

2023-09-24 : Supabase/PostgresML support, graphql, jwt, pg_net, vault

https://github.com/pgsty/pigsty/releases/tag/v2.4.1

--------

## v2.4.0

2023-09-14 : PG16, RDS Monitor, New Extensions

https://github.com/pgsty/pigsty/releases/tag/v2.4.0

--------

## v2.3.1

2023-09-01 : PGVector with HNSW, PG16 RC1, Chinese Docs, Bug Fix

https://github.com/pgsty/pigsty/releases/tag/v2.3.1

--------

## v2.3.0

2023-08-20 : PGSQL/REDIS Update, NODE VIP, Mongo/FerretDB, MYSQL Stub

https://github.com/pgsty/pigsty/releases/tag/v2.3.0

--------

## v2.2.0

2023-08-04 : Dashboard & Provision overhaul, UOS compatibility

https://github.com/pgsty/pigsty/releases/tag/v2.2.0

--------

## v2.1.0

2023-06-10 : PostgreSQL 12 ~ 16beta support

https://github.com/pgsty/pigsty/releases/tag/v2.1.0

--------

## v2.0.2

2023-03-31 : Add pgvector support and fix MinIO CVE

https://github.com/pgsty/pigsty/releases/tag/v2.0.2

--------

## v2.0.1

2023-03-21 : v2 Bug Fix, security enhance and bump grafana version

https://github.com/pgsty/pigsty/releases/tag/v2.0.1

--------

## v2.0.0

2023-02-28 : Compatibility Security Maintainability Enhancement

https://github.com/pgsty/pigsty/releases/tag/v2.0.0


--------

## v1.5.1

2022-06-18 : Grafana Security Hotfix

https://github.com/pgsty/pigsty/releases/tag/v1.5.1

--------

## v1.5.0

2022-05-31 : Docker Applications

https://github.com/pgsty/pigsty/releases/tag/v1.5.0

--------

## v1.4.1

2022-04-20 : Bug fix & Full translation of English documents.

https://github.com/pgsty/pigsty/releases/tag/v1.4.1

--------

## v1.4.0

2022-03-31 : MatrixDB Support, Separated INFRA, NODES, PGSQL, REDIS

https://github.com/pgsty/pigsty/releases/tag/v1.4.0

--------

## v1.3.0

2021-11-30 : PGCAT Overhaul & PGSQL Enhancement & Redis Support Beta

https://github.com/pgsty/pigsty/releases/tag/v1.3.0

--------

## v1.2.0

2021-11-03 : Upgrade default Postgres to 14, monitoring existing pg

https://github.com/pgsty/pigsty/releases/tag/v1.2.0

--------

## v1.1.0

2021-10-12 : HomePage, JupyterLab, PGWEB, Pev2 & Pgbadger

https://github.com/pgsty/pigsty/releases/tag/v1.1.0

--------

## v1.0.0

2021-07-26 : v1 GA, Monitoring System Overhaul

https://github.com/pgsty/pigsty/releases/tag/v1.0.0


--------

## v0.9.0

2021-04-04 : Pigsty GUI, CLI, Logging Integration

https://github.com/pgsty/pigsty/releases/tag/v0.9.0

--------

## v0.8.0

2021-03-28 : Service Provision

https://github.com/pgsty/pigsty/releases/tag/v0.8.0

--------

## v0.7.0

2021-03-01 : Monitor only deployment

https://github.com/pgsty/pigsty/releases/tag/v0.7.0

--------

## v0.6.0

2021-02-19 : Architecture Enhancement

https://github.com/pgsty/pigsty/releases/tag/v0.6.0

--------

## v0.5.0

2021-01-07 : Database Customize Template

https://github.com/pgsty/pigsty/releases/tag/v0.5.0

--------

## v0.4.0

2020-12-14 : PostgreSQL 13 Support, Official Documentation

https://github.com/pgsty/pigsty/releases/tag/v0.4.0

--------

## v0.3.0

2020-10-22 : Provisioning Solution GA

https://github.com/pgsty/pigsty/releases/tag/v0.3.0

--------

## v0.2.0

2020-07-10 : PGSQL Monitoring v6 GA

https://github.com/pgsty/pigsty/commit/385e33a62a19817e8ba19997260e6b77d99fe2ba

--------

## v0.1.0

2020-06-20 : Validation on Testing Environment

https://github.com/pgsty/pigsty/commit/1cf2ea5ee91db071de00ec805032928ff582453b

--------

## v0.0.5

2020-08-19 : Offline Installation Mode

https://github.com/pgsty/pigsty/commit/0fe9e829b298fe5e56307de3f78c95071de28245

--------

## v0.0.4

2020-07-27 : Refactor playbooks into ansible roles

https://github.com/pgsty/pigsty/commit/90b44259818d2c71e37df5250fe8ed1078a883d0

--------

## v0.0.3

2020-06-22 : Interface enhancement

https://github.com/pgsty/pigsty/commit/4c5c68ccd57bc32a9e9c98aa3f264aa19f45c7ee

--------

## v0.0.2

2020-04-30 : First Commit

https://github.com/pgsty/pigsty/commit/dd646775624ddb33aef7884f4f030682bdc371f8

--------

## v0.0.1

2019-05-15 : POC

https://github.com/Vonng/pg/commit/fa2ade31f8e81093eeba9d966c20120054f0646b

--------
