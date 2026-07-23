---
title: "Preloading"
linkTitle: "Preloading"
description: "PostgreSQL extensions that require dynamic loading"
weight: 10
---

The following **125** extensions require loading in [`shared_preload_libraries`](https://www.postgresql.org/docs/current/runtime-config-client.html#GUC-SHARED-PRELOAD-LIBRARIES) to function properly.

You need to modify the [`shared_preload_libraries`](https://www.postgresql.org/docs/current/runtime-config-client.html#GUC-SHARED-PRELOAD-LIBRARIES) parameter in `postgresql.conf`, add the extension library, and restart the database.

| **Extension** | **Library** | **Description** |
|:-----------|:-------------|:---------|
| [`timescaledb`](/ext/e/timescaledb) | `timescaledb` | Enables scalable inserts and complex queries for time-series data |
| [`pg_cron`](/ext/e/pg_cron) | `pg_cron` | Job scheduler for PostgreSQL |
| [`pg_task`](/ext/e/pg_task) | `pg_task` | execute any sql command at any specific time at background |
| [`pg_later`](/ext/e/pg_later) | `pg_later` | Run queries now and get results later |
| [`mobilitydb`](/ext/e/mobilitydb) | `postgis-3` | MobilityDB geospatial trajectory data management & analysis platform |
| [`vchord`](/ext/e/vchord) | `vchord` | Vector database plugin for Postgres, written in Rust |
| [`vectorize`](/ext/e/vectorize) | `vectorize` | The simplest way to do vector search on Postgres |
| [`pgml`](/ext/e/pgml) | `pgml` | Run AL/ML workloads with SQL interface |
| [`pg_search`](/ext/e/pg_search) | `pg_search` | Full text search for PostgreSQL using BM25 |
| [`pg_bigm`](/ext/e/pg_bigm) | `pg_bigm` | create 2-gram (bigram) index for faster full text search. |
| [`pg_bestmatch`](/ext/e/pg_bestmatch) | `pg_bestmatch` | Generate BM25 sparse vector inside PostgreSQL |
| [`vchord_bm25`](/ext/e/vchord_bm25) | `vchord_bm25` | A postgresql extension for bm25 ranking algorithm |
| [`pg_tokenizer`](/ext/e/pg_tokenizer) | `pg_tokenizer` | Tokenizers for full-text search |
| [`pg_textsearch`](/ext/e/pg_textsearch) | `pg_textsearch` | Full-text search with BM25 ranking |
| [`citus`](/ext/e/citus) | `citus` | Distributed PostgreSQL as an extension |
| [`pg_duckdb`](/ext/e/pg_duckdb) | `pg_duckdb` | DuckDB Embedded in Postgres |
| [`pg_mooncake`](/ext/e/pg_mooncake) | `pg_mooncake` | Columnstore Table in Postgres |
| [`storage_engine`](/ext/e/storage_engine) | `storage_engine` | colcompress and rowcompress Table Access Methods with vectorized execution |
| [`pg_clickhouse`](/ext/e/pg_clickhouse) | `pg_clickhouse` | Interfaces to query ClickHouse databases from PostgreSQL |
| [`pg_parquet`](/ext/e/pg_parquet) | `pg_parquet` | copy data between Postgres and Parquet |
| [`pg_ducklake`](/ext/e/pg_ducklake) | `pg_ducklake` | DuckLake lakehouse extension for PostgreSQL, backed by DuckDB and Parquet |
| [`pg_orca`](/ext/e/pg_orca) | `pg_orca` | ORCA query optimizer as a PostgreSQL extension |
| [`pg_sorted_heap`](/ext/e/pg_sorted_heap) | `pg_sorted_heap` | Sorted heap table AM with zone map scan pruning and built-in vector search |
| [`pg_lake`](/ext/e/pg_lake) | `pg_extension_base` | Data lake extension by Snowflake |
| [`pg_extension_base`](/ext/e/pg_extension_base) | `pg_extension_base` | Extension development kit by Snowflake |
| [`pg_extension_updater`](/ext/e/pg_extension_updater) | `pg_extension_base` | Automatic extension updater |
| [`pg_lake_engine`](/ext/e/pg_lake_engine) | `pg_extension_base` | Query engine for data lake queries |
| [`pg_lake_table`](/ext/e/pg_lake_table) | `pg_extension_base` | Data lake tables and Iceberg tables |
| [`pg_lake_copy`](/ext/e/pg_lake_copy) | `pg_extension_base` | Copy to/from data lake files |
| [`age`](/ext/e/age) | `age` | AGE graph database extension |
| [`pgrdf`](/ext/e/pgrdf) | `pgrdf` | RDF, SPARQL, SHACL, and OWL reasoning for PostgreSQL |
| [`ulak`](/ext/e/ulak) | `ulak` | Transactional Outbox extension for PostgreSQL with reliable asynchronous delivery |
| [`pg_ttl_index`](/ext/e/pg_ttl_index) | `pg_ttl_index` | Automatic data expiration with TTL indexes |
| [`pg_hint_plan`](/ext/e/pg_hint_plan) | `pg_hint_plan` | Give PostgreSQL ability to manually force some decisions in execution plans. |
| [`plan_filter`](/ext/e/plan_filter) | `plan_filter` | filter statements by their execution plans. |
| [`pg_ivm`](/ext/e/pg_ivm) | `pg_ivm` | incremental view maintenance on PostgreSQL |
| [`pg_trickle`](/ext/e/pg_trickle) | `pg_trickle` | Streaming tables and differential view maintenance for PostgreSQL 18 |
| [`pg_durable`](/ext/e/pg_durable) | `pg_durable` | Durable SQL functions for PostgreSQL |
| [`provsql`](/ext/e/provsql) | `provsql` | Semiring provenance and uncertainty management for PostgreSQL |
| [`orioledb`](/ext/e/orioledb) | `orioledb` | OrioleDB, the next generation transactional engine |
| [`omni`](/ext/e/omni) | `omni--0.2.14.so` | Advanced adapter for Postgres extensions |
| [`pg_tle`](/ext/e/pg_tle) | `pg_tle` | Trusted Language Extensions for PostgreSQL |
| [`pldbgapi`](/ext/e/pldbgapi) | `$libdir/plugin_debugger` | server-side support for debugging PL/pgSQL functions |
| [`plpgsql_check`](/ext/e/plpgsql_check) | `plpgsql_check` | extended check for plpgsql functions |
| [`plprofiler`](/ext/e/plprofiler) | `plprofiler` | server-side support for profiling PL/pgSQL functions |
| [`pg_regresql`](/ext/e/pg_regresql) | `pg_regresql` | Trust pg_class statistics for planning instead of physical relation size |
| [`pgpdf`](/ext/e/pgpdf) | `pgpdf` | PDF type with meta admin & Full-Text Search |
| [`pglite_fusion`](/ext/e/pglite_fusion) | `pglite_fusion` | Embed an SQLite database in your PostgreSQL table |
| [`pg_net`](/ext/e/pg_net) | `pg_net` | Async HTTP Requests |
| [`pgx_ulid`](/ext/e/pgx_ulid) | `pgx_ulid` | ulid type and methods |
| [`pg_rewrite`](/ext/e/pg_rewrite) | `pg_rewrite` | Tool allows read write to the table during the rewriting |
| [`pg_query_rewrite`](/ext/e/pg_query_rewrite) | `pg_query_rewrite` | Rewrite SQL statements with a PostgreSQL ProcessUtility hook |
| [`pg_squeeze`](/ext/e/pg_squeeze) | `pg_squeeze` | A tool to remove unused space from a relation. |
| [`pg_readonly`](/ext/e/pg_readonly) | `pg_readonly` | cluster database read only |
| [`pgautofailover`](/ext/e/pgautofailover) | `pgautofailover` | pg_auto_failover |
| [`pg_crash`](/ext/e/pg_crash) | `pg_crash` | Send random signals to random processes |
| [`qos`](/ext/e/qos) | `qos` | QoS resource governor extension for PostgreSQL sessions and queries |
| [`pg_pathcheck`](/ext/e/pg_pathcheck) | `pg_pathcheck` | Validate planner Path trees for freed or corrupt memory |
| [`pgdisablelogerror`](/ext/e/pgdisablelogerror) | `$libdir/pgdisablelogerror` | Disable selected SQLSTATE error codes from PostgreSQL server logging. |
| [`online_advisor`](/ext/e/online_advisor) | `online_advisor` | Suggest missing indexes and extended statistics online |
| [`safeupdate`](/ext/e/safeupdate) | `safeupdate` | Require criteria for UPDATE and DELETE |
| [`pg_strict`](/ext/e/pg_strict) | `pg_strict` | Prevent dangerous UPDATE and DELETE without WHERE clause |
| [`pg_prewarm`](/ext/e/pg_prewarm) | `pg_prewarm` | prewarm relation data |
| [`pg_tracing`](/ext/e/pg_tracing) | `pg_tracing` | Distributed Tracing for PostgreSQL |
| [`pg_stat_ch`](/ext/e/pg_stat_ch) | `pg_stat_ch` | Export PostgreSQL query telemetry to ClickHouse |
| [`pg_stat_log`](/ext/e/pg_stat_log) | `$libdir/pg_stat_log` | Track cumulative PostgreSQL log message statistics by backend, database, user, level, and SQLSTATE. |
| [`pg_stat_plans`](/ext/e/pg_stat_plans) | `$libdir/pg_stat_plans` | Track per-plan call counts, execution times, and example EXPLAIN texts. |
| [`pgmonitor`](/ext/e/pgmonitor) | `pgmonitor_bgw` | Collector-friendly metric views and background refresh worker |
| [`pg_show_plans`](/ext/e/pg_show_plans) | `pg_show_plans` | show query plans of all currently running SQL statements |
| [`pg_stat_kcache`](/ext/e/pg_stat_kcache) | `pg_stat_kcache` | Kernel statistics gathering |
| [`pg_stat_monitor`](/ext/e/pg_stat_monitor) | `pg_stat_monitor` | The pg_stat_monitor is a PostgreSQL Query Performance Monitoring tool, based on PostgreSQL contrib module pg_stat_statements. pg_stat_monitor provides aggregated statistics, client information, plan details including plan, and histogram information. |
| [`pg_qualstats`](/ext/e/pg_qualstats) | `pg_qualstats` | An extension collecting statistics about quals |
| [`pg_store_plans`](/ext/e/pg_store_plans) | `pg_store_plans` | track plan statistics of all SQL statements executed |
| [`pg_track_optimizer`](/ext/e/pg_track_optimizer) | `pg_track_optimizer` | Track planning decisions in comparison with execution reality |
| [`pg_wait_sampling`](/ext/e/pg_wait_sampling) | `pg_wait_sampling` | sampling based statistics of wait events |
| [`pg_datasentinel`](/ext/e/pg_datasentinel) | `pg_datasentinel` | Observability and activity monitoring extension for PostgreSQL |
| [`pgsentinel`](/ext/e/pgsentinel) | `pgsentinel` | active session history |
| [`pgnodemx`](/ext/e/pgnodemx) | `pgnodemx` | Capture node OS metrics via SQL queries |
| [`bgw_replstatus`](/ext/e/bgw_replstatus) | `bgw_replstatus` | Small PostgreSQL background worker to report whether a node is a replication master or standby |
| [`pg_relusage`](/ext/e/pg_relusage) | `pg_relusage` | Log all the queries that reference a particular column |
| [`pg_overexplain`](/ext/e/pg_overexplain) | `pg_overexplain` | Allow EXPLAIN to dump even more details |
| [`auto_explain`](/ext/e/auto_explain) | `auto_explain` | Provides a means for logging execution plans of slow statements automatically |
| [`pg_stat_statements`](/ext/e/pg_stat_statements) | `pg_stat_statements` | track planning and execution statistics of all SQL statements executed |
| [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) | `$libdir/passwordcheck_cracklib` | Strengthen PostgreSQL user password checks with cracklib |
| [`supautils`](/ext/e/supautils) | `supautils` | Extension that secures a cluster on a cloud environment |
| [`pgsodium`](/ext/e/pgsodium) | `pgsodium` | Postgres extension for libsodium functions |
| [`column_encrypt`](/ext/e/column_encrypt) | `column_encrypt` | Transparent column-level encryption with encrypted_text and encrypted_bytea types |
| [`passwordpolicy`](/ext/e/passwordpolicy) | `$libdir/passwordpolicy` | Dynamically configurable PostgreSQL password complexity checks. |
| [`anon`](/ext/e/anon) | `anon` | PostgreSQL Anonymizer (anon) extension |
| [`pgaudit`](/ext/e/pgaudit) | `pgaudit` | provides auditing functionality |
| [`pgauditlogtofile`](/ext/e/pgauditlogtofile) | `pgauditlogtofile` | pgAudit addon to redirect audit log to an independent file |
| [`pg_roast`](/ext/e/pg_roast) | `pg_roast` | Opinionated PostgreSQL database auditor |
| [`logerrors`](/ext/e/logerrors) | `logerrors` | Function for collecting statistics about messages in logfile |
| [`pg_auth_mon`](/ext/e/pg_auth_mon) | `pg_auth_mon` | monitor connection attempts per user |
| [`pg_oidc_validator`](/ext/e/pg_oidc_validator) | `pg_oidc_validator` | OAuth and OIDC token validator for PostgreSQL 18 |
| [`oidc_validator`](/ext/e/oidc_validator) | `oidc_validator` | PostgreSQL 18 OIDC bearer-token validator plugin written in Rust |
| [`credcheck`](/ext/e/credcheck) | `credcheck` | credcheck - postgresql plain text credential checker |
| [`set_user`](/ext/e/set_user) | `set_user` | similar to SET ROLE but with added logging |
| [`pg_snakeoil`](/ext/e/pg_snakeoil) | `pg_snakeoil` | The PostgreSQL Antivirus |
| [`pgextwlist`](/ext/e/pgextwlist) | `pgextwlist` | PostgreSQL Extension Whitelisting |
| [`pg_command_fw`](/ext/e/pg_command_fw) | `pg_command_fw` | DDL and utility command firewall for PostgreSQL |
| [`noset`](/ext/e/noset) | `noset` | Module for blocking SET variables for non-super users. |
| [`block_copy_command`](/ext/e/block_copy_command) | `block_copy_command` | Block COPY commands via a configurable ProcessUtility hook |
| [`pg_kpart`](/ext/e/pg_kpart) | `pg_kpart` | Reject full partition scans that omit the partition key |
| [`pg_tde`](/ext/e/pg_tde) | `pg_tde` | Percona pg_tde access method |
| [`sepgsql`](/ext/e/sepgsql) | `sepgsql` | label-based mandatory access control (MAC) based on SELinux security policy. |
| [`auth_delay`](/ext/e/auth_delay) | `auth_delay` | pause briefly before reporting authentication failure |
| [`passwordcheck`](/ext/e/passwordcheck) | `$libdir/passwordcheck` | checks user passwords and reject weak password |
| [`documentdb`](/ext/e/documentdb) | `pg_documentdb,pg_documentdb_core` | API surface for DocumentDB for PostgreSQL |
| [`documentdb_core`](/ext/e/documentdb_core) | `pg_documentdb,pg_documentdb_core` | Core API surface for DocumentDB on PostgreSQL |
| [`documentdb_distributed`](/ext/e/documentdb_distributed) | `pg_documentdb,pg_documentdb_core` | Multi-Node API surface for DocumentDB |
| [`documentdb_extended_rum`](/ext/e/documentdb_extended_rum) | `pg_documentdb_extended_rum` | DocumentDB Extended RUM index access method |
| [`pgtt`](/ext/e/pgtt) | `pgtt` | Extension to add Global Temporary Tables feature to PostgreSQL |
| [`pg_statement_rollback`](/ext/e/pg_statement_rollback) | `pg_statement_rollback` | Server side rollback at statement level for PostgreSQL like Oracle or DB2 |
| [`pg_dbms_job`](/ext/e/pg_dbms_job) | `pg_dbms_job` | Extension to add Oracle DBMS_JOB full compatibility to PostgreSQL |
| [`pg_dbms_errlog`](/ext/e/pg_dbms_errlog) | `pg_dbms_errlog` | Emulate DBMS_ERRLOG Oracle module to log DML errors in a dedicated table. |
| [`babelfishpg_tds`](/ext/e/babelfishpg_tds) | `babelfishpg_tds` | SQL Server TDS protocol extension |
| [`pglogical`](/ext/e/pglogical) | `pglogical` | PostgreSQL Logical Replication |
| [`pglogical_ticker`](/ext/e/pglogical_ticker) | `pglogical_ticker` | Have an accurate view on pglogical replication delay |
| [`pg_failover_slots`](/ext/e/pg_failover_slots) | `pg_failover_slots` | PG Failover Slots extension |
| [`pgactive`](/ext/e/pgactive) | `pgactive` | Active-Active Replication Extension for PostgreSQL |
| [`spock`](/ext/e/spock) | `spock` | Multi-master logical replication extension for PostgreSQL |
| [`pgclone`](/ext/e/pgclone) | `pgclone` | Clone PostgreSQL databases, schemas, tables, and functions across environments |
| [`decoderbufs`](/ext/e/decoderbufs) | `decoderbufs` | Logical decoding plugin that delivers WAL stream changes using a Protocol Buffer format |
| [`repmgr`](/ext/e/repmgr) | `repmgr` | Replication manager for PostgreSQL |
{.ext-table}

