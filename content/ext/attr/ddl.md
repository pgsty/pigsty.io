---
title: "Headless"
linkTitle: "Headless"
description: "PostgreSQL extensions that do not require CREATE EXTENSION"
weight: 20
slug: ddl
---

The following **26** extensions can be used without running `CREATE EXTENSION`.

These extensions typically exist as shared libraries (hooks) or standalone tools that take effect through configuration parameters.

| **Extension** | **Package** | **Version** | **Attr** | **Description** |
|:-----------|:-------------|:--------:|:--------:|:---------|
| [`pg_task`](/ext/e/pg_task) | [`pg_task`](https://github.com/RekGRpth/pg_task) | `1.0.0` | `--sL---` | execute any sql command at any specific time at background |
| [`plan_filter`](/ext/e/plan_filter) | [`pg_plan_filter`](https://github.com/pgexperts/pg_plan_filter) | `0.0.1` | `--sL---` | filter statements by their execution plans. |
| [`pg_checksums`](/ext/e/pg_checksums) | [`pg_checksums`](https://github.com/credativ/pg_checksums) | `1.3` | `--s---r` | Activate/deactivate/verify checksums in offline Postgres clusters |
| [`pg_crash`](/ext/e/pg_crash) | [`pg_crash`](https://github.com/cybertec-postgresql/pg_crash) | `1.0` | `--sL---` | Send random signals to random processes |
| [`pg_pathcheck`](/ext/e/pg_pathcheck) | [`pg_pathcheck`](https://github.com/danolivo/pg_pathcheck) | `0.9.1` | `--sL---` | Validate planner Path trees for freed or corrupt memory |
| [`safeupdate`](/ext/e/safeupdate) | [`safeupdate`](https://github.com/eradman/pg-safeupdate) | `1.5` | `--sL---` | Require criteria for UPDATE and DELETE |
| [`basic_archive`](/ext/e/basic_archive) | [`basic_archive`](https://www.postgresql.org/docs/current/basic-archive.html) | `-` | `c-s----` | an example of an archive module |
| [`basebackup_to_shell`](/ext/e/basebackup_to_shell) | [`basebackup_to_shell`](https://www.postgresql.org/docs/current/basebackup-to-shell.html) | `-` | `c-s----` | adds a custom basebackup target called shell |
| [`bgw_replstatus`](/ext/e/bgw_replstatus) | [`bgw_replstatus`](https://github.com/mhagander/bgw_replstatus) | `1.0.8` | `--sL---` | Small PostgreSQL background worker to report whether a node is a replication master or standby |
| [`pg_relusage`](/ext/e/pg_relusage) | [`pg_relusage`](https://github.com/adept/pg_relusage) | `0.0.1` | `--sL---` | Log all the queries that reference a particular column |
| [`pg_overexplain`](/ext/e/pg_overexplain) | [`pg_overexplain`](https://www.postgresql.org/docs/devel/pgoverexplain.html) | `1.0` | `c-sL---` | Allow EXPLAIN to dump even more details |
| [`auto_explain`](/ext/e/auto_explain) | [`auto_explain`](https://www.postgresql.org/docs/current/auto-explain.html) | `-` | `c-sL---` | Provides a means for logging execution plans of slow statements automatically |
| [`passwordcheck_cracklib`](/ext/e/passwordcheck_cracklib) | [`passwordcheck_cracklib`](https://github.com/devrimgunduz/passwordcheck_cracklib) | `3.1.0` | `--sL---` | Strengthen PostgreSQL user password checks with cracklib |
| [`supautils`](/ext/e/supautils) | [`supautils`](https://github.com/supabase/supautils) | `3.2.1` | `--sL---` | Extension that secures a cluster on a cloud environment |
| [`pgextwlist`](/ext/e/pgextwlist) | [`pgextwlist`](https://github.com/dimitri/pgextwlist) | `1.19` | `--sL---` | PostgreSQL Extension Whitelisting |
| [`sepgsql`](/ext/e/sepgsql) | [`sepgsql`](https://www.postgresql.org/docs/current/sepgsql.html) | `-` | `c-sL---` | label-based mandatory access control (MAC) based on SELinux security policy. |
| [`auth_delay`](/ext/e/auth_delay) | [`auth_delay`](https://www.postgresql.org/docs/current/auth-delay.html) | `-` | `c-sL---` | pause briefly before reporting authentication failure |
| [`passwordcheck`](/ext/e/passwordcheck) | [`passwordcheck`](https://www.postgresql.org/docs/current/passwordcheck.html) | `-` | `c-sL---` | checks user passwords and reject weak password |
| [`pg_statement_rollback`](/ext/e/pg_statement_rollback) | [`pg_statement_rollback`](https://github.com/lzlabs/pg_statement_rollback) | `1.5` | `--sL---` | Server side rollback at statement level for PostgreSQL like Oracle or DB2 |
| [`pg_failover_slots`](/ext/e/pg_failover_slots) | [`pg_failover_slots`](https://github.com/EnterpriseDB/pg_failover_slots) | `1.2.1` | `--sL--r` | PG Failover Slots extension |
| [`wal2json`](/ext/e/wal2json) | [`wal2json`](https://github.com/eulerto/wal2json) | `2.6` | `--s----` | Changing data capture in JSON format |
| [`wal2mongo`](/ext/e/wal2mongo) | [`wal2mongo`](https://github.com/HighgoSoftware/wal2mongo) | `1.0.7` | `--s----` | PostgreSQL logical decoding output plugin for MongoDB |
| [`decoderbufs`](/ext/e/decoderbufs) | [`decoderbufs`](https://github.com/debezium/postgres-decoderbufs) | `3.5.0` | `--sL---` | Logical decoding plugin that delivers WAL stream changes using a Protocol Buffer format |
| [`decoder_raw`](/ext/e/decoder_raw) | [`decoder_raw`](https://github.com/michaelpq/pg_plugins/blob/main/decoder_raw/) | `1.0` | `--s----` | Output plugin for logical replication in Raw SQL format |
| [`test_decoding`](/ext/e/test_decoding) | [`test_decoding`](https://www.postgresql.org/docs/current/test-decoding.html) | `-` | `c-s----` | SQL-based test/example module for WAL logical decoding |
| [`pgoutput`](/ext/e/pgoutput) | [`pgoutput`](https://www.postgresql.org/docs/current/protocol-logical-replication.html) | `-` | `c-s----` | Logical Replication output plugin |
{.ext-table}

