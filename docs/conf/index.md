# Configuration Templates

> Batteries-included configuration templates for specific scenarios, with detailed explanations.

---

LLMS index: [llms.txt](/llms.txt)

---

Use `-c` with [**`configure`**](/docs/concept/iac/configure) to select a template. Its value is a path relative to `conf/` without the `.yml` suffix. If omitted, Pigsty uses the default [**`meta`**](/docs/conf/meta/) template.

| Category         | Templates                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |
|:-----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Solo Templates   | [`meta`](/docs/conf/meta/), [`rich`](/docs/conf/rich/), [`fat`](/docs/conf/fat/), [`slim`](/docs/conf/slim/), [`infra`](/docs/conf/infra/), [`vibe`](/docs/conf/vibe/), [`docker`](/docs/conf/docker/)                                                                                                                                                                                                                                                                                                                  |
| Kernel Templates | [`pgsql`](/docs/conf/pgsql/), [`pg19`](/docs/conf/pg19/), [`mssql`](/docs/conf/mssql/), [`polar`](/docs/conf/polar/), [`ivory`](/docs/conf/ivory/), [`agens`](/docs/conf/agens/), [`pgedge`](/docs/conf/pgedge/), [`mysql` (OpenHalo)](/docs/conf/mysql/), [`mongo`](/docs/conf/mongo/), [`pgtde`](/docs/conf/pgtde/), [`oriole`](/docs/conf/oriole/)                                                                                                                                                                  |
| HA Templates     | [`ha/simu`](/docs/conf/simu/), [`ha/octo`](/docs/conf/octo/), [`ha/citus`](/docs/conf/citus/), [`ha/full`](/docs/conf/full/), [`ha/safe`](/docs/conf/safe/), [`ha/trio`](/docs/conf/trio/), [`ha/dual`](/docs/conf/dual/)                                                                                                                                                                                                                                                                                                  |
| App Templates    | [`supabase`](/docs/conf/supabase/), [`app/odoo`](/docs/conf/odoo/), [`app/dify`](/docs/conf/dify/), [`app/insforge`](/docs/conf/insforge/), [`app/hindsight`](/docs/conf/hindsight/), [`app/electric`](/docs/conf/electric/), [`app/maybe`](/docs/conf/maybe/), [`app/teable`](/docs/conf/teable/), [`app/mattermost`](/docs/conf/mattermost/), [`app/registry`](/docs/conf/registry/), [`app/immich`](/docs/conf/immich/), [`app/jumpserver`](/docs/conf/jumpserver/) |
| Misc Templates   | [`demo/bare`](/docs/conf/bare/), [`demo/el`](/docs/conf/el/), [`demo/debian`](/docs/conf/debian/), [`demo/demo`](/docs/conf/demo/), [`demo/kernel`](/docs/conf/kernel/), [`demo/redis`](/docs/conf/redis/), [`demo/minio`](/docs/conf/minio/), [`demo/kafka`](/docs/conf/kafka/), [`demo/mysql` (native MySQL pilot)](/docs/conf/mysql84/), [`demo/remote`](/docs/conf/remote/), [`demo/saas`](/docs/conf/saas/), [`demo/wool`](/docs/conf/wool/), [`build/oss`](/docs/conf/oss/), [`build/dev`](/docs/conf/dev/) |
{.full-width}

---

Section pages:

