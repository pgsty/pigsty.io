---
title: "STAT - Monitoring & Stats"
linkTitle: "STAT"
description: "Observability Catalogs, Monitoring Metrics & Views, Statistics, Query Plans, WaitSampling, SlowLogs, and etc..."
weight: 860
icon: fas fa-file-waveform
---

## Extension List

There are **43** extensions in **41** packages.

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`pg_profile`](/ext/e/pg_profile) | [`pg_profile`](https://github.com/zubkov-andrei/pg_profile) | `4.11` | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PostgreSQL load profile repository and report builder |
| [`pg_tracing`](/ext/e/pg_tracing) | [`pg_tracing`](https://github.com/DataDog/pg_tracing) | `0.1.3` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Distributed Tracing for PostgreSQL |
| [`pg_stat_ch`](/ext/e/pg_stat_ch) | [`pg_stat_ch`](https://github.com/ClickHouse/pg_stat_ch) | `0.3.6` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | Export PostgreSQL query telemetry to ClickHouse |
| [`pg_stat_backtrace`](/ext/e/pg_stat_backtrace) | [`pg_stat_backtrace`](https://github.com/Nickyoung0/pg_stat_backtrace) | `1.0.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Capture or log C-level stack backtraces of PostgreSQL processes |
| [`pg_stat_log`](/ext/e/pg_stat_log) | [`pg_stat_log`](https://github.com/fabriziomello/pg_stat_log) | `0.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Track cumulative PostgreSQL log message statistics by backend, database, user, level, and SQLSTATE. |
| [`pg_stat_plans`](/ext/e/pg_stat_plans) | [`pg_stat_plans`](https://github.com/pganalyze/pg_stat_plans) | `2.1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Track per-plan call counts, execution times, and example EXPLAIN texts. |
| [`pgfr_record`](/ext/e/pgfr_record) | [`pg_flight_recorder`](https://github.com/dventimisupabase/pg_flight_recorder) | `2.29.2` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Server-side PostgreSQL performance flight recorder |
| [`pgfr_analyze`](/ext/e/pgfr_analyze) | [`pg_flight_recorder`](https://github.com/dventimisupabase/pg_flight_recorder) | `2.29.2` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Reporting and analysis functions for pgfr_record |
| [`pgmonitor`](/ext/e/pgmonitor) | [`pgmonitor`](https://github.com/CrunchyData/pgmonitor-extension) | `2.2.0` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Collector-friendly metric views and background refresh worker |
| [`pg_show_plans`](/ext/e/pg_show_plans) | [`pg_show_plans`](https://github.com/cybertec-postgresql/pg_show_plans) | `2.1.8` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | show query plans of all currently running SQL statements |
| [`pg_stat_kcache`](/ext/e/pg_stat_kcache) | [`pg_stat_kcache`](https://github.com/powa-team/pg_stat_kcache) | `2.3.2` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Kernel statistics gathering |
| [`pg_stat_monitor`](/ext/e/pg_stat_monitor) | [`pg_stat_monitor`](https://github.com/percona/pg_stat_monitor) | `2.3.2` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | The pg_stat_monitor is a PostgreSQL Query Performance Monitoring tool, based on PostgreSQL contrib module pg_stat_statements. pg_stat_monitor provides aggregated statistics, client information, plan details including plan, and histogram information. |
| [`pg_qualstats`](/ext/e/pg_qualstats) | [`pg_qualstats`](https://github.com/powa-team/pg_qualstats) | `2.1.4` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | An extension collecting statistics about quals |
| [`pg_store_plans`](/ext/e/pg_store_plans) | [`pg_store_plans`](https://github.com/ossc-db/pg_store_plans) | `1.10` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | track plan statistics of all SQL statements executed |
| [`pg_track_settings`](/ext/e/pg_track_settings) | [`pg_track_settings`](https://github.com/rjuju/pg_track_settings) | `2.1.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Track settings changes |
| [`pg_track_optimizer`](/ext/e/pg_track_optimizer) | [`pg_track_optimizer`](https://github.com/danolivo/pg_track_optimizer) | `0.9.2` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Track planning decisions in comparison with execution reality |
| [`pg_wait_sampling`](/ext/e/pg_wait_sampling) | [`pg_wait_sampling`](https://github.com/postgrespro/pg_wait_sampling) | `1.1.11` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | sampling based statistics of wait events |
| [`pg_datasentinel`](/ext/e/pg_datasentinel) | [`pg_datasentinel`](https://github.com/datasentinel/pg_datasentinel) | `1.0` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Observability and activity monitoring extension for PostgreSQL |
| [`pgsentinel`](/ext/e/pgsentinel) | [`pgsentinel`](https://github.com/pgsentinel/pgsentinel) | `1.4.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | active session history |
| [`system_stats`](/ext/e/system_stats) | [`system_stats`](https://github.com/EnterpriseDB/system_stats) | `4.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | EnterpriseDB system statistics for PostgreSQL |
| [`meta`](/ext/e/meta) | [`pg_meta`](https://github.com/aquameta/meta) | `0.4.0` | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Normalized, friendlier system catalog for PostgreSQL |
| [`pgnodemx`](/ext/e/pgnodemx) | [`pgnodemx`](https://github.com/CrunchyData/pgnodemx) | `2.0.1` | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Capture node OS metrics via SQL queries |
| [`pg_proctab`](/ext/e/pg_proctab) | [`pgnodemx`](https://github.com/markwkm/pg_proctab) | `2.0.1` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | PostgreSQL extension to access the OS process table |
| [`pg_sqlog`](/ext/e/pg_sqlog) | [`pg_sqlog`](https://github.com/kouber/pg_sqlog) | `1.6` | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Provide SQL interface to logs |
| [`bgw_replstatus`](/ext/e/bgw_replstatus) | [`bgw_replstatus`](https://github.com/mhagander/bgw_replstatus) | `1.0.8` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Small PostgreSQL background worker to report whether a node is a replication master or standby |
| [`pgmeminfo`](/ext/e/pgmeminfo) | [`pgmeminfo`](https://github.com/okbob/pgmeminfo) | `1.0.0` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | show memory usage |
| [`toastinfo`](/ext/e/toastinfo) | [`toastinfo`](https://github.com/df7cb/toastinfo) | `1.7` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | show details on toasted datums |
| [`explain_ui`](/ext/e/explain_ui) | [`pg_explain_ui`](https://github.com/davidgomes/pg-explain-ui) | `0.0.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | easily jump into a visual plan UI for any SQL query |
| [`pg_relusage`](/ext/e/pg_relusage) | [`pg_relusage`](https://github.com/adept/pg_relusage) | `0.0.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Log all the queries that reference a particular column |
| [`pagevis`](/ext/e/pagevis) | [`pagevis`](https://github.com/hollobon/pagevis) | `0.1` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Visualise database pages in ascii code |
| [`powa`](/ext/e/powa) | [`powa`](https://github.com/powa-team/powa) | `5.2.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang python" href="/ext/language#python">Python</a> | PostgreSQL Workload Analyser-core |
| [`pg_overexplain`](/ext/e/pg_overexplain) | [`pg_overexplain`](https://www.postgresql.org/docs/devel/pgoverexplain.html) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Allow EXPLAIN to dump even more details |
| [`pg_logicalinspect`](/ext/e/pg_logicalinspect) | [`pg_logicalinspect`](https://www.postgresql.org/docs/devel/pglogicalinspect.html) | `1.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Logical decoding components inspection |
| [`pageinspect`](/ext/e/pageinspect) | [`pageinspect`](https://www.postgresql.org/docs/current/pageinspect.html) | `1.12` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | inspect the contents of database pages at a low level |
| [`pgrowlocks`](/ext/e/pgrowlocks) | [`pgrowlocks`](https://www.postgresql.org/docs/current/pgrowlocks.html) | `1.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | show row-level locking information |
| [`sslinfo`](/ext/e/sslinfo) | [`sslinfo`](https://www.postgresql.org/docs/current/sslinfo.html) | `1.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | information about SSL certificates |
| [`pg_buffercache`](/ext/e/pg_buffercache) | [`pg_buffercache`](https://www.postgresql.org/docs/current/pgbuffercache.html) | `1.5` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | examine the shared buffer cache |
| [`pg_walinspect`](/ext/e/pg_walinspect) | [`pg_walinspect`](https://www.postgresql.org/docs/current/pgwalinspect.html) | `1.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | functions to inspect contents of PostgreSQL Write-Ahead Log |
| [`pg_freespacemap`](/ext/e/pg_freespacemap) | [`pg_freespacemap`](https://www.postgresql.org/docs/current/pgfreespacemap.html) | `1.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | examine the free space map (FSM) |
| [`pg_visibility`](/ext/e/pg_visibility) | [`pg_visibility`](https://www.postgresql.org/docs/current/pgvisibility.html) | `1.2` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | examine the visibility map (VM) and page-level visibility info |
| [`pgstattuple`](/ext/e/pgstattuple) | [`pgstattuple`](https://www.postgresql.org/docs/current/pgstattuple.html) | `1.5` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | show tuple-level statistics |
| [`auto_explain`](/ext/e/auto_explain) | [`auto_explain`](https://www.postgresql.org/docs/current/auto-explain.html) | `-` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Provides a means for logging execution plans of slow statements automatically |
| [`pg_stat_statements`](/ext/e/pg_stat_statements) | [`pg_stat_statements`](https://www.postgresql.org/docs/current/pgstatstatements.html) | `1.11` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | track planning and execution statistics of all SQL statements executed |
{.ext-table}


---------

## pg_profile {#pg_profile}

[**`pg_profile`**](/ext/e/pg_profile) - `4.11` : PostgreSQL load profile repository and report builder

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_profile`](/ext/e/pg_profile) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_profile`](https://github.com/zubkov-andrei/pg_profile) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_profile_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-profile` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_tracing {#pg_tracing}

[**`pg_tracing`**](/ext/e/pg_tracing) - `0.1.3` : Distributed Tracing for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_tracing`](/ext/e/pg_tracing) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_tracing`](https://github.com/DataDog/pg_tracing) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_tracing_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-tracing` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stat_ch {#pg_stat_ch}

[**`pg_stat_ch`**](/ext/e/pg_stat_ch) - `0.3.6` : Export PostgreSQL query telemetry to ClickHouse

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stat_ch`](/ext/e/pg_stat_ch) | **el8** | - | - |
| **Package** | [`pg_stat_ch`](https://github.com/ClickHouse/pg_stat_ch) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_stat_ch_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-stat-ch` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang cpp" href="/ext/language#cpp">C++</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stat_backtrace {#pg_stat_backtrace}

[**`pg_stat_backtrace`**](/ext/e/pg_stat_backtrace) - `1.0.0` : Capture or log C-level stack backtraces of PostgreSQL processes

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stat_backtrace`](/ext/e/pg_stat_backtrace) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_stat_backtrace`](https://github.com/Nickyoung0/pg_stat_backtrace) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_stat_backtrace_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-stat-backtrace` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stat_log {#pg_stat_log}

[**`pg_stat_log`**](/ext/e/pg_stat_log) - `0.1` : Track cumulative PostgreSQL log message statistics by backend, database, user, level, and SQLSTATE.

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stat_log`](/ext/e/pg_stat_log) | **el8** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Package** | [`pg_stat_log`](https://github.com/fabriziomello/pg_stat_log) | **el9** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **RPM** | `pg_stat_log_$v` | **el10** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **DEB** | `postgresql-$v-stat-log` | **d12** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| | | **u26** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stat_plans {#pg_stat_plans}

[**`pg_stat_plans`**](/ext/e/pg_stat_plans) - `2.1.0` : Track per-plan call counts, execution times, and example EXPLAIN texts.

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stat_plans`](/ext/e/pg_stat_plans) | **el8** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Package** | [`pg_stat_plans`](https://github.com/pganalyze/pg_stat_plans) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_stat_plans_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-stat-plans` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}


---------

## pgfr_record {#pgfr_record}

[**`pg_flight_recorder`**](/ext/e/pgfr_record) - `2.29.2` : Server-side PostgreSQL performance flight recorder

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgfr_record`](/ext/e/pgfr_record) | **el8** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`pg_flight_recorder`](https://github.com/dventimisupabase/pg_flight_recorder) | **el9** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `pg_flight_recorder_$v` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v-pg-flight-recorder` | **d12** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| | | **u26** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
{.ext-table .ext-table--cate}


---------

## pgfr_analyze {#pgfr_analyze}

[**`pg_flight_recorder`**](/ext/e/pgfr_analyze) - `2.29.2` : Reporting and analysis functions for pgfr_record

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgfr_analyze`](/ext/e/pgfr_analyze) | **el8** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`pg_flight_recorder`](https://github.com/dventimisupabase/pg_flight_recorder) | **el9** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `pg_flight_recorder_$v` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v-pg-flight-recorder` | **d12** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| | | **u26** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
{.ext-table .ext-table--cate}


---------

## pgmonitor {#pgmonitor}

[**`pgmonitor`**](/ext/e/pgmonitor) - `2.2.0` : Collector-friendly metric views and background refresh worker

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgmonitor`](/ext/e/pgmonitor) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgmonitor`](https://github.com/CrunchyData/pgmonitor-extension) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgmonitor_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgmonitor` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_show_plans {#pg_show_plans}

[**`pg_show_plans`**](/ext/e/pg_show_plans) - `2.1.8` : show query plans of all currently running SQL statements

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_show_plans`](/ext/e/pg_show_plans) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_show_plans`](https://github.com/cybertec-postgresql/pg_show_plans) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_show_plans_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-show-plans` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stat_kcache {#pg_stat_kcache}

[**`pg_stat_kcache`**](/ext/e/pg_stat_kcache) - `2.3.2` : Kernel statistics gathering

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stat_kcache`](/ext/e/pg_stat_kcache) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_stat_kcache`](https://github.com/powa-team/pg_stat_kcache) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_stat_kcache_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-stat-kcache` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stat_monitor {#pg_stat_monitor}

[**`pg_stat_monitor`**](/ext/e/pg_stat_monitor) - `2.3.2` : The pg_stat_monitor is a PostgreSQL Query Performance Monitoring tool, based on PostgreSQL contrib module pg_stat_statements. pg_stat_monitor provides aggregated statistics, client information, plan details including plan, and histogram information.

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stat_monitor`](/ext/e/pg_stat_monitor) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_stat_monitor`](https://github.com/percona/pg_stat_monitor) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_stat_monitor_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-stat-monitor` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_qualstats {#pg_qualstats}

[**`pg_qualstats`**](/ext/e/pg_qualstats) - `2.1.4` : An extension collecting statistics about quals

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_qualstats`](/ext/e/pg_qualstats) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_qualstats`](https://github.com/powa-team/pg_qualstats) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_qualstats_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-qualstats` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_store_plans {#pg_store_plans}

[**`pg_store_plans`**](/ext/e/pg_store_plans) - `1.10` : track plan statistics of all SQL statements executed

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_store_plans`](/ext/e/pg_store_plans) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_store_plans`](https://github.com/ossc-db/pg_store_plans) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_store_plans_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-store-plan` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_track_settings {#pg_track_settings}

[**`pg_track_settings`**](/ext/e/pg_track_settings) - `2.1.2` : Track settings changes

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_track_settings`](/ext/e/pg_track_settings) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_track_settings`](https://github.com/rjuju/pg_track_settings) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_track_settings_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-track-settings` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_track_optimizer {#pg_track_optimizer}

[**`pg_track_optimizer`**](/ext/e/pg_track_optimizer) - `0.9.2` : Track planning decisions in comparison with
  execution reality

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_track_optimizer`](/ext/e/pg_track_optimizer) | **el8** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Package** | [`pg_track_optimizer`](https://github.com/danolivo/pg_track_optimizer) | **el9** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **RPM** | `pg_track_optimizer_$v` | **el10** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **DEB** | `postgresql-$v-pg-track-optimizer` | **d12** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
| | | **u26** | {{< pgvers "18,17" >}} | {{< pgvers "18,17" >}} |
{.ext-table .ext-table--cate}


---------

## pg_wait_sampling {#pg_wait_sampling}

[**`pg_wait_sampling`**](/ext/e/pg_wait_sampling) - `1.1.11` : sampling based statistics of wait events

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_wait_sampling`](/ext/e/pg_wait_sampling) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_wait_sampling`](https://github.com/postgrespro/pg_wait_sampling) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_wait_sampling_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-wait-sampling` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_datasentinel {#pg_datasentinel}

[**`pg_datasentinel`**](/ext/e/pg_datasentinel) - `1.0` : Observability and activity monitoring extension for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_datasentinel`](/ext/e/pg_datasentinel) | **el8** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`pg_datasentinel`](https://github.com/datasentinel/pg_datasentinel) | **el9** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `pg_datasentinel_$v` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v-pg-datasentinel` | **d12** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| | | **u26** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
{.ext-table .ext-table--cate}


---------

## pgsentinel {#pgsentinel}

[**`pgsentinel`**](/ext/e/pgsentinel) - `1.4.2` : active session history

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgsentinel`](/ext/e/pgsentinel) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgsentinel`](https://github.com/pgsentinel/pgsentinel) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgsentinel_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgsentinel` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## system_stats {#system_stats}

[**`system_stats`**](/ext/e/system_stats) - `4.1` : EnterpriseDB system statistics for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`system_stats`](/ext/e/system_stats) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`system_stats`](https://github.com/EnterpriseDB/system_stats) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `system_stats_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-system-stats` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## meta {#meta}

[**`pg_meta`**](/ext/e/meta) - `0.4.0` : Normalized, friendlier system catalog for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`meta`](/ext/e/meta) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_meta`](https://github.com/aquameta/meta) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_meta_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-meta` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd2clause" href="/ext/license#bsd2clause">BSD-2-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgnodemx {#pgnodemx}

[**`pgnodemx`**](/ext/e/pgnodemx) - `2.0.1` : Capture node OS metrics via SQL queries

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgnodemx`](/ext/e/pgnodemx) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgnodemx`](https://github.com/CrunchyData/pgnodemx) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgnodemx_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgnodemx` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license apache20" href="/ext/license#apache20">Apache-2.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_proctab {#pg_proctab}

[**`pgnodemx`**](/ext/e/pg_proctab) - `2.0.1` : PostgreSQL extension to access the OS process table

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_proctab`](/ext/e/pg_proctab) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgnodemx`](https://github.com/markwkm/pg_proctab) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgnodemx_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgnodemx` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_sqlog {#pg_sqlog}

[**`pg_sqlog`**](/ext/e/pg_sqlog) - `1.6` : Provide SQL interface to logs

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_sqlog`](/ext/e/pg_sqlog) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_sqlog`](https://github.com/kouber/pg_sqlog) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_sqlog_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-sqlog` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd3clause" href="/ext/license#bsd3clause">BSD-3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## bgw_replstatus {#bgw_replstatus}

[**`bgw_replstatus`**](/ext/e/bgw_replstatus) - `1.0.8` : Small PostgreSQL background worker to report whether a node is a replication master or standby

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`bgw_replstatus`](/ext/e/bgw_replstatus) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`bgw_replstatus`](https://github.com/mhagander/bgw_replstatus) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `bgw_replstatus_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-bgw-replstatus` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgmeminfo {#pgmeminfo}

[**`pgmeminfo`**](/ext/e/pgmeminfo) - `1.0.0` : show memory usage

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgmeminfo`](/ext/e/pgmeminfo) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgmeminfo`](https://github.com/okbob/pgmeminfo) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pgmeminfo_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pgmeminfo` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## toastinfo {#toastinfo}

[**`toastinfo`**](/ext/e/toastinfo) - `1.7` : show details on toasted datums

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`toastinfo`](/ext/e/toastinfo) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`toastinfo`](https://github.com/df7cb/toastinfo) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `toastinfo_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-toastinfo` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## explain_ui {#explain_ui}

[**`pg_explain_ui`**](/ext/e/explain_ui) - `0.0.2` : easily jump into a visual plan UI for any SQL query

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`explain_ui`](/ext/e/explain_ui) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_explain_ui`](https://github.com/davidgomes/pg-explain-ui) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_explain_ui_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-explain-ui` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_relusage {#pg_relusage}

[**`pg_relusage`**](/ext/e/pg_relusage) - `0.0.1` : Log all the queries that reference a particular column

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_relusage`](/ext/e/pg_relusage) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_relusage`](https://github.com/adept/pg_relusage) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_relusage_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-relusage` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pagevis {#pagevis}

[**`pagevis`**](/ext/e/pagevis) - `0.1` : Visualise database pages in ascii code

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pagevis`](/ext/e/pagevis) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pagevis`](https://github.com/hollobon/pagevis) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pagevis_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pagevis` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## powa {#powa}

[**`powa`**](/ext/e/powa) - `5.2.0` : PostgreSQL Workload Analyser-core

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`powa`](/ext/e/powa) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`powa`](https://github.com/powa-team/powa) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `powa_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-powa` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang python" href="/ext/language#python">Python</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_overexplain {#pg_overexplain}

[**`pg_overexplain`**](/ext/e/pg_overexplain) - `1.0` : Allow EXPLAIN to dump even more details

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_overexplain`](/ext/e/pg_overexplain) | **el8** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Package** | [`pg_overexplain`](https://www.postgresql.org/docs/devel/pgoverexplain.html) | **el9** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| | | **u26** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
{.ext-table .ext-table--cate}


---------

## pg_logicalinspect {#pg_logicalinspect}

[**`pg_logicalinspect`**](/ext/e/pg_logicalinspect) - `1.0` : Logical decoding components inspection

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_logicalinspect`](/ext/e/pg_logicalinspect) | **el8** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Package** | [`pg_logicalinspect`](https://www.postgresql.org/docs/devel/pglogicalinspect.html) | **el9** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
| | | **u26** | {{< pgvers "18" >}} | {{< pgvers "18" >}} |
{.ext-table .ext-table--cate}


---------

## pageinspect {#pageinspect}

[**`pageinspect`**](/ext/e/pageinspect) - `1.12` : inspect the contents of database pages at a low level

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pageinspect`](/ext/e/pageinspect) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pageinspect`](https://www.postgresql.org/docs/current/pageinspect.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgrowlocks {#pgrowlocks}

[**`pgrowlocks`**](/ext/e/pgrowlocks) - `1.2` : show row-level locking information

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgrowlocks`](/ext/e/pgrowlocks) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgrowlocks`](https://www.postgresql.org/docs/current/pgrowlocks.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## sslinfo {#sslinfo}

[**`sslinfo`**](/ext/e/sslinfo) - `1.2` : information about SSL certificates

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`sslinfo`](/ext/e/sslinfo) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`sslinfo`](https://www.postgresql.org/docs/current/sslinfo.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_buffercache {#pg_buffercache}

[**`pg_buffercache`**](/ext/e/pg_buffercache) - `1.5` : examine the shared buffer cache

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_buffercache`](/ext/e/pg_buffercache) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_buffercache`](https://www.postgresql.org/docs/current/pgbuffercache.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_walinspect {#pg_walinspect}

[**`pg_walinspect`**](/ext/e/pg_walinspect) - `1.1` : functions to inspect contents of PostgreSQL Write-Ahead Log

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_walinspect`](/ext/e/pg_walinspect) | **el8** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`pg_walinspect`](https://www.postgresql.org/docs/current/pgwalinspect.html) | **el9** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| | | **u26** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
{.ext-table .ext-table--cate}


---------

## pg_freespacemap {#pg_freespacemap}

[**`pg_freespacemap`**](/ext/e/pg_freespacemap) - `1.2` : examine the free space map (FSM)

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_freespacemap`](/ext/e/pg_freespacemap) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_freespacemap`](https://www.postgresql.org/docs/current/pgfreespacemap.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_visibility {#pg_visibility}

[**`pg_visibility`**](/ext/e/pg_visibility) - `1.2` : examine the visibility map (VM) and page-level visibility info

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_visibility`](/ext/e/pg_visibility) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_visibility`](https://www.postgresql.org/docs/current/pgvisibility.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pgstattuple {#pgstattuple}

[**`pgstattuple`**](/ext/e/pgstattuple) - `1.5` : show tuple-level statistics

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pgstattuple`](/ext/e/pgstattuple) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pgstattuple`](https://www.postgresql.org/docs/current/pgstattuple.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## auto_explain {#auto_explain}

[**`auto_explain`**](/ext/e/auto_explain) - `-` : Provides a means for logging execution plans of slow statements automatically

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`auto_explain`](/ext/e/auto_explain) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`auto_explain`](https://www.postgresql.org/docs/current/auto-explain.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stat_statements {#pg_stat_statements}

[**`pg_stat_statements`**](/ext/e/pg_stat_statements) - `1.11` : track planning and execution statistics of all SQL statements executed

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stat_statements`](/ext/e/pg_stat_statements) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_stat_statements`](https://www.postgresql.org/docs/current/pgstatstatements.html) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `postgresql$v-contrib` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo contrib" href="/ext/repo#contrib">CONTRIB</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}

