---
title: "TIME - Timeseries"
linkTitle: "TIME"
description: "TimescaleDB, Versioning & Temporal Table, Crontab, Async & Background Job Scheduler, ..."
weight: 810
icon: fas fa-clock
---

## Extension List

There are **14** extensions in **14** packages.

| **Extension** | **Package** | **Version** | **License** | **Language** | **Description** |
|:---------|:-------|:--------:|:----------:|:--------:|:---------|
| [`timescaledb`](/ext/e/timescaledb) | [`timescaledb`](https://github.com/timescale/timescaledb) | `2.28.2` | <a class="ext-badge ext-badge--license timescale" href="/ext/license#timescale">Timescale</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Enables scalable inserts and complex queries for time-series data |
| [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) | [`timescaledb_toolkit`](https://github.com/timescale/timescaledb-toolkit) | `1.23.0` | <a class="ext-badge ext-badge--license timescale" href="/ext/license#timescale">Timescale</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Library of analytical hyperfunctions, time-series pipelining, and other SQL utilities |
| [`timeseries`](/ext/e/timeseries) | [`pg_timeseries`](https://github.com/ChuckHend/pg_timeseries) | `0.2.1` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Convenience API for time series stack |
| [`periods`](/ext/e/periods) | [`periods`](https://github.com/xocolatl/periods) | `1.2.3` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Provide Standard SQL functionality for PERIODs and SYSTEM VERSIONING |
| [`temporal_tables`](/ext/e/temporal_tables) | [`temporal_tables`](https://pgxn.org/dist/temporal_tables/) | `1.2.2` | <a class="ext-badge ext-badge--license bsd 2clause" href="/ext/license#bsd2clause">BSD 2-Clause</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | temporal tables |
| [`emaj`](/ext/e/emaj) | [`emaj`](https://github.com/dalibo/emaj) | `4.7.1` | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Enables fine-grained write logging and time travel on subsets of the database. |
| [`table_version`](/ext/e/table_version) | [`table_version`](https://github.com/linz/postgresql-tableversion) | `1.11.1` | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | PostgreSQL table versioning extension |
| [`pg_cron`](/ext/e/pg_cron) | [`pg_cron`](https://github.com/citusdata/pg_cron) | `1.6.7` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Job scheduler for PostgreSQL |
| [`pg_task`](/ext/e/pg_task) | [`pg_task`](https://github.com/RekGRpth/pg_task) | `2.1.29` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | execute any sql command at any specific time at background |
| [`pg_later`](/ext/e/pg_later) | [`pg_later`](https://github.com/ChuckHend/pg_later) | `0.4.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Run queries now and get results later |
| [`pg_dispatch`](/ext/e/pg_dispatch) | [`pg_dispatch`](https://github.com/Snehil-Shah/pg_dispatch) | `0.1.5` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | Asynchronous SQL dispatcher built on pg_cron |
| [`pg_background`](/ext/e/pg_background) | [`pg_background`](https://github.com/vibhorkum/pg_background) | `2.0.2` | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Run SQL queries in the background |
| [`pg_when`](/ext/e/pg_when) | [`pg_when`](https://github.com/frectonz/pg-when) | `0.1.9` | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | Natural language time parsing for PostgreSQL |
| [`pg_stl`](/ext/e/pg_stl) | [`pg_stl`](https://github.com/nadyaloseva/pg_ts_analysis) | `1.0.0` | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | Time series analysis functions for PostgreSQL |
{.ext-table}


---------

## timescaledb {#timescaledb}

[**`timescaledb`**](/ext/e/timescaledb) - `2.28.2` : Enables scalable inserts and complex queries for time-series data

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`timescaledb`](/ext/e/timescaledb) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`timescaledb`](https://github.com/timescale/timescaledb) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `timescaledb-tsl_$v` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v-timescaledb-tsl` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license timescale" href="/ext/license#timescale">Timescale</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
{.ext-table .ext-table--cate}


---------

## timescaledb_toolkit {#timescaledb_toolkit}

[**`timescaledb_toolkit`**](/ext/e/timescaledb_toolkit) - `1.23.0` : Library of analytical hyperfunctions, time-series pipelining, and other SQL utilities

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`timescaledb_toolkit`](/ext/e/timescaledb_toolkit) | **el8** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Package** | [`timescaledb_toolkit`](https://github.com/timescale/timescaledb-toolkit) | **el9** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **RPM** | `timescaledb-toolkit_$v` | **el10** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **DEB** | `postgresql-$v-timescaledb-toolkit` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license timescale" href="/ext/license#timescale">Timescale</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15" >}} | {{< pgvers "18,17,16,15" >}} |
{.ext-table .ext-table--cate}


---------

## timeseries {#timeseries}

[**`pg_timeseries`**](/ext/e/timeseries) - `0.2.1` : Convenience API for time series stack

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`timeseries`](/ext/e/timeseries) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_timeseries`](https://github.com/ChuckHend/pg_timeseries) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_timeseries_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-timeseries` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## periods {#periods}

[**`periods`**](/ext/e/periods) - `1.2.3` : Provide Standard SQL functionality for PERIODs and SYSTEM VERSIONING

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`periods`](/ext/e/periods) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`periods`](https://github.com/xocolatl/periods) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `periods_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-periods` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## temporal_tables {#temporal_tables}

[**`temporal_tables`**](/ext/e/temporal_tables) - `1.2.2` : temporal tables

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`temporal_tables`](/ext/e/temporal_tables) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`temporal_tables`](https://pgxn.org/dist/temporal_tables/) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `temporal_tables_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-temporal-tables` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd 2clause" href="/ext/license#bsd2clause">BSD 2-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## emaj {#emaj}

[**`emaj`**](/ext/e/emaj) - `4.7.1` : Enables fine-grained write logging and time travel on subsets of the database.

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`emaj`](/ext/e/emaj) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`emaj`](https://github.com/dalibo/emaj) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `e-maj_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-emaj` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## table_version {#table_version}

[**`table_version`**](/ext/e/table_version) - `1.11.1` : PostgreSQL table versioning extension

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`table_version`](/ext/e/table_version) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`table_version`](https://github.com/linz/postgresql-tableversion) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `table_version_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-table-version` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo mixed" href="/ext/repo#mixed">MIXED</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license bsd 3clause" href="/ext/license#bsd3clause">BSD 3-Clause</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_cron {#pg_cron}

[**`pg_cron`**](/ext/e/pg_cron) - `1.6.7` : Job scheduler for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_cron`](/ext/e/pg_cron) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_cron`](https://github.com/citusdata/pg_cron) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_cron_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-cron` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_task {#pg_task}

[**`pg_task`**](/ext/e/pg_task) - `2.1.29` : execute any sql command at any specific time at background

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_task`](/ext/e/pg_task) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_task`](https://github.com/RekGRpth/pg_task) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_task_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-task` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_later {#pg_later}

[**`pg_later`**](/ext/e/pg_later) - `0.4.0` : Run queries now and get results later

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_later`](/ext/e/pg_later) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_later`](https://github.com/ChuckHend/pg_later) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_later_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-later` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_dispatch {#pg_dispatch}

[**`pg_dispatch`**](/ext/e/pg_dispatch) - `0.1.5` : Asynchronous SQL dispatcher built on pg_cron

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_dispatch`](/ext/e/pg_dispatch) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_dispatch`](https://github.com/Snehil-Shah/pg_dispatch) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_dispatch_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-dispatch` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang sql" href="/ext/language#sql">SQL</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_background {#pg_background}

[**`pg_background`**](/ext/e/pg_background) - `2.0.2` : Run SQL queries in the background

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_background`](/ext/e/pg_background) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_background`](https://github.com/vibhorkum/pg_background) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_background_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-background` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pgdg" href="/ext/repo#pgdg">PGDG</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license gpl30" href="/ext/license#gpl30">GPL-3.0</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_when {#pg_when}

[**`pg_when`**](/ext/e/pg_when) - `0.1.9` : Natural language time parsing for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_when`](/ext/e/pg_when) | **el8** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Package** | [`pg_when`](https://github.com/frectonz/pg-when) | **el9** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **RPM** | `pg_when_$v` | **el10** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **DEB** | `postgresql-$v-pg-when` | **d12** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Language** | <a class="ext-badge ext-badge--lang rust" href="/ext/language#rust">Rust</a> | **d13** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| **License** | <a class="ext-badge ext-badge--license mit" href="/ext/license#mit">MIT</a> | **u24** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
| | | **u26** | {{< pgvers "18,17,16,15,14" >}} | {{< pgvers "18,17,16,15,14" >}} |
{.ext-table .ext-table--cate}


---------

## pg_stl {#pg_stl}

[**`pg_stl`**](/ext/e/pg_stl) - `1.0.0` : Time series analysis functions for PostgreSQL

| **Item** | **Value** | **OS** | **x86_64** | **aarch64** |
|:---:|:---|:---:|:---:|:---:|
| **Extension** | [`pg_stl`](/ext/e/pg_stl) | **el8** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Package** | [`pg_stl`](https://github.com/nadyaloseva/pg_ts_analysis) | **el9** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **RPM** | `pg_stl_$v` | **el10** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **DEB** | `postgresql-$v-pg-stl` | **d12** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Language** | <a class="ext-badge ext-badge--lang c" href="/ext/language#c">C</a> | **d13** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **Repo** | <a class="ext-badge ext-badge--repo pigsty" href="/ext/repo#pigsty">PIGSTY</a> | **u22** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| **License** | <a class="ext-badge ext-badge--license postgresql" href="/ext/license#postgresql">PostgreSQL</a> | **u24** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
| | | **u26** | {{< pgvers "18,17,16" >}} | {{< pgvers "18,17,16" >}} |
{.ext-table .ext-table--cate}

