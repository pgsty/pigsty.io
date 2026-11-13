# Pigsty v4.6: 625 Extensions, VAULT, MySQL 8.4 Overhaul, and PG 18.7

LLMS index: [llms.txt](/llms.txt)

---

Pigsty **v4.6.0** is released! This feature release covers secrets infrastructure, database orchestration, PostgreSQL kernels/extensions, and supply-chain tooling. It introduces **VAULT** with OpenBao 2.7.2, redesigns **MYSQL 8.4**, updates PostgreSQL to **18.7** and refreshes its major forks, expands packaged extensions to **625**, and updates `pig v1.11.0`, `pg_exporter v1.6.1`, `sow v0.7.1`, and infrastructure packages.

From `v4.5.0` (`dab5dba3`, 2026-08-14) to `v4.6.0` (`d71d9de8`, 2026-11-12), the tagged changes cover **139 commits, 441 files, 21,701 additions, and 5,026 deletions**. See the [tag comparison](https://github.com/pgsty/pigsty/compare/v4.5.0...v4.6.0).

## Highlights

- **625 packaged PostgreSQL extensions**: 52 additions and two removals since v4.5.0's 575 entries, a net gain of 50. There are **457** non-contrib package families and **2,740** entries in the online catalog. Many Rust extensions move to `pgrx 0.19.3`.
- **VAULT secrets management**: the new [VAULT module](/docs/vault/) uses OpenBao 2.7.2 (MPL-2.0), built-in Raft with topology-derived modes, static seal auto-unseal, TLS 1.3, VIP/HAProxy HA access, daily snapshots, monitoring, and alerts.
- **MySQL 8.4 overhaul**: [MYSQL](/docs/mysql/) now has 16 public parameters and a consistent `/data/mysql` layout, complete-outage recovery (`rebootClusterFromCompleteOutage`), InnoDB Clone rebuilding, 70 recording rules, and eight alerts.
- **PostgreSQL 18.7 and kernel updates**: IvorySQL 5.6, Babelfish 6.2.0 / 5.7.0, Percona `pg_tde` 18.6.1, OrioleDB 1.10.3, AgensGraph 2.18.6.1, pgEdge `3PGSTY` with Spock 5.0.13, PolarDB 17.11.1.0, Cloudberry 2.2.0, and DocumentDB 1.0.
- **KAFKA, JUICE, and VIBE hardening**: optional embedded Kafka JMX agent, graceful dynamic-controller retirement before shutdown, strict JuiceFS mount checks, native `claude-code` / `codex` packages, and JupyterLab isolation through `uv venv`.
- **Tooling and observability**: `pig` **v1.11.0**, `pg_exporter` **v1.6.1**, `sow` **v0.7.1**, Silo `20261112` with `silo-console 2.7.2`, **68** Grafana dashboards, **775** static recording rules (790 with dynamic templates), and **79** alerts.
- **Templates and automation**: ten kernel templates move to `conf/fork/*`, including `conf/mysql.yml` → `conf/fork/halo.yml`. There are **53** independent templates. OpenTofu becomes the default under `terraform/`, offline archives use `/var/tmp/pkg.tgz`, and Docker/Nginx have independent repository modules.

## VAULT Secrets Management (Beta)

The new [VAULT module](/docs/vault/) deploys [OpenBao](https://openbao.org/) (`2.7.2`, MPL-2.0), the Linux Foundation-hosted secrets system, in the fixed `vault` group as a shared KMS and secrets store:

- **Small interface and topology**: [eight parameters](/docs/vault/param/), five for deployment and three for removal. One member provides a lab instance; three provide production Raft HA, without ETCD or PostgreSQL dependencies.
- **Trust roots and auto-unseal**: the 32-byte static seal key, root token, and recovery material reside in `files/pki/vault/` on the admin node, within the same backup boundary as the CA private key. Members unseal automatically after restart.
- **TLS 1.3 and HA access**: Pigsty CA signs certificates with TLS 1.3 minimum. OpenBao binds only node IP and loopback, leaving `<VIP>:8200` to HAProxy for TLS passthrough to the active member. Clients use `https://vault.pigsty:8200`.
- **Ready-to-use engines and snapshots**: `secret/` (KV v2), `transit/`, and `approle` are enabled. `/usr/local/bin/vault-backup` uses `flock` to retrieve daily snapshots from the active member and retains seven locally. Initial and pre-removal snapshots are also retrieved to the admin node.
- **Monitoring and safeguards**: `vault_safeguard` defaults to `true`; 14 recording rules, six alerts, and a new **Vault Overview** dashboard are included.

## MySQL 8.4 Overhaul

Building on the v4.5 pilot, v4.6 redesigns [MYSQL](/docs/mysql/) with a smaller interface, explicit platform conventions, and recovery workflows:

- **16 public parameters**: 13 for deployment and three for guarded removal. Preflight rejects obsolete variables such as `mysql_backup_repo`. `./configure -g` randomizes `mysql_root_password`, `mysql_monitor_password`, and `mysql_cluster_password`.
- **Fixed layout and derived settings**: `/data/mysql` includes `binlog/` and `tmp/`; physical backups default to `/data/backups/mysql`, retaining three. Memory settings account for host size and PostgreSQL co-location; `server_id` derives from member IPv4 addresses.
- **Recovery and Clone rebuilding**: complete-outage quorum recovery through `dba.rebootClusterFromCompleteOutage()` and rebuilding lagging or damaged members through InnoDB Clone and `cluster.rescan()`. `mysql_safeguard` defaults to `true`.
- **Expanded observability**: rules match `mysqld-exporter 0.21.0` metric type changes, with **70 recording rules** and **eight alerts**, including `MySQLBackupStale` based on `mysql_backup_last_run_timestamp_seconds`.

## KAFKA, JUICE, and VIBE

- **KAFKA** adds [`kafka_jmx_exporter_enabled`](/docs/kafka/param/#kafka_jmx_exporter_enabled), default `true`, to disable the embedded agent and scrape independently of `kafka-exporter`. Removal retires dynamic KRaft voters before shutdown and cleans exporter units and targets. Kafka updates to `4.4.0`.
- **JUICE** checks systemd `Result=success` and mounts with `findmnt` on startup/restart to avoid reporting readiness when only the process is alive. JuiceFS updates to `1.4.2`.
- **VIBE** replaces `npm install -g` with native Infra packages: signed `claude-code 2.1.322`, `codex 0.167.2`, plus `pi-coding-agent 1.5.2`, `opencode 1.19.5`, `crush 0.100.0`, and `mcp-toolbox 1.16.0`. JupyterLab uses `/data/jupyter/.venv` managed by `uv venv`; Node.js updates to `26.13.1` LTS.

## PostgreSQL 18.7, Kernel Variants, and 625 Extensions

### Kernels and PGSQL Role

- The default production version becomes **PostgreSQL 18.7**, alongside maintenance baselines PG 17.11 / 16.15 / 15.19 / 14.22.
- Kernel updates include **IvorySQL 5.6** (PG 18.6, with a native Infra recipe), **Babelfish 6.2.0 / 5.7.0** (PG 18.6 / 17.11), **Percona `pg_tde` 18.6** (Server 18.6.1, `pg_tde 2.2.2`), **OrioleDB 1.10.3** (PG 16–18), **AgensGraph 2.18.6.1**, **pgEdge 15–18 `3PGSTY`** (Spock `5.0.13`, LOLOR `1.2.3`), **PolarDB 17.11.1.0 `2PGSTY`**, **Cloudberry 2.2.0** with backup/PXF tools, and **DocumentDB 1.0**.
- The 125th PGSQL parameter, [`pg_pitr`](/docs/pgsql/param/#pg_pitr), renders declarative recovery settings. Server certificate SANs include `pg_vip_address`; `crit.yml` starts with `synchronous_commit: local` to avoid blocking single-node bootstrap. HAProxy normalizes `pg_rto`, and kernel-specific pgBackRest compatibility settings are completed.

### 625 Packaged Extensions

Comparing `pig v1.11.0` (625 entries) with the v4.5.0 baseline `pig v1.7.0` (575), this cycle adds **52** entries and removes **two**, gaining **50** across **457** non-contrib package families:

- **49 new primary extensions and tools**: `acdat`, `addressing_dictionary`, `codesystem`, `colnames`, `edtf_postgres`, `encsearch`, `hdr_histogram`, `is_jsonb_valid`, `istore`, `jev`, `kafgres`, `libx509pq`, `macavity`, `oai_fdw`, `opencc`, `pg_agent_gate`, `pg_circuit`, `pg_grammar_guard`, `pg_icu_parser`, `pg_improv`, `pg_integrity_checksums`, `pg_json_diff`, `pg_kv`, `pg_lease`, `pg_lexo`, `pg_lion`, `pg_living_assertions`, `pg_money`, `pg_nanotime`, `pg_relation_sql`, `pg_rusage`, `pg_stat_tcpinfo`, `pg_statecharts`, `pg_statkit`, `pg_statvfs`, `pg_synonym`, `pg_table_range`, `pg_tre`, `pg_try_cast`, `pg_vectorsearch`, `pg_warren`, `pgexporter_ext`, `pgs3`, `pgtelemetry`, `plphp`, `stannum`, `textsearch_intl`, `tin`, and `vgram`.
- **Three new subextensions**: `pg_lion_citext`, `pg_lion_vector`, and `pg_statecharts_dev`.
- **Two removed subextensions**: `documentdb_distributed` (removed upstream in DocumentDB 1.0) and `pgcontext_pgvector`.

### PostgreSQL Kernel and Extension Package Updates

|Package |Previous |Current |Notes |
|:---|:---|:---|:---|
| `postgresql-18` | `18.6` | `18.7` |Default production baseline: PostgreSQL 18.7; other supported majors follow their own maintenance branches. |
| `acdat` | `0.1.1` | `0.1.1` |PG14-18; First full production packaging of an existing extension; 80 main packages |
| `address_standardizer` | - | RPM: 3.7.0-1PGSTY / DEB: 3.7.0 |EL8 gap fill; standalone; SQL 3.7; includes data_us; no PostGIS dependency |
| `addressing_dictionary` | - | `1.1` |PG14-18; SQL-only |
| `age` | `1.7.0` | RPM: `1.8.0` / DEB: `1.8.0~rc0` |PG18 snapshot: RPM 1.8.0 and PGDG DEB 1.8.0~rc0; older PG majors retain their release branches. |
| `agensgraph-18` | - | `2.18.6.1` |PG18.6 kernel and contrib |
| `arrow` | `22.0.0` | RPM: 25.0.1 / DEB: 24.0.0 / 25.0.1 |Runtime, compute and development libraries; versions vary by distribution and ABI. |
| `babelfish-17` | `5.4.0` | `5.7.0` |PG17.11; includes all four companion extensions |
| `babelfish-18` | `6.0.0` | `6.2.0` |PG18.6; includes all four companion extensions |
| `biscuit` | `3.0.0` | `3.1.0` |PG16-18 |
| `cat_tools` | `0.3.0` | `0.4.0` |SQL-only |
| `citus` | `14.2.0` | `14.3.0` |PG16-18; includes citus_columnar |
| `cloudberry` | `2.1.0` | `2.2.0` |Kernel and contrib |
| `cloudberry-backup` | `2.1.0` | `2.2.0` |Six backup/restore tools |
| `cloudberry-pxf` | `2.1.0` | `2.2.0` |For Cloudberry 2.2.0; includes pxf/pxf_fdw |
| `codesystem` | - | RPM only: 0.2.1 |PG14-18; SQL version 0.2.0 |
| `colnames` | - | `1.7.1` |PG14-18; SQL 1.7.0 |
| `credcheck` | RPM only: 4.7 | `6.0` |PGDG packages in the PG18 snapshot; Pigsty fills EL8 gaps. |
| `ddlx` | `0.30` | `0.31` |PG14-18; SQL-only |
| `documentdb` | `0.114` | RPM: 1.0-2PGSTY / DEB: 1.0 |PG15-18; PostGIS 3.7 |
| `duckdb_fdw` | `1.4.3` | `2.0.2` |PG15-18; DuckDB 2.0.0; conflicts with pg_duckdb |
| `edtf_postgres` | - | `1.3.2` |PG18 release snapshot; extended date/time types. |
| `emaj` | `5.0.0` | `5.0.1` |PG14-18; fixes emaj_adm privilege escalation and parallel rollback |
| `encsearch` | - | RPM only: 0.1.1 |PG17; encrypted search |
| `graphblas` | `10.5.0` | `10.5.2` |Runtime and development libraries, ABI 10; excluded from default groups and these offline archives. |
| `groonga` | RPM: 15.1.8 / DEB: 15.1.7 / 15.1.9 / 16.0.0 | RPM: 16.1.5 / DEB: 16.0.5 / 16.1.3 |RPM 16.1.5; DEB runtime versions differ by distribution. |
| `groonga-tokenizer-mecab` | RPM: 15.1.8 / DEB: 15.1.7 / 15.1.9 / 16.0.0 | RPM: 16.1.5 / DEB: 16.0.5 / 16.1.3 |MeCab tokenizer; versions follow the matching Groonga packages. |
| `haproxy` | `3.4.4` | `3.4.7` |RPM includes the haproxy-doc subpackage |
| `hdr_histogram` | - | `1.0.0` |PG14-18; SQL version 1.0 |
| `hypopg` | 1.4.4 | 1.4.5 |PGDG packages |
| `is_jsonb_valid` | - | `0.1.4` |PG14-18 |
| `istore` | - | `0.1.12` |PG14-18 |
| `ivorysql-18` | `5.4` | `5.6` |PG18.6 kernel |
| `ivorysql-contrib` | `5.4` | `5.6` |PG18 (IvorySQL); includes 38 extensions |
| `jev` | - | `0.2.1` |PG14-17 |
| `jsonschema` | `0.1.9` | `0.1.11` |PG14-18; pgrx 0.19.3 |
| `kafgres` | - | `0.3.2` |PG16 |
| `lagraph` | `1.2.2` | `1.2.2` |Rebuilt against GraphBLAS 10.5.2; excluded from these offline archives. |
| `lead` | - | `1.0.6` |PG17-18; extension tin; development snapshot |
| `libx509pq` | - | `1.3` |PG14-18 |
| `log_fdw` | `1.4` | `1.5` |PG14-18 |
| `login_hook` | `1.8` | `1.9` |PG14-17 PGDG; PG18 Pigsty |
| `lolor` | `1.2.2` | `1.2.3` |Updated with pgEdge 15-18 |
| `macavity` | - | `0.2.0` |PG16-18; Fault injection; testing only |
| `mobilitydb` | `1.3.0` | RPM: 1.3.1-2PGSTY / DEB: 1.3.1 |PG14-18; PostGIS 3.7 |
| `nominatim_fdw` | `2.1.0` | `2.3` |PG14-18; PGDG is the principal RPM provider; same-version Pigsty supplements remain |
| `oai_fdw` | - | `1.16.0` |PG14-18; OAI-PMH FDW; SQL 1.16 |
| `onesparse` | `1.0.0-1PGSTY` | `1.0.0-2PGSTY` |PG18; rebuilt with GraphBLAS/LAGraph; preload required; hidden from default groups. |
| `opencc` | - | `0.1.0` |PG14–18; conversion between simplified and traditional Chinese. |
| `orioledb-16` | `1.8-beta16` | `1.10.3` |PG16.15 kernel; SQL 1.10 |
| `orioledb-17` | `1.8-beta16` | `1.10.3` |PG17.11 kernel; SQL 1.10 |
| `orioledb-18` | `1.8-beta16` | `1.10.3` |PG18.6 kernel; SQL 1.10 |
| `passwordcheck_cracklib` | `3.2.0` | `3.2.1` |PG14-18 |
| `passwordpolicy` | 2.0.5 | 2.0.6 |PGDG packages |
| `pg_adhoc` | RPM only: 17.4 | RPM only: 19.0 |Includes pg_filedump |
| `pg_agent_gate` | - | `0.4.1` |PG18; fixes agent-role escape; preload required |
| `pg_anon` | `3.2.2` | `3.3.2` |PG14-18; pgrx 0.19.3; security update; drop/recreate required |
| `pg_background` | `2.0.3` | `2.0.4-2PGSTY` |PG14-18; remove downstream upgrade patch; built, import pending |
| `pg_circuit` | - | `0.1.0` |PG16-18; preload |
| `pg_clickhouse` | `0.10.0` | `0.11.1` |PG14-18; SQL 0.11 |
| `pg_curl` | `2.4.5` | `2.5.0` |PG14-18; SQL 2.5 |
| `pg_currency` | 0.0.4 | 0.0.6 |PG14-18; extension currency |
| `pg_duckdb` | `1.1.1` | `1.2.0` |DuckDB 2.0.0; conflicts with duckdb_fdw |
| `pg_durable` | `0.2.3` | `0.2.9` |PG14-18; preload required; imported locally |
| `pg_eviltransform` | `0.0.5` | `0.0.7` |PG14-18 |
| `pg_fts` | `0.2.0` | `1.16.0` |PG17-18; fixes top-k and delete performance |
| `pg_grammar_guard` | - | `0.4.9` |PG14-18; Apache-2.0; built, import pending |
| `pg_graphql` | `1.6.2` | `1.6.3` |Fixes quoted primary keys in nodeId |
| `pg_h3` | `4.2.3` | `4.5.0` |PG14-18; Includes h3_postgis; adds 50 DEBs; follow upstream migration guidance |
| `pg_hint_plan` | 1.8.0/1.7.1/1.6.2/1.5.3/1.4.4 | 1.8.1/1.7.2/1.6.3/1.5.4/1.4.5 |PGDG PG18/17/16/15/14 release lines |
| `pg_icu_parser` | - | `1.0.0` |PG14-18; EL8/9/10 x86_64/aarch64; PG18 compatibility fix; imported locally |
| `pg_improv` | - | `0.14.0` |PG15-18; pgrx 0.19.3 |
| `pg_incremental` | `1.5.0` | RPM: `1.5.0` / DEB: `1.6.1` |DEB upgraded to 1.6.1; PG18 RPM remains at 1.5.0. |
| `pg_integrity_checksums` | - | `2.2.0` |PG14-18; SQL 2.2 |
| `pg_ivm` | `1.15` | `1.17` |PG14-18 |
| `pg_json_diff` | - | `1.0` |PG14-18 |
| `pg_kv` | - | `0.1.0` |PG15-18; non-persistent shared-memory KV |
| `pg_lake` | `3.4.0` | `3.6.0` |PG16–18; eight extensions, SQL 3.6; EL9/10 and Debian/Ubuntu packages. |
| `pg_lease` | - | RPM only: 0.1.0 |PG14-18; SQL-only |
| `pg_lexo` | - | `0.6.1` |PG16-18; SQL 0.6.0; fix rank generation and ordering |
| `pg_lion` | - | `0.3.0` |PG16-18; includes citext/vector companions |
| `pg_living_assertions` | - | `0.5.10` |SQL-only rebuild |
| `pg_local_cache` | `1.3.0` | `3.1.0` |PG14-18; OpenSSL dependency; built, import pending |
| `pg_mentat` | `1.6.0` | `1.20.0` |PG14-18 |
| `pg_money` | - | `0.3.0` |PG14-18 |
| `pg_mooncake` | `0.2.0` | `0.3.0-1PGSTY` |PGSTY fork; pg_duckdb 1.2.0 / DuckDB 2.0.0; no 0.2.0 upgrade script |
| `pg_nanotime` | - | `0.3.0` |PG18 release snapshot; nanosecond timestamps. |
| `pg_parquet` | `0.5.1-3PIGSTY` | `0.5.1-4PGSTY` |Fixes streaming COPY temporary-file leaks |
| `pg_pinyin` | `0.0.6` | `0.0.8` |PG14-18 |
| `pg_profile` | `4.11` | `4.16` |PG14–18; missing RPM coverage restored; SQL-only. |
| `pg_regresql` | `2.0.0` | `2.1.0` |PG14-18; SQL version 2.0 |
| `pg_relusage` | `0.0.1` | `1.0.2` |PG14-18; loading required |
| `pg_rusage` | - | `1.0` |PG14-18 |
| `pg_search` | `0.25.2` | `0.26.6` |PG15-18; preload; known MPP JoinScan crash risk |
| `pg_semver` | `0.41.0` | `0.42.0` |PG14-18; imported locally |
| `pg_stat_ch` | `0.3.6` | `0.4.0` |PG16–18; both RPM and DEB use 0.4.0 in the PG18 snapshot. |
| `pg_stat_kcache` | 2.3.1 | 2.3.2 |PGDG packages |
| `pg_stat_monitor` | `2.3.2` | `2.4.0` |PG14-18; preload |
| `pg_stat_tcpinfo` | - | `1.1` |PG14-18; PGDG primary, Pigsty supplement |
| `pg_statecharts` | - | `0.1.0` |PG16-18; includes pg_statecharts_dev |
| `pg_statkit` | - | `1.1.0` |PG14-17 |
| `pg_statvfs` | - | `1.0` |PG14-18 |
| `pg_statviz` | RPM: 0.9 / 1.2 / DEB: 1.2.1 | `1.2.1` |PG14-18; Production RPMs switch from older PGDG builds to Pigsty 1.2.1; SQL version 1.2; fills 30 RPM coordinates |
| `pg_synonym` | - | `1.0.0` |PG15-18; SQL version 1.0 |
| `pg_table_range` | - | RPM only: 0.1.2 |PG16-18; range pruning |
| `pg_task` | `2.1.29` | `3.0.0` |PG14-18; preload |
| `pg_textsearch` | `1.4.0` | `1.5.1` |PG17-18; RPMs from PGDG; DEBs from Pigsty |
| `pg_tle` | `1.5.2` | RPM: `1.5.2` / DEB: `1.5.3` |The PG18 snapshot retains different RPM and DEB versions. |
| `pg_tokenizer` | `0.1.1` | `1.1.0` |PG14-18; native tsvector |
| `pg_tre` | - | `4.6.2` |PG17-18 |
| `pg_trickle` | `0.81.0` | `0.108.3` |PG18; pgrx 0.19.3; built, import pending |
| `pg_try_cast` | - | `1.0.0` |PG16-18; SQL version 1.0 |
| `pg_turbovec` | `2.2.2` | `2.15.0` |PG14-18 |
| `pg_utl_smtp` | DEB only: 1.0.0 | DEB only: 2.0.0 |PGDG covers EL8/9/10 |
| `pg_vault_tde` | `1.7.0` | `1.7.2` |PG17-18; EL9/10 |
| `pg_vectorsearch` | - | `0.1.0` |PG18; alpha; imported locally |
| `pg_warren` | - | `0.8.0` |PG15-18 |
| `pgaudit` | RPM only: 1.6.3 / 1.7.1 | RPM only: 1.6.3-1PGSTY / 1.7.1-1PGSTY |Pigsty unifies PG14/15 package names; PG16–18 use PGDG packages, with 18.0 for PG18. |
| `pgbson` | `2.1.0` | `2.2.0` |PG14-18; RPM package postgresbson |
| `pgdog` | `0.1.57` | `0.1.63` |PostgreSQL connection pooler |
| `pgedge-15` | `15.19-1PGSTY` | `15.19-3PGSTY` |Includes Spock 5.0.13 and LOLOR 1.2.3; imported locally |
| `pgedge-16` | `16.15-1PGSTY` | `16.15-3PGSTY` |Includes Spock 5.0.13 and LOLOR 1.2.3; imported locally |
| `pgedge-17` | `17.11-1PGSTY` | `17.11-3PGSTY` |Includes Spock 5.0.13 and LOLOR 1.2.3; imported locally |
| `pgedge-18` | `18.6-1PGSTY` | `18.6-3PGSTY` |Includes Spock 5.0.13 and LOLOR 1.2.3; imported locally |
| `pgexporter_ext` | - | `0.2.5` |New DEB coverage; RPM continues to use PGDG. |
| `pgextwlist` | `1.19` | `1.20` |PG14-18; RPM recipe updated; production packages from PGDG |
| `pggraph` | `1.2.0` | `1.2.1` |PG14-18; Extension graph; fix DEB SQL payload checks |
| `pghydro` | RPM only: 6.6-1PIGSTY | RPM only: 6.6-2PGSTY |PG14-18; PostGIS 3.7; noarch |
| `pgmb` | RPM only: 1.0.0-1PIGSTY | RPM only: 1.0.0-2PGSTY |PG14-18; fix schema creation and pgsql_http dependency |
| `pgmnemo` | `0.20.0` | `0.21.0` |PG17-18; preserves corpus tables and sequences in pg_dump |
| `pgmq` | `1.12.0` | `1.13.1` |PG14-18; SQL-only |
| `pgmqtt` | `0.5.0` | `0.5.1` |PG14-18; Preload required; CDC requires logical WAL |
| `pgrdf` | `0.6.20` | `0.6.40` |PG14-18; pgrx 0.19.3; built, import pending |
| `pgroonga` | `4.0.8` | RPM: 4.1.0-4PGSTY.el9 / DEB: 4.1.0 |PG14-18; EL9 release; EL8/10 rebuilt at 2PGSTY; Groonga 16.1.5 |
| `pgrouting` | 4.0.1 | 4.0.2 |PGDG packages |
| `pgs3` | `0.1.1` | `0.1.1` |PG17-18; First full production packaging of an existing extension; 32 main packages; alpha |
| `pgsentinel` | `1.5.0` | `1.5.2` |PGDG packages |
| `pgsodium` | 3.1.9 | RPM: 3.1.9 / DEB: 3.1.11 |DEB upgraded with matching libsodium; PG18 RPM remains at 3.1.9. |
| `pgsql_tweaks` | `1.0.5` | `1.1.0` |PG14-18; SQL-only |
| `pgtde-18` | `18.4` | `18.6` |Percona 18.6.1; pg_tde 2.2.2 |
| `pgtde-18-contrib` | `18.4` | `18.6` |pg_stat_monitor 2.4.0; vector 0.8.6 |
| `pgtelemetry` | - | `1.7` |PG14-18; SQL-only; requires pg_stat_statements |
| `pgvector` | `0.8.6` | `0.8.7` |Both RPM and DEB use PGDG 0.8.7 in the PG18 offline snapshot. |
| `pgvectorscale` | `0.9.1` | `0.9.1` |PG14-18; Extension vectorscale; same-version rebuild and correction of stale catalog label |
| `plpgsql_check` | `2.10.4` | `2.10.16` |PG18 release snapshot; SQL version 2.10. |
| `plphp` | - | `2.6` |PG14-18; fix embedded runtime dependencies |
| `plprql` | `18.0.1` | `18.0.2` |PG14-18 |
| `plv8` | `3.2.4` | `3.2.5` |PG14-18; Fix EL10 LTO builds |
| `polardb-17` | `17.10.1.0` | `17.11.1.0-2PGSTY` |PG17.11 kernel/contrib; rebuilt with updated PolarStore SDK |
| `polarstore` | `1.2.42-2PGSTY` | `1.2.42-3PGSTY` |Rebuilt with zlog 1.2.20 |
| `postgis` | RPM: 3.6.4 / DEB: 3.7.0 | RPM: 3.7.0-1PGSTY / DEB: 3.7.0 |PostGIS 3.7; Pigsty fills EL8 gaps; EL9/10 use PGDG. The PG18 archives contain one PostGIS branch. |
| `postgis_tiger_geocoder` | - | RPM: 2025.2-1PGSTY / DEB: 2025.2 |EL8 PG16-18 gap fill; standalone noarch package |
| `provsql` | `1.12.0` | `1.13.1` |Fixes circuit sizes/cancellation; preload required |
| `psql_bm25s` | `0.4.13` | `0.4.14` |PG17-18 |
| `q3c` | RPM only: 2.0.5 | RPM only: 2.0.6 |PGDG packages |
| `rdf_fdw` | `2.7.0` | `3.1.0` |PG18 release snapshot; RDF foreign data access. |
| `rdkit` | RPM: 202303.3 / 202503.6 / DEB: 202503.6 | `202609.2` |EL9/10; D13/U24/U26; older OS packages retained |
| `redis` | `7.2.16` | `7.2.17-1PGSTY` |Includes devel package |
| `repmgr` | RPM only: 5.5.0 | RPM only: 5.5.1 |PGDG packages |
| `session_variable` | `3.5` | `3.6` |PG14-18 |
| `set_user` | 4.2.0 | 4.3.0 |PGDG packages |
| `snowflake` | `2.6.0` | `2.6.0` |PG15-18; Rebuilt with pgEdge; correct stale 2.5.0 catalog label |
| `spock` | `5.0.11` | `5.0.13` |Updated with pgEdge 15-18; preload required |
| `stannum` | - | `0.1.0` |PG17-18; development snapshot |
| `supautils` | `3.4.3` | `4.0.0` |PG18 release snapshot. |
| `textsearch_intl` | - | `1.0.1` |Both RPM and DEB use 1.0.1 in the PG18 snapshot; SQL version 1.0. |
| `timescaledb` | `2.29.1` | `2.31.0` |PG16-18; TSL |
| `timescaledb_toolkit` | 1.26.0 | 1.27.0 |PG15-18; older PG14 packages retained |
| `ulak` | `0.0.2` | `0.2.0` |PG14-18; preload |
| `valkey` | `9.1.1` | `9.1.3-1PGSTY` |Security update; includes devel package |
| `vchord` | `1.1.1` | `1.3.0-1PGSTY` |PG14-18 |
| `vchord_bm25` | `0.3.0` | `1.1.0` |PG14-18; native tsvector |
| `vectorize` | `0.26.2` | `0.27.1` |PG14-18; SQL 0.23.0; multi-row fix |
| `vgram` | - | `1.0` |PG14-18 |
| `wal2json` | 2.6 | 2.7 |PGDG packages |
| `wrappers` | `0.6.2` | `0.6.4` |PG18 release snapshot. |
| `zlog` | `1.2.18` | `1.2.20` |Rebuilds PolarStore and PolarDB |
{.wide .expand}

## Infrastructure, Applications, and Tooling

- **53 templates and reorganized kernels**: `agens`, `halo` (formerly `conf/mysql.yml`), `ivory`, `mongo`, `mssql`, `oriole`, `pgedge`, `pgsql`, `pgtde`, and `polar` move to `conf/fork/`, selected with `./configure -c fork/<name>`. `./configure -v` skips fixed-major `fork/mssql` and `fork/polar`. New `app/silo` and `app/discourse` bring the independent total to **53**, with the `conf/app/supa.yml` symlink retained.
- **Repositories and certificate hooks**: Docker has a separate `docker` module; Nginx repositories on EL and Debian/Ubuntu use `nginx`. INFRA supports production portal templates and cache directories. `/etc/nginx/certbot-deploy-hook` calls `/etc/nginx/link-cert` after renewal, then reloads Nginx. Remote `pg_exporters` credentials use owner `prometheus` and mode `0600`.
- **Application templates**: `.env` rendering escapes literal `$` as `$$` to prevent Compose interpolation. [`app/silo`](/docs/app/silo/) replaces the standalone MinIO Compose template; [`app/discourse`](/docs/app/discourse/) pins image/source references. Templates update Supabase `0.8.2`, Dify `1.17.1`, InsForge `2.3.3`, JumpServer `5.0.0`, and Registry `3.1.2`.
- **OpenTofu, offline archives, and containers**: `terraform/` defaults to `IAC_CLI=tofu`, with `IAC_CLI=terraform` supported; see [OpenTofu](/docs/deploy/terraform/). Offline archives default to `/var/tmp/pkg.tgz`, retaining the `/tmp/pkg.tgz` fallback and cleanup on failure. [Docker builds](/docs/setup/docker/) consume `make source` archives, use Debian 13.7, and pin `pig=1.11.0-*`.

### Infra and PIG Package Updates

|Repo |Package |Versions |Notes |
|:---|:---|:---|:---|
| INFRA | `agentsview` | `0.40.1` → `0.47.0` |Repacked for both architectures |
| INFRA | `alertmanager` | `0.33.1` → `0.35.0` |Repacked for both architectures |
| INFRA | `barn` | `—` → `1.2.0` |Official native packages |
| INFRA | `blackbox-exporter` | `0.28.0` → `0.29.1` |  |
| INFRA | `caddy` | `2.11.4` → `2.11.9` |FastCGI security fixes |
| INFRA | `cargo-pgrx-0192` / `cargo-pgrx-0193` | Added `0.19.2` / `0.19.3` |Separate version slots; built from source for both EL8 architectures. |
| INFRA | `claude` / `claude-code` | `2.1.227` → `2.1.322` |Switch to the official signed claude-code package; the old claude package remains at 2.1.319. |
| INFRA | `cloudflared` | `2026.7.3` → `2026.10.7` |Repacked upstream executable. |
| INFRA | `code` | `1.133.0` → `1.146.0` |Official DEB/RPM packages; repository RPM copies are signed. |
| INFRA | `code-server` | `4.132.0` → `4.145.2` |Upstream native packages |
| INFRA | `codex` | `0.147.0` → `0.167.2` |Complete canonical runtime preserved, including bundled bwrap |
| INFRA | `crush` | `0.88.1` → `0.100.0` |Repacked official tarball with licenses preserved. |
| INFRA | `dblab` | `0.47.4` → `0.55.2` | Repacked for both architectures |
| INFRA | `duckdb` | `1.5.5` → `2.0.0` |Major version update. |
| INFRA | `etcd` | `3.7.1` → `3.7.3` |  |
| INFRA | `garage` | `2.3.0` → `2.5.0` |  |
| INFRA | `golang` | `1.26.5` → `1.27.4` |Repacked for both architectures |
| INFRA | `grafana` | `13.1.3` → `13.3.1` |Official native packages |
| INFRA | `grafana-infinity-ds` | `3.11.3` → `4.1.6` |Security / gRPC fixes |
| INFRA | `grafana-plugins` | `13.0.0` → `13.3.0` |Plugin bundle; includes JSON datasource 1.4.4 and ECharts 7.3.0. |
| INFRA | `grafana-victorialogs-ds` | `0.31.0` → `0.34.0` | Repacked for both architectures |
| INFRA | `grafana-victoriametrics-ds` | `0.25.2` → `1.0.1` |POST/WITH / security fixes |
| INFRA | `headscale` | `0.29.3` → `0.29.7` |  |
| INFRA | `hugo` | `0.164.0` → `0.169.0` |Extended build. |
| INFRA | `ivorysql` | `5.4` → `5.6` |New native recipe; DEB ivorysql-5 / RPM ivorysql5; PostgreSQL 18.6 |
| INFRA | `jmx-exporter` | `1.6.0` → `1.7.0` |Noarch; imported locally |
| INFRA | `juicefs` | `1.4.1` → `1.4.2` |  |
| INFRA | `k3s` / `k3s-images` | `1.36.3` → `1.37.2` |Matching binary and air-gap image packages, revision 2PGSTY. |
| INFRA | `kafka` | `4.3.1` → `4.4.0` |Noarch RPM and all DEB; upstream SHA512 verified; imported locally |
| INFRA | `kafka-exporter` | `1.9.0` → `1.11.0` |  |
| INFRA | `kes` | `—` → `20261026000000.0.0` |Key management service |
| INFRA | `logcli` / `loki` / `loki-canary` | `3.7.6` → `3.7.9` |Loki components updated together. |
| INFRA | `maddy` | `0.9.5` → `0.9.7` |DMARC/IMAP fixes |
| INFRA | `mcli` | `20260806000000.0.0` → `20261112000000.0.0` |Native pgsty packages; executable at /usr/local/bin/mcli. |
| INFRA | `mcp-toolbox` | `1.8.0` → `1.16.0` |CGO; glibc 2.28 |
| INFRA | `mongodb-exporter` | `0.52.0` → `0.54.0` |  |
| INFRA | `mtail` | `3.4.7` → `3.4.20` | Repacked for both architectures |
| INFRA | `mysqld-exporter` | `0.19.0` → `0.21.0` |Metric type changes |
| INFRA | `nginx-exporter` | `1.5.1` → `1.5.3` | Dual-architecture RPM/DEB built |
| INFRA | `nodejs` | `24.19.0` → `26.13.1` |Node.js 26 LTS; RPM epoch 2. |
| INFRA | `openbao` | `—` → `2.7.2` |New official packages for both architectures; used by the VAULT module. |
| INFRA | `opencode` | `1.18.16` → `1.19.5` |Updated to 1.19.5; package revision 2PGSTY includes Bun security fixes. |
| INFRA | `opentofu` | `—` → `1.13.9` |New default IaC tool, package name tofu; includes state persistence fixes. |
| INFRA | `pev2` | `1.23.0` → `1.25.0` |noarch RPM / all DEB |
| INFRA | `pg-exporter` | `1.4.1` → `1.6.1` |Connection governance, failure cooldown and additional PostgreSQL 19 metrics. |
| INFRA | `pg-hardstorage` | `1.2.1` → `1.7.0` |Repacked for both architectures |
| INFRA | `pg-timetable` | `7.0.0` → `7.1.0` | Dual-architecture RPM/DEB built |
| INFRA | `pgbackrest-exporter` | `0.24.0` → `0.25.0` |Source build |
| INFRA | `pgbot` | `—` → `0.9.0` |New; beta |
| INFRA | `pgext` | `—` → `1.7.1` |Official native packages |
| INFRA | `pggo` | `—` → `0.1.1` |New |
| INFRA | `pgschema` | `1.12.2` → `1.14.1` |Repacked for both architectures |
| INFRA | `pgstream` | `1.3.1` → `1.6.0` |Source build from pinned commit |
| INFRA | `pgsync` | `—` → `0.1.1` |New; beta |
| INFRA | `pgterm` | `—` → `0.4.0` |New; beta |
| INFRA | `pi-coding-agent` | `—` → `1.5.2` |New package; complete upstream runtime |
| INFRA | `pig` | `1.8.0` → `1.11.0` |Pigsty 4.6.0 support; embedded catalog contains 625 available extensions. |
| INFRA | `postgrest` | `16.1` → `16.5` |Requires PostgreSQL 14 or newer. |
| INFRA | `prometheus` | `3.13.2` → `3.16.0` |TLS / Remote Write changes |
| INFRA | `promtail` | `3.6.7` → `3.6.11` |EOL artifact backfill |
| INFRA | `pushgateway` | `1.11.3` → `1.11.4` | Both architectures; imported locally |
| INFRA | `rainfrog` | `0.4.3` → `0.4.7` | Repacked for both architectures |
| INFRA | `rclone` | `1.75.0` → `1.76.0` | Repacked for both architectures |
| INFRA | `redis-exporter` | `1.89.0` → `1.97.0` |Redis 8 KEYSIZES |
| INFRA | `rust-toolchain` | `1.97.1` → `1.99.1` |Upstream signatures and dual-architecture ELF ABI checks passed; imported locally |
| INFRA | `rustfs` | `1.0.0-rc.1` → `1.0.5` |Available as an optional repository package; not a MINIO module backend. |
| INFRA | `sabiql` | `1.15.1` → `3.0.3` |Repacked for both architectures |
| INFRA | `sealos` | `5.0.1` → `5.1.1` |Official packages; upstream source uses the Sealos Sustainable Use License. |
| INFRA | `seaweedfs` | `4.41` → `4.53` |Package version: 4.53.0 |
| INFRA | `silo` | `20260806000000.0.0` → `20261112000000.0.0` |Native release packages, revision 1PGSTY, with Console 2.7.2 embedded. |
| INFRA | `silo-console` | `—` → `2.7.2` |New standalone console package, paired with Silo 20261112. |
| INFRA | `sow` | `0.3.0` → `0.7.1` |Existing 0.3/0.4 workspaces require an explicit migration. |
| INFRA | `sql-studio` | `0.1.51` → `0.1.53` | Dual-architecture RPM/DEB built |
| INFRA | `stalwart` | `0.16.17` → `1.1.0` |Major update to 1.x; migration required from 0.16.x. |
| INFRA | `tailcat` | `—` → `0.7.0` |Verified and built dual-architecture RPM/DEB |
| INFRA | `timescaledb-tools` | `0.19.0` → `0.19.1` |tune 0.19.1 + parallel-copy 0.13.2; Go 1.27.4 source builds |
| INFRA | `uv` | `0.12.3` → `0.13.7` |  |
| INFRA | `v2ray` | `5.52.0` → `5.53.0` | Dual-architecture RPM/DEB built |
| INFRA | `vector` | `0.57.0` → `0.61.0` |Official native DEB/RPM packages. |
| INFRA | `victoria-logs` / `vlogscli` / `vlagent` | `1.52.0` → `1.53.0` |Logs components updated together. |
| INFRA | `victoria-metrics` / `victoria-metrics-cluster` / `vmutils` | `1.149.0` → `1.156.0` |Single-node, cluster and utility packages updated together. |
| INFRA | `victoria-traces` | `0.10.0` → `0.13.0` |gRPC TLS now opt-in |
| INFRA | `xray` | `26.3.27` → `26.11.9` |Repacked for both architectures |
| PIG | `v1.8.1` | `v1.8.0` → `v1.8.1` |Go 1.27.1; CLI, repository and build safety improvements. |
| PIG | `v1.9.0` | `v1.8.1` → `v1.9.0` |Xray client/server, repository signing keys, pgrx 0.19.3 and a 600-entry catalog. |
| PIG | `v1.10.0` – `v1.10.4` | `v1.9.0` → `v1.10.4` |Safer PG targets and recovery, inventory preservation, category aliases and Go 1.27.3. |
| PIG | `v1.11.0` | `v1.10.4` → `v1.11.0` |Pigsty 4.6.0 support, kernel-specific configuration isolation, stricter backup/recovery/cleanup boundaries and a 625-entry catalog. |
| UPSTREAM | `containerd.io` | - → `2.4.2-3` |Official packages; separate docker repository module. |
| UPSTREAM | `docker-buildx-plugin` | - → `0.38.1` |Official packages; separate docker repository module. |
| UPSTREAM | `docker-ce` | - → `29.9.2` |Official packages; separate docker repository module. |
| UPSTREAM | `docker-ce-cli` | - → `29.9.2` |Official packages; separate docker repository module. |
| UPSTREAM | `docker-ce-rootless-extras` | - → `29.9.2` |Official packages; separate docker repository module. |
| UPSTREAM | `docker-compose-plugin` | - → `5.7.0` |Official packages; separate docker repository module. |
| UPSTREAM | `nginx` | - → `1.31.8` |Official packages; separate nginx repository module. |
| UPSTREAM | `nginx-module-acme` | - → `1.31.8+0.4.1` |Official packages; separate nginx repository module. |
{.wide .expand}

## Compatibility and Upgrades

Before upgrading from v4.5 or migrating configuration, check:

1. **Kernel template paths**: `conf/<fork>.yml` becomes `conf/fork/<fork>.yml`; OpenHalo moves from `conf/mysql.yml` to `conf/fork/halo.yml`. Use `./configure -c fork/<name>`; native MySQL 8.4 remains `demo/mysql`.
2. **MYSQL parameters and layout**: remove obsolete variables such as `mysql_backup_repo`, `mysql_rm_confirm`, `mysql_role`, and `mysql_port`, following the [16 public parameters](/docs/mysql/param/). `mysql_safeguard` now defaults to `true`.
3. **Docker/Nginx repository modules**: explicitly include `docker` or `nginx` in custom `repo_modules` when needed. Default templates have been updated.
4. **OpenTofu default**: the `terraform/` Makefile runs `tofu`. Set `IAC_CLI=terraform` to keep HashiCorp Terraform, or follow the [migration guide](/docs/deploy/terraform/).
5. **Offline archive path**: update transfer scripts to `/var/tmp/pkg.tgz`. `bootstrap` still checks `/tmp/pkg.tgz` when the default is absent.
6. **Claude Code package name**: the official signed `claude-code 2.1.322` joins Infra. The old `claude` package remains at `2.1.319`, with no automatic Obsoletes replacement. Migrate existing installations by package name.
7. **SOW workspace migration**: `sow 0.7.1` requires an explicit migration for old `0.3` / `0.4` workspaces.

## Get v4.6.0

Install on a fresh supported Linux node:

```bash
curl -fsSL https://repo.pigsty.io/get | bash -s v4.6.0
cd ~/pigsty
./bootstrap
./configure
./deploy.yml
```

Do not rerun all initialization playbooks for production upgrades. Check cluster state, valid backups (`pig pg list`, `pig pb info`), and the compatibility notes first. Use an explicit `-l` scope, run `--check`, and perform maintenance in stages.

## Offline Release and Bilingual Notes

All 14 archives passed independent `rich` deployments on fresh x86_64 / ARM64 VMs running EL9/10, Debian 12/13, and Ubuntu 22/24/26, with no failed or ignored deployment tasks. Default groups exclude `hdfs_fdw` and OneSparse; APT/DNF solve the full target set together. Use the release attachment `pigsty-v4.6.0.tgz`, which includes offline fixes not yet in the tag.

See the [**v4.6.0 release notes**](/docs/about/release/#v460) for both languages, package version definitions, source differences, and offline validation results.

All 14 archives passed a fresh, isolated installation with the stock `rich` template on x86_64 and ARM64. Use the attached `pigsty-v4.6.0.tgz`, which includes the offline fixes absent from the automatic tag archives. See the [**English release notes**](/docs/about/release/#v460-en), shared package tables and validation details.
