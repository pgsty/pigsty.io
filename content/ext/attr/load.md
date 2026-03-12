---
title: "Preloading"
linkTitle: "Preloading"
description: "PostgreSQL extensions that require dynamic loading"
weight: 10
---

The following **66** extensions require loading in [`shared_preload_libraries`](https://www.postgresql.org/docs/current/runtime-config-client.html#GUC-SHARED-PRELOAD-LIBRARIES) to function properly.

You need to modify the [`shared_preload_libraries`](https://www.postgresql.org/docs/current/runtime-config-client.html#GUC-SHARED-PRELOAD-LIBRARIES) parameter in `postgresql.conf`, add the extension library, and restart the database.

| **Extension** | **Library** | **Description** |
|:-----------|:-------------|:---------|
| [`timescaledb`](/ext/e/timescaledb) | `timescaledb` | Enables scalable inserts and complex queries for time-series data |
| [`pg_cron`](/ext/e/pg_cron) | `pg_cron` | Job scheduler for PostgreSQL |
| [`pg_task`](/ext/e/pg_task) | `pg_task` | execute any sql command at any specific time at background |
| [`vchord`](/ext/e/vchord) | `vchord` | Vector database plugin for Postgres, written in Rust |
| [`pgml`](/ext/e/pgml) | `pgml` | Run AL/ML workloads with SQL interface |
| [`pg_bestmatch`](/ext/e/pg_bestmatch) | `pg_bestmatch` | Generate BM25 sparse vector inside PostgreSQL |
| [`vchord_bm25`](/ext/e/vchord_bm25) | `vchord_bm25` | A postgresql extension for bm25 ranking algorithm |
| [`citus`](/ext/e/citus) | `citus` | Distributed PostgreSQL as an extension |
| [`pg_duckdb`](/ext/e/pg_duckdb) | `pg_duckdb` | DuckDB Embedded in Postgres |
| [`pg_mooncake`](/ext/e/pg_mooncake) | `pg_mooncake` | Columnstore Table in Postgres |
| [`pg_parquet`](/ext/e/pg_parquet) | `pg_parquet` | copy data between Postgres and Parquet |
| [`pg_ttl_index`](/ext/e/pg_ttl_index) | `pg_ttl_index` | Automatic data expiration with TTL indexes |
| [`plan_filter`](/ext/e/plan_filter) | `plan_filter` | filter statements by their execution plans. |
| [`orioledb`](/ext/e/orioledb) | `orioledb` | OrioleDB, the next generation transactional engine |
| [`omni`](/ext/e/omni) | `omni--0.2.14.so` | Advanced adapter for Postgres extensions |
| [`pg_tle`](/ext/e/pg_tle) | `pg_tle` | Trusted Language Extensions for PostgreSQL |
| [`plpgsql_check`](/ext/e/plpgsql_check) | `plpgsql_check` | extended check for plpgsql functions |
| [`pgpdf`](/ext/e/pgpdf) | `pgpdf` | PDF type with meta admin & Full-Text Search |
| [`pglite_fusion`](/ext/e/pglite_fusion) | `pglite_fusion` | Embed an SQLite database in your PostgreSQL table |
| [`pg_net`](/ext/e/pg_net) | `pg_net` | Async HTTP Requests |
| [`pgx_ulid`](/ext/e/pgx_ulid) | `pgx_ulid` | ulid type and methods |
| [`pg_rewrite`](/ext/e/pg_rewrite) | `pg_rewrite` | Tool allows read write to the table during the rewriting |
| [`pg_squeeze`](/ext/e/pg_squeeze) | `pg_squeeze` | A tool to remove unused space from a relation. |
| [`pgautofailover`](/ext/e/pgautofailover) | `pgautofailover` | pg_auto_failover |
| [`pg_crash`](/ext/e/pg_crash) | `pg_crash` | Send random signals to random processes |
| [`qos`](/ext/e/qos) | `qos` | QoS resource governor extension for PostgreSQL sessions and queries |
| [`safeupdate`](/ext/e/safeupdate) | `safeupdate` | Require criteria for UPDATE and DELETE |
| [`pg_strict`](/ext/e/pg_strict) | `pg_strict` | Prevent dangerous UPDATE and DELETE without WHERE clause |
| [`pg_prewarm`](/ext/e/pg_prewarm) | `pg_prewarm` | prewarm relation data |
| [`pg_tracing`](/ext/e/pg_tracing) | `pg_tracing` | Distributed Tracing for PostgreSQL |
| [`pg_stat_kcache`](/ext/e/pg_stat_kcache) | `pg_stat_kcache` | Kernel statistics gathering |
| [`pg_stat_monitor`](/ext/e/pg_stat_monitor) | `pg_stat_monitor` | The pg_stat_monitor is a PostgreSQL Query Performance Monitoring tool, based on PostgreSQL contrib module pg_stat_statements. pg_stat_monitor provides aggregated statistics, client information, plan details including plan, and histogram information. |
| [`pg_qualstats`](/ext/e/pg_qualstats) | `pg_qualstats` | An extension collecting statistics about quals |
| [`pg_store_plans`](/ext/e/pg_store_plans) | `pg_store_plans` | track plan statistics of all SQL statements executed |
| [`pg_track_optimizer`](/ext/e/pg_track_optimizer) | `pg_track_optimizer` | Track planning decisions in comparison with execution reality |
| [`pg_wait_sampling`](/ext/e/pg_wait_sampling) | `pg_wait_sampling` | sampling based statistics of wait events |
| [`pgsentinel`](/ext/e/pgsentinel) | `pgsentinel` | active session history |
| [`bgw_replstatus`](/ext/e/bgw_replstatus) | `bgw_replstatus` | Small PostgreSQL background worker to report whether a node is a replication master or standby |
| [`pg_relusage`](/ext/e/pg_relusage) | `pg_relusage` | Log all the queries that reference a particular column |
| [`pg_overexplain`](/ext/e/pg_overexplain) | `pg_overexplain` | Allow EXPLAIN to dump even more details |
| [`auto_explain`](/ext/e/auto_explain) | `auto_explain` | Provides a means for logging execution plans of slow statements automatically |
| [`pg_stat_statements`](/ext/e/pg_stat_statements) | `pg_stat_statements` | track planning and execution statistics of all SQL statements executed |
| [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) | `$libdir/passwordcheck_cracklib` | Strengthen PostgreSQL user password checks with cracklib |
| [`supautils`](/ext/e/supautils) | `supautils` | Extension that secures a cluster on a cloud environment |
| [`pgsodium`](/ext/e/pgsodium) | `pgsodium` | Postgres extension for libsodium functions |
| [`anon`](/ext/e/anon) | `anon` | PostgreSQL Anonymizer (anon) extension |
| [`pgaudit`](/ext/e/pgaudit) | `pgaudit` | provides auditing functionality |
| [`credcheck`](/ext/e/credcheck) | `credcheck` | credcheck - postgresql plain text credential checker |
| [`pg_snakeoil`](/ext/e/pg_snakeoil) | `pg_snakeoil` | The PostgreSQL Antivirus |
| [`pgextwlist`](/ext/e/pgextwlist) | `pgextwlist` | PostgreSQL Extension Whitelisting |
| [`noset`](/ext/e/noset) | `noset` | Module for blocking SET variables for non-super users. |
| [`pg_tde`](/ext/e/pg_tde) | `pg_tde` | Percona pg_tde access method |
| [`sepgsql`](/ext/e/sepgsql) | `sepgsql` | label-based mandatory access control (MAC) based on SELinux security policy. |
| [`auth_delay`](/ext/e/auth_delay) | `auth_delay` | pause briefly before reporting authentication failure |
| [`passwordcheck`](/ext/e/passwordcheck) | `$libdir/passwordcheck` | checks user passwords and reject weak password |
| [`documentdb`](/ext/e/documentdb) | `pg_documentdb,pg_documentdb_core` | API surface for DocumentDB for PostgreSQL |
| [`documentdb_core`](/ext/e/documentdb_core) | `pg_documentdb,pg_documentdb_core` | Core API surface for DocumentDB for PostgreSQL |
| [`documentdb_distributed`](/ext/e/documentdb_distributed) | `pg_documentdb,pg_documentdb_core` | Multi-Node API surface for DocumentDB |
| [`documentdb_extended_rum`](/ext/e/documentdb_extended_rum) | `pg_documentdb_extended_rum` | DocumentDB Extended RUM index access method |
| [`pg_statement_rollback`](/ext/e/pg_statement_rollback) | `pg_statement_rollback` | Server side rollback at statement level for PostgreSQL like Oracle or DB2 |
| [`babelfishpg_tds`](/ext/e/babelfishpg_tds) | `babelfishpg_tds` | SQL Server TDS protocol extension |
| [`pglogical`](/ext/e/pglogical) | `pglogical` | PostgreSQL Logical Replication |
| [`pglogical_ticker`](/ext/e/pglogical_ticker) | `pglogical_ticker` | Have an accurate view on pglogical replication delay |
| [`pg_failover_slots`](/ext/e/pg_failover_slots) | `pg_failover_slots` | PG Failover Slots extension |
| [`pgactive`](/ext/e/pgactive) | `pgactive` | Active-Active Replication Extension for PostgreSQL |
| [`spock`](/ext/e/spock) | `spock` | Multi-master logical replication extension for PostgreSQL |
{.ext-table}