- [Solo Templates](/docs/conf/_div_solo/)
- [meta](/docs/conf/meta/): Default single-node installation template with extensive configuration parameter descriptions
- [rich](/docs/conf/rich/): Feature-rich single-node configuration with local software repository, all extensions, Silo backup, and complete examples
- [slim](/docs/conf/slim/): Minimal installation template without monitoring infrastructure, installs PostgreSQL directly from internet
- [fat](/docs/conf/fat/): Feature-All-Test template, single-node installation of all extensions, builds local repo with PG 14-18 all versions
- [infra](/docs/conf/infra/): Only installs observability infrastructure, dedicated template without PostgreSQL and etcd
- [vibe](/docs/conf/vibe/): VIBE AI coding sandbox config template, integrating Code-Server, JupyterLab, Claude Code, Codex CLI, and JuiceFS
- [docker](/docs/conf/docker/): Pigsty Docker single-node template for quickly bootstrapping Pigsty in containers.
- [Kernel Templates](/docs/conf/_div_kernel/)
- [pgsql](/docs/conf/pgsql/): Native PostgreSQL kernel with stable support for PostgreSQL 14 to 18 and a PG19 Beta evaluation option
- [pg19](/docs/conf/pg19/): Single-node PostgreSQL 19 Beta evaluation template with the PGDG Beta repository and default backup capabilities
- [mssql](/docs/conf/mssql/): Babelfish template pinned to a PostgreSQL 17-compatible kernel with SQL Server protocol and T-SQL support
- [polar](/docs/conf/polar/): PolarDB for PostgreSQL kernel, provides Aurora-style storage-compute separation capability
- [cloudberry](/docs/conf/cloudberry/): Placeholder for the Cloudberry config template (not yet available).
- [ivory](/docs/conf/ivory/): IvorySQL kernel, provides Oracle syntax and PL/SQL compatibility
- [agens](/docs/conf/agens/): AgensGraph kernel template with property graph model and Cypher query support
- [pgedge](/docs/conf/pgedge/): pgEdge kernel template for distributed multi-master PostgreSQL in edge scenarios
- [mysql](/docs/conf/mysql/): OpenHalo kernel, provides MySQL protocol and syntax compatibility
- [pgtde](/docs/conf/pgtde/): Percona PostgreSQL kernel, provides Transparent Data Encryption (pg_tde) capability
- [oriole](/docs/conf/oriole/): OrioleDB kernel, provides bloat-free OLTP enhanced storage engine
- [PostgreSQL Mongo Mode](/docs/conf/mongo/): Run PostgreSQL in Mongo-compatible mode with DocumentDB and the FerretDB Docker APP.
- [HA Templates](/docs/conf/_div_ha/)
- [ha/simu](/docs/conf/simu/): 20-node production environment simulation for large-scale deployment testing
- [ha/octo](/docs/conf/octo/): Compact eight-node HA simulation with three INFRA nodes, five etcd nodes, eight object-storage nodes, and two PostgreSQL clusters.
- [ha/full](/docs/conf/full/): Four-node complete feature demonstration environment with two PostgreSQL clusters, Silo, Redis, etc.
- [ha/safe](/docs/conf/safe/): Three-node high-availability and security-hardening configuration example.
- [ha/trio](/docs/conf/trio/): Three-node standard HA configuration where PostgreSQL, ETCD, and Silo tolerate one node failure
- [ha/dual](/docs/conf/dual/): Two-node configuration, limited HA deployment tolerating specific server failure
- [ha/citus](/docs/conf/citus/): 13-node Citus distributed PostgreSQL cluster, 1 coordinator + 5 worker groups with HA
- [App Templates](/docs/conf/_div_app/)
- [supabase](/docs/conf/supabase/): Self-host Supabase using Pigsty-managed PostgreSQL, an open-source Firebase alternative
- [app/odoo](/docs/conf/odoo/): Deploy Odoo open-source ERP system using Pigsty-managed PostgreSQL
- [app/dify](/docs/conf/dify/): Deploy Dify AI application development platform using Pigsty-managed PostgreSQL
- [app/electric](/docs/conf/electric/): Deploy Electric real-time sync service using Pigsty-managed PostgreSQL
- [app/maybe](/docs/conf/maybe/): Deploy Maybe personal finance management system using Pigsty-managed PostgreSQL
- [app/teable](/docs/conf/teable/): Deploy Teable open-source Airtable alternative using Pigsty-managed PostgreSQL
- [app/mattermost](/docs/conf/mattermost/): Mattermost template for one-click team collaboration deployment with Pigsty PostgreSQL and Docker.
- [app/registry](/docs/conf/registry/): Deploy Docker Registry image proxy and private registry using Pigsty
- [app/insforge](/docs/conf/insforge/): Deploy the InsForge Backend-as-a-Service platform with Pigsty-managed PostgreSQL
- [app/hindsight](/docs/conf/hindsight/): Deploy the Hindsight AI long-term memory service with Pigsty-managed PostgreSQL
- [app/immich](/docs/conf/immich/): Deploy Immich photo and video management with Pigsty-managed PostgreSQL and VectorChord
- [app/jumpserver](/docs/conf/jumpserver/): Deploy the JumpServer open-source bastion host with Pigsty-managed PostgreSQL
- [Misc Templates](/docs/conf/_div_misc/)
- [demo/bare](/docs/conf/bare/): Minimal readable configuration declaring only INFRA, ETCD, and single-node PostgreSQL
- [demo/el](/docs/conf/el/): Configuration template optimized for Enterprise Linux (RHEL/Rocky/Alma)
- [demo/debian](/docs/conf/debian/): Configuration template optimized for Debian/Ubuntu
- [demo/demo](/docs/conf/demo/): Pigsty public demo site configuration, showcasing SSL certificates, domain exposure, and full extension installation
- [demo/kernel](/docs/conf/kernel/): Ten-node PostgreSQL kernel matrix demo configuration
- [demo/minio](/docs/conf/minio/): Four-node x four-drive HA S3 object-storage cluster demo; current source defaults to Silo.
- [demo/redis](/docs/conf/redis/): Four-node demo of Redis replica, Sentinel, and native Cluster modes
- [demo/kafka](/docs/conf/kafka/): Four-node dynamic KRaft example with a plaintext single-node dev cluster and a three-node TLS/SCRAM HA baseline
- [demo/mysql](/docs/conf/mysql84/): Native MySQL 8.4 pilot template with a standalone instance and a three-node InnoDB Cluster
- [build/oss](/docs/conf/oss/): Pigsty open-source edition offline package build environment configuration
- [build/dev](/docs/conf/dev/): Pigsty three-node local build and development configuration
- [demo/remote](/docs/conf/remote/): Monitor remote PostgreSQL and cloud RDS with pg_exporter instances on an INFRA node
- [demo/saas](/docs/conf/saas/): Legacy single-node SaaS bundle with PostgreSQL, Silo, Redis, and multiple application entrypoints
- [demo/wool](/docs/conf/wool/): Single-node tiny-tuning example for small cloud instances in China
